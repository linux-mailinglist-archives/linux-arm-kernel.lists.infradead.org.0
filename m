Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 653471E93AA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 22:43:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iGjcD9Cxr9307OEcJS2WoFqFImhCxqnn9Jy4y5Wv7cs=; b=ZTLwY09TCjDJh6
	uPiKba3FoEfBLveufv9t3C3iqMB28Im9aWFiJAvuUyhED7y9SD93LufSrOYQDgZp0fzxzeAETBON0
	64CBHmI+e6bu2pH9rg0ZSr7l9Z54Rc24ocEqnxw4yXS5UKWUt70aZQhwfznv8rdopZoOz3b9Nv8hT
	KvphTbLYOMvejAMk2f8yYzmMIdscxZGAQ/7I6OU2ppEz4rjWYCsoayCqvfC4dxoK+Gtpj+n81KjGu
	eP3sXYsWpPmqyhB7Li0GDijQFKxDPw2I11e0n52G4Dx4BUuLbydd9d/JEwiL7WwXi2EIMEnHqMrnn
	dsK75wbSJGJZZhzSZ2PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf8KS-0000qC-NL; Sat, 30 May 2020 20:43:40 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf8KG-0000oh-KS; Sat, 30 May 2020 20:43:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1590871409; x=1622407409;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JSWXZ1asivqI/Bn+lwzUAb94SWA5UJ9jNigR3k+tsWY=;
 b=bgIt0gR5nDmxd52fSjnTyCiKgHO+6aWQ+4iMEc7NUeGjARLHIU3t4PHk
 9NBhY88awz7RhWZWcN9pnk6hqcxfE6I7exkwOOvjnsiQm0ZjuAf/kjCJU
 NYVD3ttrIbPq+qQvcoIXi5J1EX+3vV11xGEOzHsYT4uG4MEOU5quQf98A
 NBRS1vTIOQlv2dUXUibS54YIAzcXAAJ4U/G+NP4ymnorfnjerZK9CbclY
 BO9PWa7LY7dO41Sq8QDKubolRTRcxdEkawDptC7wgswYdA/MYoT5h51rz
 d7Xqoe314uJL4+3JdhZXR2b3qX+PmE/MhfRhGBYDgcJPV0w4+oIsizaqx w==;
IronPort-SDR: JjzEGWZlt95Yz1k4vKfHIbrdCwQNsITk+U9gm5JokzFiAH9u8zvHHH/6Fipe6DXVp1abgmJ4gt
 AAsoOcAr9NU4y2NVgYmSnWXY0W0w4F2MWn2FKeFYUBASxPUUvtAucOOJIrP6u6CIrnIKnq6Gwj
 47BP5F0W+nnOgEjwVp0Nvbl2f6suv7NAgWxK1ZUxWvCbaQQUVi1CcyDeeYTeHOW9iR/XdsxkBO
 k1sFdvrSWYfKDH2leOxIvVEgZIUDPtwFP5Z6UJ4Q/VgObtXrJkd/VeZUFR+U3vs1+96vM/tCk9
 F18=
X-IronPort-AV: E=Sophos;i="5.73,454,1583164800"; d="scan'208";a="140285836"
Received: from mail-sn1nam02lp2053.outbound.protection.outlook.com (HELO
 NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.53])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2020 04:43:25 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EurVlIPeKY/ejD/cT8uCcQnc6tH7eBnQZVJCZprWDdPL0emeWoJ4bgOnKlb77oPNcMEqFbLSOSnvRTsQddnikYVN3IytgSlyURFW0VxqN7fc9bU+AytoVXxojXUZ88pArijpH7v14eYX5q7NtRw0GYMWtuLk2mDioNR08hAMkxqJjNI67JyfRxeOekLzbxfLJeZNWsl6gl3WjqS8cE3MBQ41nd8/xs256I6Uk16G4tXWZIZN3ZmWBq3u5tJ2/JfZPYPsAeaayE1Z90dbajMMYtRxNqKJuXcpcFg9jTn/cMCxTrTVekB0I89KAtnWpGx9SA1sMVEppLssoxzst1Ry8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JSWXZ1asivqI/Bn+lwzUAb94SWA5UJ9jNigR3k+tsWY=;
 b=KUWax2Lq94ec9MVb8fubueuqWnO65z12gwOXUF92V67s4zJmprt2XzYpoE6Wr4Q5IR8LeaRmCrYDS+0EeG9rjE64V5pIORp1qtQK4muOSRLJFrYw3kg7tTaIcilFxFu/QrA4pj+7INBO+qlP9QEqxK9bFIItO1Xdxt/Ps9qVlPrjqVbPYgNvz2t4PNmIkP3cDmbgvbVRrh61HvtRUt6RBhF5xcabfq2ip+P1rdFOHk/EWiS0UHhkTyrEHL70iQOwHLTfAxxRcgvV+Q1WgMC6a8HDlfVSZGv6pyHewos3PHYqagNoPP+wQnLd4DaIazCtnE9veUfAXoaOKBAU7LmeOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JSWXZ1asivqI/Bn+lwzUAb94SWA5UJ9jNigR3k+tsWY=;
 b=rrY+Y8Hw41SrfMlAbU+Qa9+46CD0hj6or3iNwoxg8mV683lVOo1fTMj4Ba62yH7nTIo0vkArwLW+3hmbKiAJqx1GYg3Zao8awl4fSk5Aw7p97jwefOv/jDQ4Q0/OD2WW1jN4jx0r3gZ7HYQXQgGwX1Tm6aQQI8U/d9URLJrn5PU=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB5070.namprd04.prod.outlook.com (2603:10b6:805:9e::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.21; Sat, 30 May
 2020 20:43:23 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288%6]) with mapi id 15.20.3045.022; Sat, 30 May 2020
 20:43:23 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>
Subject: RE: [PATCH] scsi: ufs: Remove redundant urgent_bkop_lvl initialization
Thread-Topic: [PATCH] scsi: ufs: Remove redundant urgent_bkop_lvl
 initialization
Thread-Index: AQHWNoxVzZCnTk5hMEqJuDv2sCuWsKjBGI0w
Date: Sat, 30 May 2020 20:43:23 +0000
Message-ID: <SN6PR04MB4640DB0A4B72E086B851D287FC8C0@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200530141200.4616-1-stanley.chu@mediatek.com>
In-Reply-To: <20200530141200.4616-1-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mediatek.com; dkim=none (message not signed)
 header.d=none;mediatek.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [77.138.4.172]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e6978894-7656-4b2c-a1a6-08d804da1864
x-ms-traffictypediagnostic: SN6PR04MB5070:
x-microsoft-antispam-prvs: <SN6PR04MB50709CD858D22571EA6C611BFC8C0@SN6PR04MB5070.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 041963B986
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: u1472h3i3t1EqrcFSINRmohDAPXiqnycJUzkd/Lih8yoBxCqAzpr+2zU+1YrTBK71m2ObkxBmLoJaiLDI2fk9iMM6pRCMDHD8n807HMFEBxRTGAuQO7jrQAtSnIsl0i9NeaOOa8+uma9Cav4wabX+wxHjOS8UsIY0liq7O394dhQPQf3qXwlUwnsnV6vIebFhQCildSlsrLKyNJiIdZQHsWG+S3tgK0iPX6tVWDb0NNHt/rwfMJW2T5H9Utu6OT1zbydgHYaSh8XuFVqpq5AohRYqC6rSLDg8HtQkdLvDo4O4pTghU8PJnvRs9+V3ibT6zXg/c9S4lPNik0OFsWckQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(396003)(376002)(136003)(366004)(39860400002)(6506007)(64756008)(4326008)(2906002)(110136005)(8936002)(86362001)(316002)(52536014)(66556008)(7696005)(71200400001)(54906003)(66446008)(8676002)(83380400001)(9686003)(478600001)(55016002)(33656002)(5660300002)(66946007)(76116006)(4744005)(66476007)(7416002)(26005)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: vLnW+wdtxKNGnH52LF/moAv98ZCFY9DXLzTWeYyMPCx6u8lPHjYgN7QRmSa/+DpqRlGL5c7OzlcoAsMBmuBpaeu3xqsIsh77bNybOUwonh3+0oz7Zzlypj8qP/3t9iDeFJIKZGSmvTKtLZc/wKuNz5c5RXGSd6Kf9ziqGCUwy8oKdaMjGcy1ys3fqV6AKdOd1SS6TiWmfu7h5GwCWP2xnx+5ffS7QStcUn078pWQyXj8XELNff3YBjmW6QO9qOefI7lmo8Hz0C/6V1VNIhF6vgyJ2Y+1/qpI0zwYuyp23AwtPIJCcPWFXaTpzPl6fdtsmkQSNHcZVQO5uiQ1JRRUADxx9DpVvHhIH0Q5TQJKsp4A34/OZ9oda0y+xMze/wbgpye2lL3JkI8rWq0BzP5719ZAwCThDP/48Of2OgNereYWoerYvEtrSmUSHD+qR4yceUBP5vXsl+H8D2h/WfeKx3eiJW9IvV6O4+igKRMP/Lc=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6978894-7656-4b2c-a1a6-08d804da1864
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2020 20:43:23.0225 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c3mFjrpBVXI3NdEJh1t3YhWxGt2pqDqZXI4HGq5SUznxkbN/TF8M4Wd+BF6P1XDedIZQa5PF5Wm1rHUNVlS69Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_134328_762197_B3F39DB7 
X-CRM114-Status: UNSURE (   9.10  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "bvanassche@acm.org" <bvanassche@acm.org>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "cc.chou@mediatek.com" <cc.chou@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "beanhuo@micron.com" <beanhuo@micron.com>,
 "chaotian.jing@mediatek.com" <chaotian.jing@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

 
> 
> In ufshcd_probe_hba(), all BKOP SW tracking variables can be reset
> together in ufshcd_force_reset_auto_bkops(), thus urgent_bkop_lvl
> initialization in the beginning of ufshcd_probe_hba() can be merged
> into ufshcd_force_reset_auto_bkops().
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
