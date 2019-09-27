Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2746DBFC63
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 02:26:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e3YLnqMgcNcXMhy/x0459/5Sq/lyVlb/+YKI05PcULc=; b=GllPXepKZOwDds
	SIKYuTgSHjXXKHxb3q7RHKHzO+iBymWaMKFh7cL24Hjotept3otbNphgUR9oHXCfZWfs6a9TqemMw
	mbTpMwp1CoN6txsDfbekIfIxMtfdYKry/UnkKk4xaPbRYzDjikj5ce1fxjLPPxWzLecfh0LJqcX0+
	pUbDd4Yh+Dokff3PKlg8vS/OvFYehwq158MYb6RK+Xf+bV4RHRi7dHEzhzleFlCCMwhiZEzmsFR9Q
	ahBVBV7D6pvrkq7aXCtPiL6pKJ749GCkUEW2gE38XD3DVLtVEhy+nU5tT+bk1vxS3nzWXUgxfAbz9
	pkBBi1ERKuiahN1rTmUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDe5I-0005ts-Re; Fri, 27 Sep 2019 00:26:08 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDe4E-0003xY-QT
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 00:25:04 +0000
Received: by mail-ot1-f66.google.com with SMTP id 21so755321otj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 17:25:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JkoxCwhnPe0SFeKySMCtF/hXJiLiKDyHZ2P8cGCAjJ4=;
 b=aZzKDddM8rKDXvQGnyK2uCSOsuxj2ziL9oflOpJM5AOs2GnyF81k6w4ld16f4RE0d+
 3cowVgYi4fdTMY4t1V7rjiGHjmuJnFF5LdMAG0lVwVxILIbeAglF8AIh6B0JVSTQmCdG
 Wrv5vCyXEq1INB9mKwhSRZcpZaoXFA8BLW14yt3hCRT1Mqmy0EAB333FkwD9fyIuWgk0
 p9GiO2iQqiA9Skq5arDTsawdzXESIABWbdPfGyUhqE/gWMEe7tQKkcC+lRdU5jgrzoZ9
 aDOLLxvRIm9Socfux9DDgts+wtQIF1riK1bXcz4CwsESlkRrXvRA1Pfq/lCi9U0bCg4M
 j2QQ==
X-Gm-Message-State: APjAAAWUvhxxvvjRlTjqDkcW5sZuthisJMWEXn5L+j2McScytOynQdMM
 rJfBeMDr/XohKQwMWh/FWA==
X-Google-Smtp-Source: APXvYqxZR3T1urKVEgD2urD3ZJXLbAOnRlRfEvJiEt8IQGqUlVsJBTO9efMTTpeSgg0sC4mgieqBMg==
X-Received: by 2002:a9d:4e0b:: with SMTP id p11mr1184024otf.280.1569543901894; 
 Thu, 26 Sep 2019 17:25:01 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id j11sm339866otk.80.2019.09.26.17.25.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 17:25:01 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 03/11] of: address: Report of_dma_get_range() errors
 meaningfully
Date: Thu, 26 Sep 2019 19:24:47 -0500
Message-Id: <20190927002455.13169-4-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190927002455.13169-1-robh@kernel.org>
References: <20190927002455.13169-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_172502_890384_4E3D1C1B 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Frank Rowand <frowand.list@gmail.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Oza Pawandeep <oza.oza@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 Simon Horman <horms+renesas@verge.net.au>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Robin Murphy <robin.murphy@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Robin Murphy <robin.murphy@arm.com>

If we failed to translate a DMA address, at least show the offending
address rather than the uninitialised contents of the destination
argument.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/of/address.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index 8e354d12fb04..53d2656c2269 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -955,8 +955,8 @@ int of_dma_get_range(struct device_node *np, u64 *dma_addr, u64 *paddr, u64 *siz
 	dmaaddr = of_read_number(ranges, naddr);
 	*paddr = of_translate_dma_address(np, ranges);
 	if (*paddr == OF_BAD_ADDR) {
-		pr_err("translation of DMA address(%pad) to CPU address failed node(%pOF)\n",
-		       dma_addr, np);
+		pr_err("translation of DMA address(%llx) to CPU address failed node(%pOF)\n",
+		       dmaaddr, np);
 		ret = -EINVAL;
 		goto out;
 	}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
