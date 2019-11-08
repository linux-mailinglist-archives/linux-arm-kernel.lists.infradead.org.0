Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68580F501C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 16:46:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UojKsaXk3H4AFh5fdUKJsnLrFedIaispnD3uu7oAJZE=; b=FglmhRbuaePdwe
	4B3nW1NoH1g94gexlh4VQpjF3NV1Gj84Q/MABudKuSb12f7ZmdKvP6f//kUI3ld6YLmMdreblsotL
	L1XnlU0Olmdr0tjPiqwyhuS8dNCFu30/jijTYvjLEGV+fVrW8KNwRGKWxHtkV1yG4GApB+DmeyR8D
	zxRJ1xLCch3ku0jBMAgDWS31IGxLVnFHhrRgV4Xtk9jiTfvP8wsehvOigTpWx5G1JhKvkik8yBcvw
	PdsZNyzU1JFDX6Up9cWYJtzlHhKKL/UVZ/7p/aPuyz75gkFqEKD26rkQXN09H5VbRgOanbuVp42FI
	Q8NEz4tnfTT8zkt5flkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT6Su-00065a-13; Fri, 08 Nov 2019 15:46:24 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT6Sk-00064W-6i
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 15:46:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pCBPYPfVhI564UEmK+d6NXwD/x8yuQRDvMPCQaKcDqA=; b=ctEqDt2UaNYCxyP+ekJxzxTho
 UQPdg0OO0DrnPFiZZRzRzSLeLrojmXKcLZ6cSr/BiEy/jLHRu8MTc2l4MYlo+IqcntX/B/b0YNZH7
 JCMqFERvWvq3MiHaq2oGzsyIctHawWJLf6Fnzvm+oU+zadVKltltIGUaf2XweHufa40Jg=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iT6Sh-0007Ye-Kl; Fri, 08 Nov 2019 15:46:11 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id AFE002741450; Fri,  8 Nov 2019 15:46:10 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 0/2] Improve KASLR diagnostics
Date: Fri,  8 Nov 2019 15:46:05 +0000
Message-Id: <20191108154607.51051-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_074614_250936_A9ABB0CE 
X-CRM114-Status: UNSURE (   7.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series provides diagnostics on boot for KASLR to improve usability
at runtime.

v2: Defer the print to a core_initcall() so we don't try and print
    before printk() can cope, covering other less common error cases as
    well and also an explicit message when KASLR is enabled.

Mark Brown (2):
  arm64: kaslr: Announce KASLR status on boot
  arm64: kaslr: Check command line before looking for a seed

 arch/arm64/kernel/kaslr.c | 53 ++++++++++++++++++++++++++++++++-------
 1 file changed, 44 insertions(+), 9 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
