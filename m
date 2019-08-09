Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A8887419
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 10:31:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TG72nptHGuENTj3FTC+OxX7/5TMvp54Re/DFcr+j40U=; b=urUqNztqdysuTh
	NN93jxS62t5N+eQiDyGkeYZZ6Od09ud+DMivm3igs6CeylN40yOraxWH7//BhekU6YyfobzEuJcDO
	BwCYR6ZKOjI/UxjhTWGvtjbc9MFPUbGiblmuuMJDfE799ryHaIjo6rE1anYXRhairQDoLdcrLBz9/
	g+fHn728ftQHPuJ/A9juPP3Z6oG/cEKJcYwsWYxXs2Y0xXcEoM1JiKAJqVjCQdq3JeNti25j9jfFO
	OocFf2SXw9krbnc0Asj2s0D3eZHIXHfLxzaQ1D6OC6bLcigk6/aE/Kt1SwM1gO9InBVgol5fmch/B
	VjvRaC2riIBuxyvhEcRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw0Ii-00052t-Co; Fri, 09 Aug 2019 08:31:04 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw0IG-0004qM-Nf
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 08:30:38 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x798UWOR117619;
 Fri, 9 Aug 2019 03:30:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565339432;
 bh=qDQiI5/qZTy9JN42VQ92ukHigsrEUtNA8Bxoo+HDsW8=;
 h=From:To:CC:Subject:Date;
 b=WZk0WpY9a5710rRUUEIPmp3lBJXDwoD+B6M7Se2jyMdQoCJaPfCkQH8sB4e91QR/S
 T+z821uTQgEK/PkAa0LS3wc6DCbY1FipY5fDrThNmVLp6tUYE7EnZxXAytNLXLTmbz
 VNbJ70xRRP9IUZz2z8QCMZHqMAUe/JvSxH58b1PI=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x798UW3s084400
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 9 Aug 2019 03:30:32 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 9 Aug
 2019 03:30:32 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 9 Aug 2019 03:30:32 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x798USde070370;
 Fri, 9 Aug 2019 03:30:29 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>,
 <linus.walleij@linaro.org>
Subject: [PATCH 0/6] arm64: dts: ti: k3-j721e: Add gpio nodes
Date: Fri, 9 Aug 2019 13:59:41 +0530
Message-ID: <20190809082947.30590-1-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_013036_873638_E787BB7F 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Device Tree Mailing List <devicetree@vger.kernel.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, Keerthy <j-keerthy@ti.com>,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds gpio nodes for J721E SoC and enable gpio keys
in J72E common process board.

Tested Boot log: https://pastebin.ubuntu.com/p/P6QqmZYtSC/

This series depends on Power-domain cells update series:
https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=152109


Lokesh Vutla (5):
  dt-bindings: gpio: davinci: Add new compatible for J721E SoCs
  arm64: dts: ti: k3-j721e: Add gpio nodes in main domain
  arm64: dts: ti: k3-j721e: Add gpio nodes in wakeup domain
  arm64: dts: ti: k3-j721e-common-proc-board: Disable unused gpio
    modules
  dt-bindings: pinctrl: k3: Introduce pinmux definitions for J721E

Nikhil Devshatwar (1):
  arm64: dts: k3-j721e: Add gpio-keys on common processor board

 .../devicetree/bindings/gpio/gpio-davinci.txt |   1 +
 .../dts/ti/k3-j721e-common-proc-board.dts     |  65 +++++++++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 132 ++++++++++++++++++
 .../boot/dts/ti/k3-j721e-mcu-wakeup.dtsi      |  34 +++++
 include/dt-bindings/pinctrl/k3.h              |   3 +
 5 files changed, 235 insertions(+)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
