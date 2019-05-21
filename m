Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 225A7247F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 08:18:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zSkmY4/n4E9dQiU5CEUWc0mJLF8X34MnxxoI3a2hshM=; b=q1zxWeLDlGjFmI
	A//EOaFymHdhrU1oHE4yelLaJQZ8CYMzGXYE11F82eWBxZOpaDd80tj80dPm+fWLnhE1YWLjOJK1d
	LD+cEYnU7k70SmuYMSd7ho271Z/7SJ65OiFpKuScff+ydGzMf4KHVjOseaxtimSajdy+RCZL28cXJ
	F67e4ZmNfEI1ZS5pLRvQriCzUMZUht5j4OpXS1LUHuWk2FO7ygu/otCeeUmr01928w8/AoRYc4pAu
	2xzLos3cpo7Q9gQohcjRtrI90SpVgg6V8+kjx2BROMTX5A0JdB+tW4HBfgP7i97xHPj/iVZ2T6qPH
	Oc0jGXSIzgX4HOFQPhGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSy6U-0006lm-Es; Tue, 21 May 2019 06:18:26 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSy6L-0006kb-SY; Tue, 21 May 2019 06:18:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558419531; x=1589955531;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tjsXONKa+Pf6UPe0Zzel/r/jyoegrw1lpopf3HtQQyY=;
 b=ndJSfaiLDeyVN7A2fZx9sgS1GiQMA6RdFe8EXvbHfpfd8K5WArK04Q0M
 NHosRQwu26KzQpIY3Uvgmcb3+B8HR6lKyHncQuOWaWxxX443Envp64lex
 IxX2+ZGB7aNT6xYulOac8eUg50phBNhdO1xhuPPhNO6g6t42GAocOyQp9
 u7zSL76iow4QL5ohAss+MukJBBbTZy/SZJUaAYPMatUEONgIgJXuf6UNb
 vi40wWVZ/DZmFoYXMqCld58TkOefmtSqKhhp425Cc8ZDho44eCwnSOk1p
 /0oI7+mxe5IU3DfGGk6d7XNnSyEPpgjfdFwHyWE7w0LJnG+6gg0bR2slc g==;
X-IronPort-AV: E=Sophos;i="5.60,494,1549900800"; d="scan'208";a="208184221"
Received: from mail-sn1nam01lp2059.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.59])
 by ob1.hgst.iphmx.com with ESMTP; 21 May 2019 14:18:46 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tjsXONKa+Pf6UPe0Zzel/r/jyoegrw1lpopf3HtQQyY=;
 b=BRnRkGiVSFcU7oDMZGaJ5jbv9m7JvBDJs/AuRWp2VSaIsTtsWvftbgvRXNkzTxqw3Qun5aLxPpjeCV4EZOSKW1qcP6X2wHfEtM2zoc1GY+mNrQC77zCaDaWKwSgnvkV9kQIxeqKFwSlAxNUU4OX6tqtO92pivxMS5CdvWJwEjWk=
Received: from SN6PR04MB4925.namprd04.prod.outlook.com (52.135.114.82) by
 SN6PR04MB3824.namprd04.prod.outlook.com (52.135.81.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Tue, 21 May 2019 06:18:11 +0000
Received: from SN6PR04MB4925.namprd04.prod.outlook.com
 ([fe80::6d99:14d9:3fa:f530]) by SN6PR04MB4925.namprd04.prod.outlook.com
 ([fe80::6d99:14d9:3fa:f530%6]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 06:18:11 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "pedrom.sousa@synopsys.com"
 <pedrom.sousa@synopsys.com>
Subject: RE: [PATCH v4 2/3] scsi: ufs: Introduce
 ufshcd_is_auto_hibern8_supported()
Thread-Topic: [PATCH v4 2/3] scsi: ufs: Introduce
 ufshcd_is_auto_hibern8_supported()
Thread-Index: AQHVDxXZu6oGxF11MU6BMI1MBhbFCaZ1GtHg
Date: Tue, 21 May 2019 06:18:11 +0000
Message-ID: <SN6PR04MB4925EAB455D857AEB055258FFC070@SN6PR04MB4925.namprd04.prod.outlook.com>
References: <1558361445-30994-1-git-send-email-stanley.chu@mediatek.com>
 <1558361445-30994-3-git-send-email-stanley.chu@mediatek.com>
In-Reply-To: <1558361445-30994-3-git-send-email-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c20d7dde-6802-49c7-a78d-08d6ddb419ac
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB3824; 
x-ms-traffictypediagnostic: SN6PR04MB3824:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB3824DF90CC9E6DE59927266CFC070@SN6PR04MB3824.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(346002)(366004)(376002)(396003)(39860400002)(199004)(189003)(76176011)(33656002)(99286004)(6116002)(6506007)(3846002)(5660300002)(54906003)(110136005)(7696005)(55016002)(558084003)(256004)(4326008)(26005)(11346002)(52536014)(446003)(68736007)(478600001)(2501003)(14454004)(7736002)(6246003)(8936002)(81166006)(53936002)(81156014)(8676002)(186003)(102836004)(66066001)(476003)(86362001)(9686003)(486006)(72206003)(316002)(64756008)(66446008)(66556008)(2906002)(73956011)(76116006)(66946007)(66476007)(2201001)(229853002)(71190400001)(305945005)(7416002)(6436002)(74316002)(25786009)(71200400001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB3824;
 H:SN6PR04MB4925.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: L0vnxzWxKVRMQWeeCxzzjIw2vMOTm1/9ZedCGdkKv4DvlIRCe8yLw2L5DxvZzzUaRyPqmTCjFlVKL+6axMJjcAkhEu8k03YiX1dbpckZempERgJKOMujmM3aVphTgsKR+MsfI1kWz8Mm+TJFYVxHnBWKBwym/tbwn/iJbVB0poqLLIm+Jm94xgT8TtArrxO5PlnBZ/A2zGuDFQH0/rUOgJg3QeSrBAXxtKWPo+HDN/a4IMWd8hKeD9VYG4ch+lz9mKygnpZayTYvLKDbsd/uaL9SwtzbBPTRlq7DobTi/861sQ4pHWy2zJ5sTN7H+PMLGKtId0bh6s+VYdY0S6XdYgYCNYnU26U+WDmjbQFbq/M9f0mACg3m3XTpdAMgbEZiGd1b75Pdmi6dBSa67jMdSpAjm4acsTo13R9FhZEFiT8=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c20d7dde-6802-49c7-a78d-08d6ddb419ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 06:18:11.2721 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB3824
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_231818_072764_18B7A27C 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "evgreen@chromium.org" <evgreen@chromium.org>,
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
> ufshcd_is_auto_hibern8_supported() will be used elsewhere
> in the driver, thus refactor it for preparation.
You missed a couple of spots, e.g. in ufshcd_auto_hibern8_enable and in ufs-sysfs.

Thanks,
Avri

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
