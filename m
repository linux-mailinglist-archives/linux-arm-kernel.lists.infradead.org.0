Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A6BC48DD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 09:53:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ODu2sj/qGdWmFbjZVeEltXvlHnx6lt/lbzRg2pO8NvE=; b=YGgutMb4To+bhm
	6uMuC1e+658Pcd00qbDCDRcUhStT0GjOYV4i1Lxh9UbKIv8Q6fXsR+APTqoJ/8FIT7TTB8zB7IBD2
	nGQdSWwn8MakEoZ/6awBaapTYIsWRemuqKWf1vdDbs43JunstjzSj/P4UXuj/U3ZygbLHMieyLg6/
	fBlIQ9iUFd48q+v09kVLAdXsxv04bi5TDQ+dqLkI0KxXIymDlFrPBrJszfyO3cP5GPR8g48JnV4bh
	/5qr8gEUnFTRh1f+53wB2D9eF+4DBDTrW8a3Ic3hvJC1fZM1yQIlT2SPvwAla26+LW5oIzxuw3S12
	2VKWhJpGD8uN3sLit1Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFZS6-0001lI-Nn; Wed, 02 Oct 2019 07:53:38 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFZRz-0001kB-K7
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 07:53:33 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id E49C2C0505;
 Wed,  2 Oct 2019 07:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1570002809; bh=ZwchJV/hwBcbtxRPC9nW0ViWeKZEfdyL4rfZRkOLwvU=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=cm5wq/VNeiLKa3+zvzp3I4ZaZLkm0GgmNBZpzf2iffrvxfh/Yvr+RTP6VgjNz9bBk
 BJNmIqMaJCLux7ezZCLVQqWX8c8/5J8e4dd6kRhWF3YCgjidgawaLnnfqdThsnR3qi
 4gOY2SnAOO/+bG5LxFE4o1VFVZjsFSDjp+b5zaEZ/XK0XR9dW4+qZj1G75cYFOwte8
 /4ArvXpvrgQJqziQra6YrpVKuawwrBtMPEcMrUCRZ5bLGOFgWswGEFMYkpmXaipB1z
 yGWYUb5VSanslGe6TWq6NpwgwQD9OolxSC7iea8/KF2kPFIj88Kyv0AplgTN8hKSlB
 pr6bX7GuB2UsA==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 64018A0079;
 Wed,  2 Oct 2019 07:53:13 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 2 Oct 2019 00:52:15 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 2 Oct 2019 00:52:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=He7nF96q2ceA3bU6DVkhVPdSeN0/auZnRNAMR7TQMd13NX3ePbE2+nPqcQJMuQ668r3FjpObSxHeM9B1H4P5utE5DGjGY+YKeRo2gOhA+2+hZNzZW1GIMEkSAOLMImROIngFp02Fs3K0xCZkv1+MEWCxDTtIJNl/Sw6Q5xFTrs5coySmgNkigkdmdo/mWsa1yQ5kvBLuZSWxu4mwdYfH0N5g5IMdiCpL0UY2FHbx3BmMY3SptZRfEPHAvFNkPkKi65jzlLEmUXVB9Kg1dG4obNXFpKGhH7CWY/6qL+Lvp3S1mRDcpOWmSbPewCsiG6PjOB0p91soVL4s6hHp0eALkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZwchJV/hwBcbtxRPC9nW0ViWeKZEfdyL4rfZRkOLwvU=;
 b=fa1JqiEwCO2br70t+DJAejtIOq0qt2+PRs7k8GRiE/bHSH0djLvqKptPg9UqXBW7ci7dW5jV6LobJJYYxKRfo/jtIO9sLmgzAVmA2//prdCKZgpACzObcwFLLSixLQmX6TawaDrCyX+Ia3dh9gXvGbamLUcfisKGycUSQvHNJwO6uFi/4sWQRGvH1b5Z37LBPs5xuewhO6VW5uLPC1+nhhvM4nedT2z2bv+E1c25ePh3WohVe+dxcc/OTkLRUBo9zMpl6CEGOCJQPvI668CaxYPUeqcC3dwKKRNu7YHmXbhTBSClIo4JF5U1UwCgVbgAZsFVQqJrQpEoY+vYEWEgqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZwchJV/hwBcbtxRPC9nW0ViWeKZEfdyL4rfZRkOLwvU=;
 b=Aj2N/BXsvkmw9amUQsehbBdvJvX7ns/hDqseLBwbnKV3iXMcUqgR73Jc5/w2k4N3c4CtuugDC0hZwcFHlbkTbaIQwURYcDaFoCfYXKZK3q1ZPHmt6UCanmkiuZA27pjgo65jDX+qCg8b1KyNz58ui1NCMyUUcsObQa26Xa5lfPY=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.67.145) by
 BN8PR12MB3363.namprd12.prod.outlook.com (20.178.212.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.17; Wed, 2 Oct 2019 07:52:13 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::59fc:d942:487d:15b8]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::59fc:d942:487d:15b8%7]) with mapi id 15.20.2305.023; Wed, 2 Oct 2019
 07:52:13 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Hans Andersson <haan@cellavision.se>, "mcoquelin.stm32@gmail.com"
 <mcoquelin.stm32@gmail.com>
Subject: RE: [PATCH] net: stmmac: Read user ID muliple times if needed.
Thread-Topic: [PATCH] net: stmmac: Read user ID muliple times if needed.
Thread-Index: AQHVePAsjhS3U+43VE+DGhKYpgL3F6dG8LMA
Date: Wed, 2 Oct 2019 07:52:13 +0000
Message-ID: <BN8PR12MB3266ED591171A79825090BE0D39C0@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <20191002070721.9916-1-haan@cellavision.se>
In-Reply-To: <20191002070721.9916-1-haan@cellavision.se>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 53c8e645-0ba6-4d3b-3f69-08d7470d703c
x-ms-traffictypediagnostic: BN8PR12MB3363:
x-microsoft-antispam-prvs: <BN8PR12MB3363F6A0E9D29D5551EE3E20D39C0@BN8PR12MB3363.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0178184651
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(366004)(346002)(376002)(396003)(39860400002)(199004)(189003)(25786009)(66946007)(256004)(7696005)(86362001)(71200400001)(71190400001)(99286004)(2501003)(7736002)(305945005)(76176011)(478600001)(6246003)(4326008)(33656002)(186003)(26005)(102836004)(476003)(14454004)(446003)(486006)(6506007)(11346002)(558084003)(8676002)(3846002)(6116002)(81156014)(81166006)(8936002)(229853002)(2906002)(52536014)(9686003)(55016002)(54906003)(5660300002)(316002)(6436002)(66066001)(66446008)(66556008)(7416002)(110136005)(64756008)(74316002)(66476007)(76116006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB3363;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0oGFrpG1H59KoEraUJBtFJt0hGb0eThNrJzBcD1F04XMHg+GSyNgFZM/j4w/7BXjzJYFNL17U6Z9R300x4MFg9dVWiU9No8BgP7WTiLA8KIGxnuYG0B+WaokUeD60g/RkY7cIqNf3++2eSXIBkDvj7mkEcpJs7hUJxnloYvXNX6+0S4U62IO4l7pbilBdvlC6zMme2CQBEX+sbPiRkXV5lZGscnsvlg8hUFkn7WfEOIHPgRaAitWoCQ12Oju5Vkz3hRGB0futoc22Micfh7qITFxIqUHRX7bVuMObHYQhR9uid+RVqfDKIBb46WV97XJe8hTp2PLhVijMoYpuKRRo4kIfgY6yVLGGiX/1LUkglKJNKJnCuH6LT2AYcTzEuyuZCxJXIA8iTos06oxLMLjfBPOE0X7Lwjg0VwnJY5Cfps=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 53c8e645-0ba6-4d3b-3f69-08d7470d703c
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2019 07:52:13.8558 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zuwc/pVJylVfdRupVgidR9eaK49YIX4lEN6QPZSueniE7w4eOSN8PkfWgjWQH3SJu4eef/OSeX3eSIF+l4uKXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3363
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_005331_782883_195C526C 
X-CRM114-Status: UNSURE (   6.93  )
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
Cc: "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "peppe.cavallaro@st.com" <peppe.cavallaro@st.com>,
 Hans Andersson <hans.andersson@cellavision.se>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hans Andersson <haan@cellavision.se>
Date: Oct/02/2019, 08:07:21 (UTC+00:00)

> When we read user ID / Synopsys ID we might still be in reset,
> so read muliple times if needed.

We shouldn't even try to read it if IP is in reset ... 

---
Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
