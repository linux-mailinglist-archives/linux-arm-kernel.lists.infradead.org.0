Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAEAB160B21
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:52:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Veh+Hf7es0IlAs/PLZJDXlZqdbe4KtesiYVsFXHYHd4=; b=ogAeBhXxsgsk5k
	27hYhdUT0T5zZETxp1g9bag43jcdi0EuefI0N9m6tDLOMTPFoVf+xxZUHNfZAh5PxIVhreoPukiHR
	tImjODdBbA6CWIQFFp6637ckLVvh44O6nMckkDxrl6QD8jBGmJcr81SljKApRnsZPnVfR86An8bHV
	kyi/79VS/aJ1h+sH4TBU991ZdFdpZaKn/BYPRSIYkly7WfSxF8WB5MjDoXaU5ABRcHf+SPq2kQiZu
	xxmFcT025OIo3lW50e9tXGMg1GpmOBOEhDpZ/n7GpgsWhyMobafHjtX+aveyUJh5Dd4LJaWTqPgHB
	/2Khhbul/G679tG0HHNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3aGQ-0004Pm-Ot; Mon, 17 Feb 2020 06:52:18 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7b-0003tn-7K
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:43:15 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id B1839573D;
 Mon, 17 Feb 2020 01:43:09 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:43:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=seFLvOMN4xtaq
 jI7cnOZI6mcjOMTPL5KXvxpWz5IwoM=; b=tbhCd4u+6ZsuxNB0zWc4MpFN+7dVc
 43slQtjWPM3cpPmih08zO1JwqKKm6WgZD2Y68c51+acDsN+MdGHwocHJ8R0+0sAE
 vKf89qeyU7VBimht+Gu/b4HlpifPU3W76D2nW7pxKjbNHBvskLNag6rvv6fQRDDC
 Pn917NivLfGgk2cF/uQmIRY6yNqvGqud1ANWPZc+3bQhzfcisRPg/Ih6Y0Ns87+Z
 NbbO/64Fg3XfKpevxbM8n8N3O6vdAw0czL8QP72Cxl/II0XHFlsvz8UtnVwFCfQ3
 4P75zpMrljqcu6liXSWvvWWsQByanbp3WIa3M17ccH/ct/8K8DsAjwkRA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=seFLvOMN4xtaqjI7cnOZI6mcjOMTPL5KXvxpWz5IwoM=; b=asX4wjx5
 Eo3BGAJIhEg+C9gPl5nZoKLuGR+Q3n7v/q4N1u1W2iJbZs0iIjoLYhpbMKqFiusf
 Qz+ZnSNrxl3wUsYf81aU6nwuWHAZ1XomKNnZ5L0E/R4z3RexLXA3Eg8RTbE38+aH
 UG1gpLRa22dlGH5kBabv3QHH+lF3JfJHtY1NktJXuzPenB9JQiE8ZFyuxC9zHe3b
 Tmcx45fz6Sxcfo3G8/uH5b6wMd9+ppfRcoMOcnTvc7Plz5FqZNuAKFzyjfj8t+38
 VTJ/92f/7vuxUCiZDyli8y8lNr1bFDqMH48oMbBldRHOcrG6Eqij5zvWkmuEC5ec
 ARZbUiN7wkak8A==
X-ME-Sender: <xms:_TVKXtZ6A3uSdJ8rGpPty7KJhPJm3o8GLtb29iqRVB3Cfc1z2T-F6g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedvjeenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:_TVKXsAJ10lZPBOE5MBG-89rZM_Bjz005ojcq4oZYYxk8el5TON_sg>
 <xmx:_TVKXgKuGjbXTIgQwaYoCx47k8ucEE8jCTlrQD8hA9AZmmYOSvA3Sw>
 <xmx:_TVKXjrIS45fFW5fOelE3EORkIpFP9Ycsnbh6xzX6FMT7LZRF8Piuw>
 <xmx:_TVKXomaBJL06wORSJGLp73Djzk9VGvRtGWn3gnb9Oqd9VonWmerKA>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id F20493280062;
 Mon, 17 Feb 2020 01:43:08 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 30/34] ASoC: dt-bindings: Bump sound-dai-cells on
 sun8i-codec
Date: Mon, 17 Feb 2020 00:42:46 -0600
Message-Id: <20200217064250.15516-31-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224311_645807_DFF92876 
X-CRM114-Status: GOOD (  10.16  )
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The generic ASoC OF code supports a sound-dai-cells value of 0 or 1 with
no impact to the driver. Bump sound-dai-cells to 1 to allow using the
secondary DAIs in the codec.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 .../devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
index 7c66409f13ea..97d4bf0d9a73 100644
--- a/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
+++ b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
@@ -12,7 +12,7 @@ maintainers:
 
 properties:
   "#sound-dai-cells":
-    const: 0
+    const: 1
 
   compatible:
     enum:
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
