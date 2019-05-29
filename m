Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A930B2D3CD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 04:28:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xaR1mNUIUbEeXL6WvFuPXb1oO5CJljhiHQlOhEO9J1A=; b=qj5vgRV0Igo7th
	vP1xH+trRj+kTXR/Sj1+8M+BR76CTniTDhtDG+SKHzayZLVKDRCKApdnoychjeiO9z7TXpHQah8Mu
	5+SlouaphLEjeUSP/+9Ji71JkMZiHZGQYYnFX7dk9gemqCP90E5+XtFid/fiukdwg/covp9yix3Dr
	SgcSiYW+bhkKTskmzS0O8p6CfLTMgaQMeVBqNlMwh7pa6lwk5e9ZvECVCr9wNneeo/XOEGD75Qs9W
	qDx4Awb6TqMfHWqGJBArkQ+IET7LdNHGa7qqAMG6TFPKk27LWa/0imezJWBWqz1iMgyqn5sXpO2iI
	YyhjRGqLQPGpv44skP/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVoKC-0006vk-No; Wed, 29 May 2019 02:28:20 +0000
Received: from mail-eopbgr810053.outbound.protection.outlook.com
 ([40.107.81.53] helo=NAM01-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVoK5-0006vS-HM
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 02:28:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector1-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sNxWvouK3CV1UqrX8DkSdHTrL9wyGpZB/ogiRK1+X8o=;
 b=d83GOlWS+g4RYLncJ1G1zOLBnvBXUjcvn9vikguWPHoRn/RsyYD75nUi7RecSWh8D7E+ZnGhvomiJMYTdl7rz5voZDk98wDDBUHBCtM/44Qk3u+QnKsCE9olVQQAPWY6uaHqZKPYelXz2A3Q6xj8AKSv7n6gP0fyrfLJSkJBDhQ=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB4166.namprd03.prod.outlook.com (20.177.184.207) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.22; Wed, 29 May 2019 02:28:10 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::e484:f15c:c415:5ff9]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::e484:f15c:c415:5ff9%7]) with mapi id 15.20.1922.021; Wed, 29 May 2019
 02:28:10 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH net-next] net: stmmac: Switch to devm_alloc_etherdev_mqs
Thread-Topic: [PATCH net-next] net: stmmac: Switch to devm_alloc_etherdev_mqs
Thread-Index: AQHVFH3ChMvditMZqEGruBoCTIEsdKaA142AgACJQQA=
Date: Wed, 29 May 2019 02:28:10 +0000
Message-ID: <20190529101908.4b40512e@xhacker.debian>
References: <20190527190833.5955c851@xhacker.debian>
 <20190528.110753.377345658167716646.davem@davemloft.net>
In-Reply-To: <20190528.110753.377345658167716646.davem@davemloft.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TYCPR01CA0032.jpnprd01.prod.outlook.com
 (2603:1096:405:1::20) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 241fa83d-d3a2-437d-4fb1-08d6e3dd4ab4
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR03MB4166; 
x-ms-traffictypediagnostic: BYAPR03MB4166:
x-microsoft-antispam-prvs: <BYAPR03MB416628A812F3632FA3DDC004ED1F0@BYAPR03MB4166.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 0052308DC6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(376002)(366004)(396003)(39860400002)(189003)(199004)(6512007)(486006)(26005)(186003)(316002)(6436002)(86362001)(11346002)(476003)(446003)(9686003)(66066001)(71200400001)(6486002)(256004)(6916009)(71190400001)(229853002)(1076003)(68736007)(6246003)(478600001)(81166006)(102836004)(6506007)(386003)(558084003)(76176011)(14454004)(99286004)(2906002)(25786009)(53936002)(54906003)(4326008)(3846002)(6116002)(72206003)(64756008)(50226002)(52116002)(73956011)(8936002)(7736002)(66946007)(66476007)(66556008)(305945005)(66446008)(5660300002)(8676002)(81156014)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB4166;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YcUcEOcu54XzmykvC0bxSST5NcHmIheWn93jnKM2eIJVpQaFktHtMS85DjZWKTH33WNLi76GHAJoosNZ22bDRGPcNxvP2HkcPSo81Afonlt9YkrPUPG93lnG4AwRdzKwZd+MQYiytg+iWaRBgj2NQIVyWDS/yH5L3Ht1Q6Wc/dtGL/YL8RXtPQ8SFpxleoFVJGShsbaA/wqcZIckCVX1aR/P+zb7mtcYuEIlSb43V6VWM7TRGcDUBjwhsbARTjYi9irkGE+YYM9Ac+kTrIX3NGEb3i2cx3SPNfBwmRmeMDN/Ul9G8geM4E+pYgOSe0+J4qlR/1d2pBtzsO8laRcr0FnHn3SrK40NVGMXPxSJU+E2KXC7gMhYXxrdC4wE1/XL0JXiZ7zv+jiBF+908yQlBMS1d8/NzvAm51AqmKNROq8=
Content-ID: <BBF8F748863E0047912AC6ABA17B32BA@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 241fa83d-d3a2-437d-4fb1-08d6e3dd4ab4
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2019 02:28:10.4459 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jiszha@synaptics.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4166
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_192813_580268_13C37A77 
X-CRM114-Status: UNSURE (   7.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.81.53 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "joabreu@synopsys.com" <joabreu@synopsys.com>,
 "peppe.cavallaro@st.com" <peppe.cavallaro@st.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 May 2019 11:07:53 -0700 David Miller wrote:

> 
> You never even tried to compiled this patch.
> 

oops, my bad. I patched the another branch and tested the patch but when I
manually patch net-next tree, I made a mistake. Sorry.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
