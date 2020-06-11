Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF0C1F6294
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 09:34:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yz4vDhns3pj8ATd9nOXiq4LlHGOnZVfiOuvanGUOV4w=; b=P9KS8Y/Mhrdyfi
	W31P1fdrXPNyPeohTaMv1ThY3+N1wLSDTKGEsE73z7C1d6AtmIvaBqzGuqeTOnKIjHTgDwhUpMKKl
	VhnHcgEjscto9T2Y5pM8hnJJkfAJ6vRBsB/Pcm0tFXxwxSnEa/G9elZCL4Tfr5eXMtlUGp2UEytxJ
	Wq6pXzaIvfyJxCzbDKmV0HXHcVyf+Ati/fSpnoLBzcy3jbrMqnLy2ikIwyiJxHbDRFLnd0Gib00sL
	CyNf4COGx8QxBL3klV5uvCtqyx8pHT5wDPsxVlowAIkexKb3d6SrA19Su2XNgKx54VKZaxezPOQvB
	00UjrRcfE6+/NKO8pe9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjHjW-0002sw-La; Thu, 11 Jun 2020 07:34:42 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjHhN-0001My-Lv; Thu, 11 Jun 2020 07:32:31 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 1D81D5800D2;
 Thu, 11 Jun 2020 03:32:29 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 03:32:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=LSIsfiNq5IpAS
 JINyuaxA/q7xkNPFUcq7XPKpT78W2w=; b=FHUNabk68335jcXzDJE1L2bS6ShRv
 XYjvSIHvVZCYSi1mkhX95aoB/NGC2N5WPxOwzwQYQ7YgsPeZ4xXUVWbcb0WWztek
 fOnt+b0HsYCp7vu6s+6KNd2k9rmcQfR5NOVD1tFvkk5vuRNxgXr4i66mcDGq4Bz4
 rzKP9V7MEdlmHy7zmoM6txVS7TGnIS0pViPdEVQRcBj3HwE2wj8i5N0e9JqO8DsO
 oNUrogLTKCWh35/1+0cYkPJqSnRJ/yCrxtfvF1bonDnjvfbINWvCHkJZsoxNp3jF
 fdVm5+GzzOnfU789hKyZu1/jT84DpkR3n8MBeXPAkvzLVzAiFzyLnfhfA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=LSIsfiNq5IpASJINyuaxA/q7xkNPFUcq7XPKpT78W2w=; b=K3BBOHqb
 N5urRueOgQ6R94yUQCugBINgwQa9WPCnngdU9BWGMiCq09rmtowSaSs0cIa3sv2v
 ZkOEtbTNoic7qc9wmz1i7nTwk44t20TM+mz5eHOjhqR2AIYurrCb8SduHszldOoM
 ba4AjHa9GwUgsPi9HPOjaJiXSLqJjtH/WAJ5sPuI4Qx7mvMrKHKXR+YFPM/HOm19
 TSkxSO/SUhMV2BpLqakpgD9KqzN/+NuT3Z8F6q5tFdC5a4ooRy+aByInka7zHvXH
 38M+lIeVTVgR4VxflI/8CQrTmt0+LiyZqdv6fhsxCATN3d0CX4micJHB+3tfr1iV
 iA979Zg3tsgg1Q==
X-ME-Sender: <xms:DN7hXkBaV3ANVIQki0vLn30UTGCCgh4L01-i5Sd5LLzVedoy01fs8g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehjedguddvvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveev
 heehvdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedune
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:Dd7hXmgJPUvpzSxxBudwjmvYfpoAmEtI5z73SpZIA1xSq3_bj2rtNQ>
 <xmx:Dd7hXnnJsLLf-nbcOsK0M62_wTEeKTzThngNEXOqXfrxSce9k-RLqA>
 <xmx:Dd7hXqzqt9inWLNmD-uh7brLnS9kHfnUyASPI1WAdptmPynAlKK3Zw>
 <xmx:Dd7hXkEC-aIVq1ipRUkm_mes6iEtkd4lJ0laIzzCRSl0ly0LSvXAug>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id B30DA30618B7;
 Thu, 11 Jun 2020 03:32:28 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v4 05/27] clk: bcm: rpi: Statically init clk_init_data
Date: Thu, 11 Jun 2020 09:31:54 +0200
Message-Id: <d38be655274084b74c29030acffd9b83d1be2a29.1591860665.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
References: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_003229_889768_12BC1F9C 
X-CRM114-Status: GOOD (  10.20  )
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

Instead of declaring the clk_init_data and then calling memset on it, just
initialise properly.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 8610355bda47..ddc72207212e 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -175,11 +175,10 @@ static const struct clk_ops raspberrypi_firmware_pll_clk_ops = {
 
 static int raspberrypi_register_pllb(struct raspberrypi_clk *rpi)
 {
+	struct clk_init_data init = {};
 	u32 min_rate = 0, max_rate = 0;
-	struct clk_init_data init;
 	int ret;
 
-	memset(&init, 0, sizeof(init));
 
 	/* All of the PLLs derive from the external oscillator. */
 	init.parent_names = (const char *[]){ "osc" };
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
