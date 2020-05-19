Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 608FD1D9CA9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 18:29:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7PfRax+fnCm25gO5Cy2jweZG4NeEm22xXsqoRSvHDHs=; b=lQTqklbjY3tQen
	kEvLy4OjZ09T+gNRSA7h23rTpRFTe75kTJoxw8k3he+VOprxC1DcpkvSQBNyla3m+yvf7dLC8dg89
	V0wn7a1WGlxnVOhGhI1bSrImfRKrtbYq4iVgjJ+wD2HxEuFNbuIBqucciVv5aBg6OOvMIU7gP5ePE
	Vo6tosHbsyw84RSPY9OM9cWUdOOm5WYEh8digndFEx6TpQQG6cjmFJ7O2LEvdzoWVbAZ5serNiCVp
	GTmfJDlh8r/sBuSVtL/3v38M06fOKCzQzan2Gj2LNPmqGjwEqlFW6dx3nHvGV3rv7MnsK6k82KLnW
	RnPaZZKeFJ9YJLHbmhew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb57T-00061y-Qn; Tue, 19 May 2020 16:29:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb56V-0005JF-3d
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 16:28:32 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 620FB20756;
 Tue, 19 May 2020 16:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589905710;
 bh=9pSmeNeoEojL3nh5royLfwApgwDwC90eO8N2eeydSRY=;
 h=From:To:Cc:Subject:Date:From;
 b=HL0FdyaMmeTtn8Go09//apv2q2A4rBcaa+LCnmTJkNVkgnSpB4YQy/NQ4bS5WHWHQ
 Up3vmum4mpbG44jmVuyk1CX0C6yrSN3i1E5dCpa2LSQ9vax3ouGLfbSng/FsDmH83F
 7GNrKsBdI5/ckWt3rk8wgOq+OGIkW71LbT2aqo6k=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/2] arm64 sigreturn unwinding fixes
Date: Tue, 19 May 2020 17:28:19 +0100
Message-Id: <20200519162821.16857-1-will@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_092831_179420_197DA71F 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Will Deacon <will@kernel.org>, Tamas Zsoldos <tamas.zsoldos@arm.com>,
 Mark Brown <broonie@kernel.org>, kernel-team@android.com,
 Dave Martin <dave.martin@arm.com>, Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi again,

Hot off the press, here's v2 of the sigreturn unwinding fixes I sent out
early on today:

  https://lore.kernel.org/r/20200519121818.14511-1-will@kernel.org

Changes since v1 include:

  * Retain all CFI directives, as they are needed for unwinding after all
  * Add tonnes of comments
  * Squash the last two patches
  * Use SYM_CODE_{START,END} instead of open-coding it
  * Update Fixes: tag

Please have a look, and give it a spin with your favourite unwinder.

Ta,

Will

Cc: Dave Martin <dave.martin@arm.com>
Cc: Tamas Zsoldos <tamas.zsoldos@arm.com> 
Cc: Daniel Kiss <daniel.kiss@arm.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: <kernel-team@android.com>

--->8

Will Deacon (2):
  arm64: vdso: Don't prefix sigreturn trampoline with a BTI C
    instruction
  arm64: vdso: Fix CFI directives in sigreturn trampoline

 arch/arm64/kernel/vdso/sigreturn.S   | 47 +++++++++++++++++++++++-----
 arch/arm64/kernel/vdso32/sigreturn.S | 16 +++++-----
 2 files changed, 48 insertions(+), 15 deletions(-)

-- 
2.26.2.761.g0e0b3e54be-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
