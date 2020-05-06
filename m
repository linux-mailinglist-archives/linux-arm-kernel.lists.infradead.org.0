Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11DE51C7914
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 20:14:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u4oUoCoKNYnjFqmr6rwC5gyW4vg9OYtrny9bNyvd9a8=; b=Dyk6IiMtF7rxty
	W5GpiBbmAeBWU9dfdyAncJrI/jx7HDWJjxFZSaEXsXUAHWb3IGIdm/FRH0rJc0K8jkKOZE+EgN01c
	cPB91WECzzJjjoJwUi+zAGqIjipkDmnJ4MnnPqyQHXfck7DHoV7oOQXv14PpPdnopj2ydJ2aYb4UF
	TczOeYyGRvNwOQycfVhqg9GyGH2X6oPDJKjq998MreWHTQ9Gg4kXNbwB0if7Yq5ocoUdcwxqOnACS
	HQsKhUEcYjX566+OXZTt+1JjuVVz4YLC74wS9ore3tfjLhref0AZDUiSqV6lI86Sw/vuuSIFBw3Us
	vGDBRWHwvL6lOtDkSuvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWOZ4-0002Ji-7i; Wed, 06 May 2020 18:14:38 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWOYo-0002G1-TP
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 18:14:24 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 046IEArB011357;
 Wed, 6 May 2020 13:14:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588788850;
 bh=i7DjKQcoyf7U+urYm+53KnmXgF7F3NKsTjU/TUs3Ap4=;
 h=From:To:CC:Subject:Date;
 b=Hbyib1JuMEfN/K7GtiOT/POTCc+fGJl0VEjbG2JF5TSq+sk7jXeUcUdXE4ogchrSX
 sqgEoS+yLARGLRQ6qNmL8OWWZKHxW+Y3+oi4w65lbBqNxuZ6LL5fL6+mnstaCAeMlQ
 /uGuo1YN3o8AyJzMZ9FGcflaTByVgDUEhgESOn8s=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 046IEAVl093986
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 6 May 2020 13:14:10 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 6 May
 2020 13:14:09 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 6 May 2020 13:14:09 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 046IE8Qu064547;
 Wed, 6 May 2020 13:14:09 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>, 
 <devicetree@vger.kernel.org>, Tero Kristo <t-kristo@ti.com>
Subject: [PATCH net-next 0/3] net: ethernet: ti: am65x-cpts: follow up dt
 bindings update
Date: Wed, 6 May 2020 21:13:58 +0300
Message-ID: <20200506181401.28699-1-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_111423_029927_0FCE0E1B 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: netdev@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob, David,

This series is follow update for  TI A65x/J721E Common platform time sync (CPTS)
driver [1] to implement  DT bindings review comments from
Rob Herring <robh@kernel.org> [2].
 - "reg" and "compatible" properties are made required for CPTS DT nodes which
   also required to change K3 CPSW driver to use of_platform_device_create()
   instead of of_platform_populate() for proper CPTS and MDIO initialization
 - minor DT bindings format changes
 - K3 CPTS example added to K3 MCU CPSW bindings

[1] https://lwn.net/Articles/819313/
[2] https://lwn.net/ml/linux-kernel/20200505040419.GA8509@bogus/
Grygorii Strashko (3):
  net: ethernet: ti: am65-cpsw-nuss: use of_platform_device_create() for
    mdio
  dt-binding: net: ti: am65x-cpts: make reg and compatible required
  arm64: dts: ti: k3-am65/j721e-mcu: update cpts node

 .../bindings/net/ti,k3-am654-cpsw-nuss.yaml   | 15 ++++++++++-
 .../bindings/net/ti,k3-am654-cpts.yaml        | 25 +++++++------------
 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi       |  4 ++-
 .../boot/dts/ti/k3-j721e-mcu-wakeup.dtsi      |  4 ++-
 drivers/net/ethernet/ti/am65-cpsw-nuss.c      | 24 +++++++++++++-----
 drivers/net/ethernet/ti/am65-cpsw-nuss.h      |  2 ++
 6 files changed, 49 insertions(+), 25 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
