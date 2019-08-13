Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E16B8B652
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 13:07:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OUjU8e569bF3IeSKxnNwBCGJHQfXT4SDAGhxqYAIS2w=; b=UaHm62rJj1ZGd0
	1mERiZGGGNGVSnMfJc4p27y9DQ6lyE48wCzo5O80vE0wKQpWMojEbbFiCrkmaC71188NX2ZZWiUez
	B/yKOTD05iy4IR83BzjAaWmNpX8hzkwm3gl2yzNT6ZPXA0tPaDswqu2/HIovzDc97T44W9CH28Vl2
	EQJDX8Cbwn4/iQV8RsiIPV0akGRJANkzL9hqLuUnlBoUyy8m0F3Q4RtDwH5WucYIyj3ev4ikWm+hr
	JHZwe5qamnNjxb0zL2ak9Ikc0IXetACyDojbF1lTJdBQYOkWcqo7OWLbGslOahEIOFG0D75APmg4S
	rTgR4GwUw8WJFkp9RpuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxUe5-0000xg-3i; Tue, 13 Aug 2019 11:07:17 +0000
Received: from mail-eopbgr40045.outbound.protection.outlook.com ([40.107.4.45]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxUba-0006DE-Nc
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 11:04:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YcqNVnjntujAg6HiO+u+rasLFQvnt53F0L59+gqKdS8Vl3Uvx9dQa1nKZ9OuEFa+Vp/2IubGDs1vj2b0tvgT94xHW+rzg4CnlFN7caVL9LLNv0bejq9IzLyalMCAu4BFa8Es/OYavN/ePU9JAHp9/TgtbJtO6tFGPuUY2jvvA1q5ED6xjHZHADU5NOwzjymjb0mRSlDwPjezL6W1Qj8XNlsEfqHl8fj0hBwtDdNx+X8oQsiLHC/6cd8SLuSu48BzFIaEihz1bRcMksZq0Q6VvYUjVpRYBInboCZ61+xnTGr+O47PebLL2ycfgAivxRw9EYJDuTjWPK5s361CbRFsjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vlSSBQC8GP4tqUc/i2os5CfnjnT8ObfdphpRRojZ5lc=;
 b=PjpPpp9ghPzgKNG3p19EW+0wGspjxTpqBhrnVpbodiXrVt9kbH8L59QFKOlNVbwM1AThpzNXX0YMUVwzFVbv/tnkfG/9BiHA1KxQOsepgyiOXC/eGRivownxdnux9FB3xzgw7Sln61+VSSC9Iw69UnVeVoVrSXL+PPiwL850nA8XolUVVuj5qMbs0aqkP+o+no3ZymiH94vr+lPaUMAW9ymi9wWxrIstm15l55t/HZ6fWyhNKbuYJ55nRpG4bOpybApAHuWnuO4KHvlyvHhOWvj3/TI21od1w6yoagKI/kTF4W8ZLzghiV6Hd3KhDzwfVx7mPw6MFZNt8jhQz0StlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vlSSBQC8GP4tqUc/i2os5CfnjnT8ObfdphpRRojZ5lc=;
 b=H8wo60tPh2Cq4Opeevy7A5ZZJIixN2jT56kMgq6gfZYMU7BJrzmsJ+VCWznZ4R3e8BiRgNZPW7mmwP0/TGmeWBCRpNjOnEl2cD8+2hbgA3Xy0RG2P8GBFxJH1zJ/KAoVzrbw0J/yVYdvB5Mh84iYpkA3LOl+9IeR90TdGdTzdBM=
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com (20.179.250.159) by
 DB8PR04MB7035.eurprd04.prod.outlook.com (52.135.61.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.13; Tue, 13 Aug 2019 11:04:40 +0000
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::19ec:cddf:5e07:37eb]) by DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::19ec:cddf:5e07:37eb%3]) with mapi id 15.20.2157.015; Tue, 13 Aug 2019
 11:04:40 +0000
From: "Z.q. Hou" <zhiqiang.hou@nxp.com>
To: "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "bhelgaas@google.com" <bhelgaas@google.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "arnd@arndb.de" <arnd@arndb.de>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "l.subrahmanya@mobiveil.co.in"
 <l.subrahmanya@mobiveil.co.in>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>, Leo Li
 <leoyang.li@nxp.com>, "lorenzo.pieralisi@arm.com"
 <lorenzo.pieralisi@arm.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will.deacon@arm.com" <will.deacon@arm.com>
Subject: [PATCHv8 7/7] arm64: defconfig: Enable CONFIG_PCIE_LAYERSCAPE_GEN4
Thread-Topic: [PATCHv8 7/7] arm64: defconfig: Enable
 CONFIG_PCIE_LAYERSCAPE_GEN4
Thread-Index: AQHVUcbnPZYkKbwcHEe1J4hyBLfJaw==
Date: Tue, 13 Aug 2019 11:04:40 +0000
Message-ID: <20190813110557.45643-8-Zhiqiang.Hou@nxp.com>
References: <20190813110557.45643-1-Zhiqiang.Hou@nxp.com>
In-Reply-To: <20190813110557.45643-1-Zhiqiang.Hou@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR02CA0199.apcprd02.prod.outlook.com
 (2603:1096:201:20::11) To DB8PR04MB6747.eurprd04.prod.outlook.com
 (2603:10a6:10:10b::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6295389b-5515-478a-731e-08d71fde0982
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR04MB7035; 
x-ms-traffictypediagnostic: DB8PR04MB7035:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB7035454A03534CD290B5B9C284D20@DB8PR04MB7035.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-forefront-prvs: 01283822F8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(376002)(396003)(136003)(366004)(189003)(199004)(256004)(66066001)(50226002)(316002)(4326008)(66556008)(66946007)(1076003)(186003)(64756008)(66476007)(386003)(71190400001)(6486002)(6506007)(26005)(7736002)(71200400001)(110136005)(486006)(305945005)(4744005)(2501003)(53936002)(54906003)(52116002)(81166006)(6116002)(7416002)(3846002)(25786009)(478600001)(102836004)(36756003)(66446008)(76176011)(5660300002)(14454004)(6512007)(81156014)(446003)(99286004)(11346002)(8936002)(86362001)(2906002)(6436002)(2616005)(2201001)(8676002)(476003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB7035;
 H:DB8PR04MB6747.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YD+O7G/LD4CDDnYy41y2qmeG/AEUnEwzlwrTSTknUh54aq1l+7RA8mTUfvdigErh1OpW0eJobgp8RCLpADsRH0fE4vuFLw55321o0XOupOoV/FqfSz3qCbnGfI4ggC7AZbiBVtFFLF9pr3rqdRbHzL75qGmXNnG70nsH/PUj4YcP9v0T8H0jaF55sR5XWYX050zJHQpQ2dAHHnu7AIzC4QtVHX5J4AjY6cGIV4meBeOaDi+5fzJg97h2NFggGJe/iu7OyYVWGK0W+w6iCIs7Yat2uScpRfnMnaVwr+F62JhGwR+PkSSvBVS+X+ltxDvffuYYO0CtyY/LjTJ4c5uZuB+YIbu79GxXmHK8DxzfgIp4M9ul6M4Icb5RouAv3DaRHKkdcumxZN6jw+yIGh48cYKarybw/HGNZJbPvR2aZ24=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6295389b-5515-478a-731e-08d71fde0982
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2019 11:04:40.3027 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8RsWZICgVVIYEJlM/POFBiT5t9K9YBH0Q40GXUG3UrnRYpkzMvmkorn0c6aVepoC437yBmQCFJbCNDPQjxFYog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_040442_804218_394DEB80 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "M.h. Lian" <minghuan.lian@nxp.com>, "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 Xiaowei Bao <xiaowei.bao@nxp.com>, Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>

Enable the PCIe Gen4 controller driver for Layerscape SoCs.

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
---
V8:
 - No change.

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 97c507803210..721a144ef75b 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -189,6 +189,7 @@ CONFIG_PCI_HOST_THUNDER_PEM=y
 CONFIG_PCI_HOST_THUNDER_ECAM=y
 CONFIG_PCIE_ROCKCHIP_HOST=m
 CONFIG_PCI_LAYERSCAPE=y
+CONFIG_PCIE_LAYERSCAPE_GEN4=y
 CONFIG_PCI_HISI=y
 CONFIG_PCIE_QCOM=y
 CONFIG_PCIE_ARMADA_8K=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
