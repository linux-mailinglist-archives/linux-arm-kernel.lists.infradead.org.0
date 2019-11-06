Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DAB9F1F06
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 20:37:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ynPjkQhyN6+qI4Tx88zZkav/Dp3NoLpJo09+5tjDTBY=; b=DwlrOf5YuNdlMk
	ytj2julu1aoWwUYoTCrsrSUSNnLQQf+kRKFlRWUVc4wMeto1mGQiIb/5uAomhVfoEEmRWpzMl+G/M
	FiccIHHRvu06k3ot0QBuOhTyWhkeTIzzWQQn/NtQDjm+n5O71teim8DV8yCWMtLPanc/kxfSMRoqq
	3eh4ga9M73IOG5TvvUG4kNaOtbMgux4XtE+uYrL30abz72WvAbbOktcbzPRztOkcaE1FuPLBOIPQQ
	H3FszUzt9HwCa5lPThgGXvn6ik89z6Lov1v0mxKHUCK2dr4WF0tJfgXum1UGOQJuiztmX7gxl0CLG
	1eOnLof8ooLHeOQ2m5Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSR7W-0003RE-Fm; Wed, 06 Nov 2019 19:37:34 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSR6X-0002h1-O0
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 19:36:38 +0000
Received: by mail-wr1-x442.google.com with SMTP id a15so27448952wrf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 11:36:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gj4RT4MBYSN72SobANamHwk9q8SqC3Bq4JtqR0nv/88=;
 b=ith+FyjYfh++cNpEYyESkqNV2WQG2t3qx5/9OTWj8CcQ8Tx0Ho4mS7TB2wAukxmMe1
 7w1KaKYooUfTUzPilS4Ailr9wwDmnAcwo9ZZCy9sAriE04kPtwxxW3z9uWgnRoZX08Aq
 QUFk0IjDpdNvxtyLOafBA9zK4Ucrq51PpczFdg6kZiTtckcTpTW+C7hI+CuTyRm4IwlQ
 /uTdIMeNVtt4/nrlEX8ZEt93K4LkPcbMJ7YCO21Fi0JY+L09txnvnTj1MJF8HxN8MheH
 /WRvhJKv2WKkb71culGvsEj0lMsaKFJ4n7NGNVBk5r5TImn664O6vDBtcsK81V05I6M7
 AQ8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gj4RT4MBYSN72SobANamHwk9q8SqC3Bq4JtqR0nv/88=;
 b=Vxg/mDpME7KEdnYU7sEwUvbHzHU07IpUqOWpTRkH856VnlN8PzYk9c5H0AqeLJ/nX7
 ACVX2eP6WnAeYnni57q2GS3JggWW41xBRFriOBBM/thjKrZr57TKKJZADoXcgtKPJ4Tq
 kzhjc+ZHOHhwJIVB/WUQqO/RVXw4sMXFfcBK74VK2cZZdl0Eo9ZXasJ3GWOxHJsMGYnU
 zYM7F+e+K5emF3Sd9ZNkz1aPhVIix16TSRyQmNMn5ma9z/OBwiKwmlN5FngyJt4gOOO/
 LOSws0mKEdFUvRwaQ6x54o/AhHseprz6dHHeeydunvh2GEbFqyI0zf9F7XKgvaXBx6Pg
 /Ieg==
X-Gm-Message-State: APjAAAVk46aMGA4ZKX4yrXAXv05AXWRJ/ZjaEBjx4h8hJxtR3E1vKikm
 JHg9+GDwUzJJNHpZ2TTaxwk=
X-Google-Smtp-Source: APXvYqz9azLA+Dqz04lPNS8MBMy2mPkTQxd5aWdoJYpBB9Skkh0PrDAauvRn05Sa0YLfoJ0/etRUzA==
X-Received: by 2002:a5d:4e90:: with SMTP id e16mr4567362wru.224.1573068992127; 
 Wed, 06 Nov 2019 11:36:32 -0800 (PST)
Received: from prasmi.home ([2a00:23c6:d18:6d00:1d3d:daa8:4e74:8240])
 by smtp.gmail.com with ESMTPSA id 76sm4311737wma.0.2019.11.06.11.36.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 11:36:31 -0800 (PST)
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
Subject: [PATCH 3/5] PCI: rcar: Add R-Car PCIe endpoint device tree bindings
Date: Wed,  6 Nov 2019 19:36:07 +0000
Message-Id: <20191106193609.19645-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191106193609.19645-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20191106193609.19645-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_113633_850311_7D7B23BA 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

This patch adds the bindings for the R-Car PCIe endpoint driver.

Signed-off-by: Lad, Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 .../devicetree/bindings/pci/rcar-pci-ep.txt   | 43 +++++++++++++++++++
 1 file changed, 43 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.txt

diff --git a/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt b/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
new file mode 100644
index 000000000000..b8c8616ca007
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
@@ -0,0 +1,43 @@
+* Renesas R-Car PCIe Endpoint Controller DT description
+
+Required properties:
+	    "renesas,pcie-ep-r8a774c0" for the R8A774C0 SoC;
+	    "renesas,pcie-ep-rcar-gen3" for a generic R-Car Gen3 or
+				     RZ/G2 compatible device.
+
+	    When compatible with the generic version, nodes must list the
+	    SoC-specific version corresponding to the platform first
+	    followed by the generic version.
+
+- reg: Five register ranges as listed in the reg-names property
+- reg-names: Must include the following names
+	- "apb-base"
+	- "memory0"
+	- "memory1"
+	- "memory2"
+	- "memory3"
+- resets: Must contain phandles to PCIe-related reset lines exposed by IP block
+- clocks: from common clock binding: clock specifiers for the PCIe controller
+	 clock.
+- clock-names: from common clock binding: should be "pcie".
+
+Optional Property:
+- max-functions: Maximum number of functions that can be configured (default 1).
+
+Example:
+
+SoC-specific DT Entry:
+
+	pcie_ep: pcie_ep@fe000000 {
+		compatible = "renesas,pcie-r8a7791", "renesas,pcie-rcar-gen2";
+		reg = <0 0xfe000000 0 0x80000>,
+			<0x0 0xfe100000 0 0x100000>,
+			<0x0 0xfe200000 0 0x200000>,
+			<0x0 0x30000000 0 0x8000000>,
+			<0x0 0x38000000 0 0x8000000>;
+		reg-names = "apb-base", "memory0", "memory1", "memory2", "memory3";
+		clocks = <&cpg CPG_MOD 319>;
+		clock-names = "pcie";
+		power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
+		resets = <&cpg 319>;
+	};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
