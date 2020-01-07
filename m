Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 634B8132657
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 13:37:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3s8O823+FoRxKJHepIPrCEOzk99X10EKWYofZ4jVq6U=; b=tfLFWgRPpmgUHl
	MGI4kpY5UrRRu8G11o5QOIEzqsA5sHguRQFUbfyW1c5/YdcuX5n0URALvTiAAK/dWYFLpy60hunvv
	0OeoTleQD3TT6ogtQXQIEslE21Z8Tk7dIy6xNLXnxC1vsCKVwlIwbDRYfRUhx8ACbzduE5/IpOU3P
	IxZaXZEl3VXoo5+lC3a9f+oZW0R9Jlm+E6ZJfydjZqc837eKgnZI02NBcN3a1WapHCyn4aT5uxPBG
	Z3GDg3+qtktEww8exjT9n8BUlf1dNx93IKFw3kqdQ1+Gu0lCUD+V9X3U58gXCrJyVdZWw3JH2mhXA
	0mgWZ0kvaCL4+fujCb8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioo6T-0008F2-3q; Tue, 07 Jan 2020 12:36:57 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioo6E-0008Cc-7t
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 12:36:45 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id D0DE3405EC;
 Tue,  7 Jan 2020 12:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1578400601; bh=HZEWeToSluP2P7XemVLVhSS2ICpKePUp1ZMffsTD9vA=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=kfLVBGmMFSRtWGWJn6lODq9cORpGEfjMsIhcvbS/nQ4lv4dqfTYtFVeC4v/3FcXk4
 rb/onrxgNZ4m/tlr1fZoxq4aK1Qc9SD3iNMYqNzqkCpO6+7sI21Tl3WbcthjZfIOFz
 F3sH6z56QoloShYACS0DKoduRwGtjg2DaY7NHOuyyiwNW0sLoLu9MOE3Izj5uzRzit
 765wlTyScYepTuZdZW5Io5iaPPD0t9OL1lITPUgz64NX45Mh7Sj/xvrb6g5zjoAQUb
 OknHQutAYJS04zZeGQDNalT/N5Ff/XDTz7icmGDyUh1kP9Wvccqvy4HAPXXDOubHcI
 SfRvycV5phpWw==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 80ED0A007A;
 Tue,  7 Jan 2020 12:36:39 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 7 Jan 2020 04:36:38 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 7 Jan 2020 04:36:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dyfaja/ZaRloGLABwSprA1hhAuy5gnO56R3r2SJ0VxjZa8LdgT9PByPD3HhJKPBNN9Or5DTsS7TOt19IFDVkh/g3mgKs9A6ljgwXKGaIIutozdIj6IHZWR5lnd15GBB1FTN7E7fc++uJalUC3LRY9vZQw8tbPwPovncsVy47l15Lra75q5HFkFonEt20kAWBjQSVUYCm80ZzB7jILI2Zp9TRdD6VWakIC+xHM6QmilEZq2ohmtKhIjvs88aMJd36/dnPgAEVlx5wywgnSx7BFPAKxmmlV5kzGLhAWI0jF2Lj+2AB238JimB0tg6TDMmN/hhdXbJO1DMbFRQmolMIIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HZEWeToSluP2P7XemVLVhSS2ICpKePUp1ZMffsTD9vA=;
 b=ixqql9ZOvWChegMCloPpGYU1eJNL3VAs/eVuP7BCQTupYclD+/Z70rm1vKjzPN9zBVWNt42i/jYauqLjKLK65TLbs19XzyaITpNt6llQOXDswCcdsPKJnOQYDD1S13XgkepFbbW5hFBGCS37tfhVNy0Gf4MOwFDoP0rx9Jo7o1YSIuCMBBQNjhTA7iAlP1lxthHmnC4cWqTcXyOgdzasaqMY6DBbKm9x3ETYtL4w2qBwvvETQHzd3F6AYwUtwKNpbdlwRM8pvTg5gHtlHR8DM8ZYvPCA68mUuNbMZfFi8i5Gy22onGg6LNL/41F8ahy+bMWIR8zPSaeDxvFHnpb41g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HZEWeToSluP2P7XemVLVhSS2ICpKePUp1ZMffsTD9vA=;
 b=H+MMPLoUFbVu0J1ptR8dpMa6AZI7+EvfmfrJbUgroNhlXAeakgW3Ms+7rXfUr8/vOzz6u/4HPOGHqWWQRFg/WOnehlGh/L46/yfXdlmtuHVvcQxPx+bjmtEkW0JpCyEcS0jm1V+TtrOuhoCQjeb55O/kROhd+q1IN4wtrlatuNQ=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.67.145) by
 BN8PR12MB3009.namprd12.prod.outlook.com (20.178.210.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11; Tue, 7 Jan 2020 12:36:32 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::c62:b247:6963:9da2]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::c62:b247:6963:9da2%6]) with mapi id 15.20.2602.016; Tue, 7 Jan 2020
 12:36:32 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Sriram Dash <sriram.dash@samsung.com>, 'Robin Murphy'
 <robin.murphy@arm.com>, 'Florian Fainelli' <f.fainelli@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "narmstrong@baylibre.com"
 <narmstrong@baylibre.com>, 'Heiko Stuebner' <heiko@sntech.de>
Subject: RE: [PATCH net] Revert "net: stmmac: platform: Fix MDIO init for
 platforms without PHY"
Thread-Topic: [PATCH net] Revert "net: stmmac: platform: Fix MDIO init for
 platforms without PHY"
Thread-Index: AQHVxRimtok0wFzL+UGNRMlNrZMzLafesXQAgABWhwCAABXNgIAABhTw
Date: Tue, 7 Jan 2020 12:36:32 +0000
Message-ID: <BN8PR12MB3266EC51599357258E6E2292D33F0@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <CGME20200107050854epcas1p3c1a66e67f14802322063f6c9747f1986@epcas1p3.samsung.com>
 <20200107050846.16838-1-f.fainelli@gmail.com>
 <011a01d5c51d$d7482290$85d867b0$@samsung.com>
 <59cb4087-6a71-9684-c4cf-d203600b45a9@arm.com>
 <014001d5c553$ff7f06d0$fe7d1470$@samsung.com>
In-Reply-To: <014001d5c553$ff7f06d0$fe7d1470$@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b7be4ce4-4321-4e75-1d96-08d7936e3a21
x-ms-traffictypediagnostic: BN8PR12MB3009:
x-microsoft-antispam-prvs: <BN8PR12MB30092DF05339C75A6EC5D0A0D33F0@BN8PR12MB3009.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 027578BB13
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(396003)(136003)(376002)(366004)(39860400002)(199004)(189003)(55016002)(478600001)(54906003)(110136005)(966005)(4326008)(6506007)(26005)(316002)(186003)(9686003)(71200400001)(81166006)(2906002)(5660300002)(7416002)(8936002)(81156014)(86362001)(33656002)(76116006)(66556008)(66476007)(66446008)(7696005)(66946007)(558084003)(64756008)(52536014)(8676002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB3009;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Y8NsU4IZ7AB1nwFzf//h6MepTFJeUU81AW1r8PzSWnIoShfBRqtamYk2nIlN7lFUR6V1xnj895/x4p1Ksi53a8dOVmokrjENm3A6hhvspye0FEtMUDcNquOVR4wlxBgpMj6wbF9MW35CB+aCQKDuyWWfNafeF+obFebcpgqs8UQd+F1YRIiMK9BLLFfFKwyyuWiRbcRYaGKb5fMH0XIoW2dfPQsJ9DEVjVv7OS7ajrjyZEFW+/IP9pTgqsQiAKRY2WLx3HSJt8YnekuBL+vlBzkMuQYxHa5nYJyS4nXIBfPWOYoNKgNBx2iUsubqagCslGDhBhSMu4lhPS9QMJ+dHHbpBXeEQxjFqnYq5NREdwvF1tOFtzNARb8/PTy8Cd4YcuSVPc+GLL6CVuN0DKdCwp2GYiQAPzYxRKk0iFH6cZc1mS7pIs+1dwAJeMG67OECNVBR2rTNS6xZuVkB/c4zgzcQYALCWWh2CfSTlJSlINI=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b7be4ce4-4321-4e75-1d96-08d7936e3a21
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2020 12:36:32.5120 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4RoLGqUQSwR8N5j5cws/UuSJEIqG15q2OTZkA4DE1THboL5zj101BHRpX9vukOYE/gYGt5lC34o+qmkpMmgrCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3009
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_043642_360366_F21CC860 
X-CRM114-Status: UNSURE (   7.87  )
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
Cc: 'Jayati Sahu' <jayati.sahu@samsung.com>,
 'Alexandre Torgue' <alexandre.torgue@st.com>,
 "tomeu.vizoso@collabora.com" <tomeu.vizoso@collabora.com>,
 "rcsekar@samsung.com" <rcsekar@samsung.com>,
 "khilman@baylibre.com" <khilman@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 'Padmanabhan Rajanbabu' <p.rajanbabu@samsung.com>,
 "'David S. Miller'" <davem@davemloft.net>,
 "guillaume.tucker@collabora.com" <guillaume.tucker@collabora.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "pankaj.dubey@samsung.com" <pankaj.dubey@samsung.com>,
 'Maxime Coquelin' <mcoquelin.stm32@gmail.com>,
 "mgalka@collabora.com" <mgalka@collabora.com>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>, 'Giuseppe
 Cavallaro' <peppe.cavallaro@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "heiko@sntech.de" <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sriram Dash <sriram.dash@samsung.com>
Date: Jan/07/2020, 12:14:19 (UTC+00:00)

> Can you guys please test this on your platforms?
> We can post a more cleaner version of the patch if all agree to it.

Can you also test this one [1] ?

[1] https://patchwork.ozlabs.org/patch/1218762/

---
Thanks,
Jose Miguel 
Abreu
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
