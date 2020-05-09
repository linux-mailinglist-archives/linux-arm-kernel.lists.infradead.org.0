Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45AD41CC0D2
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 13:19:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sK3B4IHKTrBJXVnSz00G515j1hm3hwksDMIxISLaf3c=; b=idRudZqozYYM7S
	HWeKkPlS9o4jYpiaeIJ2OHiVnNCt9IL3AKSviUPkdvZEsEytV2v6XvhAWa2wn396tSn/DgIDmqFZA
	BwM9xMUjsVKqRIl4ugJLSzzCoyCRsIMstR3DskZuOO0pkM8rbG7vvU0jX7qVeLpHQ//+8OlHsFE3v
	RW1Y6VI87B5maEV0BKsnaxperHbsI2nkoSseWyS8+jaVQacyEA3Ymp7urAIIoM/SVCQEtufW1M9qw
	/M1Hw9OsXymhYuLTB1u7fW0yBXa6emkSSJl88N4WFnpzy6LbGCeczCJ8642Ge3La9C3vMFsHJV6c0
	zrkQs86WrK8XO5mDAzNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXNVO-00035N-LL; Sat, 09 May 2020 11:18:54 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXNSt-0000yY-P2
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 11:16:23 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 049BF2HJ028103; Sat, 9 May 2020 04:16:02 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0818;
 bh=RkV6TFzFEqkYQ7vcn0dOpQpgkF/Ghv5ZlAIv7Ul/xbU=;
 b=dG6WjDe2bnPqE987mOJioDfAHCeSYyYIQf2yVw+fiqovHtoEixbdrs+QWMVw9bDL26Nw
 UbjNgpCvTJJbLubV7bj7ZWwBC8hKlR0jQoFMNWlgulyay4zSVTHAXd8GwF+p/cXuwCZk
 MqhaVOZrv2xwBI5scKR2izokiTRaOtLmOiHILHcCWr2iaRRT+Ek6Mctcg4dE3LTkVIRn
 BZrptsRvZR2pj/FsQsVx2audMqo0RVXZ39imsyhcH/vb8pau8e59cuKCHEhKlLWY7O2x
 847QgFNnGfbXVC+ElMWvtlNEZXGFveZQyG/FxJaigR55q6CbAry4k+hISLSwJa5mGJhX yQ== 
Received: from sc-exch03.marvell.com ([199.233.58.183])
 by mx0a-0016f401.pphosted.com with ESMTP id 30wsvq87tm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Sat, 09 May 2020 04:16:02 -0700
Received: from SC-EXCH04.marvell.com (10.93.176.84) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Sat, 9 May
 2020 04:16:00 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by SC-EXCH04.marvell.com (10.93.176.84) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Sat, 9 May 2020 04:16:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A3Rn2fmSnT/yZyV6z3u3Kx53K82GqrXTghHxM8kpwgPaYEW3eVEjHjV9mjdQzCTOiXD8UYsn0Jbhfi/aXNilsHTROlbvfZNUheh8pkjHoMO1faB8VRfo0VaHOVnFOhRDSqhYBcVAFL7I+JuQy/a71hZUjjNGVdbrq4pUacG/VumEvB4o7wL0rQZB+uLQnd92p+rizvn2fyId4Hhory4ZFPot1aKqpB3lQtQeQniO3PpZkc6wononLyOhSHBYcWfJhlfWrpbyPGs/dP5aj9Hcy7IOhmUPIk3ksADns2x16Vy4AslXpDhjQfgISruBk/pbJgJGowCZT6ZTll37GXXlgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RkV6TFzFEqkYQ7vcn0dOpQpgkF/Ghv5ZlAIv7Ul/xbU=;
 b=UohIpMu3+Z8Ya3O8kv+6cyZ95NyDmn9DZcHxAQ2z1iv6d0kBFRqDW4KIq6AQtrP1O7aKvCDN/wSAhO+iYyS677cybMDXo+QyhVrCbp/OrVCoWiFdJyRdSKYMMV7x2gsXRjZMBxm5+Lqdx9H0z+hDIFEjfCQWisf87safVS3wozwyrhPAVJfkMrhgSEbUGJhRIopnkbdlk7lu9TugrbEoO8RCU3PMnUfabdM5m+2VDj8oUqj0A8G//eJTZHrlLqLiaD97r/qiBva6CFqcdLaEWo4a2nWYe+muJCreq0vjfRmKw9MuSrN5xI7bn6wedMpOq9JQv1sRGaD36Wi25dCt4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RkV6TFzFEqkYQ7vcn0dOpQpgkF/Ghv5ZlAIv7Ul/xbU=;
 b=VpUHhW6xZ4SHwNA5+BFfqRemZgNiziXjgFC0k1e3FkI5X0JJg9V67a6mv1+DLcnfVJ3Li/gtTQrjN7LjEigugTFj386SQkFJTawGo6+GIfThVnkTsSYlt+xX0RK1eIDavd0nFQRpHd36zDFO6qvsNo5l/DRkgWh7JKJ3SawFL20=
Received: from DM5PR18MB1146.namprd18.prod.outlook.com (2603:10b6:3:2c::15) by
 DM5PR18MB1355.namprd18.prod.outlook.com (2603:10b6:3:14a::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.33; Sat, 9 May 2020 11:15:59 +0000
Received: from DM5PR18MB1146.namprd18.prod.outlook.com
 ([fe80::51c3:5502:21c2:f515]) by DM5PR18MB1146.namprd18.prod.outlook.com
 ([fe80::51c3:5502:21c2:f515%12]) with mapi id 15.20.2979.033; Sat, 9 May 2020
 11:15:59 +0000
From: Stefan Chulski <stefanc@marvell.com>
To: Matteo Croce <mcroce@redhat.com>, "David S . Miller" <davem@davemloft.net>
Subject: RE: [EXT] Re: [PATCH net-next 3/5] net: mvpp2: cls: Use RSS contexts
 to handle RSS tables
Thread-Topic: [EXT] Re: [PATCH net-next 3/5] net: mvpp2: cls: Use RSS contexts
 to handle RSS tables
Thread-Index: AQHWGZC7cQmjD8WUCU6s0i6IN8JFgKie+g2AgAC4ufA=
Date: Sat, 9 May 2020 11:15:58 +0000
Message-ID: <DM5PR18MB1146686527DE66495F75D0DAB0A30@DM5PR18MB1146.namprd18.prod.outlook.com>
References: <20190524100554.8606-1-maxime.chevallier@bootlin.com>
 <20190524100554.8606-4-maxime.chevallier@bootlin.com>
 <CAGnkfhzsx_uEPkZQC-_-_NamTigD8J0WgcDioqMLSHVFa3V6GQ@mail.gmail.com>
 <20200423170003.GT25745@shell.armlinux.org.uk>
 <CAGnkfhwOavaeUjcm4_+TG-xLxQA519o+fR8hxBCCfSy3qpcYhQ@mail.gmail.com>
In-Reply-To: <CAGnkfhwOavaeUjcm4_+TG-xLxQA519o+fR8hxBCCfSy3qpcYhQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=marvell.com;
x-originating-ip: [80.230.83.85]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 36b77b11-4e8a-4491-cd6b-08d7f40a59f9
x-ms-traffictypediagnostic: DM5PR18MB1355:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR18MB135570936218B1E98171C77FB0A30@DM5PR18MB1355.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 03982FDC1D
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: j9rLrFVaiMngMiG7pf194lCPsrfqBFE7+vZMS5Ph3/gTwDquoN5QkFH+RVMpqHJmisZa6cRFkayWRemwqztUoBcqqjxSTDlV8wm2NOV2c21GpNwF/x/muwSgDxYO2AJPGCiuBjZj2T7/259OqRUm0TgSxdwo66uUL2YVYnI2uWgaxVW0JVIP0FCJ4tlDrvpGA7yNnv3N5qAi+oVNbmmPKdXJypD+8EDxs0sljPBEB4Nha1glxHogJ7Eg/Snby6un2lmVO2MmrNPoFwT/1dsYVQXXuR7eelwtvpG5cd4+gNDduI01nM7jAH6NiLRiGfRBewfJP41MRO4hXqcV/PoBWVUCK7bY1ZHgo9wYLaPy/ECsfHRGiK5NQXrQh2FbREG8tHRBkZ5FVwp4OFvIjruuk56jMkPNDfgJcZC0yEZ/Jajh911GRKKpup+l4E+zQqM9eQ1NKzVdO9kiIX8doPjkVvr89w25zMJZWbYxbC6GsSi9N9F7qr+/G8E/wGXrMQFMHt+Yk5x/z5OLLAorKAyLNvyZv586ERkGzUIYG8pFurWD4YbLg79Tt9nDMIcxmOxFTf5yHFQX0d5ku6xrUg7WffhG+18OjaEDMg9C3Tm4f+I=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR18MB1146.namprd18.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(396003)(346002)(376002)(39850400004)(136003)(33430700001)(8936002)(53546011)(26005)(5660300002)(6506007)(9686003)(186003)(33440700001)(2906002)(7696005)(8676002)(66946007)(66476007)(86362001)(55016002)(66556008)(52536014)(54906003)(71200400001)(316002)(110136005)(64756008)(7416002)(966005)(76116006)(4326008)(478600001)(66446008)(33656002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: RJ5XKLIdLiyekOBxzUFEqwvYx/5TWJN+CFO/QAGaE/Plmu2mHs7CT1lq5zZvpobG8A0kETRltoPcJ1SsvuI1OU1uayEiml/QVivyQEH/XzFu7iX/KFMt7TzaNnZKZDaw7MQ6cE4aBgJbEvtdLxP9/zcw/Gu2HRyG2IOkxGp3f1eZn6fMZK0utGjgJamU4R+JbRdPBLV+57sgMV1YBHpmEFhiMaJCs6+xTBmbzGbHoYuuMFynhpleqsCSzUqh239CPsNWX6JxxxcvFvEF7qBY+c1C224oszbtON1nyfyJcw57Y3EvqAJzWrzpSZPTvcm3IvUSQun3raxXfkp87Y2AwewU3kHscFK1uPdV7HNlUQdFX1vWQWylJomNswuxZqm7KTOX3zviPC4FkptVF5FoF7gLcnmNgvC3nJ3iOGp+c8Hm/z+DsUlliPJBI9RSLr8hwBEGBeuFYp9aagx+k/e6Htx3nWBJtc5y4h7pOi+xiBI=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 36b77b11-4e8a-4491-cd6b-08d7f40a59f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2020 11:15:58.9789 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qf5jSd3hRRHsLNC2hhMdnbS7UyZV10j3qf2lUozTspAMpBqLvisxvRhPTT6RIcw+ugq4HEWES8n7L2aelZLxiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR18MB1355
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-09_03:2020-05-08,
 2020-05-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_041619_893108_30751AE1 
X-CRM114-Status: GOOD (  33.91  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Antoine Tenart <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>, Russell
 King - ARM Linux admin <linux@armlinux.org.uk>, Marcin Wojtas <mw@semihalf.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Matteo Croce <mcroce@redhat.com>
> Sent: Saturday, May 9, 2020 3:13 AM
> To: David S . Miller <davem@davemloft.net>
> Cc: Maxime Chevallier <maxime.chevallier@bootlin.com>; netdev
> <netdev@vger.kernel.org>; LKML <linux-kernel@vger.kernel.org>; Antoine
> Tenart <antoine.tenart@bootlin.com>; Thomas Petazzoni
> <thomas.petazzoni@bootlin.com>; gregory.clement@bootlin.com;
> miquel.raynal@bootlin.com; Nadav Haklai <nadavh@marvell.com>; Stefan
> Chulski <stefanc@marvell.com>; Marcin Wojtas <mw@semihalf.com>; Linux
> ARM <linux-arm-kernel@lists.infradead.org>; Russell King - ARM Linux admin
> <linux@armlinux.org.uk>
> Subject: [EXT] Re: [PATCH net-next 3/5] net: mvpp2: cls: Use RSS contexts to
> handle RSS tables
> 
> External Email
> 
> ----------------------------------------------------------------------
> On Thu, Apr 23, 2020 at 7:00 PM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > On Tue, Apr 14, 2020 at 01:43:02AM +0200, Matteo Croce wrote:
> > > On Tue, Apr 14, 2020 at 1:21 AM Maxime Chevallier
> > > <maxime.chevallier@bootlin.com> wrote:
> > > >
> > > > The PPv2 controller has 8 RSS tables that are shared across all
> > > > ports on a given PPv2 instance. The previous implementation
> > > > allocated one table per port, leaving others unused.
> > > >
> > > > By using RSS contexts, we can make use of multiple RSS tables per
> > > > port, one being the default table (always id 0), the other ones
> > > > being used as destinations for flow steering, in the same way as rx rings.
> > > >
> > > > This commit introduces RSS contexts management in the PPv2 driver.
> > > > We always reserve one table per port, allocated when the port is probed.
> > > >
> > > > The global table list is stored in the struct mvpp2, as it's a
> > > > global resource. Each port then maintains a list of indices in
> > > > that global table, that way each port can have it's own numbering
> > > > scheme starting from 0.
> > > >
> > > > One limitation that seems unavoidable is that the hashing
> > > > parameters are shared across all RSS contexts for a given port.
> > > > Hashing parameters for ctx 0 will be applied to all contexts.
> > > >
> > > > Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
> > >
> > > Hi all,
> > >
> > > I noticed that enabling rxhash blocks the RX on my Macchiatobin. It
> > > works fine with the 10G ports (the RX rate goes 4x up) but it
> > > completely kills the gigabit interface.
> > >
> > > # 10G port
> > > root@macchiatobin:~# iperf3 -c 192.168.0.2 Connecting to host
> > > 192.168.0.2, port 5201 [  5] local 192.168.0.1 port 42394 connected
> > > to 192.168.0.2 port 5201
> > > [ ID] Interval           Transfer     Bitrate         Retr  Cwnd
> > > [  5]   0.00-1.00   sec   941 MBytes  7.89 Gbits/sec  4030    250 KBytes
> > > [  5]   1.00-2.00   sec   933 MBytes  7.82 Gbits/sec  4393    240 KBytes
> > > root@macchiatobin:~# ethtool -K eth0 rxhash on root@macchiatobin:~#
> > > iperf3 -c 192.168.0.2 Connecting to host 192.168.0.2, port 5201 [
> > > 5] local 192.168.0.1 port 42398 connected to 192.168.0.2 port 5201
> > > [ ID] Interval           Transfer     Bitrate         Retr  Cwnd
> > > [  5]   0.00-1.00   sec   860 MBytes  7.21 Gbits/sec  428    410 KBytes
> > > [  5]   1.00-2.00   sec   859 MBytes  7.20 Gbits/sec  185    563 KBytes
> > >
> > > # gigabit port
> > > root@macchiatobin:~# iperf3 -c turbo Connecting to host turbo, port
> > > 5201 [  5] local 192.168.85.42 port 45144 connected to 192.168.85.6
> > > port 5201
> > > [ ID] Interval           Transfer     Bitrate         Retr  Cwnd
> > > [  5]   0.00-1.00   sec   113 MBytes   948 Mbits/sec    0    407 KBytes
> > > [  5]   1.00-2.00   sec   112 MBytes   942 Mbits/sec    0    428 KBytes
> > > root@macchiatobin:~# ethtool -K eth2 rxhash on root@macchiatobin:~#
> > > iperf3 -c turbo
> > > iperf3: error - unable to connect to server: Resource temporarily
> > > unavailable
> > >
> > > I've bisected and it seems that this commit causes the issue. I
> > > tried to revert it on nex-next as a second test, but the code has
> > > changed a lot much since, generating too much conflicts.
> > > Can you have a look into this?
> >
> > This behaviour on eth2 is confirmed here on v5.6.  Turning on rxhash
> > appears to prevent eth2 working.
> >
> > Maxime, please look into this regression, thanks.
> >
> > --
> > RMK's Patch system:
> > https://urldefense.proofpoint.com/v2/url?u=https-3A__www.armlinux.org.
> >
> uk_developer_patches_&d=DwIBaQ&c=nKjWec2b6R0mOyPaz7xtfQ&r=DDQ3dK
> wkTIxK
> > Al6_Bs7GMx4zhJArrXKN2mDMOXGh7lg&m=ntT7WKmzla65VWVPZMCr2-
> 8bTGq4cXdJ1RRL
> > gqFkmUc&s=jhKRohlyU0XtX0U0Rjt6XvJgMKLy_HedaFVSJwGYuD8&e=
> > FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down
> > 587kbps up
> >
> 
> Hi,
> 
> What do you think about temporarily disabling it like this?
> 
> --- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
> +++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
> @@ -5775,7 +5775,8 @@ static int mvpp2_port_probe(struct platform_device
> *pdev,
>                             NETIF_F_HW_VLAN_CTAG_FILTER;
> 
>         if (mvpp22_rss_is_supported()) {
> -               dev->hw_features |= NETIF_F_RXHASH;
> +               if (port->phy_interface != PHY_INTERFACE_MODE_SGMII)
> +                       dev->hw_features |= NETIF_F_RXHASH;
>                 dev->features |= NETIF_F_NTUPLE;
>         }
> 
> 
> David, is this "workaround" too bad to get accepted?

Not sure that RSS related to physical interface(SGMII), better just remove NETIF_F_RXHASH as "workaround".

Stefan.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
