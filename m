Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFF92F912
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 11:12:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3n7HdZBh4oOhNwxnpyUnU7cRTwn0dtnb+sX0OOH3C1E=; b=McKq1FOn9iAYq2
	ISj1RVBOSPiPFA1MfcadW9vasjbMxjbZglhiudOOHSRUHZ9/b+UQgYBt9fzSvn0AuMznA1FfIEbjK
	vh043lZ+bpV3Mb42NETloHlankbX68g2++7b+0bVOkVyDUOepO4ECfI/3BnoUMAw4BpLi2vUXWSYl
	CREvjpMVUqjbe4+TzpaJLyIwtrjEKi3vd84VSg3AgNNrOFFHdPHJFsWOSgJYOrXc/MzsmX7i+hVqL
	6sniMFH4T20ygAZJxoszlKKLX5fYCJ5sJgPLQCLkLvvbui4+YPHwqQyyPCf7rc9SoVFtbq2fyHePH
	QZE9jUgkf5Aw1fAFLmRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWH6x-0003Bk-Af; Thu, 30 May 2019 09:12:35 +0000
Received: from mail-eopbgr60043.outbound.protection.outlook.com ([40.107.6.43]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWH6p-0003Aq-NB
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 09:12:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k3B/LuqWSjRaWp9wpvP+5p0rQBRaRveew8Jjx6pXTlo=;
 b=0UPSyBdPeBDg3Agt5k2pFmwrfWNZ9729lPVoLLhbvrq2oBnfy2dWLhKwiUSpLsKvqofSeAcKsY5dukMHDaelWTJexxWbemsjxYIkEQTYeMKorJ6lamolytKYw18TpH+UZgSeKL/3iEw4lZdpulsKhbHWKGkjQk+kARnMm16O8Kc=
Received: from VI1PR08MB3790.eurprd08.prod.outlook.com (20.178.15.155) by
 VI1PR08MB4112.eurprd08.prod.outlook.com (20.178.127.214) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Thu, 30 May 2019 09:12:24 +0000
Received: from VI1PR08MB3790.eurprd08.prod.outlook.com
 ([fe80::f0d1:2dd0:9ae5:5b09]) by VI1PR08MB3790.eurprd08.prod.outlook.com
 ([fe80::f0d1:2dd0:9ae5:5b09%7]) with mapi id 15.20.1922.021; Thu, 30 May 2019
 09:12:24 +0000
From: Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>
To: Kees Cook <keescook@chromium.org>, Kristina Martsenko
 <Kristina.Martsenko@arm.com>
Subject: Re: [RFC v2 0/7] arm64: return address signing
Thread-Topic: [RFC v2 0/7] arm64: return address signing
Thread-Index: AQHVFlFdMRc+5lQn0UyVTO0dGpnP/6aC/YaAgABlawA=
Date: Thu, 30 May 2019 09:12:23 +0000
Message-ID: <333eb6ba-ae20-6469-0daf-583557bd66a3@arm.com>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <201905292004.3809FBAA66@keescook>
In-Reply-To: <201905292004.3809FBAA66@keescook>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
x-originating-ip: [217.140.106.50]
x-clientproxiedby: LO2P265CA0301.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a5::25) To VI1PR08MB3790.eurprd08.prod.outlook.com
 (2603:10a6:803:be::27)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Ramana.Radhakrishnan@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 720fc8c7-5ed9-47ec-0e54-08d6e4deed69
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR08MB4112; 
x-ms-traffictypediagnostic: VI1PR08MB4112:
nodisclaimer: True
x-microsoft-antispam-prvs: <VI1PR08MB4112CC3AD6B3BA3263E07AE381180@VI1PR08MB4112.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 00531FAC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(136003)(366004)(39860400002)(396003)(376002)(199004)(189003)(99286004)(31686004)(386003)(476003)(76176011)(102836004)(229853002)(66476007)(54906003)(256004)(486006)(316002)(65956001)(2616005)(66556008)(65826007)(11346002)(305945005)(65806001)(81156014)(6486002)(4326008)(25786009)(52116002)(110136005)(6512007)(6506007)(558084003)(6246003)(3846002)(446003)(26005)(6116002)(58126008)(66066001)(8936002)(7736002)(6636002)(68736007)(8676002)(71190400001)(64756008)(64126003)(66446008)(81166006)(186003)(73956011)(53936002)(66946007)(36756003)(86362001)(14454004)(71200400001)(478600001)(5660300002)(6436002)(44832011)(31696002)(72206003)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB4112;
 H:VI1PR08MB3790.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: AHijiRWo4LHoUxrRKen3XNoDYgggHaiqK2wzqcbO8r0ALg5LENzy1ssLU0OigPsjKwySeQl2UuK/EYcmp4JqU8kr7OQ7XBmLJVi0cxWNYdD33Z5RVyOFfxvMeInqU1vhwbLzO3aTzqU3NkvFwuITY8AyO9bFeL2XPC++YldIqJBl3oe1COp8iWtyrzacfKMunKQxrRB7Nrm6iSry7zAlRTa1yx2Z/z54Mb/2VOQ03NifQlUl5++5GqnhEDItqwlEck1H5pJBKHJI7XRnYuoXGowrC8wn+Bab16U28D6vZV8rqrlYU9hMmLW67u+IIFW8xz9giCkyIAAYZ5h9AstUFoWEP0bx13VQRTcgunIhvnvU5XPvqUSaJLRT2P+K0FENz4GTBR1gFQclGrBxaNIc9gF46IWjV4LfTAgLND07sSk=
Content-ID: <CB838711DC2BD34F85E84F1F02CC32B0@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 720fc8c7-5ed9-47ec-0e54-08d6e4deed69
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2019 09:12:24.0079 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ramana.Radhakrishnan@arm.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB4112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_021227_763642_0662A542 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.43 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Diogo Sampaio <Diogo.Sampaio@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 Luke Cheeseman <luke.cheeseman@arm.com>, Will Deacon <Will.Deacon@arm.com>,
 Amit Kachhap <Amit.Kachhap@arm.com>, nd <nd@arm.com>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Dave P Martin <Dave.Martin@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


>>=A0 - more testing
> =

> Is PAC emulated in QEmu yet? (I assume I can't get real hardware to help
> test this yet...)

AFAIK, yes qemu trunk should have this.

Thanks,
Ramana
> =

> -- =

> Kees Cook


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
