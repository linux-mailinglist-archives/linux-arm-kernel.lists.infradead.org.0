Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9609F7DF43
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 17:42:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OT06ILD3xDSH+EUpG48LbYMghaXAehk9H/iLV+/lIbw=; b=ZMORYiuuj4IQGR
	1EFFseJpLxpkcVICweDRSOzo1GeDFP2HT85R/Vg8/ZueL24OrlUQZkdQFyC2o2fUoFyQ0Awry+lrx
	Q0jtnCj0iq01iAwi43nf/yIPtNXtxYdGunvl8LjRR+ziUZmutE3EHwpVRovezV1btwaWiC02D7dSJ
	v6sgsHwbxoZS/q9eLEt2GCIk+CX2Oba0hIIMzkHIFSgWurDnVE8Dj7kFXwrrBAN5vWDxMpOBlVXPa
	HNWEbsuEM+4BiHghVpK7k0rPhqsugpGdWPT40ys3m+EeuKc2IC+zaO9y0j+6GPNHR/7hFuqup5UJ/
	2i2LfGMgdR14kSng/NfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htDDf-0002aR-KX; Thu, 01 Aug 2019 15:42:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htDDX-0002Zn-QO
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 15:42:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 82640337;
 Thu,  1 Aug 2019 08:42:09 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AB8C13F694;
 Thu,  1 Aug 2019 08:42:08 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] arm64: entry: Move ct_user_exit calls earlier
Date: Thu,  1 Aug 2019 16:41:48 +0100
Message-Id: <20190801154150.195959-1-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_084211_902506_D29E8C9C 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Masami's kprobes series adds a bunch of warnings to do_debug_exception().
When booted with nohz_full and lockdep, these things go off. This is
because the entry code is calling some of the C handlers before
ct_user_exit.

Patch 2 is for consistency, it doesn't look like anything minds
this today.


Thanks,

James Morse (2):
  arm64: entry: Move ct_user_exit before any user of RCU
  arm64: entry: Move ct_user_exit before we can take another exception

 arch/arm64/kernel/entry.S | 32 +++++++++++++++++---------------
 1 file changed, 17 insertions(+), 15 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
