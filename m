Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55FCB1321CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 10:01:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fC/QiIkAtBYH5nJIYc8/zExxhn564RYapPV+lBbtIeA=; b=A4hqRpk+pzrhuJ
	gyR8IR1TBau/QatdtpprDp6bccsKE73OdrZVlHnzKyNHB2Ujfx6Wk5fEgfpWdueBVsY4AA1omwn14
	29nH8GhGXXxKjdmCxTDJL3dMPD9s7CFehhbCuovtDqiw6Tzkt7Suc8Zvwm2I0A+wv/tbKjZcSs1oZ
	eHPSX5Z48155Q5StLMoggePDIWrRfZofe+81qvhOL9tPAdzT7F3eiOJdx/DCZjbr+/67sFSJXej6J
	sgfx6rnWskzh7pZpg66XpvF3G2q4+G6I5ptpdiIUxobiufT/SX5og/xIZSy6AQF8LgbZWeraSPXIr
	9ldNRDZwWaWudsPh9XeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iokk5-0005ma-Sf; Tue, 07 Jan 2020 09:01:37 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iokjy-0005lt-4h
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 09:01:32 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 1CD2B4064D;
 Tue,  7 Jan 2020 09:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1578387687; bh=gEHgRGfdfF4RsI22DsfQnV/d/Tbae987J3pbDIVYns4=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=lkuzUoIBWDbLikhAuhj1B1gaKhL3Sfej5WBvirMwVUNwEsMPP6+LPdJ3pCVR7Qje/
 Vc2x26axZcfZ/6Ld0qbUhXazwDQteN0ip8itBU743TuSSkhtXwMB7mzaGu3MJ8+CKH
 tuyiEdoWr96nBzyrBurnp+3fl8UOF1oyjDgbbg/0IfJk0kkDM4oJX4XWbhNFHtZTwL
 e2emoNPfKqoso1Pz+/w0Gsx7Nm6ztH+unBe3xKimbxLaP4bztiW7MV8NQwEEGS3IVH
 xeXCopy1eQu+laHSvY53x+ZuqqfKxFNCMwJxGkF4pM1Y/Pu8vP3iz8KuI56glnylcy
 vOKxA1iUg8EXQ==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 1AD03A006A;
 Tue,  7 Jan 2020 09:01:23 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 7 Jan 2020 01:01:23 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 7 Jan 2020 01:01:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GWmunz68KH9waX9x/w9wgpscMoAjezZn+pLFI2nB0LNZCedvUA37BT6G/qrL57fm0vkqju9BWux8YwiMFSHCQnb3HM6cpeY7+acVmbPyzMTMMb/pVRYdL06cUKQfwRPQVHVsqPRG2QL1oFUWCy73Gmq90NTmvN3kR/l1DJcj6RdY29hAvTYZZhbRTO4WdVPKXGfZmukcQiLC1uIXdjYEiwEeWeApqUdeJQSOWkcX6azQBoPRaQMbm7Hw1y2wbw+aV3Rc4fOZD4IfdkV0zHUqXKedshqrxAEu5sQBisVVWWfPbevKko5NMdeAH7sk4rzZdL6OO+LxT09hmb5qaerhLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gEHgRGfdfF4RsI22DsfQnV/d/Tbae987J3pbDIVYns4=;
 b=Q43bJPcx75QTbYt1PUNKZ2Hfsh1x13gDOp7OSeXGWJbWs73UNf2gDHaRf61nuXGCYnP40+R6+QlLKMApQdXd0eF9d85etaaiaqy7OOMYaYPAQ1zTGmjgX5dRRCW81lboRWDIUBDKj680bMfqwCeEQ1a7DXgl+qSYkZod5CHyHybk8P+yKONjQZKgDLJaThrWph7y3jCJfdo8/pgShvK6w9+/DYDJCSfgCGYxTJsng1K/t1FDcmwv68xDq9xx55Avqb3zy49zpMQIMiFZE1xhYi14BshjzPILf5GTS5rOZ9cKQvNIQF7W5lzvFyZXd7W27hEVbTdLrQ9FuGBOne6E8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gEHgRGfdfF4RsI22DsfQnV/d/Tbae987J3pbDIVYns4=;
 b=c2RuTUQerHorB9MxML6+UTjM3+oIZ7KzNkicNPM/TyJqniW4ckGHW3hYn3NV3wCLtH1vOVXBo2+WlduFDl3tJX5/Gn5kAWNnnMYc9YVP7ULuG4VANig5iAwJDJgaeYUpRPHDIH9vbvq4AxEsBMeuiuioX8GGOZaECncc8Ykk8XE=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.67.145) by
 BN8PR12MB3027.namprd12.prod.outlook.com (20.178.209.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11; Tue, 7 Jan 2020 09:01:20 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::c62:b247:6963:9da2]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::c62:b247:6963:9da2%6]) with mapi id 15.20.2602.015; Tue, 7 Jan 2020
 09:01:20 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Sriram Dash <sriram.dash@samsung.com>, 'Florian Fainelli'
 <f.fainelli@gmail.com>, "'David S. Miller'" <davem@davemloft.net>,
 'kernelci.org bot' <bot@kernelci.org>, "tomeu.vizoso@collabora.com"
 <tomeu.vizoso@collabora.com>, "khilman@baylibre.com" <khilman@baylibre.com>,
 "mgalka@collabora.com" <mgalka@collabora.com>,
 "guillaume.tucker@collabora.com" <guillaume.tucker@collabora.com>,
 "broonie@kernel.org" <broonie@kernel.org>, 'Jayati Sahu'
 <jayati.sahu@samsung.com>, 'Padmanabhan Rajanbabu' <p.rajanbabu@samsung.com>, 
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "narmstrong@baylibre.com" <narmstrong@baylibre.com>, "'Heiko	Stuebner'"
 <heiko@sntech.de>
Subject: RE: broonie-regmap/for-next bisection: boot on
 ox820-cloudengines-pogoplug-series-3
Thread-Topic: broonie-regmap/for-next bisection: boot on
 ox820-cloudengines-pogoplug-series-3
Thread-Index: AQHVuvgaaaIsBudVbUKl0Vrfhs6hVafY/hyAgABHUQCABXoXAIAAB1yAgAAY0QCAABpMkA==
Date: Tue, 7 Jan 2020 09:01:20 +0000
Message-ID: <BN8PR12MB32665EEBA454D679201C7D59D33F0@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <CGME20191225075056epcas4p2ab51fc6ff1642705a61f906189bb29f0@epcas4p2.samsung.com>
 <5e0314da.1c69fb81.a7d63.29c1@mx.google.com>
 <03ca01d5c23a$09921d00$1cb65700$@samsung.com>
 <1c3531f8-7ae2-209d-b6ed-1c89bd9f2bb6@gmail.com>
 <011801d5c51a$bd2e5710$378b0530$@samsung.com>
 <54a292b8-3cac-0caf-08c7-841c469fb68f@gmail.com>
 <012001d5c52a$d3be2590$7b3a70b0$@samsung.com>
In-Reply-To: <012001d5c52a$d3be2590$7b3a70b0$@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4454d657-f6d6-4f25-86f2-08d7935029b5
x-ms-traffictypediagnostic: BN8PR12MB3027:
x-microsoft-antispam-prvs: <BN8PR12MB3027A67BCAEC5709A92F2FF7D33F0@BN8PR12MB3027.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 027578BB13
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(396003)(39860400002)(376002)(136003)(366004)(52024003)(199004)(189003)(86362001)(26005)(478600001)(7416002)(5660300002)(8936002)(52536014)(186003)(71200400001)(66946007)(81156014)(8676002)(81166006)(6506007)(64756008)(76116006)(7696005)(66446008)(66556008)(66476007)(4326008)(55016002)(2906002)(110136005)(54906003)(33656002)(9686003)(316002)(558084003)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB3027;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +AtBce2jg1lGxoY+lqf4FuogXH6mTVSxU+sfT8HRcwltVBn+l4s2OCPZscjWy80fbK5tyjIXQn/KA7R+tkblH25qYs6dv4/76qHPr6c0Wkc7Sw59araYJ92EMFhS+qzn4KmnyzkvsBiGkq4zeeDRpmlawx7LdUNY95xwP+v9v6VhrBm35upkOUIVLUtpn+vBXMp0ewofffRkCFwcUepsRqMvtF8Ea1M1fSW5KqPTbMEhySqzCOPCmn5sgvf71iL7Oz8ePQ04c16dyPhcDmS6PAP8POGbfQqguhBAKAE+PbfgeC/56TI3DO9cAjKFYF5W07mnRvcYlpjJ9naDXdFUiYclmPmtwcDJXBDvgC49GaQSLQ0chvXmnBXXHz5Hs9mTO/s6j7k4mqYqk3xixn+4C3DBZwNZHnQkVlCDQUGVhOD26DRjXgZUwtDAGnY2yyyS7iRu/IEvxyzTIYUUn0+GThKCCJLJ84j3MYio+2DkN/d0luxC9VoS8WKsNdfm7L+WyQk8hcCgwtIlkHLtxPt46A==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4454d657-f6d6-4f25-86f2-08d7935029b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2020 09:01:20.1304 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pK3JbOwGwFCkPvvoUamteLfboO2IeG5WDPkOePgtcjS1UBXRyPS+Eg3DMMnTmy9Nt4fqBgI8rIQzEzmIiGJ1Dg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3027
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_010131_157387_31EBFE9E 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: 'Alexandre Torgue' <alexandre.torgue@st.com>,
 "rcsekar@samsung.com" <rcsekar@samsung.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 'Maxime
 Coquelin' <mcoquelin.stm32@gmail.com>,
 "pankaj.dubey@samsung.com" <pankaj.dubey@samsung.com>,
 'Giuseppe Cavallaro' <peppe.cavallaro@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sriram, Florian, Heiko,

Thank you a lot for looking into this! Unfortunately I was FTO and then 
sick which caused my mails to pile up. I'll try to take a look at this 
during the week. Please cc' me in the follow-up patches and sorry for my 
delayed answer.

---
Thanks,
Jose Miguel Abreu
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
