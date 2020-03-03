Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DD317701A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 08:29:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pWwmh2e1hx38zf+vf7aJLDF3pTQoGgAdby9iqZ+SCx4=; b=JZt1HI+Bc5ED6R
	r+KWQlXPQgUhGZWMcoQPdtqFQpA/9wJW7Sml1HiPCgfYKctlwitR0M3aX0fGwUREz/k90BSYMjmI+
	/JmpLb7/vQ9I96QwzlvHprs/4oSdpqWbZZtG7uKa/lZaTGgjx9FTacVR97SyZobMqyCpexBZdL2y6
	acLjW+qZGlLTxNJ3vcp46/TJbhIuNbpvuFMiYh0AuDRDPHsZK86wDJG8jgvcGqVxO5YNtr+LSmIrT
	IOWA6DtYt13iaCksXgPA76gMDEj9mck00BnHmMp1CkhG4Dn0rjBOuPZ9z/BBm1hKNu0C+U1YJfTaG
	eOKoKXHSWGMsbt2J2MJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j91zZ-0003IV-Hk; Tue, 03 Mar 2020 07:29:25 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j91zE-00036C-Tl; Tue, 03 Mar 2020 07:29:07 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: xt3JunAFjcRQCfUTjoF7eDN6WeE9QLvtQ8S8sO4KfULDI52cRF9Jt720TYlPVwdWvLJ6D2aFPn
 6jopnpkrBGw1TiJlsm2wERFF1V5YuaJNb9oJ3KZaxY9g1Zobl6fodiZlMWa9pevun+A6dyYZR1
 Dmqt1TfN+CxzJoaBBXcuOjkKVOaj0c9mQNEOZrOMvNFDTIx6N6uzU0uoN4/odcIb+uSehHFZ99
 ChQ715pBzITbAnJ4NSMlnlkU/NDCSn0WguJlEdRm8KX1rCOJRVt7caRNbnHyThiYq1KPhWFglB
 mIs=
X-IronPort-AV: E=Sophos;i="5.70,510,1574146800"; d="scan'208";a="65933061"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 03 Mar 2020 00:29:01 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 3 Mar 2020 00:28:59 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 3 Mar 2020 00:28:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=doLYj5Oy6yw1ZLIki10M5lKnxzgLOfY9f5u6GAaz7V5P6XeGdGZZxSla5MZzTANl6BgPBgY5H1uS0MySpTSh6Iw0BBQrqdtqOCLJNvKPyQ21/So+2r9cmkIZHVC/day7nISojBLcYr0XksIE6K1d2NvXjdMK3GKwvaBb80c5kJFGrBc0kR5FjxglytBOu3IUpYqoDFKXrCL5OQgOXZbDLaCVYLJutnKCqN6tbWqhmTxNGv12D7DMmeAUhxazJJIJgeUBWaPRX51uziWn6eRaGZVkbfcaa2OjbjSY2Zcccka9UVvMAYQ6Fvj9CokQlx2FZSJYQvqG6WfHIqL9rqNygA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=loJKUgkV+yJEeCn0MNtkFkgCZnOFY+P7VPl15wy2uwA=;
 b=R4AK0YpEZD/w4n5KEtuRq5B9vZtjBPGism9DTCiTlMfeDgAB9g1jfPQ+Dyj+miv72zcFVSIotdZKnZH/V/1LvAgTYUTNOVsxypmYHkmWOC/YW9UqnHb5uzeX0gxEos0vvf1zhYC1cysMTKf7vlIuRp4Twt3NZf3YoSEg24FYL3ZBBBdfagoVna2DDBFoHVNgpxe6tjeEcF05/zogkKhsp9zvTyq6Z5FQf2GOD21dq5hCJ3tGDdmzTZZ85fOCx4WoKO7ELNlgYSJKm+JOq7n7iIpXqQLzszMD8Ch8wkDfAzU8PW4CLrXyAcrK/3TXtyMCeGYA0K1dvl2rlfl6q6Bj+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=loJKUgkV+yJEeCn0MNtkFkgCZnOFY+P7VPl15wy2uwA=;
 b=Z0doOODJ7hMEdRvcAP0isrzluxcOK+rDd2JhyV+9HkarfT82wjYUlTNHbhSdAI6tHA60daExKmqDUOK7+3A69xYiYRrkERjUNbCobUjuqtqmy2mAI8lVSF7Eq45PyPN8Lmtwu8EAXLV8/fFD0j1yHzQyYUUUNNg4VUN/ewDzXTg=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by MN2PR11MB4446.namprd11.prod.outlook.com (2603:10b6:208:17a::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.15; Tue, 3 Mar
 2020 07:28:58 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2772.019; Tue, 3 Mar 2020
 07:28:58 +0000
From: <Tudor.Ambarus@microchip.com>
To: <joel@jms.id.au>
Subject: Re: [PATCH 00/23] mtd: spi-nor: Move manufacturer/SFDP code out of
 the core
Thread-Topic: [PATCH 00/23] mtd: spi-nor: Move manufacturer/SFDP code out of
 the core
Thread-Index: AQHV8L14v5uqqtrWhkmLNySK/DekJQ==
Date: Tue, 3 Mar 2020 07:28:58 +0000
Message-ID: <2530971.qIT9jh00La@localhost.localdomain>
References: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
 <CACPK8Xcvf2wSE5Y4E8Lbs6R9mHhztvNsr8vNrYaPX+kMMUhZvA@mail.gmail.com>
In-Reply-To: <CACPK8Xcvf2wSE5Y4E8Lbs6R9mHhztvNsr8vNrYaPX+kMMUhZvA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 105d98be-1530-41c7-6236-08d7bf448993
x-ms-traffictypediagnostic: MN2PR11MB4446:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB444698A6961ACA71F27AACBCF0E40@MN2PR11MB4446.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1388;
x-forefront-prvs: 03319F6FEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(39860400002)(376002)(396003)(136003)(189003)(199004)(54906003)(8936002)(6506007)(6512007)(316002)(71200400001)(53546011)(9686003)(6486002)(86362001)(4744005)(8676002)(81166006)(81156014)(4326008)(5660300002)(91956017)(76116006)(6916009)(7406005)(478600001)(2906002)(64756008)(66476007)(26005)(66946007)(66556008)(66446008)(186003)(7416002)(39026012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4446;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: x6JLCU/NO7EAvccu6rL6Wm/6xkEM/7XEaV9HixXmOFdlM4teh+hfHg2g1e7wioMemYcsn1gFtTk8VI66ygIafWglUVXAa5NcbbWzzwrgjEvChcuzHSxGPXFyA08Ue7woU9SBFd7960Dfystol+ZYIjfFgL+VhbzKYo6QNTAO+aZInZGWyfcW3PTWE+cyZ7CIzdCP47Hg961eQ6kHe9SGDkrb92vjsgjoQsspLzHDBQ7LqBGFem2TwIhuHuWe3Ad8RtgKAi3y9dI/cBGXepWHL6Y3X8BgjmipdNArnijXJApoHEch9ct9rrGGdj2eG6fN9DVwuRYkINZ9gRpgZrbUU+GsnIhyrV5PGDHd+9xv/7ocFRNq5/QCHllJqWlbUtpTyKGIFutdjV05OcdXaG+lVlv4op4Vs7d8bkfjsgz56tW566FgIjLGJAI8uxOnCTFbUiLYpLA9AWbtxlPgpleXhpskPEEI/u/7RxaXge+zxVr1hOk7zxCuAI+F9d/4vmj7
x-ms-exchange-antispam-messagedata: lbICGP5ig0yn1G9yp32nW7QrRXqQCz3xeP78MqVLSWiHtCkyUEzHMALwdymnlX/6FNgfHaAbMCNhqlIbmiwe7r/ooOzsmUTAcsOG4/4RKRSO/SvBEZlgC45u8b68xhWMxZT6AOB9O+UfvS4xyjdJew==
Content-ID: <B2949B1BA833154EBE551F301BC8379B@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 105d98be-1530-41c7-6236-08d7bf448993
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2020 07:28:58.0954 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dzD4mRG4mKdg1z9gH6fjIGD1vt/JXYSFd5SXoNdLF8zck6oIWZAJEe1pw6Ar3WYuzFHzNXyEIpjCLS+1K4RXai5pu1QrLD2/aSlkbbNdz2E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4446
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_232905_020251_AEE996ED 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kstewart@linuxfoundation.org, alexandre.belloni@bootlin.com,
 vigneshr@ti.com, linux-aspeed@lists.ozlabs.org, thor.thayer@linux.intel.com,
 jethro@fortanix.com, rfontana@redhat.com, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com, opensource@jilayne.com, richard@nod.at,
 michal.simek@xilinx.com, Ludovic.Desroches@microchip.com, allison@lohutok.net,
 nishkadg.linux@gmail.com, john.garry@huawei.com, vz@mleia.com,
 alexander.sverdlin@nokia.com, matthias.bgg@gmail.com, tglx@linutronix.de,
 swboyd@chromium.org, mika.westerberg@linux.intel.com, ludovic.barre@st.com,
 linux-arm-kernel@lists.infradead.org, bbrezillon@kernel.org, andrew@aj.id.au,
 linux-kernel@vger.kernel.org, dinguyen@kernel.org, michael@walle.cc,
 linux-mediatek@lists.infradead.org, info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tuesday, March 3, 2020 9:15:31 AM EET Joel Stanley wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the
> content is safe
> 
> Hi Tudor,

Hi, Joel,

> 
> On Mon, 2 Mar 2020 at 18:07, <Tudor.Ambarus@microchip.com> wrote:
> > From: Tudor Ambarus <tudor.ambarus@microchip.com>
> > 
> > Hello,
> > 
> > This patch series is an attempt at getting all manufacturer specific
> > quirks/code out of the core to make the core logic more readable and
> > thus ease maintainance.
> 
> I tried to apply this to linus' tree (5.6-rc4) but it had a bunch of
> conflicts. What did you base this on?

T:      git git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git spi-
nor/next

Cheers,
ta


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
