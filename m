Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 889BDAFF02
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 16:42:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V9JBta7o8HApUm99SaaFGSeFp8q294n+YsjG2Ja91uM=; b=HcFZsvgdg4+AjZ
	adcm7zlI6MQo88hGaX1IylLoheYoAlcq53RpRJnyr5c4gu+KTqgGeh8KcyQEQMz1B8yQSVvkK4vF+
	kxMTPZu+/CMPPK2yMGre3BzhQzwJSUeczqk6GEpgDdjhNrRMZHWSblZgfQ0v1V4AWCsbVGzvNX9aF
	swQtx5JZUjRjXRW6pjkLDGd5eWO0tQB4MmPTavhABBnx9clkvSv1OVHItEaH5ZZH6d8gB1OzAWBjv
	K0AF4YA/pWnIWM9rMMmCfgiDfS/4q6c9bdIwW2fWZ3nHQMG+qaAxOQIlHSEdZzyNA3b3OeJ0jDmym
	BCr0PEcmnpTlfko5kXPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i83pJ-0001qf-Hw; Wed, 11 Sep 2019 14:42:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i83p5-0001pR-R0
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 14:42:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 60E521000;
 Wed, 11 Sep 2019 07:42:16 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 392243F67D;
 Wed, 11 Sep 2019 07:42:15 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	joro@8bytes.org
Subject: [PATCH 0/3] iommu/io-pgtable-arm: Mali LPAE improvements
Date: Wed, 11 Sep 2019 15:42:06 +0100
Message-Id: <cover.1568211045.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_074219_918770_FC4A3E59 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: robh@kernel.org, tomeu.vizoso@collabora.com, narmstrong@baylibre.com,
 steven.price@arm.com, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Here's the eagerly-awaited fix to unblock T720/T820, plus a couple of
other bits that I've collected so far. I'm not considering this as
5.3 fixes material, but it would be nice if there's any chance still
to sneak it into 5.4.

Robin.


Robin Murphy (3):
  iommu/io-pgtable-arm: Correct Mali attributes
  iommu/io-pgtable-arm: Support more Mali configurations
  iommu/io-pgtable-arm: Allow coherent walks for Mali

 drivers/iommu/io-pgtable-arm.c | 61 ++++++++++++++++++++++++++--------
 1 file changed, 48 insertions(+), 13 deletions(-)

-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
