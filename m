Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5791E1566D4
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 19:38:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+GTRmJe9/udkTlu0KXpb4SZ4wpyxRiZUqUsnIF2Iips=; b=O5GLFDkvkbQmJU
	KOTeiYJQ9Jkwd1XbKDgH0lr+V8xvlVkK5s1g4CktHxbvrv098AekGw2r8KjDM7K4Klh79Q2Xi99IV
	XZ3JnoqB0CXfBj4Yk9cLWhG1n6zAIt/7u8IGK9Es9VbpoNJIEkzY/DX9YF568rNwn9x2/h4mw5UUJ
	PkO3Zj8prC1kiDuKJrrd90ViMMBk/FkinpOEDXPf/COSciZeLEEtkre+G/tafb1hmeN+1ThArnP1t
	K/wsp50E0wOcVaTp5/LciiaBHM08oa+nr+rmk5qFBO2S6OkVsoye/UuM/KqDWmGScDWV40aEjhsNs
	a8SPsoaF7V4kt7V6BdWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0V05-0001og-Uq; Sat, 08 Feb 2020 18:38:42 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0UyX-0000Vi-QD; Sat, 08 Feb 2020 18:37:07 +0000
Received: by mail-wm1-x343.google.com with SMTP id a9so6207059wmj.3;
 Sat, 08 Feb 2020 10:37:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hRkPExrL63331yWhoKi03csinXjXhPNQwWmMbM7w46o=;
 b=UEC0UpG2p14iHJSU4WkX6eWFx9d1ZrjGwMix75y6gn4mB9vo2Bz6OdbOAiTVnDFNdA
 kHaNYBVtSdWUb18uYt8Re2C4VmqtY2KceHrDEzhVTPz56EF+OLyaOorEsPkZsK9Nbsd6
 wz64iQkTrWLpcoNNc8Hn5TUKkPQonvA/P8nBTKbRvODetvF85EV4PPhEnGa7/GYjmZaY
 x2l6XgCInciUapSaXHUipQ+PN6LW3H+ypy/b0/gIKCUXccGDLWT52kK2XyAd0wDY7STv
 CILOQSijsDnx98PqipPyD/awNKYdaLa1audtC62ntVJ0kHpwpvk3ufeHtzE6Lov0Tojl
 LDaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hRkPExrL63331yWhoKi03csinXjXhPNQwWmMbM7w46o=;
 b=D2Qcb8/6QUlORaWQeYH2CnsuRRZKe2IeplTcyb7Uy/ujLDOkxsTOhGTriOYfZZMKwy
 3MdNwh9D5c1nA+ntO1hoOzOLnQnuox88b0AOeTEZTPleU7NqEMaMUmEyYyxfkVnN65Hx
 7X7rnb7zXvLAgvXMpQ6rhNlYiWNoPj+y7t8OOixgWTHV5m8R8vq6lZMCoMxsxa5XwOPv
 1fMbqXaAYhd/3FpYalILbEe4PFSo0vRkWYL+7xFihvGsGOrFunfhPU3yhqzXvEZRc6tG
 KiM1VhwZhIBB0etpCiF1jdZueG0aeQK7D4X5LCDsmlXPtl+xtOhImcY6AXy6kJ9CskmM
 tSfQ==
X-Gm-Message-State: APjAAAWpcMekVO7CTzUak+JHyOf8jrWyOdTXb3gFVgUP+GbTGT7PR8N2
 9v56kILqKwropksrI/x2EK4=
X-Google-Smtp-Source: APXvYqwFu7OC7ixOqiSrg18we1AFkhBXmQoqPIvj66lfI/PTesneFDIRfoJbBRYAkWP5qo2AT7T7xQ==
X-Received: by 2002:a1c:3b09:: with SMTP id i9mr5239091wma.31.1581187023994;
 Sat, 08 Feb 2020 10:37:03 -0800 (PST)
Received: from prasmi.home ([2a00:23c8:2510:d000:a553:90a1:93f5:e306])
 by smtp.gmail.com with ESMTPSA id b67sm8404385wmc.38.2020.02.08.10.37.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 08 Feb 2020 10:37:03 -0800 (PST)
From: Lad Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v4 6/6] misc: pci_endpoint_test: Add Device ID for RZ/G2E PCIe
 controller
Date: Sat,  8 Feb 2020 18:36:41 +0000
Message-Id: <20200208183641.6674-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200208183641.6674-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20200208183641.6674-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_103705_875817_7A3D78A3 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add RZ/G2E in pci_device_id table so that pci-epf-test can be used for
testing PCIe EP in RZ/G2E.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/misc/pci_endpoint_test.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/misc/pci_endpoint_test.c b/drivers/misc/pci_endpoint_test.c
index a5e3170..3c84e9a 100644
--- a/drivers/misc/pci_endpoint_test.c
+++ b/drivers/misc/pci_endpoint_test.c
@@ -66,6 +66,8 @@
 
 #define PCI_DEVICE_ID_TI_AM654			0xb00c
 
+#define PCI_DEVICE_ID_RENESAS_RZG2E		0x002d
+
 #define is_am654_pci_dev(pdev)		\
 		((pdev)->device == PCI_DEVICE_ID_TI_AM654)
 
@@ -797,6 +799,7 @@ static const struct pci_device_id pci_endpoint_test_tbl[] = {
 	{ PCI_DEVICE(PCI_VENDOR_ID_TI, PCI_DEVICE_ID_TI_AM654),
 	  .driver_data = (kernel_ulong_t)&am654_data
 	},
+	{ PCI_DEVICE(PCI_VENDOR_ID_RENESAS, PCI_DEVICE_ID_RENESAS_RZG2E) },
 	{ }
 };
 MODULE_DEVICE_TABLE(pci, pci_endpoint_test_tbl);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
