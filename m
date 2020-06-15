Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A691F9921
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 15:40:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JeRksVhO3+dp6+9fMHuXue0LvA1KTThJ0J2sz9vj8p8=; b=soQz+R1PYsHxkk
	KNAoNWxS/IM4YwaZFHOEwMGPnaGcb5ra2Z4TV9BO4Z1SuYik1f+9Tq6cIwOMtgbUfi69RTk01JhFz
	xhr2bhqW2Ey/F6su2GZKyqe5z9ASvOrzabFR8szNDHK5rD6YgHEGuS5AUyPS6zC8mKMqtnyqrwniV
	X66Kr8dOPmgJX6hDZyv25KPFxfOc8AV65+/Syud6ulUs2LAFsseoEygvyFXM5MLOXztCTZtB586So
	34rVdlXcfLtJw08z9TqPNTYKrRl3P2ruBz7BnF7sBdzbR8SpMa0DJ9xJL0qYzdJp6Zn4BBec7FFy2
	DBtM1GDFuyXI09mB9s8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkpLY-0006fk-Lb; Mon, 15 Jun 2020 13:40:20 +0000
Received: from mail-eopbgr70074.outbound.protection.outlook.com ([40.107.7.74]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkpGW-0000cf-Ex
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 13:35:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=btYbpBOn9RYDCLGiyQJv9neVXbLu/xWAEaNK2RObXCWiWsHLIG59Dp14BnlGeviZt6mDEuzzgtCL2Ju8Cgvb76InDBNrGCF2GMoS9SjmXN/DzEPRqvDyphjGpTEqYJhr0XYa9gt0cjVEOKybS5/GeZfqU7m2lOMKv7cpNOvQzCh2mTUJeSU6ZfVmxfTDZzURgN1A/S3ARpy5AOlgsn2QyzqmAZXG8K0CRoCulQiR+gafsUExFhbwik/rub3JsgztqUxBkQ7BESKnj4f5kNIEnybZ3goSco2ufGkw9/xzTixm6UsIN3m5DHt/oTXqevcK3TR9cFIQ3vlSBg0rINVIvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5nGCEcqJRcBYeC3PON1CTCnfwSlFO1eboQaPMttrG5o=;
 b=V/IOzC/s8/eLs2/iVDG+OdAg3nY2hqOfqffvy0vnc5pfriI2ALvJUu88hmJSoQkmKS90Rqy55ii5a5JdR4/HM9r4L85TOBZw/Q+UBbSmT3PN8ZWPs0xgZG6vHDtN7IE+1IrlZdzso3e414w3S+QCPM5mkthbFuvxq9cbMGGXK4px/HWq12fqHwRK3zJHxo50j2wZCZNjePiO5bC0Tz994a4hcMS8UHtJ7eilINysNJg9E0AuNIteVo/EX88g/6dOO8B84O4MAilRB0PTG0tf+jOPoHv0dyV8QOwWNNW0lonqTYQT/hRZ3cpAT91BfGOuJR49e/6DKobxuqVqsm+E1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5nGCEcqJRcBYeC3PON1CTCnfwSlFO1eboQaPMttrG5o=;
 b=WOb6emmmtW0S96eI2llbX3TPjjfy5w5uWSE2PzOTNbpKr4KZPCaEThlqlEOwU9vl6KQUHWesvR8WWhqHr4Zm29kd0G/qObCee6+VGwKmIjcoXhgOmb9ubGgGOL9Uwz1sdqqpM0+k2zDEPslBwtJwB/hMRwxeo3vtIxMAwwE6PbM=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6414.eurprd04.prod.outlook.com (2603:10a6:803:11e::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.22; Mon, 15 Jun
 2020 13:35:02 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3088.028; Mon, 15 Jun 2020
 13:35:01 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Mark Brown <broonie@kernel.org>
Subject: RE: [PATCH v1 RFC 1/2] spi: introduce fallback to pio
Thread-Topic: [PATCH v1 RFC 1/2] spi: introduce fallback to pio
Thread-Index: AQHWP6z7CX2etPvPnk+oddH8JEW5FKjTbHIAgADDYUCAAJUwgIAACjoQgAA5dICAAOmA8IADsXmAgAANH1A=
Date: Mon, 15 Jun 2020 13:35:01 +0000
Message-ID: <VE1PR04MB6638C65257F41072C3D61583899C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <1591880310-1813-1-git-send-email-yibin.gong@nxp.com>
 <1591880310-1813-2-git-send-email-yibin.gong@nxp.com>
 <20200611134042.GG4671@sirena.org.uk>
 <VE1PR04MB66383245FAD2AE33CFEA76F789810@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200612101357.GA5396@sirena.org.uk>
 <VE1PR04MB66384013797FE6B01943F2A889810@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200612141611.GI5396@sirena.org.uk>
 <VE1PR04MB6638B43E3AC83286946DABCD899F0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200615123553.GP4447@sirena.org.uk>
In-Reply-To: <20200615123553.GP4447@sirena.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [183.192.235.111]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 80fee015-6f3e-4caf-122c-08d81130e7d0
x-ms-traffictypediagnostic: VE1PR04MB6414:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6414409F3E6FF2532A64C98D899C0@VE1PR04MB6414.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 04359FAD81
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YPMAwfrSm1znnsbDTAZp6m2ZJ53c00c4+LnsTyG+o/vsVjtPU7LWbiVd7h/xWIO6qfq7So35HA8bXR6xWY0YtPLM/zuSc39mNx+Efmh6QlslYS1BDNCJH3+PWUEsfELImBkMj23n6iHWCQhjfaWtdLgy2GDOKqZVNqGfIHlpYzV8959khf7TC/ohR72jyKML5O+hGusid9ghSPHZ7lVGbF1QAVGkkXFOa5tEnq8bpSwW29/lL8WwSbhNkbiIzyVg7dA109uI+IaMlVBFKjMyrjq53B6wTZwYeTK9n8w75UVHI5SMeJO8339ZJ+JVPmcXsv7UaVkIMZ8Etw1rPs3P2Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(366004)(39860400002)(346002)(376002)(396003)(66946007)(66476007)(66556008)(64756008)(66446008)(54906003)(2906002)(7416002)(316002)(8936002)(478600001)(186003)(76116006)(53546011)(55016002)(9686003)(6506007)(7696005)(4326008)(26005)(86362001)(33656002)(71200400001)(6916009)(8676002)(52536014)(5660300002)(83380400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: aLiQmfAwnz4WspcB5pNNXHY3OHrjmFuwd5Yr1EjcEdUxT4lLP/t2X8JxB/NVhCFXbCS/zfZAX52Gs4K+0WVbeo2mMKsL4WzgAkj+EpmGp/mvz8VuEUf/WtrqXHVT3D6ZUmohHg1f6GJC8eo/CYXoAciHndNa+F3dR1H0QuRc6D6Rjo0sGYuV2HuBH6nR6ArvwDSZmWNN7AUMkccVgT+5dgAmX8J4fSQX+UdpICuN52LtmG4ssmRe3hkmiEaKR9vpAb7Ks5QI/tX6d088+6mmjetlWfCOWQOwJYvsTC/h3JSkL/3s9i2RIlgIku1aY/gESduQ3OgAmlnSOxKPM5LnpSzjPhhw7iwp9MJ+Q41blgwq4TaiZLO8RBMgZZXZfCeF0P/qNfNwN87maKEVn5Z3OOJGdbGk2/p0pyOLV/n9MgPQ9r3x87ljFQXMtmzbs8YFdtzb5siSRzEcA4KKhwqeiDDnv8kdVeFyPeoZhNktS2HsxGGPi/uVO/dsgvqpYEng
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80fee015-6f3e-4caf-122c-08d81130e7d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2020 13:35:01.7101 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pFL5Z2ppt1g4Ee6ztxwRpUtoJCH3NkVNa3rX5jhn6KW9jH4H7zQf9kTPe8Q1HFd/zCEzc5cjW/tVV0lPEJtM6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6414
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_063508_627667_A684429C 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.74 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.74 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "matthias.schiffer@ew.tq-group.com" <matthias.schiffer@ew.tq-group.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/06/15 20:36 Mark Brown <broonie@kernel.org> wrote: 
> On Sun, Jun 14, 2020 at 01:04:57PM +0000, Robin Gong wrote:
> 
> Please delete unneeded context from mails when replying.  Doing this makes
> it much easier to find your reply in the message, helping ensure it won't be
> missed by people scrolling through the irrelevant quoted material.
Okay, thanks Mark.
> 
> > > No, I mean that the reason the DMA transfer fails may be something
> > > that happens after we've started putting things on the bus - the bit
> > > about FIFOs is just a random example of an error that could happen.
> 
> > Sorry Mark for that I can't get your point... The bus error such as
> > data corrupt seems not the spi core's business since it can only be
> > caught in spi controller driver or upper level such as mtd driver
> > (spi-nor) which know what's the failure happen at spi bus HW level or
> > what's the correct data/message. In other words, spi core can't detect such
> error by transfer_one().
> 
> If we see an error in transfer_one() it could be from anything, we've no idea
> what happened on the bus - the controller may have got part way through the
> transfer before failing.
Then how about choosing specific error code for such dma not ready case where
nothing went out on the bus neither? 

> 
> > But despite of that case, do you think this patch is valid for
> > transfer_one() failue in dma and fallback to pio?
> 
> No, not unless we know that nothing went out on the bus.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
