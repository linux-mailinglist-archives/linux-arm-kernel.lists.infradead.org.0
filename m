Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7328CBFC6B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 02:28:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m/BNuD9cUmYm3hrX/NF9YrB2B+QvCvt/owzz0SpiQj0=; b=bJYLKInfTfQLBD
	ivlACJ2+Wjr6k3LNF5VWU5jeUPaSsWiMjpJ3bDlKuhowqJxIUdxrH1kNL3Uz9Mw9dJXzw1/Q4eVZw
	uuFc2cJoFLfjyERynHsL1tNSWBbsQ/yBGiXY4RyWWVt6mDdeMZa6jS+u27WuQrZ+vN0qB1AcaVyLe
	oBzk+TkdEl7/4EEgqfYgzXzMWEmSGe4bjDgxCrW+K72InELwIB+Lm7OoATCbgXUxWMobs/oyGVCBH
	lO8PSxzzLudkgBA4WwZgB8c3zjSK0pDA8Xq3G9PLnVCVxiAXi+aWKPGGw0Ilyl6RlGX6fkMratgEE
	DF32eP7HIiQ5IbaOW5Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDe71-0007WL-5U; Fri, 27 Sep 2019 00:27:55 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDe4O-00058w-IL
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 00:25:14 +0000
Received: by mail-ot1-f65.google.com with SMTP id s22so777179otr.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 17:25:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JSIM/mVNAQUFTI8poYL0tbeVsabT6n06A8LUKfKixqE=;
 b=bsnUgHRBMdrBuXxmkcpIw9TCZ7+ZkPqRoQcZ8y+62OyIf6xHwycIlidxu4cloUOCjt
 KkjGpJM7aL0nFYZkDJU0LaUxeffY2q/iyLItzSgxjU1j7QaFFkcT5dyHvd2tLLkZmUTW
 Mkn3PYOVD6i7oIAmeYWZk9npKGGvC2TvpQOl6Q7woQhfcGZGPGfVs44XqLVz8E+i8w8J
 sX8/lgo7QIF+MGOlSH3B46SLe9jD8z+fnAFJnvHkUzlS4XUsUZWHS3NNTaqfl8N6VSp0
 qweyYfUOFEG/OcfG9sMhvwj6bb3i6qkzJNROHyDnqBtJjQ0kIz95hcADXGpnCJl/exU4
 CKvQ==
X-Gm-Message-State: APjAAAWcCf2xq0HUmvQGnVDouhKD0NYB8Qf1smi7uPwwYab888pFvuZw
 g9JUl+s1e9IHwWlnygwxvQ==
X-Google-Smtp-Source: APXvYqz+gt7zD0g7DVclnrzC6AFnTepOJfcgHAqg8BRkcLS/bgxsfuL2h2LiMFlwEq9ILoaJHvmz+w==
X-Received: by 2002:a9d:6d0a:: with SMTP id o10mr991391otp.221.1569543911563; 
 Thu, 26 Sep 2019 17:25:11 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id j11sm339866otk.80.2019.09.26.17.25.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 17:25:11 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 10/11] of/address: Translate 'dma-ranges' for parent nodes
 missing 'dma-ranges'
Date: Thu, 26 Sep 2019 19:24:54 -0500
Message-Id: <20190927002455.13169-11-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190927002455.13169-1-robh@kernel.org>
References: <20190927002455.13169-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_172512_765015_0994F990 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
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

'dma-ranges' frequently exists without parent nodes having 'dma-ranges'.
While this is an error for 'ranges', this is fine because DMA capable
devices always have a translatable DMA address. Also, with no
'dma-ranges' at all, the assumption is that DMA addresses are 1:1 with
no restrictions unless perhaps the device itself has implicit
restrictions.

Cc: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/of/address.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index e918001c7798..5b835d332709 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -519,9 +519,13 @@ static int of_translate_one(struct device_node *parent, struct of_bus *bus,
 	 *
 	 * As far as we know, this damage only exists on Apple machines, so
 	 * This code is only enabled on powerpc. --gcl
+	 *
+	 * This quirk also applies for 'dma-ranges' which frequently exist in
+	 * child nodes without 'dma-ranges' in the parent nodes. --RobH
 	 */
 	ranges = of_get_property(parent, rprop, &rlen);
-	if (ranges == NULL && !of_empty_ranges_quirk(parent)) {
+	if (ranges == NULL && !of_empty_ranges_quirk(parent) &&
+	    strcmp(rprop, "dma-ranges")) {
 		pr_debug("no ranges; cannot translate\n");
 		return 1;
 	}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
