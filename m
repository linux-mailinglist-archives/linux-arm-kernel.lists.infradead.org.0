Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACDE6184296
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 09:28:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O3MR+hgKJ8/ZlQGHoQoepat4mXil8QynFOKSmwzT2kM=; b=VIGqfYL4c5dnQZ
	hnWvaAXnispkxVXYmX4W4ghWwcp/oqEHAh1PnGXJc4ukaa4zwwalaVmzdHZOEQe174WNTaCXpFO/w
	rGpPjEosIVYWOzStKCpBbfguaRG8thFnrYU7mH+jRqRskAIdN492v4OW2VZbmMlqEJ3ka1viAflUp
	PZdzkRkKq/o9mijZZNqYdZ1ctn6VJQ+U1nzxmKoks22h3RCWBq0jDgyeEh306I4GGwAMp7spLOpnO
	583hO8b/zxqBcUJp6KJJGHkBhnxsz3T191MJZtjhOYsgV4nJzcVhpA+uEXrhVnhNQa1caUdjIAskv
	DE7uCEN8YJN7qTkRhHiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCfg4-00075R-Vl; Fri, 13 Mar 2020 08:28:20 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCffa-0006ry-Sd; Fri, 13 Mar 2020 08:27:54 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: osHwBW0p4Lien6hUp5ADj52VxDTQdETFzFMfXWod8GKRZTpJO5M3ASHi+0SEqOhXnPrkbUXXOl
 M/gUu57piQKGkDep6dCAyN4pxZLdfwuqNC/cFlEcO87jlL3WdU/yH3JWEDpUd8CJ+BXrFdlZfZ
 B98bUM5XRUBk8tdGtNQ0lcutxBIrB3FIrq0l5sWwr4MzNU2HzR/2C7sJvNGIWGTLNT/4whSxqG
 SX6AqJW/wQXd0M2WmnAmSU73xzJy/LHVFrP228q8NGr+qmLoQE4ttLCgCFWr+FR34J6DlTnVXt
 MOA=
X-IronPort-AV: E=Sophos;i="5.70,547,1574146800"; d="scan'208";a="68841831"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Mar 2020 01:27:46 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 01:27:40 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Mar 2020 01:27:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AzrWcrRkYbYibr0YmBb7++qn3CDVqg3EaKJOXLp6/cK5cDAWxCWyNO65pWJ4JnhU2mEiWonMCNXTYhahleBd+sBL6LWhIolxZXHoeBzxl/urh4U+YlUoH4CHjPGHUunzP9NOlMTC8lLAWeaIKIYYRz0rnwl3xtahH8Ov8ce+68oDJkoQQRYxIL0Os8lj8fMkYK/UGDJ52h3H31/9d98Ab3bcapFh2MEz540M+Qgwm4s8QZOzoPwf7VgJER4sWuDjHGphSjF5YtBsTQyL7yd8xFck9R9F5BERcIdzII1ansiN65FJEfNwAtYD8kIGknZrSTdkipgrXhCTj8+ldxPxzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=13BqfCo5ZG8SXwhcRfSDaIjmn45FUGX8rn/89BrBvnU=;
 b=BB3qbhatQ4yBNRCiPNxd25gYVM9mbmAV4rHQshGZTGIT98c+hCf/P18ppJrClgWd/776jJVarn1+lbbgkiv9HrIYBBN9WB9+GvsZrV2xVeoby49Wy5PJo9tnV02KtGwYSrC2J7hQBtHx5LaTW6ol6wqsZPzy7grTDwndmVa3cHZZkKEL/BPXijUmgBD5OwhvePFjOEXny7wZOJ0EwV+uHqQVNwDPzN/ySF+u/zOrZZaIoJPwr+xUlsgeGP5o3nEbw5WX6+wYJ6lFo5skUOa9vI6lJ94LWg3egVEU9jdh0DoIWhfQEWijumJ4d7EVvjeoPBu8p/nJgk9FP28zSfSlVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=13BqfCo5ZG8SXwhcRfSDaIjmn45FUGX8rn/89BrBvnU=;
 b=kso01/uSl3augBpALAEBqkHjXBoMxKbvI7RouFpK1bYLEqshq7Qr0/MVZqma7HVAIbzERVenjQE81eiPQDFE+ymE5S9btiI/0ilyo4tjTNWTD6K5wwogE0RUjX429HsuFm4W84HdP1661NUWLBHWjSNybqp6/NmD7EudVm+vu+Q=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by BN7SPR01MB7.namprd11.prod.outlook.com (2603:10b6:406:cc::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.13; Fri, 13 Mar
 2020 08:27:44 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 08:27:44 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>
Subject: Re: [PATCH 23/23] mtd: spi-nor: Trim what is exposed in spi-nor.h
Thread-Topic: [PATCH 23/23] mtd: spi-nor: Trim what is exposed in spi-nor.h
Thread-Index: AQHV+RFE8CpIrLOZFkGknCS7bSfDWA==
Date: Fri, 13 Mar 2020 08:27:44 +0000
Message-ID: <2602880.RMCP8WUqzX@192.168.1.3>
References: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
 <20200302180730.1886678-24-tudor.ambarus@microchip.com>
 <fcd5742c-70df-7e97-c345-08dad6043ecb@ti.com>
In-Reply-To: <fcd5742c-70df-7e97-c345-08dad6043ecb@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 41d0c98a-4850-48e4-a842-08d7c7286781
x-ms-traffictypediagnostic: BN7SPR01MB7:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN7SPR01MB75283EF8BA078DFF79E5CF0FA0@BN7SPR01MB7.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:747;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(136003)(346002)(39860400002)(396003)(199004)(6506007)(6916009)(53546011)(2906002)(71200400001)(316002)(26005)(186003)(86362001)(7406005)(558084003)(54906003)(478600001)(7416002)(8936002)(81156014)(81166006)(6486002)(66946007)(8676002)(4326008)(91956017)(66446008)(64756008)(76116006)(5660300002)(9686003)(66476007)(66556008)(6512007)(14286002)(39026012)(31153001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7SPR01MB7;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i2iGpXrEYKrMQooQ5XiZR/fOtSxDJ2TORLklxQVAerixQOwhaIN8cxw8snEe0JoI/gfAsJwrcwS+5YxeXzbdlNy3kRMs1aYYuLIC0jVmwPrqjLC9pC3/qk5JcOE1KRiDuilessT3cUSY7Hk/Sggexli7ryumoggTl5rd4bUSORwIW/1F5efMlM19yOF5fu+8fmcX2mv6MCTXhVDWXSptrOCY/WBXOOIPLZi47c0CtmgkVCUQrAHXpw/RjOOCeH016uWMur1vFI8SSopkxuViDcLMe+cgp0j+Lf8OHVWm9Hd7xF3ivylAqVykO0f1FBv/+fFlxixokMw1NyjOt6518icXWaDEC9NcZ1mXkDRsKenKakZLHv1k5cCBxyDf/aOC9N7YEcJBoRjGrZC2JTcajEZ2q8WM4AE92D8GZ+K86co9ZlyBP+5j+2mjZeq0z+IQj8Ckr0Kmpj7mqxZpgeFqWMPwHMLJGIo8WIDPQCUxnRLPSkV2CsKAj9x50LL+6NygtND+BPN8CRea8bXV6s5l2w==
x-ms-exchange-antispam-messagedata: G8+uww4sQaR3FHlhGFRmt/oX1lcpFrlJiCrU8HedeclZO4fxNbFBmgpZm8gBEcp0+w5gZ6XaTldmVAsfdBUDpBvQdUeW0i8NJS4R9GE++d2M+aq3ehX4fAZdHC59tMoQYkCvuzln8C3or+FLEwA5hw==
Content-ID: <766D46C1B0192D4F955576002231EB0B@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 41d0c98a-4850-48e4-a842-08d7c7286781
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 08:27:44.2426 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: udKsMPt4j4TcRfZ1E/ZDIGu+3xUayzJ6XAYgvnBhNPPTgQiYl9HqN7weLlGLHdt5UOdhsICjcVG8+I6JG2BVWP3KtFBNc2UDJDWPd56To34=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7SPR01MB7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_012750_991808_ED9DC48C 
X-CRM114-Status: UNSURE (   4.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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
 linux-aspeed@lists.ozlabs.org, thor.thayer@linux.intel.com,
 jethro@fortanix.com, rfontana@redhat.com, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com, opensource@jilayne.com, richard@nod.at,
 allison@lohutok.net, michal.simek@xilinx.com, Ludovic.Desroches@microchip.com,
 joel@jms.id.au, nishkadg.linux@gmail.com, john.garry@huawei.com, vz@mleia.com,
 alexander.sverdlin@nokia.com, matthias.bgg@gmail.com, tglx@linutronix.de,
 swboyd@chromium.org, mika.westerberg@linux.intel.com, ludovic.barre@st.com,
 linux-arm-kernel@lists.infradead.org, bbrezillon@kernel.org, andrew@aj.id.au,
 linux-kernel@vger.kernel.org, dinguyen@kernel.org, michael@walle.cc,
 linux-mediatek@lists.infradead.org, info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Friday, March 13, 2020 10:13:17 AM EET Vignesh Raghavendra wrote:
> Should we drop SNOR_MFR_* macros as well or do you see a neeed for them?

Good catch. Cross-manufacturer code is unlikely and discouraged, we should get 
rid of them.

Cheers,
ta


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
