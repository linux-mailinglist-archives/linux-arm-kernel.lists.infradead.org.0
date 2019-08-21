Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9AF97CA3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 16:23:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oxcdpSCOtQ3Kn6G8IjN6cMQ+a6mFayz5B0tWm/kb15o=; b=jwpmISZB8koDaU
	Gz0yjoeq8dO2t9aZVNcUgMGz6WYlLpFaXUfy+lRVYcpIMXXb/oApLgdBV/thhUZw8cNyDvdyU4bl/
	OpgZ7ftsn1sNw4o3PEHr8uYrdOoZwnZQijaFpBjt4X/KlHQw1gXBwttgf8rgclGXNZ4w2yPa5WG+9
	nlPlAbDdT5b2Dx1pWixnxlFCRfC8OLHUwi172tc77n1/5F0NvID0dF5NKWBwJQesod3TzErsy1DQC
	yUl7vI5btTLpaLWMNcDfqpWcpv7YDLkwPM+VUTthBERACMyPgUqynH0hhyEnzhJbljLYVSSJUC5sp
	qMV57uQ67yEGqchYbClA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0RW5-0000Ez-FP; Wed, 21 Aug 2019 14:23:13 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0RTx-0006l3-F0
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 14:21:04 +0000
Received: by mail-wr1-x443.google.com with SMTP id z1so2203603wru.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 07:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YiVmfKlzhX6+dDL5MvsL5C8YsLLtVButKhe8QPNlosA=;
 b=hH5RdNmjJBT3vYOf4J5894Cvw2Zmb84ZuGMO502LyGx4AnTAzCTn1v+kpKBzaQfura
 AwEbyduOMk/aWyY/Zy3wXKW3463ceYmpLBoIJJy5YmTjGkXAhGFcICtFKM/BRZAki9sq
 wQ2YmFDn/UgZL3s2JQVi0vgJ9oAce7Kg5LJvclONdqBz0QAWa4mIvSMyHEY6jMAL/A8X
 5AW7uC2J3FYKYcnlANlVpvV+ZhKit5y5AMmfy36Axbez3TT6ZTMWyDaZk61htlibFy9m
 PGeKgpC0BE9aA4ZeAp5HRRDl1AaPRVnb6uBW59ssn0VvqUFgiLIflcj7A9Wiqqq3YmSW
 6JMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YiVmfKlzhX6+dDL5MvsL5C8YsLLtVButKhe8QPNlosA=;
 b=WJv9s0iO6uWWgOegz4V4jLdJD9qvbs54sWzddo+Ifl9DUeVkGZ9pFE0eszTeNcFUzX
 LejFWec41+jSkZYMJQ7hpC5NBmREOVKu2lPdhK7yT/er/E1pnT5ne4WESFy+MMr42rTL
 9ZieeOVCFvptluMMu6AMU6m/f2VkqaO4iwbJEOm6MuNQbeqSxLdT2jDZYedswxYIMnhQ
 vl55kTGHF35Z4Z4urTDDg8LZwtek8v8HVV7haupClkBfQ1nLfBH0BXKMwPaxR37pBGOt
 UmIWs2UIN29xFqkH+TUR8VNVpl2s0gABFKn4SQXO6BlHT20OGiSBkLebOEH5hy1seI0A
 bAXA==
X-Gm-Message-State: APjAAAUdvlpDvRE/0r5uKwDT1cbFnVAhmGT9CZ9M6X3Pt345umhw29F2
 uu/XIJxkNvzV5yrjVJ1EZtKAMg==
X-Google-Smtp-Source: APXvYqytA+IeL/TCAscedhtLS8+0EAHXjl0jLspWbuKk28WrOv8yxzZKMrlxagIGQlNyH/+Yr4ns8g==
X-Received: by 2002:a05:6000:4f:: with SMTP id
 k15mr4084382wrx.221.1566397260022; 
 Wed, 21 Aug 2019 07:21:00 -0700 (PDT)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id o9sm33418939wrm.88.2019.08.21.07.20.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 07:20:59 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2 06/14] arm64: dts: meson-gx: fix mhu compatible
Date: Wed, 21 Aug 2019 16:20:35 +0200
Message-Id: <20190821142043.14649-7-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190821142043.14649-1-narmstrong@baylibre.com>
References: <20190821142043.14649-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_072101_555710_18D2D964 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the following DT schemas check errors:
meson-gxbb-nanopi-k2.dt.yaml: mailbox@404: compatible:0: 'amlogic,meson-gx-mhu' is not one of ['amlogic,meson-gxbb-mhu']
meson-gxl-s805x-libretech-ac.dt.yaml: mailbox@404: compatible:0: 'amlogic,meson-gx-mhu' is not one of ['amlogic,meson-gxbb-mhu']

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index 00215ece17c8..d8127f863b55 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -476,7 +476,7 @@
 			};
 
 			mailbox: mailbox@404 {
-				compatible = "amlogic,meson-gx-mhu", "amlogic,meson-gxbb-mhu";
+				compatible = "amlogic,meson-gxbb-mhu";
 				reg = <0 0x404 0 0x4c>;
 				interrupts = <GIC_SPI 208 IRQ_TYPE_EDGE_RISING>,
 					     <GIC_SPI 209 IRQ_TYPE_EDGE_RISING>,
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
