Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3548160AB7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:43:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kdo02y3Q4vh8zbR3TBcuzQ+ArbiQa8necjfJzlV7fSc=; b=R5078JiYJDY4NS
	SjE+YORbXjgtsBKQutjd86V04Uq7zR0Kr+lE9A+zk2jnggIdb8fWgNKv3lX4RLtty6Qj5Nx6+98KE
	a59H5Y3w1gsAHc7RRdkT6hGihRyYj7oX92c9C/M5NTNmHd3JdA7OGbURwZBW7Ptob/Kp8QFHWX/ct
	JbxJ0nihZFcZDkEUL8Gf1OxI90uud9r69fSMlDoFBg3oo6FTwAyFxCLM8lZ9p8oyGd9silI97WLY3
	3TKglL78iBKjTCSfOKLtCh+HjWNZfUoYG3uH0IBNuWSBCNEqGD4p7+tYzAB8sO9M0FdfdliFtFjwm
	YPWf131fkexV9iDBkdjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3a7o-0003gw-Dd; Mon, 17 Feb 2020 06:43:24 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7J-0003ew-MM
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:42:55 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 4465D51E1;
 Mon, 17 Feb 2020 01:42:52 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:42:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=3TgpiGgfAgMky
 brRUL0sQxqQ1Qaqse1cW0ceZimbAz8=; b=LyTBo9EVjaipjDP7W23emvsnAzphe
 JyJnkl1NpW+A+UQOrD4v0di34HCfKRDZa7kjayI42wIvXVU8Dq0Fp+l5rPkG5Fip
 Wd0PKLc2stD4nGH5oXIFdJBr0CmKWkxJviP2kpfBJfEkYwSU60fSXyf2Koz71DUL
 AxcVAmBQa8sTWma60omxPCJpTXgVoJJL5m01BG5oYQwO47pBXezqhv2iel/b+eio
 XVslk/WyScKQQ1maRB1FOpds4rfnE+cTx9LaKDNN/FvRmBD+duXNNj+9/pB7ZhFa
 +kzQxDZMnKwxnmvHWCWdLKSCs8LFj32nkgTFM5pPXrppR6PHKoSsWsJTw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=3TgpiGgfAgMkybrRUL0sQxqQ1Qaqse1cW0ceZimbAz8=; b=ibp5dbHN
 5DIkFMpXjufvPjjal4F561FbeRUwEetcYDcsu3TzMYxH/VRz6z5WK+1fPmtb2TE8
 Bbd7jDpegZF2wAr3Xk8DF0bMSvB9t15KW3Jv8bhUgGqYzCJcpPlngrxKrxM3XocQ
 PP9nzSzC8yN6511F5B+pMGy8+sOFRGiR4YvKs9EcOEGGW1dFzhh66VFjWOUpjl/S
 jwE1q8VF08gfC70P62zVtAVXLvsWD0SpE5nk5t6blZAClwW0fDehVs9zHI6pdLa/
 1usGqW7KTJKhmYbtz03b7OLVxGk59DTxwMLgQAaAL9TKXYgmsIscqVekoMJPpHBt
 OU2ZlFkgoily8w==
X-ME-Sender: <xms:6zVKXs3qwOrtHNMhOpIwWSEkrHY6CMseWGiJ0cHXZwap-FmmQavcmg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgr
 mhepmhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:6zVKXrGhXJpg_eKzHzyKv_QkB2GSIDwm40hOpYpVVP8sSIkOoxfNaQ>
 <xmx:6zVKXj8VA32Zs0Qu2kCGeUvgABTnXoYUNmWnyH5o3Kgax4iIGfMgmA>
 <xmx:6zVKXnkcXdJswB4nrvZOmMxA7RlK7cW54SU3dUT18OFYLd4PAEUtqg>
 <xmx:7DVKXiWXmEgtBBg2DxJ-YN1Az_s7Lb-UMaEL6PujRDbBh98uEb_Ucw>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 137EF3280062;
 Mon, 17 Feb 2020 01:42:51 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 01/34] ASoC: dt-bindings: Add a separate compatible for
 the A64 codec
Date: Mon, 17 Feb 2020 00:42:17 -0600
Message-Id: <20200217064250.15516-2-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224253_882074_BD3E6A9D 
X-CRM114-Status: GOOD (  10.72  )
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

The digital codec in the A64 is largely compatible with the one in the
A33, with two changes:
 - It is missing some muxing options for AIF1/2/3 (not currently
   supported by the driver)
 - It does not have the LRCK inversion issue that A33 has

To fix the Left/Right channel inversion on the A64 caused by the A33
LRCK fix, we need to introduce a new compatible for the codec in the
A64.

Cc: stable@kernel.org
Fixes: ec4a95409d5c ("arm64: dts: allwinner: a64: add nodes necessary for analog sound support")
Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 .../devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml  | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
index 55d28268d2f4..7c66409f13ea 100644
--- a/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
+++ b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
@@ -15,7 +15,9 @@ properties:
     const: 0
 
   compatible:
-    const: allwinner,sun8i-a33-codec
+    enum:
+      - allwinner,sun8i-a33-codec
+      - allwinner,sun50i-a64-codec
 
   reg:
     maxItems: 1
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
