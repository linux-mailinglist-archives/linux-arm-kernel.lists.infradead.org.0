Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76453104017
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 16:54:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k3jfT2GAcG0lQPUhVOnCiUsDyOET8U9BdLbY6TQoggY=; b=huudtSS7ODdKRr
	3Apq8kn1sr9OBPtCC0J3PXGQyrZ9hmtmQcxqzJxNSWJEPLXiI6p6h+9cJebySMKHX/kqsXCxx7oeE
	pd0qi5wogv+LF302y9Oq4je5bzNETn/hbZn1VOaqMxWi8YT+L2P4rRUmbV2t7OWo984yAQ0UdVJiE
	dQZtrQ+2HWZqDnFESRqH8rad3DzyOFXFP7MvnEwGD6o0+zAnpIzumttgFS4U6E+zxWJo40+akMbqN
	BXo/hBJggxOk1JvXDqQYdin7nhzGRSB29l30Yna63tXyjPmTAn6zQIczKMK4S4Cs/qES00gQkTBMs
	nqcySVlJFh8GCBLGcF1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXSJH-0007VN-D7; Wed, 20 Nov 2019 15:54:27 +0000
Received: from mail-eopbgr820073.outbound.protection.outlook.com
 ([40.107.82.73] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXSJ4-0007Ul-Vj
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 15:54:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YqD2cznlrqUV0x49LqzVoMTrx7rh+EkW09iWBuXO3pZXQWunGct5QcNDJfttc0hKPsafhGyJ79OpqUTcOYGQeOopHG90bh8eZUFPIo6AmCC+GB34x04WAIQ6FwXqDQzblcJtjKWNMRFGiLlg6HRn1TyiKAYY/MIuexDY0xSVVFL9mVULmhUYvYz9gz0KYknIZJ7pddFk9BISITZJ7UFlqJSZYipxCss6q++DPi6RUZMvJS/mtYr0108DxZbNVeGw8Lyp96V2N4t+xgHEOkAdb+UgzVagjbRxlUsiGZ9dCr6fpmhRP5/FSF8m4uRmYuzaWD3hcUEudfcMUmjWWzi7wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lf7dPVuDhaZUiJRS47A1XJGZv3DlCLTx6vBVOc6mfYI=;
 b=NiXVYW1+se3ZScwSfRtYbZtV1uWYGc7UadbigUyl+YVxNr4MRpCik3AfvSBjEGcHnQLZREmmv69ycl3tzEuxUSBNZCwqNyPM31lBog0pfzrzyc6C3Ve5QuEBfZhtRE5Anb6NnaCDkjxDFNAJYTMQkXJiUOIF9e/+hZZoc/l+EEBzV7H+dhslElpwcRwf6LS366tLtchK6/a7P2xcrmxAVut2XQbZ8RJjQfi/tNUUlzycDHhKTGFJBfmlu8aFh0xvSnSs67bffLnVdcbR+7JN3Rm5Bm0dHwbWpiDwSKiItSqG7/HXZ+vtERvFB64lPQAnuy7MXovWrGO+a0eSeZARCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lf7dPVuDhaZUiJRS47A1XJGZv3DlCLTx6vBVOc6mfYI=;
 b=kSPyrNv1GqIENY7Ksk6PFjvrH+O3+ipmonhfweGdrM5oHeNtSjl5j6z04o/T9vqHcW1ysD7SBIAPdYaxbDO9LDaFupooo58esQ5EEYPTBPmp+KjKlHVLchdEgXWzrsVBpo57TsErxrUveyBQyiqrNIeOZumAxWPnOFjL/D/eDLY=
Received: from MN2PR02MB6400.namprd02.prod.outlook.com (52.132.173.155) by
 MN2PR02MB6815.namprd02.prod.outlook.com (52.135.49.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Wed, 20 Nov 2019 15:54:11 +0000
Received: from MN2PR02MB6400.namprd02.prod.outlook.com
 ([fe80::c413:7dde:1e89:f355]) by MN2PR02MB6400.namprd02.prod.outlook.com
 ([fe80::c413:7dde:1e89:f355%7]) with mapi id 15.20.2451.031; Wed, 20 Nov 2019
 15:54:11 +0000
From: Appana Durga Kedareswara Rao <appanad@xilinx.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>, Srinivas Neeli
 <sneeli@xilinx.com>, Michal Simek <michals@xilinx.com>
Subject: RE: [PATCH 0/2] can: xilinx_can: Bug fixes on can driver
Thread-Topic: [PATCH 0/2] can: xilinx_can: Bug fixes on can driver
Thread-Index: AQHVn5uyLMKsi4xLzUa9hf24vHCkTKeUAJ6AgAA1G2A=
Date: Wed, 20 Nov 2019 15:54:10 +0000
Message-ID: <MN2PR02MB64002F223821E7BD940B4E54DC4F0@MN2PR02MB6400.namprd02.prod.outlook.com>
References: <1574251865-19592-1-git-send-email-srinivas.neeli@xilinx.com>
 <e985fd5a-9b0c-f273-d28c-14515dc25e5c@pengutronix.de>
In-Reply-To: <e985fd5a-9b0c-f273-d28c-14515dc25e5c@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=appanad@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8a28c78f-40eb-4754-4f04-08d76dd1e279
x-ms-traffictypediagnostic: MN2PR02MB6815:|MN2PR02MB6815:
x-ms-exchange-purlcount: 1
x-ld-processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR02MB6815BD5AE9D6E3E778648EA3DC4F0@MN2PR02MB6815.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 02272225C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(189003)(199004)(498600001)(33656002)(107886003)(66556008)(66446008)(64756008)(66476007)(66946007)(6246003)(4326008)(486006)(3846002)(476003)(81156014)(81166006)(53546011)(6506007)(102836004)(6116002)(7696005)(8676002)(76176011)(8936002)(305945005)(7736002)(5660300002)(26005)(66066001)(52536014)(11346002)(4744005)(446003)(74316002)(110136005)(6636002)(186003)(14454004)(54906003)(966005)(2906002)(25786009)(14444005)(256004)(99286004)(55016002)(229853002)(76116006)(6306002)(71200400001)(71190400001)(9686003)(6436002)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6815;
 H:MN2PR02MB6400.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XWb0sggiKvI4ccbdtWZt8eqFB/1G6+YTU609bOM8zAZ8Et/mGG2DpfqrqmEBNIh2QOhnd3//RuPuMAqWCnCsrY4w5A0EzG79Umrb55Cg4jyZDLBWdyR7s1wV9oXyUctwC7hKU0ZlYbFU+o3i2uUWcoS2Cg7pnL3mAV3xMrjT5r64dJCKQLOnZqi8HIgHmXJZJjzR00BOIqNx1O/zrw8cILgEgUHntw2Znbn7TkOY1ODq45GyD+FnK4VA2yQIelqattUlQ+wQaYZRJs/UU1nXe1LJkPdOXsP6acDrMqByNC50t8zD+SlRD1z32+Sh8kJICc4dhuipmq27WHggkBrYSFDPoemHulsNNo3PIXEKxbrSL6OXahzO60gex9Dml7ZTQKGmnvpqvMvpEB6Q5l6RGYCWWaeGTK8Q7y+OHLwEsWCY0nwNhMHGwnAVmqz4yjzMggW7C4PSTSaF06IOieObvI2cQzt5rvk4jgjrFigUDzI=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a28c78f-40eb-4754-4f04-08d76dd1e279
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2019 15:54:10.8979 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cJPzW9nzmi2xxiGsK1rhL4WceVYrEUS0/dR+k+h/WIviAkpArOL2R63eWxbqGDEvdxFWfRjw1mW3246FG7N/Zg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6815
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_075415_022971_EB40E19E 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-can@vger.kernel.org" <linux-can@vger.kernel.org>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>, git <git@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

> 
> On 11/20/19 1:11 PM, Srinivas Neeli wrote:
> > This patch series does the following:
> > -skip printing error message on deferred probe -Fix usage of skb
> > memory
> 
> BTW: I'm looking for an official Maintainer for the xlinx_can driver.
> 
> The Maintainer will get an entry in the MAINTAINERS file, should test new
> patches and give Reviewed-bys.
> 
> Is there a volunteer?

Sure will volunteer the maintainership, will send the maintainer fragment patch... 

Regards,
Kedar.
> 
> regards,
> Marc
> 
> --
> Pengutronix e.K.                 | Marc Kleine-Budde           |
> Embedded Linux                   | https://www.pengutronix.de  |
> Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
> Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
