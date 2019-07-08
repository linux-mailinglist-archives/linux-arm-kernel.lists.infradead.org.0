Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F066B625CA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 18:08:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pIYYBCboqtCqNXC2XJ0l9ZPW4rcFkIx2wwhG/Pr0LL8=; b=Q1eFGxdsMEHO86
	QjwZr3AUDH5FGBd89yYg5Pz9xz1+iYfT7qBm9hAd8BCzFOBfPHVVIU2TEwYeG2S5pzF8WUq3gVEXs
	IrAYggRkLCtozkYPXzShn0zk4SpY0SbAS+ULvlOB0zTs9oWth9erQo5kduAS6n66qQSqONFHTSa5G
	d28oRpZVlyDjet1KCjuVzB7enUvfzkVI2W95wQDID9AahRUZ9C+B3IK+qB/EPLXqWY4oNCsVRzQEf
	HzKQSExr7WaaMR+S7v+SqXJPH4TZMxNrCOaHZz01zwvfZP/nKWNvL0uXViMc+NqmGYIl2oN1LddkO
	CuhrefHN+A5GQOu2HMlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkWBp-0006u2-RS; Mon, 08 Jul 2019 16:08:29 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkWBc-0006tc-Ex
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 16:08:17 +0000
Received: from mailhost.synopsys.com (dc8-mailhost2.synopsys.com
 [10.13.135.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 132AEC2A41;
 Mon,  8 Jul 2019 16:08:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1562602095; bh=5mfH7ysD+UZuoG2sEri0/zBaDfd9CEWJGoSBbkvtS0s=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=R0un0m8mu0KmE3hRNTIY6IBJbyq7a5AL50V+qIUzPgNsOSYhVrOyB8AtU/HTVhILj
 Dqh9BT9xz4mv/X3I8fuFkCUMWQqxA89gemfXxr+7grE0UJwzejtEDcC/Y6qIifvXog
 /tGOX3fMeQHNGhKNaXS7SID5OD/JrFYv97ynKkuiNhmG4+e8AblB0M8RFsCu3KyjoE
 69PU83HNgLRzUFpX+9Ms6Y5H8t1NzIpPg2YwpwH8lG9uhJkRhWaZo4ypya2bIhV4MU
 LkGL/GGo+TG8wOYjl5TmPYULjaW5C5Ud1F5KSGMcS8SUQ8KTpbfgiZE8CeK+ABgeDC
 i4aXU50PwheoA==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 79FB1A0067;
 Mon,  8 Jul 2019 16:08:10 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 us01wehtc1.internal.synopsys.com (10.12.239.231) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 8 Jul 2019 09:08:10 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 8 Jul 2019 09:08:10 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5mfH7ysD+UZuoG2sEri0/zBaDfd9CEWJGoSBbkvtS0s=;
 b=gVxZ351cMPg6TPSQxMwQCyMKHkqPg/HzjwKwcpS2a+V/jlOUqXLi7e1gyAR18EqaZFgF7zA2/s+Sll9pEPpZ1ZjZMfLAv7OsA4zgp/RTnBI1CBSHKt6Tq1P3LO4+/jCZITCMyVwOMGDCACzeRTfmQuuCE5hdQnN884dE10Dq1eM=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.66.159) by
 BN8PR12MB2931.namprd12.prod.outlook.com (20.179.66.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.19; Mon, 8 Jul 2019 16:08:08 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::61ef:5598:59e0:fc9d]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::61ef:5598:59e0:fc9d%5]) with mapi id 15.20.2052.020; Mon, 8 Jul 2019
 16:08:08 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Jose Abreu <Jose.Abreu@synopsys.com>
Subject: RE: [PATCH net-next v3 3/3] net: stmmac: Introducing support for Page
 Pool
Thread-Topic: [PATCH net-next v3 3/3] net: stmmac: Introducing support for
 Page Pool
Thread-Index: AQHVMwKNzVmUsJPJMUCkE31Cd4D9oqa8BTaAgAAezsCAAAGNgIAEwrOw
Date: Mon, 8 Jul 2019 16:08:07 +0000
Message-ID: <BN8PR12MB32667BCA58B617432CACE677D3F60@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <cover.1562311299.git.joabreu@synopsys.com>
 <384dab52828c4b65596ef4202562a574eed93b91.1562311299.git.joabreu@synopsys.com>
 <20190705132905.GA15433@apalos>
 <BN8PR12MB32666359FABD7D7E55FE4761D3F50@BN8PR12MB3266.namprd12.prod.outlook.com>
 <20190705152453.GA24683@apalos>
In-Reply-To: <20190705152453.GA24683@apalos>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 659d1876-be61-4c12-018d-08d703be7790
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN8PR12MB2931; 
x-ms-traffictypediagnostic: BN8PR12MB2931:
x-microsoft-antispam-prvs: <BN8PR12MB29312361A1CDAF296642E500D3F60@BN8PR12MB2931.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 00922518D8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(346002)(376002)(39850400004)(136003)(366004)(189003)(199004)(316002)(66556008)(68736007)(478600001)(4326008)(76176011)(2906002)(66446008)(7696005)(7416002)(64756008)(55016002)(73956011)(52536014)(6246003)(76116006)(9686003)(3846002)(66946007)(66476007)(6636002)(6436002)(53936002)(256004)(6116002)(33656002)(99286004)(25786009)(229853002)(486006)(7736002)(305945005)(446003)(4744005)(66066001)(11346002)(476003)(74316002)(26005)(54906003)(5660300002)(71190400001)(186003)(110136005)(6506007)(71200400001)(8676002)(86362001)(81166006)(102836004)(14454004)(81156014)(8936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB2931;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nWOmyTqcVfbVFZU26fx7lSKZy1K2Afy1rDHrkjo08oZKMW0jegDQcXa/w1gvgzDTzpkPgcvfk1q51WAgzXSJkxEfRpH0EQMm/E7IssVG+Db0Exg+rSMeZgkqKp9JOH1jv0S3mdikBxGMbj2noIXAc8gSspyUXvRpM6+HtW5VmCt2/OkIYA2FYdPwukAEPFz0fNshnS0Tmu9YxR+/5txJ2tlzHy1doQYk14292bzdWqvSqWNhp/eJ9z0lGxR/1YpaW7GCjx5oOFYoCIsV8BvYit1tgu/8uKd8hD/vBeje8pSYfjg2DMH3/ZDnJQaIXtYImupqWR1paHKaDNOxX4UHMNLH5cPcx/nG5/1O1CmHNesbwXYVokg1XoH4DWR4lHMuegqLqttyJ3L5QeUQSrMT+V0Srnh2PcP7Hrun9CxlyJo=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 659d1876-be61-4c12-018d-08d703be7790
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2019 16:08:07.9850 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: joabreu@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB2931
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_090816_511534_F8C0B524 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Arnd Bergmann <arnd@arndb.de>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Jesper Dangaard Brouer <brouer@redhat.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ilias Apalodimas <ilias.apalodimas@linaro.org> | Date: Fri, Jul 
05, 2019 at 16:24:53

> Well ideally we'd like to get the change in before the merge window ourselves,
> since we dont want to remove->re-add the same function in stable kernels. If
> that doesn't go in i am fine fixing it in the next merge window i guess, since
> it offers substantial speedups

I think the series is marked as "Changes Requested" in patchwork. What's 
the status of this ?

---
Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
