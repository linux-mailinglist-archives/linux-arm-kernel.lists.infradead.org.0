Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0072DF1F07
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 20:37:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ijnwsm6f/3gyZngzQjhprTRQq2yXmkQqhlf//ViX7aE=; b=nusto+XrDAtvHD
	5LMxleHhPc0fEpnAEApCmRJTxtn+LqKoes+b9NnkcfRrM7bPXqQHwkK137Y+tLkyMmbtcX7cCpzk6
	G2ISpOuj0CWfqaO7WuEEPCjblai8gCLmLm0DtHYJWETY7cPniwCO52+rCRvS5G6cUf048T2lg7g++
	oQ3+c6JB0LzgU7Ok+F93+TB3h1lU1sIlZIhuQvcQTY+XsOzaPje7i8Zj1Iu9ZSFHfo1/Q2A3y3BUa
	kwmaJOx3Y4uxIRlB5fI9JAA6q/5LKPLT4omLJdpBwaNh3ju/Lx+cF7FCSixuam7DlJO8K4MHeVmm4
	R6cKRbkC3o6aQ58OTv/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSR7j-0004YG-4Q; Wed, 06 Nov 2019 19:37:47 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSR6Z-0002jL-Jh
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 19:36:38 +0000
Received: by mail-wr1-x443.google.com with SMTP id f2so18558394wrs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 11:36:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Yf803qGOor/Cot7/OEfF6HTN0BEeLkegGJ0D7t2YoFs=;
 b=QytuGrv5RaR8aHt2W6tADBMSK2iQnketqSww+UVW4+YHUos01ZC70IfPiU1ae0l8qy
 EJrDiVxd2jztoK/QS4LEgMtoPk3aik9YUmAwXk1AwLGl1V4X7zUv8cJXwNIhMATYlOXn
 bW3qI/FDnQ0+R01cCECxVGt7X1RrUW3SnkfkdE4hFzo0W4SFm+dF/RReN0CoPNDthv47
 oPMQS65MuUFV0MYWPqsU9Eetkt7BOPlHzW0u2C9nhm7e3QSFxdnIKJDq4n61s9CaYG7X
 7EqeJ+lilFzCWetYDPeNufRQiMHXEg3pgRy8g7JkRGbhECdh4NsNGqCP2tVBoesBlw0N
 SwyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Yf803qGOor/Cot7/OEfF6HTN0BEeLkegGJ0D7t2YoFs=;
 b=BDh/OCnGLMU7kWnwszZ8wpSZsNFli6rEI6xtVP7+8IpquZF+WStQ5tfvt9Jus/N6Bn
 spD0q9wPBPQLvRfhdkmnFxlNYv1ySkXci4ooLVN9dCh4fC8jrKI/QjJ22YfqROdB2i2y
 qvnYpVux6dzNVl/X+eF0DViI7ltpn8s/An5e+gwMIBL5Fa5W1EF9lBUx+v+F2ep4uqhw
 NdBqjqz83H/6wBCrcrvoLzkIAzu09V3ha0QV9PzkVq5Rhu97sqKI7TgFF7isVsVhz4+4
 U6+sh3Tv/dUt9XiOO4EX8+wgkvE3M9ogzveNCdNl1IQ9Knm3qeehW7yz2D2GIrrFzYx2
 H9gQ==
X-Gm-Message-State: APjAAAUWTNgeQyqSJsD4/CLSgoQWZfVLyi9ajlIvPusnycGrwtpcMeWa
 j7jB139IlXZYdDu1Gzk/BhM=
X-Google-Smtp-Source: APXvYqwiFZfPLdQy6v/nz6k2CH2RqPsaqZfFr+dpybZn29YX1r2YujalQoWrrhG/dLD8IDDpq/MJXg==
X-Received: by 2002:a5d:5091:: with SMTP id a17mr4555540wrt.249.1573068994407; 
 Wed, 06 Nov 2019 11:36:34 -0800 (PST)
Received: from prasmi.home ([2a00:23c6:d18:6d00:1d3d:daa8:4e74:8240])
 by smtp.gmail.com with ESMTPSA id 76sm4311737wma.0.2019.11.06.11.36.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 11:36:33 -0800 (PST)
From: Lad Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-pci@vger.kernel.org
Subject: [PATCH 5/5] misc: pci_endpoint_test: add device-id for RZ/G2 pcie
 controller
Date: Wed,  6 Nov 2019 19:36:09 +0000
Message-Id: <20191106193609.19645-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191106193609.19645-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20191106193609.19645-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_113635_673295_E5D4C657 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.csengg[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Chris Paterson <Chris.Paterson2@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org, "Lad,
 Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>

Signed-off-by: Lad, Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/misc/pci_endpoint_test.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/misc/pci_endpoint_test.c b/drivers/misc/pci_endpoint_test.c
index a5e317073d95..346b03b6e4b9 100644
--- a/drivers/misc/pci_endpoint_test.c
+++ b/drivers/misc/pci_endpoint_test.c
@@ -66,6 +66,8 @@
 
 #define PCI_DEVICE_ID_TI_AM654			0xb00c
 
+#define PCI_DEVICE_ID_RENESAS_RZG2		0x002d
+
 #define is_am654_pci_dev(pdev)		\
 		((pdev)->device == PCI_DEVICE_ID_TI_AM654)
 
@@ -797,6 +799,7 @@ static const struct pci_device_id pci_endpoint_test_tbl[] = {
 	{ PCI_DEVICE(PCI_VENDOR_ID_TI, PCI_DEVICE_ID_TI_AM654),
 	  .driver_data = (kernel_ulong_t)&am654_data
 	},
+	{ PCI_DEVICE(PCI_VENDOR_ID_RENESAS, PCI_DEVICE_ID_RENESAS_RZG2) },
 	{ }
 };
 MODULE_DEVICE_TABLE(pci, pci_endpoint_test_tbl);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
