Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D9611DFE2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 09:50:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2zFITHzUAA95FWvCq3sJXAEKYrrxx0VK19fKpY8o0WU=; b=XBBKCbmDivLSJe
	c3TdgXxWGfgKl2YSgh0JtsMArgsKw6E5W627vGn26L2mKJPDu96PZeaQi6UXRiYt0HbfvPIvHVPqc
	wcbRW4Q9jyoBXnns9mX2KtWxOa0eDgSUHLk9Z9CfjWB/SUDy1g6gBGOvgMd9jsy5fxih+9za+nRPU
	uLpD6BhPrcubNzfCeeE/2/NDv/mNUjmMuSDT7n3Q4BR7aKpC948svNMw57/H1azdr9eN/NOoRu5/h
	MWQ9bqHY1gcIce0SGvIqDtvVOPHMbxWtkECaRu2CU30yqSPBaeG3sIp6G5cc1m2MRUoVfRffvRoyq
	8Kqf5LzURhiMr51tiHKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifgev-0000aV-Sq; Fri, 13 Dec 2019 08:50:49 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifgd2-0006Yh-Na; Fri, 13 Dec 2019 08:48:54 +0000
Received: by mail-pl1-x642.google.com with SMTP id bd4so952781plb.8;
 Fri, 13 Dec 2019 00:48:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yrmwheM1+hl4xPG9UeGTOMJP5qq8jouvYWPI+cmTnHk=;
 b=JXoAHKm2bI0UF8C3jLaI9pvYELwmQXbNwNN2AtjdVI+1nSAgHqrbt+7mijVaetV20Y
 6zQovqYzG18kdJuyfxMhQWB1JJynIx4K47ONJ0I+sOBz1A+DfTildAzUkIwkxZfuMhlH
 pAi6iJ6fk1NmUlCYsXZkHO0txpiD0UyWmrcLxJwuldyvXjhUBo5+tHJhSwPMVOi4WSz4
 +nDGpU7GVMaqCj3zyBPOKqfd0KEGupjIUghCCe4QBguZZ9d1cJgAICDyf6YwfSFtAMPP
 GrJU+GqqFIFP7fZNANPqfUubQdzy/Oiw63YKt5jyDH8yWauSZgX8kp4feWIVhDLry4tI
 zZLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yrmwheM1+hl4xPG9UeGTOMJP5qq8jouvYWPI+cmTnHk=;
 b=hi64ftZ4tsNYuF2rWe9Xpav1pyt7cWdVzVHf8m18le7l87sw+gVe1CqOLuGPnrpeNY
 gYo+MmAjMI0AQSprHvJ/SecAzmqwSANQcfv3QBjBZmq60F6LCoLWcLSvfG1zx19Dz5TY
 Nnvhqd66d39dgT2+5OYHZD1Dsrj8yawJYUsBpnCvfDtzNNF54E0BbGGjZJV00YesCUfI
 baql+oeBYgRLXryeVqeoSK1jfZd+C/hfkeJOcCcAGBA8nyiWe1D7YcE0oVOO1UjFoe1g
 VzCdHo/57g9mjZ7nbtYiDcLN3ZkVRZp/uwyWIZlRI1IcSRMc0DMj1ruDWiVlFdhW97o/
 +Pgg==
X-Gm-Message-State: APjAAAUbZ52p604se40gCzLzCAqyPgbr4Q0+BTqd9h5tqv10GSo+yLEy
 a5fiJVLCyYqcW8jhObbXcRs=
X-Google-Smtp-Source: APXvYqzicnEwVE9B41IwGGyGmDGn6PjfwuHMeFWgsbEx+ksTLkPbjB2d4SolnSLbApVjeqKZ3461Mg==
X-Received: by 2002:a17:90a:1704:: with SMTP id
 z4mr15379073pjd.131.1576226931296; 
 Fri, 13 Dec 2019 00:48:51 -0800 (PST)
Received: from prasmi.domain.name ([103.219.60.167])
 by smtp.gmail.com with ESMTPSA id 68sm9985632pge.14.2019.12.13.00.48.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 00:48:50 -0800 (PST)
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
Subject: [v2 6/6] misc: pci_endpoint_test: add device-id for RZ/G2E pcie
 controller
Date: Fri, 13 Dec 2019 08:47:48 +0000
Message-Id: <20191213084748.11210-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213084748.11210-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20191213084748.11210-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_004852_817457_3BC833B5 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.csengg[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
 Jingoo Han <jingoohan1@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-kernel@vger.kernel.org, "Lad,
 Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Tom Joseph <tjoseph@cadence.com>, Simon Horman <horms@verge.net.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add RZ/G2E in pci_device_id table so that pci-epf-test can be used
for testing PCIe EP in RZ/G2E.

Signed-off-by: Lad, Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/misc/pci_endpoint_test.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/misc/pci_endpoint_test.c b/drivers/misc/pci_endpoint_test.c
index 6e208a0..3e879c7 100644
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
