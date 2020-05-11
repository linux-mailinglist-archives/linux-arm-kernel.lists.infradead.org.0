Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E2D1CD111
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 06:53:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lQTGm2l/0gG/1tAOXRgeVJMi4hfcaFcTs31Pf5sTVkw=; b=jKgxhlJ+C0m7sO
	QdCAj4Zh2LNvHAgKM5MgMwkIQNdJCvkgg3jw7ju3X46Bv9o46ywGfDWO+0uQrQn7Wy7+qaV3YJId+
	puLAYkU8aYuX74SVk58x9riu1wNBD2E0KIqZz91YlcZCR3XmRe+8NEKAhUoi2YNFP/P67P8/ovcAe
	YbwnM2rXX7vtaO847sB6A4irIHPqlXK17D59cbfaq5wc5VH06OoUmTO+c8HxmzVNMAkbBI5+uXEl4
	rdXKxNgapGrVNyEDv3iAsuwXqteyHxH9aN4yYNxcyQQWtDOMydq+PZ0QwVAouXYaC/FCAWreeal9X
	oBmkxtgfqObLt3WLHxwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY0Rl-0008S5-Ka; Mon, 11 May 2020 04:53:45 +0000
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY0Rc-0008Qz-QI
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 04:53:38 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 775DD31D;
 Mon, 11 May 2020 00:53:34 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 11 May 2020 00:53:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alistair23.me;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=8D8NJelTXQUt+y8GwfLHQxRi1C
 J86uY3Kb4mQLltkjw=; b=zgllr2/We9jSxleBcw1/2ntO2hUrSugVHY8sobNYiI
 HbYQxNlr2bs7gcpfKFsFT7G25mrKBIW7bhZoY1/gDpDhzxZ40IU0uYtt3VpblQzs
 HXjerXdr107XEOGeldKITEWDOYHMEgQeXZiozOc6v0a3YCHXVWYE6NKbXKHE4KT+
 T63+aX+EqNsCWdLHAd5HV3KyGVvG0DRaK0ynN6dmRqltIX/KJIO3KASszbYJ801N
 qsK9dPj21asjFYi8aLXIFLUmDNUuWZ/OrK5JsfwCxd5xfxYAxwdnPG7/rdShBIs/
 Ad0KOfwfmlUkoZTVQj/uy3Bf5XGWFahdQHRmnf9h6mhQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=8D8NJelTXQUt+y8Gw
 fLHQxRi1CJ86uY3Kb4mQLltkjw=; b=lsRP5ghf6A2aa0OYp6Dq/fYECjUfzei3d
 v7JExSsAgGZND3KdvNmAVBFK92dDdyZySqiXfwsdwfhS7EWYgTJWNak9smsWq+Tc
 eX+O5t3Oneq9dNmQ3+7kd2LnVpMmKFiKfgKDct1PRUBlQkROFHKcywJwFtAEjjjn
 axXum50LzGpJ36ut77SDC/ZjS7Yju701bC+yZ+KXgSagt1rGmcG0REIcpa7IsplI
 spy2Nnl9LCncapLJRz6Z9GAuisZ39kF/aclitjfLFutFVOsK1N25G5JRdDSEWWzY
 OopTf6VNJ/EHaSNeQkrgI8EELv6MTqyNqMEhK/KzM4Z9ohtGnhizA==
X-ME-Sender: <xms:Tdq4Xp7hFnFA8RCNxMMjdMy6lY6Ai6a-stgC2CS8MhP20I0dFb5EHg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrkeelgdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpeetlhhishhtrghirhcuhfhrrghntghishcuoegrlhhishhtrghirhes
 rghlihhsthgrihhrvdefrdhmvgeqnecuggftrfgrthhtvghrnhepjeeliefhvdetgfdtte
 fhtdegffdtiefffeejiefffeevueeljeehjeevhfffueeknecukfhppeejfedrleefrdek
 gedrvddtkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpegrlhhishhtrghirhesrghlihhsthgrihhrvdefrdhmvg
X-ME-Proxy: <xmx:Tdq4XlUhq1SfSIi0Dog1rq1pXW9vvaDysx-oDCvZGsuGvxBm7_afUQ>
 <xmx:Tdq4XjE_-2z8D69JUQ7-KEqmV0cCeeLtiIPZCOYBYdWEAaSbVOcafA>
 <xmx:Tdq4XtcDYespdNQn6t2OCVTV5rOCfMpgdc0k_MLh4gBKZrY5QONaJQ>
 <xmx:Ttq4Xlg3sojeM94SUMQqTIyZesXdG6DZCFyPz7ktH0hj6K5Dzl7WQg>
Received: from alistair-xps-14z.alistair23.me
 (c-73-93-84-208.hsd1.ca.comcast.net [73.93.84.208])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1146F328005D;
 Mon, 11 May 2020 00:53:32 -0400 (EDT)
From: Alistair Francis <alistair@alistair23.me>
To: broonie@kernel.org,
	linux-spi@vger.kernel.org
Subject: [PATCH v2] spi: sun6i: Add support for GPIO chip select lines
Date: Sun, 10 May 2020 21:53:30 -0700
Message-Id: <20200511045330.690507-1-alistair@alistair23.me>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_215336_875636_914CC47F 
X-CRM114-Status: UNSURE (   7.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.19 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [64.147.123.19 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Alistair Francis <alistair@alistair23.me>, linux-kernel@vger.kernel.org,
 mripard@kernel.org, wens@csie.org, alistair23@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Set use_gpio_descriptors as true to support using generic GPIO
lines for the chip select.

Signed-off-by: Alistair Francis <alistair@alistair23.me>
---
v2:
 - Use use_gpio_descriptors instead of spi_setup

 drivers/spi/spi-sun6i.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/spi/spi-sun6i.c b/drivers/spi/spi-sun6i.c
index ec7967be9e2f..ecea15534c42 100644
--- a/drivers/spi/spi-sun6i.c
+++ b/drivers/spi/spi-sun6i.c
@@ -470,6 +470,7 @@ static int sun6i_spi_probe(struct platform_device *pdev)
 
 	master->max_speed_hz = 100 * 1000 * 1000;
 	master->min_speed_hz = 3 * 1000;
+	master->use_gpio_descriptors = true;
 	master->set_cs = sun6i_spi_set_cs;
 	master->transfer_one = sun6i_spi_transfer_one;
 	master->num_chipselect = 4;
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
