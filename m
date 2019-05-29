Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F982D8EA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 11:20:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bc/vfIJNfvE2Ox3nXEqOnfJqi8xBAnbIvnL7kC16uBg=; b=LPhjbPB/gWgmwq
	t9VlnlwAkWt67DllHEqQLTjDP8v7GU4w5HQ5xBhDd0iafIm9H+ld4949jM5gF10LBz+/1AZv1Tsud
	H0XF3MleWAJUAJnuPeFwS3GEj8eqfUyhW3G18M4nBwp1m6tSOKnOm60I/nx3adkvRMPCRQhd1hr0A
	NXQBKQqXRjSFsSyGSDSa7Pd6eTJk9kSha2XdN/dogG+GfjRX5//4B7/sWcenOZM6CGOtLxZu3Sz6w
	xFqcOoVwN5QGDnXFYNrijLudEdjtOdDzz/+Nc+H68aIUxUOkiq++6LsjbkenNoyHyid40q5z7RhaE
	MWstbHL/pjDLEfQtocPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVukr-0001zR-1W; Wed, 29 May 2019 09:20:17 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVukN-0000s6-KW
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 09:19:48 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4T9JZpG094297;
 Wed, 29 May 2019 04:19:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559121575;
 bh=pD2afg8ofvK0cb0RAbvjzW2bemZQRBl5lxbbNYc8M6A=;
 h=From:To:CC:Subject:Date;
 b=dDDtLYSmu2+5NXhWw1v5uwk8764xa6V5fUSx23k+6TLcnEm9X5MwlguJhGd5If2Uy
 3DdNsNLDtSwtwQZxXifvRQe37A0IrGY8KzVe8qcO9nWBz4JYUZN+L4+5fa25V+s1ii
 wxEmkiHE0hHQ7EyH5oL9iw6gwfhwqYNpJTkaMK0E=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4T9JZ2G049785
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 29 May 2019 04:19:35 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 29
 May 2019 04:19:35 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 29 May 2019 04:19:35 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4T9JVxN079377;
 Wed, 29 May 2019 04:19:32 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
Subject: [PATCH 0/6] AM654: Add PCIe and SERDES DT nodes 
Date: Wed, 29 May 2019 14:48:06 +0530
Message-ID: <20190529091812.20764-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_021947_718655_74522E20 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Patch series adds PCIe and SERDES DT nodes to k3-am65.dtsi and keeps
them disabled in k3-am654-base-board.dts since there are no PCIe
slots in the base board.

PCIe slots are actually present in add on boards. Once overlay support
is merged, I'll add overlay DTS files to enable PCIe.

All the driver patches and binding documentation patches for PCIe and
SERDES are already merged.

Kishon Vijay Abraham I (6):
  arm64: dts: k3-am6: Add "socionext,synquacer-pre-its" property to
    gic_its
  arm64: dts: k3-am6: Add mux-controller DT node required for muxing
    SERDES
  arm64: dts: k3-am6: Add SERDES DT node
  arm64: dts: k3-am6: Add PCIe Root Complex DT node
  arm64: dts: k3-am6: Add PCIe Endpoint DT node
  arm64: dts: ti: am654-base-board: Disable SERDES and PCIe

 arch/arm64/boot/dts/ti/k3-am65-main.dtsi      | 128 ++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am65.dtsi           |   1 +
 .../arm64/boot/dts/ti/k3-am654-base-board.dts |  24 ++++
 3 files changed, 153 insertions(+)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
