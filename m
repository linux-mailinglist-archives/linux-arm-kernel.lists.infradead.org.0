Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2BC78BCE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 14:31:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m5LNq1sxmMJTPX/yVYA0i43z+DIrU0hd98D4vHT/fbE=; b=eydTVvmiMEqz4n
	qwY1b6yu6Z5o3ePzW0xvtrXPstnvyCfQvQhOLmwdQaOVSfSa0KHMHpkmw+52aG1PABzhUIOgDWaYx
	v+mY4T9dSYpVCjYFIq30Wz92CMzWut+AB45VBzOrqLyq61wwPgw2aWY90cV3sDMHDP/gjwY6GyAMe
	IENSW9+gTk2SgivN5U6UXgoJQ8elTznFjPtFF3HrekWtn5DgbGTeUJoeWXjWfnhGPS1svI/ciOTwo
	0kZjaORPQg1ceXmUMfzBaFom3SHdpiPwMjVw+S6Er4E99NU7E8jqJClmOQTjp1VhLvW7fpYUPljBJ
	HCl99/IeNS7H9pAmlA/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs4oE-0001KA-Hm; Mon, 29 Jul 2019 12:31:22 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs4o4-0001Jb-97
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 12:31:13 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6TCVA29018211;
 Mon, 29 Jul 2019 07:31:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1564403470;
 bh=WkIvzTYMGOo+BeE/sna2FJqHS0aucP6+/eKNHn9wBL4=;
 h=From:To:CC:Subject:Date;
 b=cQTne9ngkvEICvYknwSxG98+DPDEMvzwOuX4tJ/7PLDtxpRURLhIFy2UMWBO5KRd7
 Y0iWgWF39ThjTDxF1eEBX5S8WDbCQoTwpugQnb7xD0eAuJmz+E2Qe+ylCujS2gDrml
 OnyUJOMgRVi4qwGu/XEb423TgrRLMBdFOEmeLD0o=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6TCVA5T083835
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 29 Jul 2019 07:31:10 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 29
 Jul 2019 07:31:10 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 29 Jul 2019 07:31:10 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6TCV7t1087075;
 Mon, 29 Jul 2019 07:31:08 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>, Santosh
 Shilimkar <ssantosh@kernel.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v5 0/2] arm64: dts: ti: k3: Update the power-domain cells
Date: Mon, 29 Jul 2019 18:00:21 +0530
Message-ID: <20190729123023.32702-1-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_053112_359741_D414847C 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lokesh Vutla <lokeshvutla@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the power-domains cells on all K3 based devices to reflect
exclusive and shared permissions in each device.

Changes since v4: https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=148371
- Split the dts changes into a separate series.
- Added Reviewed-by from Nishanth M
- Rebased on top of v5.3-rc2

Lokesh Vutla (2):
  arm64: dts: ti: k3-am654: Update the power domain cells
  arm64: dts: ti: k3-j721e: Update the power domain cells

 arch/arm64/boot/dts/ti/k3-am65-main.dtsi      | 44 +++++++++----------
 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi       | 10 ++---
 arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi    |  6 +--
 arch/arm64/boot/dts/ti/k3-am65.dtsi           |  1 +
 .../arm64/boot/dts/ti/k3-am654-base-board.dts |  1 +
 .../dts/ti/k3-j721e-common-proc-board.dts     |  4 ++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 20 ++++-----
 .../boot/dts/ti/k3-j721e-mcu-wakeup.dtsi      |  6 +--
 arch/arm64/boot/dts/ti/k3-j721e.dtsi          |  1 +
 9 files changed, 50 insertions(+), 43 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
