Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C11319D53
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 14:34:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fHnFoCnCisiYQAEUFyffJ+KSe6tiYHnIGk1WZWPYMIw=; b=GD8ATvID5KlcVS
	xdON+IVhgQ6sKD3jRmV552Ls9IlkKhXPCQGlqoHzh7O2O0HGxeU0qpApdKvN4uslOT8G+rc/TwZLH
	4Oa9QJeFb0S60moDMsMfoMol26zzuCVwSHAOgswC+e2/JKPLg5apwroNCjmExAaIG1xDoYLJgZy+m
	s3U934eAObMUUM8X+bUqXJ7evQMe4lWERkQvMQJnWd3Hrr1ubzBtfEcEouggU9TCyj2v0bmDo+oCH
	JvQe1SvfzyID023tYuj6mCAqcY87DTlAjpj2ElDeVhEETFgTxfVjoXKMGmwVO0Cv0kTtScyjPpt0g
	JNG3Lnz9Z7sEDWnYPIKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP4j2-0003kB-MO; Fri, 10 May 2019 12:34:08 +0000
Received: from mail-eopbgr30082.outbound.protection.outlook.com ([40.107.3.82]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP4iu-0003ie-V8
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 12:34:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pXUrqKxKXYpJ9knrQccAiT5FJfTkcq9dCnjv0LZgUZU=;
 b=hUfz837xgLpvrmo4AoEk+zIFDL0tSK7BhkHaHouMZ4PwEHJWeF+zCOhlSj5L06kHOYjCI+vKSuYvceZ4xWWh4bGV22dto9VyPl4rjReobdUyw3MEAfNY5IdUmDj1yLlBl7Px1L99C91ncL+w278/9Y4kCNzM+7n3mVs4Fh9ESLM=
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com (10.168.65.10) by
 VI1PR0401MB2255.eurprd04.prod.outlook.com (10.169.133.148) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.21; Fri, 10 May 2019 12:33:55 +0000
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::5e3:7122:7d0e:7fb7]) by VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::5e3:7122:7d0e:7fb7%3]) with mapi id 15.20.1878.022; Fri, 10 May 2019
 12:33:54 +0000
From: Pankaj Bansal <pankaj.bansal@nxp.com>
To: Will Deacon <will.deacon@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>
Subject: [ARM SMMU] Dynamic StreamID allocation
Thread-Topic: [ARM SMMU] Dynamic StreamID allocation
Thread-Index: AdUHKxeT0UQZA1BdS6SusO/TAZQ/qA==
Date: Fri, 10 May 2019 12:33:54 +0000
Message-ID: <VI1PR0401MB24969CE24E4FB91EC8551DEBF10C0@VI1PR0401MB2496.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pankaj.bansal@nxp.com; 
x-originating-ip: [92.120.0.4]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4b9b6fd3-8afc-414a-2ae4-08d6d543c428
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0401MB2255; 
x-ms-traffictypediagnostic: VI1PR0401MB2255:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <VI1PR0401MB22552794C48D6F16D903E7EEF10C0@VI1PR0401MB2255.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0033AAD26D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(366004)(396003)(136003)(376002)(199004)(189003)(55016002)(6436002)(44832011)(186003)(71190400001)(53936002)(71200400001)(6506007)(68736007)(4744005)(8936002)(102836004)(6116002)(7736002)(4326008)(305945005)(74316002)(26005)(3846002)(25786009)(6306002)(316002)(256004)(14444005)(33656002)(99286004)(76116006)(81166006)(14454004)(81156014)(8676002)(9686003)(7696005)(52536014)(66946007)(486006)(86362001)(2906002)(110136005)(5660300002)(478600001)(66476007)(66066001)(73956011)(476003)(54906003)(66556008)(966005)(66446008)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2255;
 H:VI1PR0401MB2496.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: v5x2hG19gEvxcs/sZn995NyJLknGB7OIVwN0cg3FU8JiyhLyeVLxSPx1dxpgOk/hj2OFZuarmagTJLaP5oIEVRl7aQ0TBQrukItds9QJZP17chiw99HNp9vSMRDV3vhRYaj3Wfv0SFBvsTQbnOrzE7AQErHiuRFqOOtUDLFbYUN9jpn8X4Xsv74jFBlVoPoWVvfsy3WkglBmiVJO/5muPr22ZwXbmRTMtwBvgzxN7UkHKoW0s9A79qHf2+Svi3xU777O/FAX7xuFd6x93n2rpU2zd4ryUCRiouNdzfiv/DKtsM1WwE0fRLQbduQVf0sdilDZHZJwGJTS+z5VAgnKlPT342N3bou2wmXZ0fnXYRORF1dmEScEqtlzevUNxZlq0In+IuglKMl3lHsFsuum9AFHtA3ngZwBGX4KH0OpM+c=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b9b6fd3-8afc-414a-2ae4-08d6d543c428
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2019 12:33:54.8094 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2255
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_053401_004989_643CBC6B 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.82 listed in list.dnswl.org]
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

Hi Will/Robin/Joerg,

I am s/w engineer from NXP India Pvt. Ltd.
We are using SMMU-V3 in one of NXP SOC.
I have a question about the SMMU Stream ID allocation in linux.

Right now the Stream IDs allocated to a device are mapped via device tree to the device.
https://elixir.bootlin.com/linux/latest/source/Documentation/devicetree/bindings/iommu/arm,smmu-v3.txt#L39

As the device tree is passed from bootloader to linux, we detect all the stream IDs needed by a device in bootloader and add their IDs in respective device nodes.
For each PCIE Endpoint (a unique BDF (Bus Device Function)) on PCIE bus, we are assigning a unique Stream ID in bootloader.

However, this poses an issue with PCIE hot plug.
If we plug in a pcie device while linux is running, a unique BDF is assigned to the device, for which there is no stream ID in device tree.

How can this problem be solved in linux?

Is there a way to assign (and revoke) stream IDs at run time?

Regards,
Pankaj Bansal


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
