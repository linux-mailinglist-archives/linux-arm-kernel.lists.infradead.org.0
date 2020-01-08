Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 941DF1347C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 17:23:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cwiGQ7KSRmaHiVyFi2k1x9kBYcVJauEaZA9wyRzw70I=; b=NgcBo6lJxfO+DY
	bjwh4b/MdS/dHWO8CZ1MUZBvGFOLyjhbE5LOzMC3t1iDDm83IZiIdxDlIEivZj9lQ8mlquO8AwVqR
	sKjAktJMhUYSM196sxTdo8N8wb/TbD54XcVceoSAWMJT1cbw1yF9FWWtMmxaZfjCxoxnSWkf/SdfH
	k0wlkYxbaVet4H+uvhseLf0W/CwIpJ0MJVVk9t518Ur+WMp6TOxep0kLSWvSm1hF1Y7/9FxTIvPTX
	caOUtiP6v7l92ZZieaMKT5wvCWJ9u2w3QnmTXFgUXHwpNVAgkihbnI03gUBug6v3N5Tc+QegMPAXd
	PtbTeK+iRupGR7KPCW/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipE7H-0001xP-If; Wed, 08 Jan 2020 16:23:31 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipE6A-0000q8-Rq; Wed, 08 Jan 2020 16:22:25 +0000
Received: by mail-wm1-x341.google.com with SMTP id a5so3144707wmb.0;
 Wed, 08 Jan 2020 08:22:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aBpKzW0DysSlCqpBbIOQ7IwtG+vQDqbV9o/9aw4xq+E=;
 b=sxgseL/7cesCABwZJ1lkUkZMf3g+t22y92wXapWpsRzLZPLcJgG758dCEJjCtnHIFb
 385Bw00mjiXslrxf0PJPtvPoAWbCeB28o+pu98WujS7hgyYHpc47909CrM1A6D8KQCON
 3mN8IOPrKDfpigRHDlZXQQY8/7CJ7U6zz2pURwZdf18xO84Sy9DaIdxTq7RiH303ZBm6
 2Z1xvuoZxr1uAFbLyF9kJKzwfzs/RvwepZguHuw0YhbWbJnm9aoF9pCzQWXS+0/vznVf
 82y1A5IcIvlC6ojD66Seq9zwPgSKvNpm6p1NYOf4NPFLnFJkyGBYRbOwZ4oy7GPM8vZa
 XWDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aBpKzW0DysSlCqpBbIOQ7IwtG+vQDqbV9o/9aw4xq+E=;
 b=eKyC+jYckA4LihxwCsdw0JVyBQTYeCBzQaOjT7jX1WX+Ox1+J2tF5pq+Tboc1FPb+q
 yvpc0QJu/DDzKiDRzrEfi2tG/VjNcL3kMGvyzWZ7FHd4bFJxcixlxJtR5iPpbtIFnYL7
 CDku7l+AcFD+mKvYjZyZXZROE87ypdEgeQ/x8cJ1gvKr5vapGodumFQUHPOi6VaQgKen
 LF3UM7M3Hlvh4epNNGpLkQPYpDMEFL7/KTP8Oh36gBANLNBZREipPSvg1EPWcQnTj+nJ
 KW+OkaSWv58IFARRfjLiTSYy3M01iXoZDvbO1vu25fQDkK2Zwcn6xbOA5/UsZVN5iS5Y
 r9JA==
X-Gm-Message-State: APjAAAWcLLvBTPSLczds+oiH8QEA0FzxnRHO9oIwst0CBu/RRq+Dfg3L
 hzR8v2zMAwFn+eQa05EkqgA=
X-Google-Smtp-Source: APXvYqxwsO4hRnwBU4qNvNBYudqrLRYtxXPrDL2K47Q4rMNDd8IDSR95WAp82oBtVNj39288uOZ/1w==
X-Received: by 2002:a1c:6588:: with SMTP id z130mr4941894wmb.0.1578500540987; 
 Wed, 08 Jan 2020 08:22:20 -0800 (PST)
Received: from prasmi.home ([2a00:23c6:d18:6d00:2811:8b65:294e:fa09])
 by smtp.gmail.com with ESMTPSA id q3sm5112180wrn.33.2020.01.08.08.22.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 08:22:20 -0800 (PST)
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
Subject: [v3 6/6] misc: pci_endpoint_test: Add Device ID for RZ/G2E PCIe
 controller
Date: Wed,  8 Jan 2020 16:22:11 +0000
Message-Id: <20200108162211.22358-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200108162211.22358-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20200108162211.22358-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_082222_979055_C47AB282 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.csengg[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Chris Paterson <Chris.Paterson2@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
 Jingoo Han <jingoohan1@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-kernel@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
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

Add RZ/G2E in pci_device_id table so that pci-epf-test can be used for
testing PCIe EP in RZ/G2E.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/misc/pci_endpoint_test.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/misc/pci_endpoint_test.c b/drivers/misc/pci_endpoint_test.c
index a5e317073d95..3c84e9a98a05 100644
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
