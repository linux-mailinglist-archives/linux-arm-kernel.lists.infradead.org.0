Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 875F411DFD9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 09:50:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=myoGSVzd2gK+HHZ+Ejxr3TI4maqjv2iLqu+Y+sA5vlo=; b=jJhoxsOlma5Dim
	lfS/saXeh5Od+musfSKaTV4aOKlio9SLhKozqPyioxzQNGSIIdJIpgxrSTuVxajhmYwr/IHURgCs7
	BgM8mTPNnxqbFi398S1dE7AVggLZrVGYUf1Tv2TwDZ1iDlc3pWDMkb+Ua4aYPeHxat52r0tXC2qUC
	PcJ2nI53KbVChoXtzimDg7sFKsGXNw8b7WfaTJG8heVvH6VKQ3kQV1rgQiToIu30utqDPb0Qo5je0
	jcEF+zWdFaP1YW9FalR2Iqclp8XzXw/Uhhm9IOKVb/dqgJdnO/rhLLNMAADk3ZxCUFbsIyE3DCMkV
	1RX5jDATKyHxGTDNlFTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifge7-0007BQ-La; Fri, 13 Dec 2019 08:49:59 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifgcl-0006L3-Nl; Fri, 13 Dec 2019 08:48:37 +0000
Received: by mail-pj1-x1043.google.com with SMTP id l4so911645pjt.5;
 Fri, 13 Dec 2019 00:48:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0o2WJ0k/dFGgYEVYb9lTf6IgcR1UsXhdlPgkIAlPrXo=;
 b=o/MiNlBV3uFbxQ8l5rsULvY9OfMmoxiD0+Ojr2yUMDGOXKfUr1aQP2FtDnI/04RU9W
 OeW6jTavgoBI+fdF98xZt3NyfAgtEEnBL7HlKiq3zqvIxFCsdLR7gsaMkVZVrW6haAaI
 7wlEPq5VAFIVC4oMUhj3VUJhnnxXFiv5EGCGxdqT/z7Xel2tEAZ577OWJigyD1onNcoP
 W/9wUhOl2lRPSiq6WfXYmg6ThHpG5YDiydbQ6O/PHD5ST45vx0H4V+fKaqDaF3pJBi2D
 FYj/9ynztA1ftiXFZZo03heN1sj9mNLg1AwsOZHT8M75Q8w8r1WIS4mQ3VApakhVEUQ3
 T2JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0o2WJ0k/dFGgYEVYb9lTf6IgcR1UsXhdlPgkIAlPrXo=;
 b=ST7HtNdDFJK5vCiIF3O70ekhMBcZ7yleuYcmmxfEiCEkpoLiN55a0CBc8XyZwuWAUM
 JauWJkhsOpVB/W88k3fxneIRLOcxicMAkXkpurA7LJ+0ff5urtyd1SgtxYb1jui4983u
 QujCMkm/YZjDKEkBvn7oL+toDtZ7DK0PB9mPsF4dMXUzJ52+VYfcBAWLKclPLp8aQab6
 Dd0kRdjGs3q7WRKEQsLlADI5oZi0zyNViQ6A6sIuFZgs8rzkdmzNG3n0uZI+HNhDojm5
 B/4rCoUUDAoe6KahEEKP0D4M2uQySjn/+SHLIceVYw4CgI5Uu0ui26eqhBgNfHrDYHyb
 vRTQ==
X-Gm-Message-State: APjAAAWXIOicvQkpW9uH7ZPs6frqyUdg4LeEktwcCVBstB+X1HL2Wddq
 es3ErSZSErOUH9cMpFIR8YzfdvxjIjN2WQ==
X-Google-Smtp-Source: APXvYqx3CBPs5CiTHbJaTZiz/1F1M0U10K5CQO0kJsbSdQ5viEx76NO4a+RVs6U23XLqRUKHVyojOg==
X-Received: by 2002:a17:90a:28a1:: with SMTP id
 f30mr15310586pjd.77.1576226914896; 
 Fri, 13 Dec 2019 00:48:34 -0800 (PST)
Received: from prasmi.domain.name ([103.219.60.167])
 by smtp.gmail.com with ESMTPSA id 68sm9985632pge.14.2019.12.13.00.48.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 00:48:34 -0800 (PST)
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
Subject: [v2 4/6] dt-bindings: PCI: rcar: Add bindings for R-Car PCIe endpoint
 controller
Date: Fri, 13 Dec 2019 08:47:46 +0000
Message-Id: <20191213084748.11210-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213084748.11210-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20191213084748.11210-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_004835_826076_83F66E37 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

This patch adds the bindings for the R-Car PCIe endpoint driver.

Signed-off-by: Lad, Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 .../devicetree/bindings/pci/rcar-pci-ep.txt        | 37 ++++++++++++++++++++++
 1 file changed, 37 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.txt

diff --git a/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt b/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
new file mode 100644
index 0000000..7f0a97e
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
@@ -0,0 +1,37 @@
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
+- reg: base address and length of the PCIe controller registers.
+- outbound-ranges: outbound windows base address and length including the flags.
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
+		compatible = "renesas,pcie-ep-r8a774c0", "renesas,pcie-rcar-gen2";
+		reg = <0 0xfe000000 0 0x80000>;
+		outbound-ranges = <0xa 0x0 0xfe100000 0 0x000100000
+				   0xa 0x0 0xfe200000 0 0x000200000
+				   0x6 0x0 0x30000000 0 0x008000000
+				   0x6 0x0 0x38000000 0 0x008000000>;
+		clocks = <&cpg CPG_MOD 319>;
+		clock-names = "pcie";
+		power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
+		resets = <&cpg 319>;
+	};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
