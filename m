Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7504363247
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 09:39:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jmnLQ779W0J0RCdmJ4XP/3/g8UskLoFZPvVchr7RO2A=; b=nXICuBBZe3w6SI
	Je9uNWiVUGo2F5sVXWJxTp/eGDrRoJY8JzGIRZdikFhr2loK4htfRgy+hX7xu2XQZ9muyB24tvqid
	yiYG37B1e1wuX9hK29nFMFk4CYo3CZXmqPBhKcFlIPjwb60j8lQmW4ZiqaJ1NVqx4g3DUdOruoGjb
	mFyWrKFRibvgOgFURyciL05FERSmQW95exr8tnYrj2bPMe1jfoG58yScfsyXycbVS77h/w5lieH8k
	X6TY1A0O0q4fBkEPGATbIh0Xqe2b0UX+VheyGCGzAmSM6WRPyC+6XKlkY+W3mMxy7iwGbz5jwLou2
	pFSWBPfsSvU7HbrH4fZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkkiN-0004XL-UO; Tue, 09 Jul 2019 07:39:04 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkkiA-0004Wp-HT
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 07:38:51 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 3BBF4C0269;
 Tue,  9 Jul 2019 07:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1562657929; bh=+LJlXz9wRRGJ9ijaGUy79RJrxoxGdW6dI2VFm65aYf4=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=BNhPmv9CSlCVh3zStW9ek56EVeasGB+0tPoFIYud7i7lCvJKINt7l4Ueu8Mb3mCRi
 OP2c8HBe1UppkFQzS49ZNZ+fgCZDZQMVdNDvtjak8FVZcuI0zK2k8d9JqKTHHN5bWF
 egf9P0Pi0JFtq+HCilF/ORWlE2vzfTgQjg5PJqiVoUZlBbqKcjmEZmpEIKiOIPZd0m
 crFqMLGzRqDq6q2Tv3wiYZGFfx9sXH4uWQxdR8qc9PRE8dRvPIqyEXpe4NEXxdr8/q
 avj2xkPgcNHGBKLqheqNEW0CgnTqDkja3vDMhGyikPOH6/tvetkh7UPEBVx9BtPAZY
 +IW/JATHkPKaA==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 1BB97A0069;
 Tue,  9 Jul 2019 07:38:44 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 9 Jul 2019 00:38:44 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 9 Jul 2019 00:38:44 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+LJlXz9wRRGJ9ijaGUy79RJrxoxGdW6dI2VFm65aYf4=;
 b=CM8Dc0Uz/NYavUvlCVr1i1ZHY+e1ZlJe+SSYUXTjVYoHuFQrzGcMqzUJeQFFs+KnK1vn6ZhFyB3GG/JjH7hQ+L0ovIhsb/PHHd4J7BoysMSBLqNc3K0WVs76zypjepoJCdMUYkeIU+F6EMKlLowlL8DKzapy2LIWWdDzuWIS4ng=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.66.159) by
 BN8PR12MB3204.namprd12.prod.outlook.com (20.179.65.83) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18; Tue, 9 Jul 2019 07:38:42 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::61ef:5598:59e0:fc9d]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::61ef:5598:59e0:fc9d%5]) with mapi id 15.20.2052.020; Tue, 9 Jul 2019
 07:38:42 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Ilias Apalodimas <ilias.apalodimas@linaro.org>, David Miller
 <davem@davemloft.net>
Subject: RE: [PATCH net-next v3 3/3] net: stmmac: Introducing support for Page
 Pool
Thread-Topic: [PATCH net-next v3 3/3] net: stmmac: Introducing support for
 Page Pool
Thread-Index: AQHVMwKNzVmUsJPJMUCkE31Cd4D9oqa8BTaAgAAezsCAAAGNgIAEwrOwgABWL4CAAKoRAIAABACg
Date: Tue, 9 Jul 2019 07:38:42 +0000
Message-ID: <BN8PR12MB3266F5F7775BF6DB2F93E1D9D3F10@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <BN8PR12MB32666359FABD7D7E55FE4761D3F50@BN8PR12MB3266.namprd12.prod.outlook.com>
 <20190705152453.GA24683@apalos>
 <BN8PR12MB32667BCA58B617432CACE677D3F60@BN8PR12MB3266.namprd12.prod.outlook.com>
 <20190708.141515.1767939731073284700.davem@davemloft.net>
 <20190709072356.GA4599@apalos>
In-Reply-To: <20190709072356.GA4599@apalos>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6a49f6ef-60fc-4750-17fb-08d704407784
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN8PR12MB3204; 
x-ms-traffictypediagnostic: BN8PR12MB3204:
x-microsoft-antispam-prvs: <BN8PR12MB3204AD2617366755E04E27AFD3F10@BN8PR12MB3204.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:597;
x-forefront-prvs: 0093C80C01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(136003)(39860400002)(346002)(376002)(366004)(199004)(189003)(476003)(486006)(86362001)(6246003)(33656002)(14454004)(446003)(55016002)(71200400001)(71190400001)(11346002)(9686003)(99286004)(6506007)(52536014)(5660300002)(102836004)(229853002)(186003)(26005)(76176011)(7696005)(66066001)(305945005)(478600001)(7736002)(7416002)(81166006)(81156014)(25786009)(8676002)(73956011)(66476007)(66946007)(6116002)(53936002)(2906002)(66446008)(64756008)(66556008)(76116006)(110136005)(68736007)(316002)(74316002)(54906003)(4326008)(256004)(558084003)(6436002)(3846002)(8936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB3204;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bwwDIYSt/Lsyre2pV01qVybJYMLyJy5guO+pDaTONQpF2rp3B5GNRQetMWvESgdYHn7QSigRAMEYT/IWgO5Tk4WAGzZIQjKn+qWy74v11TBMsH7iDG63ifNUgKVSAtS3wfwSAlDKuoTCdrqmjLvVpzTkuOjoQZshymoG4ryuq1WwnI4XyCEex8qv2mzXV9BhVCGs5SbXu1FOHiaBO1cEdXmRgKaLS4cf9/HZ3wB/xdM2hOCR5rKRIaLr4p75CxjnN6n2UmJdEVaP1aRzb+7CnQpVItH2P2ORwC2mn6s7K6Pr12EJONxsSkdOr57ydo8lRgFZJu2fklKpaqlzbVR+R4FYytC6j76/vYw5MFloee7bpRfPiP4fIEcaNjX7g29rqaw5JisFaWcnRMdl05HKIgD6fc5dtRAsr6vembjjoLI=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a49f6ef-60fc-4750-17fb-08d704407784
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2019 07:38:42.3859 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: joabreu@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3204
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_003850_639717_4465C5E4 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
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
Cc: "Jose.Abreu@synopsys.com" <Jose.Abreu@synopsys.com>,
 "Joao.Pinto@synopsys.com" <Joao.Pinto@synopsys.com>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "brouer@redhat.com" <brouer@redhat.com>,
 "peppe.cavallaro@st.com" <peppe.cavallaro@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ilias Apalodimas <ilias.apalodimas@linaro.org> | Date: Tue, Jul 09, 2019 at 08:23:56

> The patch from Ivan did get merged, can you change the free call to
> page_pool_destroy and re-spin? You can add my acked-by

Yes, I will re-spin then. Thanks!

---
Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
