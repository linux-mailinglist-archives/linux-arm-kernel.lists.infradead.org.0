Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57513AF85E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 11:00:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mIMIHhqUsKppwyQt2E7L4JzW82fCgXAKqwxAWykjmNQ=; b=jaCl9MWlCpG+SO
	KT000VWoDD0XQnXMWv3TqyP23pRB3e388LFjdPRHVdGoocB64cYG/fBcu87jLK6e5GKmaonBosGKt
	iUKMIKwRc6Ywxel3FFQRqfiIMoa/Knns+h3zCbNKd1ERtnnYBmSHzUGJQPu9r+Wbj9nT9skfQPZH2
	Bq/LTKqUwX9C8PGNELgw0aIKUqIYszGZo8GswAkixAvzM/OnAjdcuET0xQfNIFCor3cDkbuDno92f
	VNnHncymngoNUEqzTkXKEWFW8IK6kHaIaQtPHHFfdiK7+zcdYXDZq9KwTvICvK4OMrq147f2wYQDG
	37l/MD7iDe7Mswp/6HnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7yTt-0001Vb-4T; Wed, 11 Sep 2019 09:00:05 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7yTf-0001Uq-Ej
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 08:59:52 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 793FEC0D94;
 Wed, 11 Sep 2019 08:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1568192389; bh=VxYuo+i6l1ehrhAN7UrgAsRW68teXNF6qJ/SFoPI7og=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=DIE9NYzLhG4dbO3hPUsginL6HbkN7R3qP+U2rDqTasFWz46NbkOfGMz/wOCzPu2Ji
 P+p99eP+856aj3N6KO1ewF4PYST6ZiFy2OOYt9XNQ2TN6WtCXjmjiuT+1Z5SEsuNor
 kRpa6mRx50xWvEOj1gVXLRuJKCXQQnV4+hmLgqElq3s09npliX5bE/MboKOVyvu2aT
 Ip8x+AYU3+GqqH9X7eyTt4OkigZsrh4MKySjaR4mO7amNRA+9rlQgL0AO4Cfda4eIU
 OewVcKb0Rp1fvNh6qzUG4NywbTVNTPmhb7neDdW+GH7j2e+CjIvUausy86DKO7e/p1
 NeIS+iVlk9ZRw==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 257C3A005A;
 Wed, 11 Sep 2019 08:59:47 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 11 Sep 2019 01:59:47 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 11 Sep 2019 01:59:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DFoHYcP2D6CSb3yPk5NRjDm0MHxioLdiJAE7h4aAoizDzBHU2Wi7qrKstTzwNmizbtI2hG+vkoDeO+oziWMG9/gQVKewBUbx2gPcXliZk1hL0E1xRJCWyrUMTaMJ/la6yV+wUVdPv9YNqzRAnWH03cZIm5zD9KTxa/KRCKNkglMgzoUh24dDpTL4BtFnDPpJJAQvCK+98I9uwMXvoekoXmUPBM4N6IllwoabpqnRA9G0eynStOS5bmW51M1tNiyNrKvVTFi7jLPe0YuG/Wr/YP+aFnaTbQwYN/YY70qU7Ps+jeW3zKqQ1XRPnrMsQ3qdSDaafuvOLDsKyODjT1/SUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8/S5c1i+dfxXALaBei7CJnk3VD6sbdXfs9w6cAqD8uo=;
 b=MArOkFEt5IW3tYhkkeAX6iehh0D2YNVIHZDuVdij2iD9KhfLp9h6+vYoYnD5Bm2PY3PDY89nmKdnfW5JabRKqxYTHHqq/nt0jHh1JWz88nCanVvr1+kdYZIK4ueLBG9J/ldtqMCOQJ/EWKj/9/s7b3cdajtWIhD0ka89BnBZjYgJpuzwvVzSv3FAFN7FMN2J9hAuD1x6fjj8eE3J64DjPrrRJhJVgzVGWXB8rXTs+Khbbw7UAiOtLoy+cOMV3GHbd+1CW/wq1LXNs5KdC2+fwCcFk2JLfsxz8oA+0oSstWzr8YNmZDMs/Unr3cdS2bPXdJ/s/dEPIhiA+totWbMBeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8/S5c1i+dfxXALaBei7CJnk3VD6sbdXfs9w6cAqD8uo=;
 b=KMrngl0r4JWTmAwqBwTJmyhoCF10YQEh8+gBuoYe/y/WcJBrd9hvYI3F1ProTmtX1etHNdmz8TqDaihoatbPYpg94VECnj3GOIR3HQPEzeezDYrzpTknYqqlHq3LM0kREy03Gg7PVh/nhutvlYlEQ4hG3GktqZb/xJ9pF+CJ2gk=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.67.145) by
 BN8PR12MB3539.namprd12.prod.outlook.com (20.179.65.91) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.18; Wed, 11 Sep 2019 08:59:46 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::59fc:d942:487d:15b8]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::59fc:d942:487d:15b8%7]) with mapi id 15.20.2263.015; Wed, 11 Sep 2019
 08:59:46 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: David Miller <davem@davemloft.net>,
 "Jose.Abreu@synopsys.com" <Jose.Abreu@synopsys.com>
Subject: RE: [PATCH net-next 0/6] net: stmmac: Improvements for -next
Thread-Topic: [PATCH net-next 0/6] net: stmmac: Improvements for -next
Thread-Index: AQHVZ+Xjv6EH/CtyAkiGIiwkAINrlqcmJCWAgAAG+zA=
Date: Wed, 11 Sep 2019 08:59:45 +0000
Message-ID: <BN8PR12MB326676C474619C79EC0F2AC6D3B10@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <cover.1568126224.git.joabreu@synopsys.com>
 <20190911.102155.148817974369878410.davem@davemloft.net>
In-Reply-To: <20190911.102155.148817974369878410.davem@davemloft.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [148.69.85.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 308a46c2-9552-4f9a-2fb9-08d7369664d3
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN8PR12MB3539; 
x-ms-traffictypediagnostic: BN8PR12MB3539:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN8PR12MB3539F44096ED20A9F5BE7ED8D3B10@BN8PR12MB3539.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(376002)(136003)(39850400004)(346002)(366004)(189003)(199004)(81156014)(4326008)(25786009)(186003)(6246003)(229853002)(5660300002)(6636002)(446003)(7736002)(52536014)(476003)(11346002)(486006)(2906002)(33656002)(71190400001)(71200400001)(66946007)(66476007)(64756008)(66446008)(8936002)(66556008)(99286004)(86362001)(305945005)(81166006)(316002)(66066001)(14454004)(6506007)(2501003)(110136005)(76116006)(26005)(7696005)(76176011)(74316002)(14444005)(478600001)(55016002)(9686003)(102836004)(256004)(53936002)(6436002)(3846002)(8676002)(6116002)(54906003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB3539;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: oaVdBcINhgX5EINw863Th1V6uDSrUe46i+UksidzUngmS7paaqMQPQjepySaPRVuYYB4fULLpUZgG9IiUwbHx2fWHU1U0Ncz05fuSkv/ZVzuD6g+Zjdto8oku+RE4Hg5iRNSK0GIa4CsWsUi6pNDXTvgZVbeqXRHu8uERXPgHKETFa0N91mhUmkQpItecei669/XDhjxp+ciyX0lpnUnxNC5NiAytN+KTris5fQSslwKHu25a+R82sQSjKDmiAwaW9AoxXvlfDReAxqABtrNFnHrUXGwYHESMxcZNHIwzAy9iWLJ+DoOAn5o06yOQCiqYNxPj4rmMxjdPruWjXur3uUnPJ+U9JzyB7QN8G5+q+pLM2uNbRZPCaw6vJkuxjJTWR57A9ZmK+50dCDMxkWh1n6iBDmZ3eZR+7EBgAg7aIQ=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 308a46c2-9552-4f9a-2fb9-08d7369664d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 08:59:45.9771 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jphXZPWpDJLGxiZ4+Z5PH4UVghnQL3MDvZZyzKT3cPiFd/LPQi5SIuLS9ZQrC18xAIju3sHodxglhl3GFP6TpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3539
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_015951_572156_BEE46EC8 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "Joao.Pinto@synopsys.com" <Joao.Pinto@synopsys.com>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "peppe.cavallaro@st.com" <peppe.cavallaro@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: David Miller <davem@davemloft.net>
Date: Sep/11/2019, 09:21:55 (UTC+00:00)

> From: Jose Abreu <Jose.Abreu@synopsys.com>
> Date: Tue, 10 Sep 2019 16:41:21 +0200
> 
> > Misc patches for -next. It includes:
> >  - Two fixes for features in -next only
> >  - New features support for GMAC cores (which includes GMAC4 and GMAC5)
> 
> Series applied, but what exactly does "ARP offload" even do?

ARP Offload allows the IP to reply to ARP_REQUEST packets automatically 
without passing by the application.

As net doesn't support this offloading I'm currently using this feature 
to test endianness issues in the IP and check if MAC Address is 
correctly configured, the logic is as follows:
 - MAC is set in loopback mode and ARP offload is activated
 - selftests create a dummy ARP_REQUEST packet and send it out
 - IP will detect the ARP_REQUEST packet and generate an ARP_REPLY 
packet
 - As MAC is in loopback mode then selftests will receive the ARP_REPLY 
packet
 - selftests logic will check if ARP_REPLY packet is correct (i.e. MAC 
address and packet type)

This way if this test fails it probably indicates that MAC address of IP 
is not correctly configured or that endianness of the IP was changed 
from default setting (which is LE).

By default the feature is off because user may not want to reply to 
ARP_REQUEST and I'm more using it as a diagnose facility. Let me know if 
you agree with this approach.

---
Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
