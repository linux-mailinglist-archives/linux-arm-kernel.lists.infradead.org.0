Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A07156688
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 19:37:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DUAUWSmMRdwCiNSvKDhVpQjVNzIJcfUOYG0oMzZXWrs=; b=ZurrZFIiMgMRHZ
	jrYTUxUpvUdEQlRvbl6+kbHvwBo/6VJ3PiQRcNtjTbcQ2zEl0SbqbRuKFcfW+tlStzrqDrvGKTEYm
	MPU8PYe0HrEi7bnS1Tbt00d3UnxeArnWEl9kBDgc1ogKE9djWGa+dNLmZ/DfI/GnmRRVjmrUpwfKn
	3Ul1fMfR9wxazV6JU4h+53SS7Ikg0r9b2ni6bmihC++bZuLc89lDfQMJKsjhenCyDLWhvua5+quIJ
	6aklb+jP7CSEtQWUf9NewvMqYSv3Scdv4snqB0tSJKFIHbH613CP+palapLXDab4KSHlyf91l7Ikv
	8QTad5L+27h/bAQAELGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0Uyn-0000Qh-4o; Sat, 08 Feb 2020 18:37:21 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0UyN-0000Kb-Ri; Sat, 08 Feb 2020 18:36:57 +0000
Received: by mail-wr1-x444.google.com with SMTP id w15so2694739wru.4;
 Sat, 08 Feb 2020 10:36:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KjY0ZxPgA8xDdI4P8UFFhtICRDQWXvSYtBAZooAhylM=;
 b=Ug6trja9jfyujkI7OOVeJvqVNOFLdsZkvVDlOHWng8rLWSgGZC7IcBQBT6XtFCgbBA
 U+Ijyf1DornRokrSN6El65xgvgpYfUFrbtFZTBxAHtdeuVZ0QH79GeZMqoKe6uyUUElr
 tJ3jBOAkYMrmE9iJBl9e9rqx0jMEI6Pt/LGD9hDHsRrugAj2zfJmRYL6qoDfoMHxNgIe
 lbjjxYYEn1uA8xgnvR6LsGGlvEPs6wnDqIqKqzIOSDDYY0UHSW/T661hq0ufNVJicayr
 woY8m+UU8c7fdXhhjto6pDPpsMTFVKUcOqUtJ1kt47NzomDZiC/Kw4ZwUaP14QF20Lz9
 wNEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KjY0ZxPgA8xDdI4P8UFFhtICRDQWXvSYtBAZooAhylM=;
 b=hP+tc9J2cIvrokKyW8QYo/F/6So2mrUuUlxhxVe2KQpYlgTzz7Ib+vE2x18n6TTewb
 abxEZYpLPigv9z39eeCECL5dExFS6FRafMHlgEZGmx3qeBQV4g2gyzpSwAuKvZk89LYs
 j8FJZx7d72hyY69wHk4ABzVqIZ1Nsc+A/ywQoDFiaBw3E8mBdrv+eUriymjRCrRRya6o
 7yV01KxNILhjRCe7fnsJJYOQLB14agamuwbPCiri5FwlhiyXJb7SwMkUN27Xdouf5sBE
 Z12HjVlxsM5be90xL/wFIF4Hdjq6brEobfStecfpvAhYG6QH21k4RO5xH2+Q5ECwXKLz
 6sgw==
X-Gm-Message-State: APjAAAVkgt/IOyiawHb23+ZKiF3GApE7jW930LGMYFBftKjhNPcYf8wS
 rVtB0P5HHXOcDNFaoe0/wGM=
X-Google-Smtp-Source: APXvYqxIu6atAePt2heYHf7buiIaKkoy/ZjBtwOXRU6/ElHpeC9rstK/20wPHyjKhEeZtut77LTr3w==
X-Received: by 2002:a5d:6284:: with SMTP id k4mr6541427wru.398.1581187014097; 
 Sat, 08 Feb 2020 10:36:54 -0800 (PST)
Received: from prasmi.home ([2a00:23c8:2510:d000:a553:90a1:93f5:e306])
 by smtp.gmail.com with ESMTPSA id b67sm8404385wmc.38.2020.02.08.10.36.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 08 Feb 2020 10:36:53 -0800 (PST)
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
Subject: [PATCH v4 2/6] PCI: rcar: Fix calculating mask for PCIEPAMR register
Date: Sat,  8 Feb 2020 18:36:37 +0000
Message-Id: <20200208183641.6674-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200208183641.6674-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20200208183641.6674-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_103655_949372_E3E591F4 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

The mask value was calculated incorrectly for PCIEPAMR register if the
size was less the 128bytes, this patch fixes the above by adding a check
on size.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/pci/controller/pcie-rcar.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/pcie-rcar.c b/drivers/pci/controller/pcie-rcar.c
index d5568db..c76a92a 100644
--- a/drivers/pci/controller/pcie-rcar.c
+++ b/drivers/pci/controller/pcie-rcar.c
@@ -71,7 +71,7 @@ void rcar_pcie_set_outbound(int win, void __iomem *base,
 	/* Setup PCIe address space mappings for each resource */
 	resource_size_t res_start;
 	resource_size_t size;
-	u32 mask;
+	u32 mask = 0x0;
 
 	rcar_pci_write_reg(base, 0x00000000, PCIEPTCTLR(win));
 
@@ -80,7 +80,8 @@ void rcar_pcie_set_outbound(int win, void __iomem *base,
 	 * keeps things pretty simple.
 	 */
 	size = resource_size(res);
-	mask = (roundup_pow_of_two(size) / SZ_128) - 1;
+	if (size > 128)
+		mask = (roundup_pow_of_two(size) / SZ_128) - 1;
 	rcar_pci_write_reg(base, mask << 7, PCIEPAMR(win));
 
 	if (!host) {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
