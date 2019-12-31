Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C8D12D856
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 12:34:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W/xIH9SHt9Fn7uYbfrRGMPNPYUDFnt9+yezVEP+ez9s=; b=UD1Um92MiPCuS/
	PaNDXFlxh2zh1oXH1+CfSM6jWv9mnfJsMYlM7SiH8k78GxSd3mBhaYkrXm45XMMNjcfC8NDC4zFYl
	PEzqpXMK5pm3JaJN62QSaDL45pc3MDhnrp380vbS4PC49VDXpoElGfn1ZZeHInHmg0H+msk73D/Nn
	b3NWhRQsML0EHBTi0jzqzsu+r94p3jZ/1Ef/eAcVydMeZlRKB2W+85P74OJXP51P2dTBGFWRXDf0f
	Xurg+oxZeDt45OpFtXzgyHfbAqpDasZgGXoMta/lIr0dHhEfUXiSwDw2/S+Q8lMWkMHXoY1s2pl4Z
	ZFbvP3PsoEU+s1fwgogA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imFnI-00081A-8i; Tue, 31 Dec 2019 11:34:36 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imFmf-0007pL-5a; Tue, 31 Dec 2019 11:33:58 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBVBXiiF117359;
 Tue, 31 Dec 2019 05:33:44 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1577792025;
 bh=Zgv5kKXEm0tGssEL2rZei0b8iDsdKd/7gxbFA0EbGJ0=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=LxTajdmEA1opLpYGrfYdkrp37fx68617N57vcZUIEsR548YXf5WMuZrPQJ7p43m/J
 gtD54EtPpLAMt5z0XGryj4uHmQLKRRdjy+dj+RRf5Ls3JPePXupRBouVwrIQK+W5xz
 rrVNeeH/kc6cPbZCZadn3QHeAPj9U1ccicCgZ4dk=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBVBXi5n040074
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 31 Dec 2019 05:33:44 -0600
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 31
 Dec 2019 05:33:44 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 31 Dec 2019 05:33:44 -0600
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBVBXX32024759;
 Tue, 31 Dec 2019 05:33:39 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Bjorn Helgaas <bhelgaas@google.com>, Andrew
 Murray <andrew.murray@arm.com>,
 Tom Joseph <tjoseph@cadence.com>, Rob Herring <robh+dt@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 1/7] Documentation: PCI: endpoint/pci-endpoint-cfs: Guide to
 use SR-IOV
Date: Tue, 31 Dec 2019 17:05:28 +0530
Message-ID: <20191231113534.30405-2-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191231113534.30405-1-kishon@ti.com>
References: <20191231113534.30405-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_033357_292373_8256769E 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-pci@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add Documentation to help users use PCI endpoint to create virtual
functions using configfs. An endpoint function is designated as a
virtual endpoint function device when it is linked to a physical
endpoint function device (instead of a endpoint controller).

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 Documentation/PCI/endpoint/pci-endpoint-cfs.rst | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/Documentation/PCI/endpoint/pci-endpoint-cfs.rst b/Documentation/PCI/endpoint/pci-endpoint-cfs.rst
index b6d39cdec56e..0f55c5511c6c 100644
--- a/Documentation/PCI/endpoint/pci-endpoint-cfs.rst
+++ b/Documentation/PCI/endpoint/pci-endpoint-cfs.rst
@@ -43,6 +43,7 @@ entries corresponding to EPF driver will be created by the EPF core.
 		.. <EPF Driver1>/
 			... <EPF Device 11>/
 			... <EPF Device 21>/
+			... <EPF Device 31>/
 		.. <EPF Driver2>/
 			... <EPF Device 12>/
 			... <EPF Device 22>/
@@ -68,6 +69,14 @@ created)
 				... subsys_vendor_id
 				... subsys_id
 				... interrupt_pin
+			        ... <Symlink EPF Device 31>/
+
+The <EPF Device> directory can have a list of symbolic links to
+other <EPF Device>. These symbolic links should be created by the user
+to represent the virtual functions that are bound to the physical
+function. In the above directory structure <EPF Device 11> is a physical
+function and <EPF Device 31> is a virtual function. A EPF device once it's
+linked to another EPF device, cannot be linked to a EPC device.
 
 EPC Device
 ==========
@@ -88,7 +97,8 @@ entries corresponding to EPC device will be created by the EPC core.
 
 The <EPC Device> directory will have a list of symbolic links to
 <EPF Device>. These symbolic links should be created by the user to
-represent the functions present in the endpoint device.
+represent the functions present in the endpoint device. Only <EPF Device>
+that represents a physical function can be linked to a EPC device.
 
 The <EPC Device> directory will also have a *start* field. Once
 "1" is written to this field, the endpoint device will be ready to
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
