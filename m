Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 483301F62CD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 09:40:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d8XKJhn6i42Z+qx4eNKaV0N9Txsak6hiWrG4AFrDqrk=; b=n3buj+fi40wxVU
	itcmTyL433ft8zlajV3hZb89YK+4cSV0IXhD/OPhnTLlkhgQGL4I4b0qPM8gQyezoHOCXRPgi4Owa
	1jSPkFPVy+iYSqblFKzdTTbCl36te9q1sl9j11tNy4DPqnL9jbCcHuh1pSAzRLi6epB32tK11cOBH
	unVoiRIn8gIEPfdPSsl5uJR0I1PvImEmd4E9A9VhXKPNpaSLbK51EI3iEmbJIw9NHcNfSDnXx9juR
	mBK0oKE6+1HtcmeG1vBprVJ/nowM9ybk/I/DqFxgfMs7tMoA/z+SuCmSzx1YxTuG9oGe86iRK9t3e
	rFGdaw5fXlk4HsxZT5jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjHpT-0004Vn-It; Thu, 11 Jun 2020 07:40:51 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjHhs-0001oy-1W; Thu, 11 Jun 2020 07:33:02 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 204FB5800D2;
 Thu, 11 Jun 2020 03:32:59 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 03:32:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=87eNKXUXLK3tl
 nLtCpRNlpSIF8WfpGhrUkNfAEF99uc=; b=IFZb6JsGyK0+Os7+kTFRv7txRH3XX
 yGLogFr7P8lvUGhJ36u3+JoT/H5mJ1bigee++ilUK9A7ZTtUTChoJSO3/fkzCYd0
 tI2D/PzcjfgcZ7hGYVPTyp3DOXNNi2WH4BMC6/jv2qL6QOi4oh/B4pCdhi/ogaDy
 vwwAAhs2ELQ7MFXQPE37ICBV7z+HeQ78/UzfcVEADe/QhQH7CX+1+D0HqU1+a0N0
 eqg8fpkNgidy2Drygq955EsKfSOU+veyeupXvLHGoic2OBWqcjy7cTmf6Dn4bMHV
 Kt1X+aCZyr9YDWe5aJSc3roQpgUmZrlnF7jlaEZ+xS6yobvMsDPfiKMhg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=87eNKXUXLK3tlnLtCpRNlpSIF8WfpGhrUkNfAEF99uc=; b=ssEg4w+A
 lHGNMSnnGn9RyQqMzWyiUjR1kzh29XjKn3oUXcQohPbG5Him68yJn9Yq0fCFjTMY
 FazuQSw/E58z8MFJnpJCx67f/uO9ra94cjN5Zi0TTVkNzIs/Y4lE9+BkKTDZxenF
 coIh6wJGTkQdLSFedJKEIMLDIwCjuoCWUS1fv4dCh8Nj8HDsx/lkm2zpIQXJhsF3
 ss245+qcLJxTGLYfWcW//nfBOhnEIJeEvoJMRsvt9/btgde5BsX22Gvn56FVXAbY
 l1tRLbF2QfS6DpxA97cuDcg+kShJwmQFbYZpNczSzU6NssDCRjt60V9FcIxocHFE
 KZdjHMgniZYZoQ==
X-ME-Sender: <xms:Kt7hXkXzm8do_fD0UKZCBjXODeYiaeCiqNsuq__rRzCWkWP1YG70Vw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehjedguddvvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveev
 heehvdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedvtd
 enucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:K97hXomuiHtV4EStS_8H1RaJopXsc7uzUYe8TxIVUgEtOumIU3M-bA>
 <xmx:K97hXoa-rRHeIkYgw4F4ERhRgwoADU-w1AaA60zRQuZ8S6Bbzijwuw>
 <xmx:K97hXjXvkbzsXo4IfIHqYIc9Le5VZgR2HolqQYP-blhyoD7oZcWbaA>
 <xmx:K97hXo5UAaVqa1IGdD343OGBT-aurH-giRiO9KiZOvgH-8Vz2L_l9g>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id B30ED3280059;
 Thu, 11 Jun 2020 03:32:58 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v4 24/27] ARM: dts: bcm2711: Add firmware clocks node
Date: Thu, 11 Jun 2020 09:32:13 +0200
Message-Id: <262190e38d34c4b009f417f2f4de1c73d5e4993f.1591860665.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
References: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_003300_262822_07C97476 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have a clock driver for the clocks exposed by the firmware,
let's add the device tree nodes for it.

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
