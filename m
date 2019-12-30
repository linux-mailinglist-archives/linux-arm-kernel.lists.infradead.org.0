Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B3B12CFC9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 12:55:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1FD/CG+mN9lEqi2TpKzFOOfCKyPu7JHSWTPH6uXpFcg=; b=D8gAYg0J7uO0b4
	+SSwCd2eIKs+mDnsASkoL77Y9qL28MGXKHRdvlePsj/SFPulRTeP6DKpstZgv3Yagch/BAZKZJ8Dj
	6f4+7ccmVeQe3X+8TzV5A8IJKQJPGaGPVQZkD6AWVt+w4WuU9iRrJ7AqrLW99YwCC1ql/ttrC/h49
	6jk+S2wnGXPuR8df33l34db3o+cWK98LvfhGxObVZCwx7GzZMW8hy3TKglTX1AQqVPtVoVnjqBFb2
	TYx6gI+RXr2Cv+9b+H80uwMwPcuP5LhceoH7UYYaJIphIb3m4azlWpjG6kVl0kkhBnIK9Yx+8YD6t
	epZBXrLKDKtDIIns23ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iltde-00036J-G2; Mon, 30 Dec 2019 11:55:10 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iltdL-00035s-DC
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 11:54:52 +0000
Received: by mail-pl1-x642.google.com with SMTP id bd4so14539945plb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 03:54:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=V+g+xlQXMz8TlHVe3WFWad+hv/3Pdq14q2xVD02b8Io=;
 b=nwWbi0+/ep9t/WPbfTkbW5p4gr85rcVB6Ycsae5fiHZaLySs8fGoBbjG2KEc2/wsRP
 CxfhX/JYz5R2x+892WD5tPRtnieAzgTOWGxxat9vcZHqdXlDNrvXUZVmeO/hjvnAW4Lz
 vj6k+5ADkGCK/DiEiZcHhgS87wRDbbtGEncgBMTKMmMY5KQZXYSUcuONMOpIlgE056St
 OhyMhgTy6D8RtG8YSKymYcvrn6mYGgFaaGCRvDFb5a51+vR+fGB+/zZcq5vw3vS94jg+
 xcoBj1TWU4ckgeTndjE3ohPYcFgM8Ixf7+TTyZU0TW0FKA0r+HBT7N7j7T6ZfnVuJFg3
 i6HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=V+g+xlQXMz8TlHVe3WFWad+hv/3Pdq14q2xVD02b8Io=;
 b=edgW54slOYcRlegTKj1e75enZHhIzolPcNiEBfcF2a8m8hQ4eFrEdc2pW1uD9ih6BF
 QIEMLlhrOE/eIhBmNPzu/E4V5yQ2Lby6rhRpOi1Hh3M28tsS2Qyi5Vwr0VLQSE+2JHEt
 4huSkgT2cpWRGxVQY/0nLbhUpXPWOxAL4bXrbs5nMOE4EJivlDwo1W0a94P+hvmdbEST
 dUm2GvIywdtmS7rIYI/YKEQj8YZjNc7XXdQbA/GQm8Gv0HTvxyUjbGDLGMaJJeHwL2Ss
 /0bWMq7j3jv5QfXzeSgXsZ4U3lu7VorGG4tv/KxVCeTLKTUOLGw0FPLp9hoAackom5tg
 wZMA==
X-Gm-Message-State: APjAAAU7o4+ucEeEku9uj4R6bsNn266o9wFizE+L3823MnY2GYZLH+rD
 VS4TQVGnj6MiM2zE0V8bdQ8=
X-Google-Smtp-Source: APXvYqwa4+u3wBznl7zWe8cbMyh2wxVNyBvlYQwv1pIW2WqcFpzBxENV12PsrBSHa7EnamJlz2nrRA==
X-Received: by 2002:a17:902:8685:: with SMTP id
 g5mr69540164plo.5.1577706890709; 
 Mon, 30 Dec 2019 03:54:50 -0800 (PST)
Received: from localhost ([49.207.54.121])
 by smtp.gmail.com with ESMTPSA id e1sm52685912pfl.98.2019.12.30.03.54.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Dec 2019 03:54:50 -0800 (PST)
Date: Mon, 30 Dec 2019 17:24:48 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Russell King <linux@armlinux.org.uk>
Subject: [RFC PATCH 1/2] ARM: !MMU: v7-M: prepare preemption support
Message-ID: <7a69ad9c2db39f6f17225eb0e79057bc221cc4a4.1577705829.git.afzal.mohd.ma@gmail.com>
References: <cover.1577705829.git.afzal.mohd.ma@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1577705829.git.afzal.mohd.ma@gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_035451_445253_7A1B111F 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (afzal.mohd.ma[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vladimir Murzin <vladimir.murzin@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Greg Ungerer <gerg@linux-m68k.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rearrange getting thread_info pointer & popping lr so as to have an
easy to review diff for preempt support that is going to be added.

Signed-off-by: afzal mohammed <afzal.mohd.ma@gmail.com>
---
 arch/arm/kernel/entry-v7m.S | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/kernel/entry-v7m.S b/arch/arm/kernel/entry-v7m.S
index de1f20624be1..581562dbecf3 100644
--- a/arch/arm/kernel/entry-v7m.S
+++ b/arch/arm/kernel/entry-v7m.S
@@ -48,7 +48,7 @@ strerr:	.asciz	"\nUnhandled exception: IPSR = %08lx LR = %08lx\n"
 	@ routine called with r0 = irq number, r1 = struct pt_regs *
 	bl	nvic_handle_irq
 
-	pop	{lr}
+	get_thread_info tsk
 	@
 	@ Check for any pending work if returning to user
 	@
@@ -57,7 +57,6 @@ strerr:	.asciz	"\nUnhandled exception: IPSR = %08lx LR = %08lx\n"
 	tst	r0, V7M_SCB_ICSR_RETTOBASE
 	beq	2f
 
-	get_thread_info tsk
 	ldr	r2, [tsk, #TI_FLAGS]
 	tst	r2, #_TIF_WORK_MASK
 	beq	2f			@ no work pending
@@ -65,6 +64,8 @@ strerr:	.asciz	"\nUnhandled exception: IPSR = %08lx LR = %08lx\n"
 	str	r0, [r1, V7M_SCB_ICSR]	@ raise PendSV
 
 2:
+	pop	{lr}
+
 	@ registers r0-r3 and r12 are automatically restored on exception
 	@ return. r4-r7 were not clobbered in v7m_exception_entry so for
 	@ correctness they don't need to be restored. So only r8-r11 must be
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
