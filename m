Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF8719E01
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 15:19:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ABeh/YSgb5NGQh/sla3H57+LjdH5iWj7IFdQ7AyNEA=; b=msBoWdmmxnGo59
	iAubaPDSWMUonFQGEAKJmaMF097eAknQYeudHea7P/QkxGmwvieBfZNmoA4oOQF31b7/OdVjtuwRq
	RKrrGNXhXx4NOfgpXfF7IL7//FECYmLJwZL6kXPaQra/CEnvv1YNNRGFaKYLxJdBQdi877r/IwpKD
	92/JUxF5EZjNJC7sAcKLeu0iuj0ZkYFXoryHpaADy3zOUmpBMRmMp5c1gLOqF6eAwMWu5hputHrGh
	RHxy9wbSzbHqzLkpKVCqa6k0NOxo9+CT5VMIyXvztwgn8ns2smS6s50BATOH9Rpqo3T3nE3BFlH9J
	zbIIOxXb4Tx+1EwU20ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP5Qj-0006UU-Vt; Fri, 10 May 2019 13:19:17 +0000
Received: from mail-am5eur03on0620.outbound.protection.outlook.com
 ([2a01:111:f400:fe08::620]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP5Qb-0006U0-UE
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 13:19:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FMreRoyjvzdaBHHwIpcoxTjZVm7qt64uXdzQIJ+ePgY=;
 b=cJF7GBJ675FWn2Pt6sBCfatFDpOT3ZwXz59id0Gc0UarysJaSbTx2ogOybK9fHW6Mhxpe+7EenaP+7ZaBlM9pVqORm82yomR31ES2gpGiOitHkob2rhGecdhl0c97ARF2OAJol4pDVDkdyCRwZYfIlP9W+vYehKzSu6NhPwOTDs=
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com (10.168.65.10) by
 VI1PR0401MB2351.eurprd04.prod.outlook.com (10.169.133.154) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.20; Fri, 10 May 2019 13:19:06 +0000
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::5e3:7122:7d0e:7fb7]) by VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::5e3:7122:7d0e:7fb7%3]) with mapi id 15.20.1878.022; Fri, 10 May 2019
 13:19:05 +0000
From: Pankaj Bansal <pankaj.bansal@nxp.com>
To: Will Deacon <will.deacon@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>
Subject: RE: [ARM SMMU] Dynamic StreamID allocation
Thread-Topic: [ARM SMMU] Dynamic StreamID allocation
Thread-Index: AdUHKxeT0UQZA1BdS6SusO/TAZQ/qAAB0c5w
Date: Fri, 10 May 2019 13:19:05 +0000
Message-ID: <VI1PR0401MB24962EFD4057D823075230C6F10C0@VI1PR0401MB2496.eurprd04.prod.outlook.com>
References: <VI1PR0401MB24969CE24E4FB91EC8551DEBF10C0@VI1PR0401MB2496.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR0401MB24969CE24E4FB91EC8551DEBF10C0@VI1PR0401MB2496.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pankaj.bansal@nxp.com; 
x-originating-ip: [92.120.0.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e6eaf08c-4a57-45ff-fa2a-08d6d54a1407
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0401MB2351; 
x-ms-traffictypediagnostic: VI1PR0401MB2351:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <VI1PR0401MB235198040DCA0B3957DEF05EF10C0@VI1PR0401MB2351.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0033AAD26D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(396003)(136003)(366004)(346002)(13464003)(199004)(189003)(7696005)(54906003)(110136005)(25786009)(33656002)(8936002)(6306002)(81166006)(81156014)(476003)(8676002)(486006)(11346002)(2940100002)(53936002)(99286004)(74316002)(7736002)(316002)(76176011)(6246003)(305945005)(66066001)(9686003)(446003)(55016002)(4326008)(66946007)(86362001)(73956011)(26005)(5660300002)(64756008)(186003)(66446008)(66476007)(102836004)(66556008)(52536014)(14454004)(68736007)(6506007)(53546011)(3846002)(44832011)(966005)(6436002)(14444005)(71190400001)(6116002)(2906002)(71200400001)(256004)(76116006)(229853002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2351;
 H:VI1PR0401MB2496.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3W3kPrYZn80bOoAvCx/hyG4D4gaV6HIRrcbo84tpfxGQ4MFnNJQcyik4gpuZX4QpuP4/AS4YTECEYejcAale62TTnA8wWvUaJ6ibTcRGv8mkSmGP/8Hc0AMfO1fQkT3RUZ6S5qCxLtYp/omrottaYNNFxA7qs6LdzW4RXavEpMPqSJguM8Iy4Ni/6Lk2vefg5h5ZgKByRCAhZvq2mKhGGZFWdDNkyc7BWnuWVlGJBgST6rm+UweFM+8SsiZpkxzLrf0ihCNpiyr1YvzV13TdEBv/E2z4Vu+T3rXOYrj3Au4kHBYo5uZ1qUUlOynKtSfHj3l+MGTjuNWqus7cdLHm/Y+ankLmEa9jbL9p7mYWqTo34tyQnBfiBdQ+kNc5xcKe2vSyDspZ6DjnoaD0qS43NpDweSdmKYbHbL+x6mFUduQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6eaf08c-4a57-45ff-fa2a-08d6d54a1407
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2019 13:19:05.8726 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2351
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_061909_978514_22A625F0 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe08:0:0:0:620 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Varun Sethi <V.Sethi@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Nipun Gupta <nipun.gupta@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Correction: we use ARM SMMU-500.
Corresponding bindings are : https://elixir.bootlin.com/linux/latest/source/Documentation/devicetree/bindings/iommu/arm,smmu.txt#L49

The #iommu-cells is 1 in our SOC: https://elixir.bootlin.com/linux/latest/source/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi#L693

Regards,
Pankaj Bansal

> -----Original Message-----
> From: Pankaj Bansal
> Sent: Friday, 10 May, 2019 06:04 PM
> To: Will Deacon <will.deacon@arm.com>; Robin Murphy
> <robin.murphy@arm.com>; Joerg Roedel <joro@8bytes.org>
> Cc: linux-arm-kernel@lists.infradead.org; iommu@lists.linux-foundation.org;
> Varun Sethi <V.Sethi@nxp.com>; Nipun Gupta <nipun.gupta@nxp.com>
> Subject: [ARM SMMU] Dynamic StreamID allocation
> 
> Hi Will/Robin/Joerg,
> 
> I am s/w engineer from NXP India Pvt. Ltd.
> We are using SMMU-V3 in one of NXP SOC.
> I have a question about the SMMU Stream ID allocation in linux.
> 
> Right now the Stream IDs allocated to a device are mapped via device tree to
> the device.
> https://elixir.bootlin.com/linux/latest/source/Documentation/devicetree/bindin
> gs/iommu/arm,smmu-v3.txt#L39
> 
> As the device tree is passed from bootloader to linux, we detect all the stream
> IDs needed by a device in bootloader and add their IDs in respective device
> nodes.
> For each PCIE Endpoint (a unique BDF (Bus Device Function)) on PCIE bus, we are
> assigning a unique Stream ID in bootloader.
> 
> However, this poses an issue with PCIE hot plug.
> If we plug in a pcie device while linux is running, a unique BDF is assigned to the
> device, for which there is no stream ID in device tree.
> 
> How can this problem be solved in linux?
> 
> Is there a way to assign (and revoke) stream IDs at run time?
> 
> Regards,
> Pankaj Bansal


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
