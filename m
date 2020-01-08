Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C56581347A4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 17:22:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0JsChedHwsQyJ2ksoIV6wnjQr+CD/zhG0MopARL2f+Q=; b=TK+Y8+iJb5VhnR
	LLtfYOQ0+J7Vi49hXmSQ0yV8uuwGPEVLt2L7xwZg1S8YHdym9chEfGOTTKmgvH27OS6wvVj4Z3u+s
	Q8Ze92vY9cveVtJy4PCE8Hq5CkqQtlMAaOI3uBqQpeqbElOarGlljHfjtIzd08YwS0cxQfYY6/K9G
	BMymBRdtpZSQgYKr93wmWQRHb6ELXy6aByffko1buvL6ySGSYufbxAslie+1BzNZ6x/a3hl/qze5H
	MFx2oHUmSQs3ofj33aKVOLgOVkuJRZ5NkVA1jPGcBUPn6EL8Zdw3B7Gc5L+DKoqq/ficb1EVESE5P
	NMyAE594AJQ2nHK7D/UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipE6c-000182-6d; Wed, 08 Jan 2020 16:22:50 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipE65-0000ld-N3; Wed, 08 Jan 2020 16:22:19 +0000
Received: by mail-wr1-x442.google.com with SMTP id b6so4091338wrq.0;
 Wed, 08 Jan 2020 08:22:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1ZZ17RtXPy8tSyIYbQsLgFSMBLvUQK+nBuSFJoACxY0=;
 b=vYz3CpTLbJuo6+9G79VOAWktV29RybG7tGXwN1AkTt4KNIxTvURD+Q3bhWx/SLX7BI
 so4VMbcEz0jii2m8R7tp/PnRHuC8vSpZSLx7i/dpzxOrSE3quOa7GyR02kpfRgdNjwPG
 r4vJdr3/92Y4+DcTp+7sUL3de1BBF+cnBHwzwQ4RejFqOD6BdXdsXGOG8b0kXeUAVj4l
 bQYnqNC+lu9uJRUw495+1nxGuAAtc+mDaeFQR5Y9W0vjJ9csh2lAPfQUQ0jnYACy+8ag
 WwYEueTRDa3tT4PkmcOorUbileEg77JVeaP4XwflNnBoeiRhwsN1LWFP7oAOriQwHfCZ
 RCCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1ZZ17RtXPy8tSyIYbQsLgFSMBLvUQK+nBuSFJoACxY0=;
 b=aYPiNJBQpq+p1nsi/XFFpWxEGjjxJh5H2KrqBeozhRkMH/D5rSTgZC0MivyJS9oOav
 hHOBKDqsz5EIDVUt9wPu7LpxCrG7+6kdqZddvlsMKGtFMkMa40R2x11mUFD8PJVuMhfM
 F/2p+RbBI/5wjcOzHbzbYEln00hr+qj5gcFUvX1mqgwa8JVh/Fk/f/H5KXMe6SEiUITu
 ySfKtsUZBBCzMYmZGWOrcE5Pyg7O+rLs7NzsqRazoqBTyy7h7rq/oBzZJz2MrMIwj2fs
 iFowWolXd4g588Q+v+E1rzaHpjS0BrwhraOn8vi3Vuwj+FRo/qWD/K0pLGlmhcuYIGAe
 aATQ==
X-Gm-Message-State: APjAAAUFUmQTKttp2uSFXozGqJCHnmMtURKyFWO0l5PwRaVeGvWixHXu
 4M/RWPoIdeIHZZ6KP5UFLO0=
X-Google-Smtp-Source: APXvYqx5YNjXAvzMMnnBbQbs3EDgieNZcQ06Hpx9SaPmwC7WO/tJ2xmpnfS4ZxX1IQC9CHcxSXE8GA==
X-Received: by 2002:a5d:6ca1:: with SMTP id a1mr5332087wra.36.1578500536305;
 Wed, 08 Jan 2020 08:22:16 -0800 (PST)
Received: from prasmi.home ([2a00:23c6:d18:6d00:2811:8b65:294e:fa09])
 by smtp.gmail.com with ESMTPSA id q3sm5112180wrn.33.2020.01.08.08.22.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 08:22:15 -0800 (PST)
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
Subject: [v3 2/6] PCI: rcar: Fix calculating mask for PCIEPAMR register
Date: Wed,  8 Jan 2020 16:22:07 +0000
Message-Id: <20200108162211.22358-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200108162211.22358-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20200108162211.22358-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_082217_778880_EFB602A4 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

The mask value was calculated incorrectly for PCIEPAMR register if the
size was less the 128bytes, this patch fixes the above by adding a check
on size.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/pci/controller/pcie-rcar.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/pcie-rcar.c b/drivers/pci/controller/pcie-rcar.c
index d5568db27efc..c76a92a8b72e 100644
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
