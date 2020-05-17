Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3033F1D6649
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 May 2020 08:13:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r7u2KMqnHejHRiVZJfs6GWZhAk5ZFPkcxwKNKUgDBGE=; b=KmC+jQxCKvl5pS
	lkCAv7PbMfr9q6F9pRvJbbIcmmvMWpJ3lUkLBtBCiGhhkAcM1qNYtirtu/SE3x7IkpnThLSam8ol0
	pvWiIduIKIatK7M9ll0riatK6Dg06vJOjwgJzoTtqMwyyoCvjMlmT0Nk7wltHWTYzWf2CxLOnTgbi
	X6ZkBwdgvA51+pJF9IXp8+OMfvcedFlHMZvycWCB+pordtK4eCpsV2MAFs2MfNloqPlxkbf9bbBcs
	vAZWt93mqTUbtJXrj95GWGz6a/7QJzR4m/90HHInIoKHn+MrxKKY6Exik5CbHdPryej9Kr8sAoB1h
	QWDaS5c1Zvkvs8FeSLfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaCYQ-0000oY-JJ; Sun, 17 May 2020 06:13:42 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaCYG-0000nM-Gg; Sun, 17 May 2020 06:13:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1589696012; x=1621232012;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5ysBMUN6vaFLl7quhYekcnjisQqvLN1gbZQfetV10Ng=;
 b=YceMpeBTeibe46Ts5VugqfhG/BvoQ76GQ0wK/km6qbd618YohE6xdEA0
 65kBBUM1bdsiGFthasqi+VVS11UkwNUxVpACEG8r1wZQQJh7cymo3nnV9
 +ZzfRK+jqpYoo36N4zjAWFwut3+kpT5pm2VHJf/RAAXAHyCKmI2xUoXEk
 DaezJnnk5FzBn1HhEJZdLpnXp/+rddVnUjSJszeIEi00jWhFnAL/7x3k5
 sW2xEVj8oMBusXgm0Me7ElLFexWb65cNRGSQq1Z+FdawgDtgNnqpwhaaW
 eG5ezWhSFg4YHuO07uxiIqtD6u1ToIs9XeU667qy0nNqs5dz3YhA8SN8T w==;
IronPort-SDR: BraWwnHvAi1sUukqGVzXgGgWXqML1AnkMB5Z/toE3g9AkPQmNYceNwX1FO1+tXn/vl1y1h47kM
 pwF+a9Kcb6oO6mNHgYkrOh/Y9U2/RnTh2etwsK4iiJc9+EN3x5ntYfR9qi25TmRdKHG/63GAbl
 CHPYEJluJrODtabkRTXWMeS/MQ6ZbREzyrAUqJWUqTuF5kjAm2CQuLwNxh0ElcDXsm5Sbny1it
 SylJNtCnLgDxchrj83+rLg5LvNplmvr4/NPlkfH0qQyHEBtlQbJacqCW1GENMNSFvaX9RoUs3m
 VXw=
X-IronPort-AV: E=Sophos;i="5.73,402,1583164800"; d="scan'208";a="139303422"
Received: from mail-co1nam11lp2170.outbound.protection.outlook.com (HELO
 NAM11-CO1-obe.outbound.protection.outlook.com) ([104.47.56.170])
 by ob1.hgst.iphmx.com with ESMTP; 17 May 2020 14:13:30 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iG1dF5Rhd+HvBZjH+A93iRrDIA/f+ApEuNXtknrig99p+/ezHYYSN/p0l81WP1+dDS392LLe20svtIAiy3dwUl5vMIiLBERQMtLZtaC6qNg6zZCpsTSlmsEEbXlTdJEsPItxOysvauo8VErTYv/FCjl27S9Yp7DzUdNpZUJWlhZz3NUPAnakvnSWLWDRfWaVVFDS7bUosf32cCe1JZR87qJkZfNe1Wtq5XtCYSeQgt6lNFL9Cvnnlp1pINT0mmA8nxk4uIilg0WsvHlRwvQtYAbm15Ery9ZeIWsuzAceIOcBCunQCtEfX6xwt5cZLcBXtuyXAhVyc3s08s6Qwc2lqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5ysBMUN6vaFLl7quhYekcnjisQqvLN1gbZQfetV10Ng=;
 b=E/IZWSqVPpATZV0uN6mQXLYPl/+BsvVFU874OmjwhFhaOhM5OSLPZ+xQlKOoZV6p3tvj/Ohm1pYvA7GGs+sGjf/sPSn6Fzu090c3OkjPvisUtkn2kBazbxzuyH0PkHBu1Rq7NAg3LK84I5U+rBeUJPEVFrr54Qsc/bhvhoyNbdlLiZzFlWDzRNq1TkhX2JkGMpWDYuxfHFJjbpoVuWcCHzZVAjZ+qeDvEI88chvSC41Hd5+U72ehTF72UQK4F6ti7KC1BS5ecHuoMvwQe/ISZaGEH588FPRjg2b0nKQgXvV9ZkTsa2Ja30173tyObhakx0U/p8X/lVE/A47yRJ5GtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5ysBMUN6vaFLl7quhYekcnjisQqvLN1gbZQfetV10Ng=;
 b=cvGTXStikk2vgvHwNo5WPF2Zj+EBV2ZM9nsL3PlgN5ixk+yjmpyNeSYgDCzV+7FoZPsEQbAcFma50dxzaSPJ7NzG7RBpcSTdl1M/XsyxvSHGq3JmoI5TuY7pL33IF/tcMUNVOezEsfuQ3hzAI3fr+VvGT/35Rg6NKS8i7LSW9BM=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB4351.namprd04.prod.outlook.com (2603:10b6:805:3c::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.25; Sun, 17 May
 2020 06:13:29 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288%6]) with mapi id 15.20.3000.022; Sun, 17 May 2020
 06:13:29 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Subject: RE: [PATCH v3 3/5] scsi: ufs: Fix index of attributes query for
 WriteBooster feature
Thread-Topic: [PATCH v3 3/5] scsi: ufs: Fix index of attributes query for
 WriteBooster feature
Thread-Index: AQHWK6nu1TLXoSvyQka8tAwzTy8UMqirzQdw
Date: Sun, 17 May 2020 06:13:29 +0000
Message-ID: <SN6PR04MB46400602F95EA8B975F74539FCBB0@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200516174615.15445-1-stanley.chu@mediatek.com>
 <20200516174615.15445-4-stanley.chu@mediatek.com>
In-Reply-To: <20200516174615.15445-4-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mediatek.com; dkim=none (message not signed)
 header.d=none;mediatek.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fa5bbe7d-b94a-4ad6-05c9-08d7fa296b24
x-ms-traffictypediagnostic: SN6PR04MB4351:
x-microsoft-antispam-prvs: <SN6PR04MB43510B0090FAE7CF79F224ACFCBB0@SN6PR04MB4351.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:1107;
x-forefront-prvs: 040655413E
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: v6LYmwI8cXj3S83sUQ0l/hRvfQ0MCFSeARC7xV1ArP6p8h0fR5fyhRLTzC+xU5P7OyFd6CQ9nKLCXzZ4aM5n7flX8ol3WsjzVvJGr6jDG6w2Q/jFFEAqGnC6TbGa/PvruLdrKJ2G2ZpekID61Kt2s68vSWLGNll/k4JgQUGTLCWDg1OzhjLRFbvyjJP9dqN+HncOO0VqEK/zIo/gSzOlgYPd1ExpBJIQym/IKIDbgGyvM84CLmueQHr9/98Dk5tn/jKlG8LTV5jJ2SN0YX8sIDl4QZ1TKkZCi5w0VRsILRAuhfReJjQNMu+c780VK+WC+v3ie70QGbH96o66qqogZq1yhx7ppqKSKxRZUPW1XE7l+WVnABZaoJLHEHMHP/bb1sxu4eSjre9vrllEZpZXc8u54qK/wrxaNXHtdqJ6JbeZJkMbxjJC4W369dCSSzRS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(39850400004)(366004)(396003)(136003)(346002)(2906002)(6506007)(33656002)(52536014)(55016002)(54906003)(71200400001)(7416002)(9686003)(4326008)(86362001)(7696005)(26005)(110136005)(186003)(558084003)(8676002)(316002)(5660300002)(66946007)(66476007)(478600001)(64756008)(8936002)(66556008)(66446008)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: p3cf5ZiJIWZbSbyBxbeARrpBB7dWSXGSf/uQFDAJEGT1XKxU9ESWjAtR+fXTEKuEziHVKDRg4yrNVSzu3CnBO3ioQkQe6ZC8y75pFQtAlwUUV85ykGDljFLXiOC1RUrUccqGIP/+DD5NOrlBfNIymBJCryusKTJNST7vhMSUIcQlR1oDgMCYF9swkPBijBtkRgFCW0PMIjs6LEDtphK2b9acjk/0jRaT+rqussb79/6brmR+2otNHcG7/+rRM+6Hg6Ka2ydxj/lA2k0zqNMdAmQLwG+CaHCEXp0Ys0rGuDF+eCQqDuj1uEWUtcr9GlD76/44GZGhQ0ZPbnY8XvUFJ+UdaDTdmLTMJMVQvz6+xyVq2PKwGHOHyKEvSrY0VC+9NcihZOu1fZfEA5Mq0d0lsel+T78Ov6+IbTXyVpHRCWjm15JMUYTrSQs+BBd/NuyDm4XRCsxxHMUsULRSH76M7tZtuOquPo9avbSMa+UTgzQ=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa5bbe7d-b94a-4ad6-05c9-08d7fa296b24
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2020 06:13:29.3381 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZtCPjEcSwmLHt36cApgVIcvo/Rs4HsxU6Ae8gjk6Rb3PeaN3nrUVD6Z3o1w5+jYd+GHgir8YFh+iIUsM+62vzg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4351
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_231332_639194_80F7C730 
X-CRM114-Status: UNSURE (   9.34  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

> 
> 
> For WriteBooster feature related attributes, the index used by
> query shall be LUN ID if LU Dedicated buffer mode is enabled.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
