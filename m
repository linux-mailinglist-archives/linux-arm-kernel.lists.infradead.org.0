Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B890169A85
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 23:41:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9jKkA4fPdF+0YX9oAv+czsv3GN4y9c05q9Kk/EXwXzg=; b=H4zsXCDDvwoQ43
	1KveVHN5X+cCGX7RT2NAP7joesK4udFtl2OPau/teWRpHbz1adhIW6rDor15Bnedz5TZ/Uj0KLbWY
	YITQWwU6xr03oYUhNYUppejWH4AWvBrv0fSAZxbG3JjEa3V4BnIVUQsTYqMPErTsT72/J3UI9wt34
	oGes2tqdZrsCp2ru188+lAgRFTKZ0r52XU3NivhyGRApldKZE8da/UHQNyAMTWtNLPiK9+l8ap42e
	JNnpvYmVPyN7q80A6ByGmvgannX2x/hJFO9nUbWE+l71om4LeK9o8V0kUQoDwPoL4KgU7pdB+pOAA
	yYr2Fy21WGk4cTUWKE/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5zwP-00086K-2x; Sun, 23 Feb 2020 22:41:37 +0000
Received: from mail-eopbgr750044.outbound.protection.outlook.com
 ([40.107.75.44] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5zwE-00085Q-QR; Sun, 23 Feb 2020 22:41:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CXyh43UPlYmYkmfc9X6wv+/O9nzahIws3Gd/A2Tj8pS9DTNpjFn73yHkLa8M/0EK3DulLQVrpAdQCTtvz5Wldzz7VVCglZa4JNp6juHjV4W0+3wp+7a5cOiRHj6zLfixXVsUqbVPfQrT+iLnhmTCcWoG16iSy2kPINa/FnbhykjVHoM9blrUBu3wco++sND3SmRRACBX6FFkZMlmnkG24HX5QMJeDK0ecF8Abwdg9O68jun+NU7wgupwSF229Sp8QQnzjxX8QYgLdjGd7NhIVjrwOKwLFHdPrBE+C2nM0dXqHb/NgWNf0zJ1gL+Kwct9+VXZ4kqfDzwMJAv3yjV84w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dAAltzuBU9UJ5UVuOceNimexpEo8PQ1CnszWESZVC2o=;
 b=G2jg4RxiTLaw484044QtHMJYrXoZgJQbewLrzEYt3MdRElgPlGN9aCkHGqXcb99qQG7x76dqnZA64FG9TMhIxvs0P/wJnquJR5k02Jq63d42tD6bGDsmLgr788vTWJeHmQEDX3QupkmwdHZhbpSYG4rBQvuer3nawcNgLRqpLdwRD9+ODEM4bJ3nJcv73Pto/Gld0Lzcd8O7aRvNr8hfpAgR+YdLjQzC5dRj0eVVpyJkgX6i8cT8m3ARQZk8EJDhIRY80nT3VBv3EfZV6g1+Suws1Rl/RtJOIFp0LrGZ1IEYn2+TJWUa9xR4/Ve+1GDpKnIJnlegSy7BHYjcGE90kA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=micron.com; dmarc=pass action=none header.from=micron.com;
 dkim=pass header.d=micron.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=micron.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dAAltzuBU9UJ5UVuOceNimexpEo8PQ1CnszWESZVC2o=;
 b=eO//hbqX661BScSWzyzNLDePtXlEQaqPlLZEPOTPWDfH9rBObX+FLT669z2cioD+TYXubUNCV4cGuzZRFTWZ4rbu7CUFvmgDEGMwMrC0ax7HsyqHwNGu/m0Bwjm/NdAfZSLN4tSmfJR2NjoVtevCL3AUE69TNs1JUb1k1klbRM8=
Received: from BN7PR08MB5684.namprd08.prod.outlook.com (2603:10b6:408:35::23)
 by BN7PR08MB3955.namprd08.prod.outlook.com (2603:10b6:406:89::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.21; Sun, 23 Feb
 2020 22:41:23 +0000
Received: from BN7PR08MB5684.namprd08.prod.outlook.com
 ([fe80::589d:e16:907b:5135]) by BN7PR08MB5684.namprd08.prod.outlook.com
 ([fe80::589d:e16:907b:5135%5]) with mapi id 15.20.2750.021; Sun, 23 Feb 2020
 22:41:23 +0000
From: "Bean Huo (beanhuo)" <beanhuo@micron.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>, "jejb@linux.ibm.com"
 <jejb@linux.ibm.com>
Subject: RE: [EXT] [PATCH v2 1/1] scsi: ufs: ufs-mediatek: add waiting time
 for reference clock
Thread-Topic: [EXT] [PATCH v2 1/1] scsi: ufs: ufs-mediatek: add waiting time
 for reference clock
Thread-Index: AQHV5/SBWviNFUGBTUqMAMnr5wxS1KgpZDZw
Date: Sun, 23 Feb 2020 22:41:22 +0000
Message-ID: <BN7PR08MB568451F1637CFCB77843745FDBEF0@BN7PR08MB5684.namprd08.prod.outlook.com>
References: <20200220134848.8807-1-stanley.chu@mediatek.com>
 <20200220134848.8807-2-stanley.chu@mediatek.com>
In-Reply-To: <20200220134848.8807-2-stanley.chu@mediatek.com>
Accept-Language: en-150, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcYmVhbmh1b1xhcHBkYXRhXHJvYW1pbmdcMDlkODQ5YjYtMzJkMy00YTQwLTg1ZWUtNmI4NGJhMjllMzViXG1zZ3NcbXNnLTliOTJjMjAzLTU2OGQtMTFlYS04YjhjLWRjNzE5NjFmOWRkM1xhbWUtdGVzdFw5YjkyYzIwNS01NjhkLTExZWEtOGI4Yy1kYzcxOTYxZjlkZDNib2R5LnR4dCIgc3o9IjIyMyIgdD0iMTMyMjY5NzEyNzk4OTg2MTk3IiBoPSJ1WHZyRXlYQVZxb0owVzkzRmdXUVdRN2Z6UXM9IiBpZD0iIiBibD0iMCIgYm89IjEiIGNpPSJjQUFBQUVSSFUxUlNSVUZOQ2dVQUFIQUFBQURWTCsxZG11clZBYVNxaC85aGpDRlhwS3FILzJHTUlWY0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUJBQUFCQUFBQTFRR0tzQUFBQUFBQUFBQUFBQUFBQUE9PSIvPjwvbWV0YT4=
x-dg-rorf: true
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=beanhuo@micron.com; 
x-originating-ip: [165.225.86.144]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 33f06e2f-9150-46c2-06cb-08d7b8b18261
x-ms-traffictypediagnostic: BN7PR08MB3955:|BN7PR08MB3955:|BN7PR08MB3955:
x-microsoft-antispam-prvs: <BN7PR08MB39558E644E5D59DF4E47577EDBEF0@BN7PR08MB3955.namprd08.prod.outlook.com>
x-ms-exchange-transport-forked: True
x-ms-oob-tlc-oobclassifiers: OLM:400;
x-forefront-prvs: 0322B4EDE1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(39860400002)(376002)(366004)(189003)(199004)(71200400001)(33656002)(64756008)(316002)(66556008)(7416002)(5660300002)(66446008)(52536014)(9686003)(7696005)(76116006)(55016002)(81166006)(8936002)(26005)(186003)(2906002)(86362001)(4326008)(110136005)(66476007)(558084003)(66946007)(54906003)(6506007)(81156014)(8676002)(55236004)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR08MB3955;
 H:BN7PR08MB5684.namprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: micron.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UzpknYlBAlnXG2qm3fgFqqtUpBPjV4czMx//ukw6QPZUMLxwhp6FMx7dW+uITzv7Vhe7aUWm0cYiYK7OHAoR6TP2XFwRkJUQhe2nWeIu/keuxhdAiRJd/McPWT2DonHMOmTPSNKov+HtJA2QouNtldArZ8KUqhb8D7KC7AU0bnqNYpImbUVB5yfkmS4DBkco5WWWt/9SDmYIE/YXxT1N7yro8qCkStyrwLf/aQ3N5I2cm4ilR7NSYw3+rw5O639lxtH/LNYzoo9jcfFX+PSOMc4ZFQwN4ZjmjRdijJcCD+3V4ScytdyBBL945IFtd51te97j1EOtUL7nX+SS6sFv3KS5HJHAWWBs5HfxnAfvhF5SRRUo+eZtaDEDjcXcsh0FUBvZBIqeRBi59Zpv19hkbVBba6uYOY072C+GeItGJBt1a5y8s8Nuy8PlFiiFuelf
x-ms-exchange-antispam-messagedata: YWTTfKBUOBX+OIirWfp3dMhqNnl8An58L1j5P/Rx1RUlAYx8XkqSUYs2QkQ7wTTlAJmiTUdXUEtxUgmLwd1TYRpuatKPBoSprmmaftA+hFTyHMpn8cCXGOmxukCt2ySYyesC9LIO10zZrwlkla2CXw==
MIME-Version: 1.0
X-OriginatorOrg: micron.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33f06e2f-9150-46c2-06cb-08d7b8b18261
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2020 22:41:22.8825 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f38a5ecd-2813-4862-b11b-ac1d563c806f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VakhtzpJ9WyriwznLlhRdvwG4I+3LYZNm02SAcgCi8H0t8NP72P0iJ7rPts/U9tMem7E5G3zC7fQulnSkeg6iw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR08MB3955
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_144126_939716_035208C1 
X-CRM114-Status: UNSURE (   3.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Bean Huo <beanhuo@micron.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
