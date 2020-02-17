Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2369160AD1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:44:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WEdGys7K5PrtWm93pomXOmjh7siOdCj3n5TNHbQUfLU=; b=c2RmJZSAVnZICD
	wKsgub2F7pUtUEoGMYMdww3hO8JaXsAD6/g7Fi2Pox61ijb5WgFyevFMYN+rH1Makepry5sqZ3O+m
	GJGO6dEZFm/ERqlWkZ/ZYCHg4Oa+Nq6iVaHaXJvbwssrBJLJc5sBQ+PKTpiFSu7NVACWNkaMVr/SH
	lcgy3siOKKnFmLi7bQEsF4EJqBCcrItuzJFuqwNDwyhxRz3YDhofVditnLh3zAcTGbvFER4Io5cRB
	j21wLgL2qHxSRvJTj5PYTjDbUBq4l9XsvJgjWjxEuAhYkd6Pf4gFfx66y+o8K2do126cqZ7u2p36P
	tY+JXhW1xbOIrSCuDGGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3a8x-0004dF-79; Mon, 17 Feb 2020 06:44:35 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7J-0003f1-Nq
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:42:56 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 1E2255240;
 Mon, 17 Feb 2020 01:42:53 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:42:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=r9qw/nKFT7h3C
 F2EI4aVoHWBErIwiJXiG/+XUz7NId0=; b=psCa0HxdSMOtcyUtvAVU/8dwXjJSC
 kwZIQ8hnHQ8uUUdnZv3iNQyNWe0ZfOOI6N2839Po9LHLhHKNv/YdKWCLLwOFJdcp
 qU0N1/JU9rHUCq3O/c2rzEv59XGMFuzqrPcuml+NaX9rfUSU3QiOGeofVcZUz/Pu
 sS4VhBvL9uGMj+gODat9acPrEfIR5Vlo+cukHnxOv8QiTC1FQo9m1Kba22w3Ob9q
 ALt0PH5tJ1sVEP5UrQfo60YGjxLFsgHGCTZ+8pXE5VtIPd8YOACEjpGH2qAE22iQ
 q6BhXAJzsS9kQ5iSf0XJAxkMyFsfTPqrQimuL57AX5gGw0e5CKI+N6u7A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=r9qw/nKFT7h3CF2EI4aVoHWBErIwiJXiG/+XUz7NId0=; b=2dS9ELpa
 a/N5GVgP4448lAQhrrXrX+YCgkqvHZfxFVxWkgFgxU+bdT4AOPVRNj3ycRzXgNzt
 iX13EsracU5/O73bRdJGLfRy5Y8oSUOzAFZMA2B3a3QM0aaUrgH5bIh5MdfdOYMY
 mh61QaeHUFSrD6uOdribCuuqoKp0Pwzmr5LqYodi85xbPm6NSkEZCFLNjzrK+8SP
 z9OLlg5OfOW43NQXxzbSiY+m6k30CnA925NXIijGbSKhUyY7xwPfxIIG9I4Nax8L
 ZVQ5DHzBhOPnqnkpHnRVsyeLsyhhDhI/l4tBwy9J5R3tDlzT/m6xP8jQdaFaKqfO
 /bEbQUyhBrbAWg==
X-ME-Sender: <xms:7DVKXus6wJBVzpOsgZM_-qtAcfOu_sHF49BNZIHRkrKEAmkhj9UwRQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgr
 mhepmhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:7TVKXnstkRKkmOhbeuYLfvoPWehdhl3bfFLkmGLPedTvT1wBTSXSig>
 <xmx:7TVKXkzMu6_NMbp6gwU_CRajzjM2vqGFrwZ18TU2pkOPqNY_oJT3Ig>
 <xmx:7TVKXthNkdnKzeAHPMQj2KUBw5vzdeL_EfLk-z-fu5LI9RCgirbi9A>
 <xmx:7TVKXhVor5h4xU6Yu9GB4gmxD54qw6LgmdZF2tL6Ew5nYh--aT3MNg>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 578F23280059;
 Mon, 17 Feb 2020 01:42:52 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 03/34] arm64: dts: allwinner: a64: Fix the audio codec
 compatible
Date: Mon, 17 Feb 2020 00:42:19 -0600
Message-Id: <20200217064250.15516-4-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224253_917661_CFB4542B 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 Samuel Holland <samuel@sholland.org>, linux-kernel@vger.kernel.org,
 stable@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some differences were found between the A33 codec and the A64 codec,
causing the left and right channels to be swapped. To fix this, a new
compatible was added for the A64 variant of the codec. Update the A64
DTS to use the correct compatible.

Cc: stable@kernel.org
Fixes: ec4a95409d5c ("arm64: dts: allwinner: a64: add nodes necessary for analog sound support")
Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 27e48234f1c2..6d7aa1736d21 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -802,7 +802,7 @@ dai: dai@1c22c00 {
 
 		codec: codec@1c22e00 {
 			#sound-dai-cells = <0>;
-			compatible = "allwinner,sun8i-a33-codec";
+			compatible = "allwinner,sun50i-a64-codec";
 			reg = <0x01c22e00 0x600>;
 			interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&ccu CLK_BUS_CODEC>, <&ccu CLK_AC_DIG>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
