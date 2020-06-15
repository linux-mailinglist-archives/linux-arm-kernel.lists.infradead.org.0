Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B1D1F9225
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:49:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eUXah+BmVET/KrtTdApcsQ7JbepxHpUHUZoXRlQ/jLY=; b=OOgSZeGDo9mrUk
	G5kz5u+2vvBbO3w4ulNYCYvNqlAF3cT0Di2Yp1Ylu0++f7zb6S0JrIq/l3CldPv+GPrCQMDXSJyx4
	lnSvygUD6uXtJyphR+2qpiPdUGnP1wzcOpJ3Rq3gOfVLKLyW7VL9tGqZHsbtmn3xHa35MuliaiNiP
	qMcvnpU+BDNUcMWtWXv/Q966JLQrSYdXRYfTlCmxhKIFEyyPFW+j6Imv59f+IGsIivnsgvcmlEkPI
	UjA0bkrMGjyLSbIK0Onu1fbBBmRUWP6iKYabdKP6NC9fJIn/NXC4xE+t1y6x0npn3e845B9ru1P+A
	/zjM6/LwS8WJhTs2DZaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkknZ-0001ZU-1h; Mon, 15 Jun 2020 08:48:57 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkkgp-00021P-KO; Mon, 15 Jun 2020 08:42:01 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id D75EF58014B;
 Mon, 15 Jun 2020 04:41:58 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 15 Jun 2020 04:41:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=5Q64h3nd5fpXR
 ewbNUIi82j+4VyFATnX0AmrGckBfgA=; b=nphvUawdr9fQk8Eoidf4kh/P0MIM+
 ay72WSUni6+nAFO94+uqON8E2w+3hOqEocvaetWdk/mu0HfiIkyE/pDS20IAruHa
 6hHt7A0bBTYPdCATqEaMEtsTYN3r5IiiqTutO03l8DKFcoXK4nDIpOfeaVQ737HN
 Vo/PB9odX0D5GgLBdBdrLowo+QL6BGDYh3uT7FF/mEYGXip9CK1+FSOysnKZHwRi
 5JUTdKu3m31OZhdTdubNtolNe7p5qy9n+dxImIf/pGVVAyUEqLyJ80gvU9n8o9nv
 L7QmI8aF1fXBMg6ge0l79Uc62ynfVwIpn/sTmPzub5e3tisDXMEyiGGVw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=5Q64h3nd5fpXRewbNUIi82j+4VyFATnX0AmrGckBfgA=; b=e4+Xotui
 /LAdlLtyPh4/EExIiOcb7u+iyNum7h3q1TGc8B1o9JU/GczPM/cxwhdJ6Qp70iYX
 1v5XYjMcl78cYxYLg3Gf1ZSTcuV+BmoqgtGasXwKpbd9qbNzIZPbpikIeFfamKtZ
 9Sg1SuUmsgzgquXXh6IJDwfdbewrQ3aUfS1WjYrJEDUMm4MKFMs2JqITVajoE76a
 hT5C5Fl7XXRNundbu5S0ygrOo/F6G/Xy893YyQUeK/x1tehcoV7t2WmSHOGpNFtI
 QgJDx51KcuIK8skYXEJbsyoWTyom5F59LnWtd2WbnzXKMoOd+oteBaqvIpvkpZLG
 viXO5FUCLHzR4Q==
X-ME-Sender: <xms:VjTnXlugfohHkjZltC4WHkjNyFeaSSzCE8R7Zxk8wHwXVJ0kYheu1Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudeikedgtdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepvddune
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:VjTnXuck1uc4dvkhZRVQvzYuDd5uWGngH3oiRDakWpTC9r-ydaD6SQ>
 <xmx:VjTnXoyYqWnm-eX1RL70GN0_7jbOy1O3AY7BQ3d9nJkJT6WIu7FerA>
 <xmx:VjTnXsMnN6qN48iddDVUIV9Zm1V7I-ekCZrYyK8aeFtfDGHhAZJyUQ>
 <xmx:VjTnXka_wecngaQYHKq8ArXktGiM-3M1ExLG_4c3A23Bxah_A94vwA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 6D5D73280064;
 Mon, 15 Jun 2020 04:41:58 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v5 24/27] ARM: dts: bcm2711: Add firmware clocks node
Date: Mon, 15 Jun 2020 10:41:04 +0200
Message-Id: <9a6f113140b3115150bfb18ecb248a48d58562cf.1592210452.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
References: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_014159_839148_EEAAB698 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [66.111.4.224 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have a clock driver for the clocks exposed by the firmware,
let's add the device tree nodes for it.

Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
index c7f1d97e69bb..222d7825e1ab 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
+++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
@@ -69,6 +69,11 @@
 };
 
 &firmware {
+	firmware_clocks: clocks {
+		compatible = "raspberrypi,firmware-clocks";
+		#clock-cells = <1>;
+	};
+
 	expgpio: gpio {
 		compatible = "raspberrypi,firmware-gpio";
 		gpio-controller;
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
