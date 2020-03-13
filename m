Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41CA21849A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 15:41:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tv8yWode2fp09PvO2tHJiBg74WefSJBfyImcSWBMQgc=; b=VCMHfXsDnQw/i7
	iPmnD+zvWjkXv8iFtc9OVyMmBkE4po4QhuDHNo3ncELa6Z1lQEeAVkKF4jOmo/RkAcN0oG/Pqxkkz
	9Nr4juWixNNqJeEjtodl34LS7KJS4ShGWTHJwh+53KOIazJLFkcZWacGeve+lrzTiey76Y+vvh2aW
	M+azEC2f/h3f41g2bH8THwoAR4GhccimwF6Sq/ED6shLnj7tyuOmPD7xBDEcxbr2JqAMmwEF03pgP
	vAh/94pTYnDHQy9SEcWt8SlyEZ3EkXgQPbSj1YsWnTAbUdizBJT2CObprTBOdJY9fygVfRGUMoO6B
	15LVX17cjizR7/WRx1rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jClVM-0006iM-AP; Fri, 13 Mar 2020 14:41:40 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jClUy-0006XQ-Dm; Fri, 13 Mar 2020 14:41:17 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: CZLTi7xejXP6nNOhldVOWZxB9MGkC6uPZqQHUFTXGT4h1XIXpNmD3EwjJXQMhO54F0cD/D/p6M
 oi15h+MLBEvcagd4nHMqrF4vOWVUiHxGDhFZvYbjZMgrk01I0UkTJ2QORxUkf3IZBvnHbA96SJ
 0QeJmA4sWyn6LZYkvkZbHQYbV4JDVnEy8/6/s7ZegJ3Tymkfn6HDImBBlSQ4nX1QVdLC7R2PjJ
 MA5gCn27HRHAIXMADdjNkZJL7s3DeRhOHS1dOTM785wgxSU/dY6utr/iOxf5yeQDuH+L40RG7c
 Io8=
X-IronPort-AV: E=Sophos;i="5.70,548,1574146800"; 
   d="scan'208";a="5565075"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Mar 2020 07:41:15 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 07:41:09 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Mar 2020 07:41:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OGSmoyDvA7qYqozNUPjzJ3IHnlBSGsfGIIbIJAB/7gVS6MYAj669QIpAuOqnuGO4l89+2kd/P4jvs8TZFTwofEzc/r9yPOC7216p+ED8kMtp+gmCTRT0h/9WuzXrvlH/CtD7jAsc2RdnFHWgcrlpOn81UDjVBvluIEfVM9zN+0R3EaPrrRkXJTV9MmLx4wsZcja7gLMIU8rFJeoIgsKLhuVuzAy5MBTwtkjv7G0vwhItS5HjlUznMSyOQocnS5jmvXiXxWoTG9waEgt6JUhyAtsrXFL7Nv6DHCb7Fa6Xmso/MAsJPLgyzgP2pZ6peJ7MnNIGhZi7iCa2lcgb7TFaCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OiiqScKYOQgqjtCf3Jvx9xSnPRY3R9+15OBZ544Xs5k=;
 b=W98hDcm2f09lu79RugnNqtXZ14jPwGAxoSFKWiMxIIHVvTS/Yzxf/+h3rN3UgWlGSW44YVF0+yyhOKjqnH5gTn8gAEu6WPDh7o/Z5QLoLfpV85Pw2t3PRjhEO7T/wh4sSjtFvaUoHcC/JcjGOdZcJZIVsSYYw1V4RQddD8eOdhTYFkkFer6vzsWGG89fbojihq+RYABNxFiUo4DWu8K36y1PN80lpkdFszLBthD5cldV30/wf/6rDE639RphMYvwuHVhqJZAx+lQvKhZyz7H2chmayrAWhcpn/XgFCISszbgm/8DLxDBnNoWxvjQT2A2w9LLfCEP9uBK2v0UHrUjlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OiiqScKYOQgqjtCf3Jvx9xSnPRY3R9+15OBZ544Xs5k=;
 b=ryXUt4pHa5iUhF99TTwSUXnocpEH4pL+ENVBsrduVyx9QRzUW/haG+H7PTcqMEjUIeg8B8uMu7+rTfkps0QklRoSLHmHiN0nM0LOYE9F+cWDU6B4qCnH34gDzP3EqL6oouqzDvclPkzuQtAsFYrqZlkftTl+ZoEyZSz6IPaXb18=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by MN2PR11MB4581.namprd11.prod.outlook.com (2603:10b6:208:26c::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.18; Fri, 13 Mar
 2020 14:41:12 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 14:41:12 +0000
From: <Tudor.Ambarus@microchip.com>
To: <linux-mtd@lists.infradead.org>
Subject: Re: [PATCH 02/23] mtd: spi-nor: Prepare core / manufacturer code split
Thread-Topic: [PATCH 02/23] mtd: spi-nor: Prepare core / manufacturer code
 split
Thread-Index: AQHV+UVw1zBm6vyq6ku0E2TrNmSLbg==
Date: Fri, 13 Mar 2020 14:41:12 +0000
Message-ID: <25973821.h3VOFtvjmD@192.168.1.3>
References: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
 <20200302180730.1886678-3-tudor.ambarus@microchip.com>
 <c5ef3581-e589-1206-3856-dc4000c0b511@ti.com>
In-Reply-To: <c5ef3581-e589-1206-3856-dc4000c0b511@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: abfeb9f3-7d34-4d92-2bd3-08d7c75c9390
x-ms-traffictypediagnostic: MN2PR11MB4581:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB45817EC5F57CA3A3D8644990F0FA0@MN2PR11MB4581.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(366004)(346002)(396003)(136003)(199004)(6506007)(86362001)(53546011)(4326008)(5660300002)(4744005)(81156014)(2906002)(8936002)(81166006)(186003)(8676002)(66556008)(64756008)(316002)(66946007)(76116006)(91956017)(66476007)(66446008)(478600001)(6486002)(7406005)(7416002)(71200400001)(14286002)(9686003)(26005)(6512007)(54906003)(6916009)(39026012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4581;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LWL/dymZXlFhMLKmOJyLYZ30P1PxKWwLqjWMWzJFIEPfRGt+TVJyR6ma57wbdrlSo8PqhTqDANcA6unWdmZMQblrh6vtp2IAfkZgdhfqsAMuaWW/VKE7AgAgo6dOPkmZn7h6+ovbgKVKB54vSxIaO+KwRd+FkQK2Wq4ccR0xW9F3ijAcMPXR4FPDe2zIRv7cz8ukDl0FNpHZk1mDKfYxKYPejn8qQfzE0xPvpiKqt0v++dvLJJJMl4V7ikKqEZdK4j9brkwVoWURzRtrruZnuZt1Jm82UO5oCYton/M5pq1TS+3MyILvgRQ/5NZs8LvUxtawa31s2mJpd06KHvnRVnWlPh9Xb4bkZMpIQP18YXfp8w/yoQuU3u4DfBu6J1PV7lQa9WU6e4bgq+OLmQtJy2M2PukiwzaJcq+WSMKQoYvLNqY25TEHD0pXQne/ie8i8JIuOEwX4AFCrBIHJgvR+Ln/q1xhK+93RpUsG4jXsgA9ZvrR3goloPpIZDjvMY1b
x-ms-exchange-antispam-messagedata: drXGHBeEAYx3vBt40sRR74rJRqaWk2ULvt7FCmHom5NHvPS/x8a/bEXUOifPmGX2LmuxBXfUoZYSeA+N6kgOqRHtU9Is2Rw1T66vxyaSdjxvKN7wWUkNOL4PrKl4KbXZdBYFH9N4azXEumLXhIAsEw==
Content-ID: <D29F883B4B0D684CB6732488EA51455E@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: abfeb9f3-7d34-4d92-2bd3-08d7c75c9390
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 14:41:12.0833 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rPFeuGzLyVLtU0zNI65kwzfypp76xUgknCUE6l5PfvHalsMmt6G/hTgFhsQVkokJJLzIXlU7afZyNnrTB7xfcVCFE3vwKd7F/pzMmDhA0YI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4581
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_074116_555162_ADB48FA2 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kstewart@linuxfoundation.org, alexandre.belloni@bootlin.com,
 vigneshr@ti.com, linux-aspeed@lists.ozlabs.org, thor.thayer@linux.intel.com,
 michal.simek@xilinx.com, rfontana@redhat.com, miquel.raynal@bootlin.com,
 opensource@jilayne.com, richard@nod.at, jethro@fortanix.com,
 Ludovic.Desroches@microchip.com, joel@jms.id.au, nishkadg.linux@gmail.com,
 john.garry@huawei.com, swboyd@chromium.org, alexander.sverdlin@nokia.com,
 matthias.bgg@gmail.com, tglx@linutronix.de, vz@mleia.com,
 mika.westerberg@linux.intel.com, allison@lohutok.net,
 linux-arm-kernel@lists.infradead.org, bbrezillon@kernel.org, andrew@aj.id.au,
 linux-kernel@vger.kernel.org, dinguyen@kernel.org, michael@walle.cc,
 ludovic.barre@st.com, linux-mediatek@lists.infradead.org, info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Friday, March 13, 2020 8:08:44 AM EET Vignesh Raghavendra wrote:
> On 02/03/20 11:37 pm, Tudor.Ambarus@microchip.com wrote:
> > From: Boris Brezillon <bbrezillon@kernel.org>
> > 
> > Move all SPI NOR controller drivers to a controllers/ sub-directory
> > so that we only have SPI NOR related source files under
> > drivers/mtd/spi-nor/.
> > 
> > Rename spi-nor.c into core.c, we are about to split this file in multiple
> > source files (one per manufacturer, plus one for the SFDP parsing logic).
> > 
> > Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
> > Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>
> 
> 
> But there are at least two drivers being moved from spi-nor to spi/
> which would conflict with this change.
> 

I'll merge the immutable tag provided by Mark and respin this series on top of 
it, there will be no conflicts.

Cheers,
ta


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
