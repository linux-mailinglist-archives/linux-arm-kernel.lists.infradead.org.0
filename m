Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 718AC1B71A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 15:34:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f8h0EWFZPb9zZKyUUgfQp7W2EaGn12mpyqxW3dw61x8=; b=Fn7g5LdmBenZj5
	E6cRNyoCjv07e1YtwXQb5SJ0cf+mAThxKc7P2ZBg0IMhhPjYsTSdg6wZaTNWt55ZMntWP6bXbU9+a
	heSMO7JmVj5DVzrXUabexAiPPfNx6GkwCtfePMJXEZyCfN92c2fBUYUwNrSzhA43iuUYkCubrUsWv
	ktRPFi+Bk318M6wRS8YuXNvxRHwpb5vyBxdA8NowEktdj8pzbiaUnRiHyB9dCDfXlO8RfOBO8S41U
	aok2feHViLtdWGPXQLX4sf3o95D8nb2TG109NcB24ZR26kXms8vxTTO9QxZev2DcVbUz0ltBX30bq
	87YpZdePDkPZ4oaX1geg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQB5t-0004ex-9p; Mon, 13 May 2019 13:34:17 +0000
Received: from mail-eopbgr150089.outbound.protection.outlook.com
 ([40.107.15.89] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQB5l-0004eb-Dl
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 13:34:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=51nOMgyPMv9hkAmh+/0TQCoCoGxY33f/Y81SzW6bFtY=;
 b=Dzdlrm4m3+vJ+BI8u2jzrsmr+TV3CwrdnhoMxRprCBrFDwgYwgtaukB1rwVUGzNHzQ4KVoCINSxnVfn45NS5SSLNmtj8zyEXjQ6z4HeivYilD114rDLEhavc65UKKLi7mVlZcweZX96silhuCXT66DNwKkGhLsRadgCotR3IP1Y=
Received: from VI1PR04MB5134.eurprd04.prod.outlook.com (20.177.50.159) by
 VI1PR04MB3199.eurprd04.prod.outlook.com (10.170.229.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Mon, 13 May 2019 13:34:03 +0000
Received: from VI1PR04MB5134.eurprd04.prod.outlook.com
 ([fe80::8942:6d16:631:413]) by VI1PR04MB5134.eurprd04.prod.outlook.com
 ([fe80::8942:6d16:631:413%4]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 13:34:03 +0000
From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
To: Pankaj Bansal <pankaj.bansal@nxp.com>, Will Deacon <will.deacon@arm.com>, 
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>
Subject: RE: [ARM SMMU] Dynamic StreamID allocation
Thread-Topic: [ARM SMMU] Dynamic StreamID allocation
Thread-Index: AdUHKxeT0UQZA1BdS6SusO/TAZQ/qACZO3ow
Date: Mon, 13 May 2019 13:34:03 +0000
Message-ID: <VI1PR04MB51344BE2FF0A8C09D123AAFBEC0F0@VI1PR04MB5134.eurprd04.prod.outlook.com>
References: <VI1PR0401MB24969CE24E4FB91EC8551DEBF10C0@VI1PR0401MB2496.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR0401MB24969CE24E4FB91EC8551DEBF10C0@VI1PR0401MB2496.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.tudor@nxp.com; 
x-originating-ip: [82.76.163.33]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0f26f3fb-47a8-4a54-221d-08d6d7a7aa68
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB3199; 
x-ms-traffictypediagnostic: VI1PR04MB3199:
x-microsoft-antispam-prvs: <VI1PR04MB31999E540A9EC19C1BEF736FEC0F0@VI1PR04MB3199.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(346002)(136003)(39860400002)(396003)(376002)(13464003)(51444003)(189003)(199004)(66946007)(76116006)(73956011)(86362001)(14454004)(305945005)(66476007)(64756008)(66446008)(66556008)(74316002)(55016002)(66066001)(2906002)(478600001)(6436002)(5660300002)(14444005)(256004)(3846002)(6116002)(7736002)(71190400001)(229853002)(52536014)(71200400001)(68736007)(8936002)(9686003)(316002)(81166006)(81156014)(53936002)(446003)(33656002)(11346002)(99286004)(486006)(110136005)(476003)(186003)(25786009)(44832011)(8676002)(4326008)(26005)(102836004)(6506007)(54906003)(76176011)(7696005)(6246003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3199;
 H:VI1PR04MB5134.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: PyxGOhB1gEKAZRS4ih18qvwMganXcu3jQx2lDwnif4jCp/dqFzOiIc7pp+E9zw0/WVN/qyJ2Wp7hL4zFOQ+KU08tcMr51qQhAhHNvoOveCucdB5iFNQYrIAddPLyhTNUp0hnOLHJizY+0xVw6nqk/fqbwvYzwRSOW6yK9j+DbXN2z376qK5yePXjPUvkRc/IQ4wRNlXWemKvqejyq4EG2WSAfJxkWMka9SsVXsWcwwmloy9/h4vD07QpUZkg0tTqWWIGsQmjHMpioA7UCJ6wfbdhZz1moWdSRSL+kt/oDD5lJW/K9iZdNr2s7Jt+LSq55GjuQJ5LhFR2Z8jglrny7TnxYkjToLEjjwwugjl53xp46mdjjM1MAQeMB/uhOHs0sD+k7uGUfkKi9NCKx6HsjFpxwvgUoqaw+fff9PNPXoc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f26f3fb-47a8-4a54-221d-08d6d7a7aa68
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 13:34:03.6914 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3199
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_063409_533027_82B71F19 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.89 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Hi Pankaj,

> -----Original Message-----
> From: linux-arm-kernel <linux-arm-kernel-bounces@lists.infradead.org> On
> Behalf Of Pankaj Bansal
> Sent: Friday, May 10, 2019 3:34 PM
> 
> Hi Will/Robin/Joerg,
> 
> I am s/w engineer from NXP India Pvt. Ltd.
> We are using SMMU-V3 in one of NXP SOC.
> I have a question about the SMMU Stream ID allocation in linux.
> 
> Right now the Stream IDs allocated to a device are mapped via device tree
> to the device.

[snip]

> 
> As the device tree is passed from bootloader to linux, we detect all the
> stream IDs needed by a device in bootloader and add their IDs in
> respective device nodes.
> For each PCIE Endpoint (a unique BDF (Bus Device Function)) on PCIE bus,
> we are assigning a unique Stream ID in bootloader.
> 
> However, this poses an issue with PCIE hot plug.
> If we plug in a pcie device while linux is running, a unique BDF is
> assigned to the device, for which there is no stream ID in device tree.
> 
> How can this problem be solved in linux?
> 
> Is there a way to assign (and revoke) stream IDs at run time?

I think that our main problem is that we enumerate the PCI EPs in the bootloader (u-boot) and allocate StreamIDs just for them, completely disregarding hotplug scenarios. One simple fix would be to not do this and simply allocate a decently sized, fixed range of StreamIDs per PCI controller.

---
Best Regards, Laurentiu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
