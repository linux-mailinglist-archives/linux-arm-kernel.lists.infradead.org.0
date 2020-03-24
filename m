Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC51A191A48
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 20:48:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DvTUu+rNcpolaEhMwwNFC9EPrADGbpTNw9dP0H+aq50=; b=E7946ruK1v5vfY
	uebDFRKbkVc3W2fBLZmpNeRjeaUpbwLZuYWHMW2xbqEe8lCnJ3CPRZseScZIOw7S1zgCpSd+BDic0
	17l2blBYyNS43B7lzNnPyD+/SRF1JCKk+RnjUi34DAmvmQuc/Ml3jlxF6oE4AL5ZMbcwKNRfXwbN5
	WcQyk4ZA5wEw+kjNaCstOx3Eaj6oIxDDe2SMuaog+nXaNi5RakNTNYnyh049FXdbWoq+Boau6a/to
	qPiZN4Fqxs0T9YtR3SuI4wzneuGaJcIGV5bUH/z7lcVx6Vs/ptHCyWw3qkCXDguqvTe4tWaFJdIgj
	Isevci0wZejRIglykxFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGpXV-0004tk-SN; Tue, 24 Mar 2020 19:48:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGpXJ-0004sh-TW
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 19:48:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9249D31B;
 Tue, 24 Mar 2020 12:48:25 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 13C2A3F71F;
 Tue, 24 Mar 2020 12:48:24 -0700 (PDT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH 0/3] arm64: Make NOP handling a whitelist
Date: Tue, 24 Mar 2020 19:48:19 +0000
Message-Id: <20200324194822.15682-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_124830_000799_B00BC17A 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently we default to assuming any unrecognized instruction in the
hint space can be safely handled as a NOP.  This is not robust and any
code that really wants a NOP should be using the explicitly defined NOP
so let's instead invert this and whitelist those instructions which it
is safe to handle as NOPs.

Mark Brown (3):
  arm64: insn: Don't assume unrecognized HINTs are NOPs
  arm64: insn: Add constants for PAC and BTI instruction decode
  arm64: insn: Report PAC and BTI instructions as NOPs

 arch/arm64/include/asm/insn.h | 22 ++++++++++++++++++++--
 arch/arm64/kernel/insn.c      | 32 ++++++++++++++++++++++++--------
 2 files changed, 44 insertions(+), 10 deletions(-)


base-commit: f8788d86ab28f61f7b46eb6be375f8a726783636
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
