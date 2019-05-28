Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F6B2C524
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 13:06:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lqvA+TPKNo159rAYRlbvXinODuEhPE+71hv+VvVZqIw=; b=XqsnRHTQ6DtdGY
	PWlX/+megDKZxKTCyF37B5tKFoyyz7sNxmUMR2JOwU7R1sejtak05LS19nk6WWGtSuBBH7t598fUt
	WdpiYhw+oTWl35laHSlhNPHSfqfeJqbtSyHR/7KneWJGoTiZeH6fO3l0YEPyAbCgA78PWk7cwHuut
	CwxPLbKQltjvrHndDG+I4Ux70oEPvY7gwwwaRYLZ2mtvgJSxjUNYT3BqTdcg/iUgVPR7KsGwCoTcA
	zCVCNXvQDSHPjKVBLVKpzq9nEPx9kTWNVqp5TcS8Chg3qxv9yRcnvV18I3L5S5EYSJeNcKfUPbyXw
	oVnWlJ6NQ4u/NxNCHKqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVZwK-0004AI-Vm; Tue, 28 May 2019 11:06:44 +0000
Received: from eu-smtp-delivery-151.mimecast.com ([146.101.78.151])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVZwC-00049F-O7
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 11:06:38 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-51-I9st8qMRPWGW6eWon_ML-A-1; Tue, 28 May 2019 12:06:27 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Tue, 28 May 2019 12:06:26 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Tue, 28 May 2019 12:06:26 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Tony Lindgren' <tony@atomide.com>, "linux-omap@vger.kernel.org"
 <linux-omap@vger.kernel.org>
Subject: RE: [PATCH 01/12] bus: ti-sysc: Support 16-bit writes too
Thread-Topic: [PATCH 01/12] bus: ti-sysc: Support 16-bit writes too
Thread-Index: AQHVFIXZIpY/mCelSky05+1Jud+wtaaAYYxw
Date: Tue, 28 May 2019 11:06:26 +0000
Message-ID: <5e9a31dfdfd843469c51106fce9ea353@AcuMS.aculab.com>
References: <20190527121348.45251-1-tony@atomide.com>
 <20190527121348.45251-2-tony@atomide.com>
In-Reply-To: <20190527121348.45251-2-tony@atomide.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: I9st8qMRPWGW6eWon_ML-A-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_040637_085468_96E0E07D 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [146.101.78.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Faiz Abbas <faiz_abbas@ti.com>, Keerthy <j-keerthy@ti.com>,
 Suman Anna <s-anna@ti.com>, Rob Herring <robh@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tony Lindgren
> Sent: 27 May 2019 13:14
> We need to also support 16-bit writes for i2c in addition to the reads
> when we start configuring the sysconfig register for reset and idle modes.
> 
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>  drivers/bus/ti-sysc.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
> --- a/drivers/bus/ti-sysc.c
> +++ b/drivers/bus/ti-sysc.c
> @@ -100,6 +100,13 @@ static void sysc_parse_dts_quirks(struct sysc *ddata, struct device_node *np,
> 
>  static void sysc_write(struct sysc *ddata, int offset, u32 value)
>  {
> +	if (ddata->cfg.quirks & SYSC_QUIRK_16BIT) {
> +		writew_relaxed(value & 0xffff, ddata->module_va + offset);
> +		writew_relaxed(value >> 16, ddata->module_va + offset + 4);

Should that be + 2 ???

> +
> +		return;
> +	}
> +
>  	writel_relaxed(value, ddata->module_va + offset);
>  }

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
