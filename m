Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8EB6092F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:21:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mpFYOHzaGkjTovWeEQwdLkxBvYhdy/1sd7pcaz4XFI=; b=di/HEclKUiUd9c
	BxCdQv99KF4qoKkjmmBGNoesHwxo6sFGSC6JjIE6bIw1IZhnYEysh7l+kyYj53TUhYBQBAI0hm1f5
	GoQA0XHoiwGUB4hM2S1MU+Bifx9JrsRHo9WOqnbQ51lUon66hNdCxL/DvCRzEppVTJZdhmS1dXeoK
	V1NegPVnT9Kq8JAc2qM085XotANxjz3jY7nyb2TnfIpvu1voEbbXq00QFD1SfqS258fvegfu9/1G6
	tjwXx4Y3mAuWYj8lWWwOa772T9m5jKqSUeQwf5P7hselssrSrljIKSaQw1L0xXq5x7sR7VVGhj6Dq
	QWCYo4HEE+hxDqgF/Wnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQ1l-0005Lq-TI; Fri, 05 Jul 2019 15:21:33 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQ1e-0005LV-HD
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 15:21:27 +0000
Received: from mailhost.synopsys.com (dc2-mailhost1.synopsys.com
 [10.12.135.161])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 2D403C2989;
 Fri,  5 Jul 2019 15:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1562340084; bh=6FwTzznIm5VxdWt8YvDaLCoruf9DPPYcOfNGobwK6c0=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=YG9T06k7vNSUPcedznjKtYfUtAUCyrYNksPL5ReQ4z1+XvCyESivNGmpSsAJzTNZx
 q3IkbrcEglrmuSwM2rrqJ6tuEqyQCZY4K7KS1Gun9I8EWqeJKqj1ksFrYeGVKUduBE
 C5ltTRSl/SV7NTRy9E9mXq7UiM12Us0QSJHxUiDbam5EhGwWSDAJ8glV2FqXzI00zf
 YNd2d41Riy5yY1cVJ0hZe8A9cdcRCunBbfqoGGkZjJ0beTZfE9odyPAWpseH6M7M/Z
 SfMp/KaPLRL+2Pj37e9DYDdACLkBn6Lfw4Gmqg6RUtkoR8JFQih2mT7f6QUNzjR5mO
 AsDyuergumwPg==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 2254BA09BA;
 Fri,  5 Jul 2019 15:21:19 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 us01wehtc1.internal.synopsys.com (10.12.239.235) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 5 Jul 2019 08:21:19 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Fri, 5 Jul 2019 08:21:19 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6FwTzznIm5VxdWt8YvDaLCoruf9DPPYcOfNGobwK6c0=;
 b=nFUkHaBhCqYNATY5U9E7ahyahFCz1FiO/T+QXUP51uaNbOyJ4B0XcvhteXMKDcULW0TX76yECOl1nsUIl1zzmzgkNQaaXM8t2qDizOp8WG6RrNzdSxp8mUh78dqLS2veS8aZzLRd5EQsMof9eYbgCIo4rRqEBmfTK8ZrSB8VEqI=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.66.159) by
 BN8PR12MB2867.namprd12.prod.outlook.com (20.179.66.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Fri, 5 Jul 2019 15:21:17 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::61ef:5598:59e0:fc9d]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::61ef:5598:59e0:fc9d%5]) with mapi id 15.20.2052.019; Fri, 5 Jul 2019
 15:21:17 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Jose Abreu <Jose.Abreu@synopsys.com>
Subject: RE: [PATCH net-next v3 3/3] net: stmmac: Introducing support for Page
 Pool
Thread-Topic: [PATCH net-next v3 3/3] net: stmmac: Introducing support for
 Page Pool
Thread-Index: AQHVMwKNzVmUsJPJMUCkE31Cd4D9oqa8BTaAgAAezsA=
Date: Fri, 5 Jul 2019 15:21:16 +0000
Message-ID: <BN8PR12MB32666359FABD7D7E55FE4761D3F50@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <cover.1562311299.git.joabreu@synopsys.com>
 <384dab52828c4b65596ef4202562a574eed93b91.1562311299.git.joabreu@synopsys.com>
 <20190705132905.GA15433@apalos>
In-Reply-To: <20190705132905.GA15433@apalos>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9c9c6aa2-e217-4d18-7ea2-08d7015c6cf2
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN8PR12MB2867; 
x-ms-traffictypediagnostic: BN8PR12MB2867:
x-microsoft-antispam-prvs: <BN8PR12MB286730AAC5030FD80D56DE5BD3F50@BN8PR12MB2867.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 008960E8EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(39850400004)(396003)(136003)(366004)(376002)(189003)(51914003)(199004)(81166006)(8676002)(305945005)(7736002)(14444005)(256004)(81156014)(8936002)(6116002)(486006)(476003)(73956011)(446003)(4744005)(14454004)(11346002)(52536014)(66946007)(5660300002)(66476007)(76116006)(66556008)(64756008)(3846002)(66446008)(7696005)(99286004)(102836004)(25786009)(229853002)(7416002)(54906003)(2906002)(6506007)(76176011)(66066001)(316002)(86362001)(186003)(110136005)(33656002)(26005)(478600001)(6636002)(53936002)(4326008)(74316002)(6246003)(6436002)(71200400001)(71190400001)(9686003)(68736007)(55016002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB2867;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: vwRtHQPX4tuAtcOOGnjc+YEjQgIWT6FCHQ2QyQoGGZGFNoSgOspzlROo39Pf679N7nhJFdoX4A+GY3c2U9jR6qD+IMpuTeLa3uSrRr3JZ2I1DetGj6tYckfIORQX4vCDpW7v5B+pvCmyH9LY4ZVXLM1euGxz1Ox6vsmtrF5yrwey1imu7MtILLyzRZSz3U0oGHt5UT1i89jurVPsoQFJliEMoiV9gCXyZjhcdyeId+3GY97/aVPnpMKf44elNiznKmmAfi1+z8Ijyy28lk5n3DRwkeM+yH6VSt8vIKoS/p6t0yepCVtoAmnhV5OYiltYKI5GmK9zSumbH37+g9OcGgzQNCTpPdTKDXp/+d1JAz+5XAnQebJb1M2cg/HRWmQSGIuVjP7MquW2s00fap/3E8J/RWwcXPXjEyHiOSl/fK0=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c9c6aa2-e217-4d18-7ea2-08d7015c6cf2
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2019 15:21:17.1455 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: joabreu@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB2867
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_082126_617315_F08DE6FF 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

From: Ilias Apalodimas <ilias.apalodimas@linaro.org>

> I think this look ok for now. One request though, on page_pool_free 

Thanks for the review!

> A patch currently under review will slightly change that [1] and [2]
> Can you defer this a bit till that one gets merged?
> The only thing you'll have to do is respin this and replace page_pool_free()
> with page_pool_destroy()

As we are in end of release cycle net-next may close soon so maybe this 
can be merged and I can send a follow-up patch later if that's okay by 
you and David ?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
