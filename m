Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F99C173C05
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 16:44:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+GTRmJe9/udkTlu0KXpb4SZ4wpyxRiZUqUsnIF2Iips=; b=PQjXoyV49Ue/tc
	CZIKagDEY0TKSPIquoWQPfsfeNWUsKJLgMjNjp75wnO/Qan46aWzkUblSzXYmLaaS8tPKy3pqQTyR
	7TO4JHynPO+ZgBeEDEVG/6OoOdi4GnBj9m+dkY6BebswzhgZJJC9mhkh0QHVP6kVqLGov7F2N73t0
	vk5DF8b8GbFOfANplVO9H4eUbLLXaxI+imLx8R1yTn1lC0RkDltB1EsL2f1o8UrUIbhEj7EZKIWjJ
	2PQF2aMl757AoAP3EcUYVGFhjBXOebyuoqRkV3lUAWbl4Ockn4KQtrhxYl7CL5zq01XuADCrh3dha
	R1RuWRncpTwP/+dbu+8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hoa-0007iY-PX; Fri, 28 Feb 2020 15:44:36 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hmN-00063Z-CK; Fri, 28 Feb 2020 15:42:21 +0000
Received: by mail-wm1-x343.google.com with SMTP id g83so1487525wme.1;
 Fri, 28 Feb 2020 07:42:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hRkPExrL63331yWhoKi03csinXjXhPNQwWmMbM7w46o=;
 b=IO4EyAPn+xS3k3kXsj2p6D3mp+B71UwPYcFn/VwB6gUPmQz5tn+Ona5+GFFE9jVd7S
 xKejK+x/6KNw5awfV/txpxw3kSW3XBtsgsS/2A31Dc12V+TF1/YuCf0Umw6OEFqKjxI8
 NR/aDm3Zqpq6apW7gQogXtlpog1JiGHt/oGFGaakGNyX3Ermu87el+W5j2YCn/3tzmd/
 /QiFMyPPStLovPhlf6nx+IKdZ80eRSvoQzdoBJnwwN4s9vOwJH6AwBnzKBraPvYSFyWk
 cm1W4YjVDDzs1yaTQ3EFkx2Cp5nViqGmTOLfn8PbXZWyRAXSyxEu0Ch7MWJx0Zh6lKqu
 szvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hRkPExrL63331yWhoKi03csinXjXhPNQwWmMbM7w46o=;
 b=tdpTe8COdtOPwIAyHGxK/s3AW6BjfME0avvFk7H/BG7XlOnv+j8Pvj+IZufdShnBeE
 vtpttEp8p+zVYNBW7BX56CgowdOsW2C/UkwX4f6FUqNc/RMwmDLLJoUiNo5yz4oLjNil
 gSAbDaS7hJXCb37CFksxwv8Khecs6W595KkictV5zVDw90Bkgfjpu4rJIhyGq4QS/fpI
 VnObJHTiHH/UsvzwGwk/YqBw0oED3PiY6EGqdAMsQ2+ZdCAIa2NREnK/meGnqg3Ldk+K
 BG+wc0Eqmmg14Fb2Q7j3s5pti6TP6f1aC+dL3kH3yhdDURLTljmMKCeqgIHeYIXME64a
 LjhQ==
X-Gm-Message-State: APjAAAXiuZ5F55JNRDtsIGI8uMoa4NBwkAzACiAZG7gHQMMZuI/dx7jC
 cOcFRg2XhlSDeVZh6LE9ib8=
X-Google-Smtp-Source: APXvYqz/GzpMKjVbgeuIuiw7IadIFtmQ7Zb1hX5sTOTpT/zhw3XLGEkcEEHXB56OCUnevlwbKvibng==
X-Received: by 2002:a05:600c:218d:: with SMTP id
 e13mr5545446wme.102.1582904538161; 
 Fri, 28 Feb 2020 07:42:18 -0800 (PST)
Received: from prasmi.home ([2a00:23c8:2510:d000:3855:fd13:6b76:a11b])
 by smtp.gmail.com with ESMTPSA id k16sm13355349wrd.17.2020.02.28.07.42.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 07:42:17 -0800 (PST)
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
Subject: [PATCH v5 7/7] misc: pci_endpoint_test: Add Device ID for RZ/G2E PCIe
 controller
Date: Fri, 28 Feb 2020 15:41:22 +0000
Message-Id: <20200228154122.14164-8-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_074219_658510_FFED2E6F 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
