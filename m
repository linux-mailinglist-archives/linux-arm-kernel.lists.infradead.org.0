Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFBE71C3783
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 13:03:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eXO8a9eWYZ1n8PF/5wgtyQm2/NqCyPWUHXPmO3uIhK0=; b=eEs2RQoHGaE9ui
	yrrtOuRLH+4Eu2sVh8IK0b+/XCmxH5giZb3RnRIoX8VJx3AEjYSAG/qxh9yXS2xAN9INHKriz7hiK
	7loItCCRviyUpC4N2YZDygSxllisbv4miXYY0/2Bo2v4XNI2o0JyIVNbbMIWb6lpxh1t/cMepqGlV
	PesK79CGVlRWI/vWrGW+J0pqhfUG4IZvpUASF5eLRRmBBVsoSKbO5AWl/8kMoq2BCHPVkg4fBVAkr
	ZbsTqC4H4lTlBjAFjh3NLua66YGmuGYaTUURw/XTShQsQ4wCf/8mccd/HcY3mmNlBLNy2kS3LLL7d
	hNm5P8P1pZRGIQk/ZMRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVYt2-0006Sh-GI; Mon, 04 May 2020 11:03:48 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVYsu-0006Rb-Ar; Mon, 04 May 2020 11:03:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1588590220; x=1620126220;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=T2Ad+xhss7QEUq6ACAoeVJMtAF5NTKjVDRG0qnqJk4M=;
 b=mcEMa+bmB5gKCMhU+VbkZ7sLbYNRYILO/M9YzHkQDbUzmrPf/tfkld7e
 VF9d1KXaGDjjdlcfryiK9pUIbabvZ2TijunqR4yLBBMdE3UdJYKxeLSUJ
 CphHb08dwSqhxMbZg0yTkpCkuq7rGRYRU/WfDvJlwU65veRPuZhqyGkLB
 vsZMoSv7Ds2D4CRjdXicg0qFabRC0W3NMd7wPlHPawkgnAv/FtVDtd1D8
 +OZQRknY+EyKkVG0C1f2fL6sUFXLsgiXM2Rez610nqTDZQbcVBGLpKEDq
 h08KJzTHgMYx+nY8pRMqE6j6OnzmIyaRWinzybC2EpaYQHognXL5lPh77 A==;
IronPort-SDR: TkHLjhkNCssM/54UEuoLifdtWCRDV+TQjGqNzQuCtfU63PFsOqq9NIn9it4tXpty+S/Qx4uk0A
 uXxMDqbft7/ZdP0LF+XZf+++pNVtFEX8OYkOKgVT5xFO3+g9bBIaJp6qaDmLgjUVN3OOhGHedQ
 eQ8ILIzU6tfOoNM29spfHkLijtcfkFzttiEYku8Y3FzCEguDHgspOwN2H9Qa0VhJjA6IG/S1xd
 E2qi4olvwVVV+W7qAXeVWzctu+oGH9q1/Cwp7LBoW4oZsaOFrFc6dRRs/lkIS7fg2IbWSzdTm+
 Lq8=
X-IronPort-AV: E=Sophos;i="5.73,351,1583164800"; d="scan'208";a="138293344"
Received: from mail-bn7nam10lp2101.outbound.protection.outlook.com (HELO
 NAM10-BN7-obe.outbound.protection.outlook.com) ([104.47.70.101])
 by ob1.hgst.iphmx.com with ESMTP; 04 May 2020 19:03:38 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZD4qD4vdl1RmyZ8LPqKI9dFYBNhxGOBxyyKolIeUgImvRMLNtnDg2hUDh92ODTBfZieeZhE67FIUIfT/X8b5wwhxb+2iuL8O9kg4pF0O96mOnQd2u64vkEjOtm19n/z9KcVW8NfuCLjrfKilv8+mLJBPArs0yx2O4M6gjU0NR5AsxenFt+WF5s5YsRlhjdesrOGR1e54Ar6Y/AXkhsoEafn89jG3a+vSKBu2lcnOe+Hlp0FPhHizHe7a2soZx0X6+i1zgv6DHqNw/A0QZB28kAfURsHEFkRc8cDljCf2Lo42G6GcHOPEK6ga29ebRrr/wMC9vh8Jsttb5f+Y5qkykQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CBrXMGNmfuPgRYboGXskCcGcamN9Oase54vLZm12Wrc=;
 b=PR8NhrPMpHDPdBdC0Z0gxGfMfSxIENuw3klVltjdkH5EdVVZHWhdIRJwhcpvPwu8pQ+nvuwRym1WGZVzAWsyMmm1Sp5DrE/mVsOAxYjbTjUqObSqoqw58InNjjo6KysLwX10YpEdBd+WVdoAU+Hvt6TXyLSrv9C4rpnAWTJCnZY//gkgtXOCegjKtBNxRDADYpjcMU/H8fdHZZSuE11UnY9WLoK3Ne+Ay5OmWRnsUADJPGRrsA3leV/X46DgQjSClBwkrk88jVBOPn/6gaawld1UAFDkxco0khodpLLSbja/8r/HQpkuhasogkoaXafSw70R/GnDwGuJPaFf0gnfRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CBrXMGNmfuPgRYboGXskCcGcamN9Oase54vLZm12Wrc=;
 b=HMkcqGNCFCg55p8goMbRiT814V/YmjZWycXgjRM+9RQmCzNhEcEl12N5BmNg4my4ffVsgsWJGxQlREfAJY6na6emYlU6d5qsuXtAAG0rV4WjhVXfzUBRX79NHAKnkIFShbab9y3KKkgXtriSW2PBYVEkJbmBKrXjPJcJ6rV1veI=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB4464.namprd04.prod.outlook.com (2603:10b6:805:b2::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.27; Mon, 4 May
 2020 11:03:36 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288%6]) with mapi id 15.20.2958.030; Mon, 4 May 2020
 11:03:36 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Subject: RE: [PATCH v5 4/8] scsi: ufs-mediatek: add fixup_dev_quirks vops
Thread-Topic: [PATCH v5 4/8] scsi: ufs-mediatek: add fixup_dev_quirks vops
Thread-Index: AQHWIT7UcNDlRrxlf0S0WlJUL1qmaqiXwh9QgAACjFA=
Date: Mon, 4 May 2020 11:03:36 +0000
Message-ID: <SN6PR04MB4640A424D8E400300200F351FCA60@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200503113415.21034-1-stanley.chu@mediatek.com>
 <20200503113415.21034-5-stanley.chu@mediatek.com>
 <SN6PR04MB46408BF365ADE7F226275BC0FCA60@SN6PR04MB4640.namprd04.prod.outlook.com>
In-Reply-To: <SN6PR04MB46408BF365ADE7F226275BC0FCA60@SN6PR04MB4640.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mediatek.com; dkim=none (message not signed)
 header.d=none;mediatek.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1202ed4f-8872-4489-038f-08d7f01acb49
x-ms-traffictypediagnostic: SN6PR04MB4464:
x-microsoft-antispam-prvs: <SN6PR04MB44649060BBCF1C8B0E7E49E1FCA60@SN6PR04MB4464.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 03932714EB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6CZ1txf016gqnCo7nLtnYC0mjL1CSwi9QRjCeFyBlIw0sw8SpzGzDLS7vPmwuY6RMvPgVniDU8IbP0HhOg2jrWkFyL1cuqkn/g8mci2hi2VsaYfNzLPb2oe9D4nRb26LPjK6CsuDlZFbF+RE705pkugLWT+Xikm5zXDppiuYebyW2wpNR7WqX2AavdzqDXQ6J10lw9spQJUQ7A5Yr+MVLtWyDXvQGsGCj0cDL6CbYneIR5OLXZCB/4yttvjRdSj8FkSPa6tMtO4XxUpGERLvykIIdy4CRx92cy9WyDQgxryQhhUOvINcTgcbmjA2Umg+PqlV472B0P/yRdoyPx7B5MZKOhUjn91R0uQAGEDA5k4Xm7/tSdDO46M1Ub0MtsYy/dVT2diahkUe8LoOQmlly3/AoKSpVaMDos4c99WF48DmJp+0HusXF7CSvFJUFnRz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(39860400002)(346002)(396003)(136003)(66476007)(8676002)(26005)(2906002)(52536014)(6506007)(71200400001)(478600001)(33656002)(5660300002)(86362001)(2940100002)(64756008)(4744005)(55016002)(9686003)(7696005)(66946007)(54906003)(66446008)(76116006)(4326008)(66556008)(186003)(8936002)(316002)(7416002)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Lpot51sJtCNQQeharX17bbSwi7M1/KrhQFnZqPJbcuZ0sHRfKwaOQFuoPnNpPJPthNbck7XsdqW327RYNd7OI+OavLCw1hD3B/ogrsVvIKbBm3Hj9bMDiibVJ3we1OatQhHVUmapoMVbwE8UXYvws9bPkWF/FClcXZ8uUInvvJ1aLSY+jzj8C+t6QKWwUY8dEYIwVnZItX3APA9dpHNVGCm8bomyVNFnewmEGlSvrNiVt6MSpfAVCsYD4NdfL084XtdSe87Db7n4LU0ShqV13GPK/DE7j2rCq+XJkI/LSBy+ZtxHc6EUT8JXzH02wBcvikOT/p+glEgmvA6ZbrPazkkP2dEaRYU7Ho1e92mnWIs8M9r93O15ViH3J8CGwOxqjSSQSXKcWv5VRyp66RSdmGxtEGZTjaNYyxEqHt0+GFkUS2wghAl21vYZTLcgUIBuGvdrEFj95S3LH3yfYlsIZ/YivAm5dmgX1keBKplvdApw5RMtSa5N7J9Zq/MOoAMyalj8OrtKXjZUgXYRQXwlRtiiFDO2Idn5wIZMdjMnPoodMDxtrSRR2TVEM73b7qfIlkNLE7yrbbAg8J1aEtRGhUW6IFlOC/paV0ltaLApytlFHr35bT2RMITVXP1+RWMMzVlwntH5mih2TVwJVPVdaEj5iIZa+ILhdo5qnGA2c0Je+wMmMHItEdgFqr0OTIPDxP7Nus3ODdVy5YdsHtNMGLS3qyN1hOAULQeiUi96POdbZw95AhQp64VSaRFwSxjOAyZuyPZEiYTGnOB6XQV0jIiORFNpr1BsejmYTIiPXw0=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1202ed4f-8872-4489-038f-08d7f01acb49
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2020 11:03:36.5480 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dX+4qjBcvvlo96IV4U5oSMj3xg7TCmznIToe4oB+L5ORPqeT9vs74XynAIsFsxzXbaNxOSLy+RbpFBoN+/r/aw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4464
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_040340_424757_A35E66CE 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "bvanassche@acm.org" <bvanassche@acm.org>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> >
> > +void ufs_mtk_fixup_dev_quirks(struct ufs_hba *hba)
> > +{
> > +       struct ufs_dev_info *dev_info = &hba->dev_info;
> > +       u16 mid = dev_info->wmanufacturerid;
> > +
> > +       ufshcd_fixup_device_setup(hba, ufs_mtk_dev_fixups);
> > +
> > +       if (mid == UFS_VENDOR_SAMSUNG)
> > +               hba->dev_quirks &= ~UFS_DEVICE_QUIRK_HOST_PA_TACTIVATE;
> Why move it? It is a unipro/hci param.
Actually - please ignore.

Thanks,
Avri

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
