Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DE11E05DD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 06:13:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DgHx5qU/YxLwtM/o2mYgopeVPAssmY6PJaMpe8W1zIQ=; b=jHlhuEB5g+Jmxj
	TDsZmeiUDiWqvKliqcn3islUySYXvBzCdDk15MULLyVHSfduRry0okI+55sAMl3qfnkZFxJd3+I/k
	6+TYc7XOreBDHnGl3l5mW6xrYifdtc9ZlB40C+mK5EMGc31EA61Th+zccCvlWO6Vy3ggGUR70CnjA
	GT7QjvdSki4XytC8SnIiRCC6ChiCRzxoyOvWwHyFkNrzZhayXAEUDmUSel1Gaa2qxlGnNov87vpHF
	2J/k/fHztyauC70HyiMyre33gPMH7RZCKW+XlS3tt/NmScJa2n2LelD8h6VGiKSjhyI35edoX5w0C
	8rwKoiUucjBrWShP/wRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd4Ud-0000UY-W5; Mon, 25 May 2020 04:13:40 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd4Tg-00008y-6l
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 04:12:42 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 9DA91580090;
 Mon, 25 May 2020 00:12:39 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 25 May 2020 00:12:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=KItE/umB2E4IQ
 3k9ieRZkw7YzrbUp3ZSlvt5X/bA8qs=; b=nFR0dsScrHADLEKAwtEfNHfHDq8BL
 b16/ceAicmrWBhOOl/qc8+BAKoC8flNG6l4T7BcQfox6HLU27VCI88BdhY0Iwkcr
 qYKHG3bUcjfC+TtjH9ADJjKHUcx3hglZ1fpFxgdpF/6OBGDbTKhQvW+9xvOfP58K
 4j+oCtlaS0lEVsLyRUUz+AQN4i66J+jyeUe3jCoeRQx9qapu1btJEqLAL3fpPm+H
 7uUoqMaRAwpvErXwZw95IAkMtwRznbfT16/UNBjBMoUr64TR+uhKu+7Nhua/mFBZ
 XEImZCqrdEoC4LuAg/pilk0qQgt/PWjzA00J0F72L+oa+uOWiwVbbptjA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=KItE/umB2E4IQ3k9ieRZkw7YzrbUp3ZSlvt5X/bA8qs=; b=aIJaD5gu
 /uwn6ZB0pYKyP1MvFzOkgzxcKqKarzxYp1ywQH2oDrZWEioLt2kDaEIStaLQBbbW
 bfBv6ynRTcUP9IlU7IfFZ30XYaeG6u0aL5QHxyAXvMnj+XiNF2DBYepfd1tSQPLm
 bYTGozXrjklSB4Vi/z0DS+6Al8KrwTBbeoY5TwgHGL43YxJaqt0tZsSuLiOnTPRT
 4YkE795boUlFjzaiaFN+vpzYPsKLY8YlmoO0w4OOdl+zA9Gw+C/TKWXn4qS23C4F
 J7Fpbc4Nz8lIfXY7sfPCcsnX251IGhYFsUYr2fF0vqAetIqjK27Kw1h4ZZjI6fqa
 vEg4c0cGzs+1hw==
X-ME-Sender: <xms:t0XLXqB4kNvDLbXD6CoTnJo3rbHanhdxoZfjNpR2oqkChAhHGPKxBA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudduledgjeelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtf
 frrghtthgvrhhnpeduhfejfedvhffgfeehtefghfeiiefgfeehgfdvvdevfeegjeehjedv
 gfejheeuieenucfkphepjedtrddufeehrddugeekrdduhedunecuvehluhhsthgvrhfuih
 iivgepvdenucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghn
 ugdrohhrgh
X-ME-Proxy: <xmx:t0XLXkg4WYQveJ-QjGazGnb36PfgTrmerVESIkLppO6YuR7uhJ9O8g>
 <xmx:t0XLXtn-TcwRIPF3L-7-mF8Ck42KGPowql0HFsGbD2YJGvUtiSQWWQ>
 <xmx:t0XLXozkG3P_62II_i5rM6duqUW_vv6PDE3PWj0cbp8GQtnYhz8JSw>
 <xmx:t0XLXkJTrxjE5KfFT-IihcBEkX0V2X005LHg3SZUD8i35WBj_--Fnw>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id E7E523066544;
 Mon, 25 May 2020 00:12:38 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH v2 3/9] dt-bindings: irq: Add a compatible for the H3 R_INTC
Date: Sun, 24 May 2020 23:12:56 -0500
Message-Id: <20200525041302.51213-4-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200525041302.51213-1-samuel@sholland.org>
References: <20200525041302.51213-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_211240_391996_36B492E5 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner H3 SoC contains an R_INTC that is, as far as we know,
compatible with the R_INTC present in other sun8i/sun50i SoCs starting
with the A31. Since the R_INTC hardware is undocumented, introduce a new
compatible for the R_INTC variant in this SoC, in case there turns out
to be some difference.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 .../allwinner,sun7i-a20-sc-nmi.yaml                  | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
index cf09055da78b..973fe5d17af0 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
@@ -26,15 +26,13 @@ properties:
       - const: allwinner,sun6i-a31-sc-nmi
         deprecated: true
       - const: allwinner,sun7i-a20-sc-nmi
-      - items:
-        - const: allwinner,sun8i-a83t-r-intc
-        - const: allwinner,sun6i-a31-r-intc
       - const: allwinner,sun9i-a80-sc-nmi
       - items:
-        - const: allwinner,sun50i-a64-r-intc
-        - const: allwinner,sun6i-a31-r-intc
-      - items:
-        - const: allwinner,sun50i-h6-r-intc
+        - enum:
+          - allwinner,sun8i-a83t-r-intc
+          - allwinner,sun8i-h3-r-intc
+          - allwinner,sun50i-a64-r-intc
+          - allwinner,sun50i-h6-r-intc
         - const: allwinner,sun6i-a31-r-intc
 
   reg:
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
