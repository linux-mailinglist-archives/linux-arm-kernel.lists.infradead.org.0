Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FEC15CC0C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 21:21:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6ed/aqz44LniEUSSVVj0HjV/T8OQiRdpAGDzp2UXuk=; b=dW8OV5v6QsTrh1
	knRUuY4DxjYO3Aa+RIwrsiUBYGYO2w92VoPY2kWFqLmaWIGXAJjJkB4rYG8BSuFWd/emqwYwxwsbm
	4mkTi623C5tRS0DSXpjDzya6bjITWFq2f6heRLMknldLLat3mVtiH7QczMwickODQZC+8xOYWrk5C
	ZHeDjw9vWwYqZko331Y67KDtRNK8qRZq46ASp0olIRyDOrOuv4pavL8eakLnVzZQhnOQtGH+rc47u
	foDBBt3lvHzeRE8PkbPViPnCqwmdPqw315ScfMFaB7vKLmGCnR2VZ0oO6rDepqWlyJ/WFfhMkXCSd
	M9TXDbGm3I6nYjvLhKmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Kz4-0000W2-1F; Thu, 13 Feb 2020 20:21:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Ky1-0007mJ-AW; Thu, 13 Feb 2020 20:20:10 +0000
Received: from ziggy.cz (unknown [37.223.145.31])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2590A246B3;
 Thu, 13 Feb 2020 20:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581625208;
 bh=X7KsRH6DscUpjMQI70+Hyaz0XzZaPGTEIvt7PfxLkJk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=yCOoK0hF34b3yyDcQbzf/27+JUNNrwSvZbPBkyUpeiIIeqJSBfLj3WPdUHCmef8J2
 yEby/JeHYQACrqMzRYxgPsD/g3wHQe/Dzna5b0GYD59cafjWoX/GSliZUjVOirtEnf
 fnUhAzQn/BnK4P+t9nBoNPFMKnd0+zG6HbmIVyU4=
From: matthias.bgg@kernel.org
To: robh+dt@kernel.org, mark.rutland@arm.com, ck.hu@mediatek.com,
 p.zabel@pengutronix.de, airlied@linux.ie, mturquette@baylibre.com,
 sboyd@kernel.org, ulrich.hecht+renesas@gmail.com,
 laurent.pinchart@ideasonboard.com, enric.balletbo@collabora.com
Subject: [PATCH v7 01/13] dt-bindings: arm: move mmsys description to display
Date: Thu, 13 Feb 2020 21:19:41 +0100
Message-Id: <20200213201953.15268-2-matthias.bgg@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200213201953.15268-1-matthias.bgg@kernel.org>
References: <20200213201953.15268-1-matthias.bgg@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_122009_446471_6F2AF0F7 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, drinkcat@chromium.org,
 Weiyi Lu <weiyi.lu@mediatek.com>, frank-w@public-files.de,
 sean.wang@mediatek.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, wens@csie.org,
 Matthias Brugger <mbrugger@suse.com>, linux-mediatek@lists.infradead.org,
 rdunlap@infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 matthias.bgg@kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 mtk01761 <wendell.lin@mediatek.com>, hsinyi@chromium.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Matthias Brugger <mbrugger@suse.com>

The mmsys block provides registers and clocks for the display
subsystem. The binding description should therefore live together with
the rest of the display descriptions. Move it to display/mediatek.

Signed-off-by: Matthias Brugger <mbrugger@suse.com>

---

Changes in v7:
- move the binding description

Changes in v6: None
Changes in v5: None
Changes in v4: None
Changes in v3: None
Changes in v2: None

 .../bindings/{arm => display}/mediatek/mediatek,mmsys.txt         | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename Documentation/devicetree/bindings/{arm => display}/mediatek/mediatek,mmsys.txt (100%)

diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,mmsys.txt
similarity index 100%
rename from Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt
rename to Documentation/devicetree/bindings/display/mediatek/mediatek,mmsys.txt
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
