Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC28ADF743
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 23:05:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xzq0N4Gc+T8tTS1oWj+2O9xHTz8J6jGct1qS6BNhGks=; b=hftpVeppJlDYoJ
	FDyRPA+1V6o3SlDhw5XAZwq1shxTMXz8cHV8sQ+iA2Tch3Diy1v2tunXmm/jpiOVanfXQl7+4w9FJ
	8guIkJq0bmGXRgalpPvI3EcL++8VT6N5CWWoOaq6Gt5+HOa+s/qyZAR5ppTNohdzBTMjC1hIlz+DO
	w50MdGgwWoj6KpGrJnl+E95NUxOyz2Owhfpfsel+qc4sf7GebQb63FHGEHFzv4XkSGFuk6P7R7UlH
	LAOxrbieTn55aN2QrWL79QOmiJjPXXnZS04FWa/9dSB+txF59/HpvTuO5hs1Qkee3lvfvXp03epKM
	+t2SVX7GHdT4piT1hv2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMes4-0002FK-DW; Mon, 21 Oct 2019 21:05:44 +0000
Received: from mail-eopbgr40131.outbound.protection.outlook.com
 ([40.107.4.131] helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMerv-0002EB-MN
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 21:05:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D5VYTA21ulp2UzWB0dTDrfOlTouBelHWE6uFZF7hev1bDCoAu+ydmzmwRAMj5n3BiRvuIsvWD7JD+C/1W+7071NnJ5vHUoS6oq026tbndVARmLWv0gHluK2qh8S+pOAQpRDa9ou/TvEo58AddbZ3r0hklHndA2GXIKOIsYTJ0VlLuzvnMEcRmKl7Nqh8Pu8uMxuaFiTsxzy1JkpOBX7LwRdi9RbeSnQspPYDjLTzbRQU6ZSeiU1GckC8qyfAWiA5ByZiH0m2SYR/4yYCUjYoYeLRTKfem9qw56eFAOcGZOH5vsMkMGl3uNCcgdmNUUVXIxMZmXe88DegURT7Td68zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y07oKaaqKSnHSZU7ZErPJ0lOSrDEhxx/ej7WX712aP4=;
 b=XVz04L97rzkWK5Lr9m6vbvVJiLkypb+h5ZEec4S8SIBDWHYa40v6bpBtjKnh9x5kVwYybqYXsM49NOcc/ose1gtbvI+N9LJdtI9HpvN6Wej9U/riF0iSwq9ibureeTPTiO8bfwmIKItYkpGsCJf5P38fpxkz/eDeeoju4mFb0cEsOYhpbFrBIzRjwN2sJZTKiZwrXfXxq2QMFF/f8ebgZAXaz3cHVebhNpNiNYNosBNkQ4JBtgxenwYiKWWEsD2CtvFLFsZIfbi89hSYZ4t3xZ5MJkbFnmjTCy5+x6QyoQzai6eyOszoESC/VJ/yRVV1R2fS1Yb50kx8P4htGgHmQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y07oKaaqKSnHSZU7ZErPJ0lOSrDEhxx/ej7WX712aP4=;
 b=JijF89Je7rBmLGn2k9hrYcRZkb6BUZu7RBFmv3S/K1JaIbTzLGzf5X6ioijuskJTLmxvKFg9bKQtosEmWKiyaB85tYrEo9z9KMorMQVdjazygY8VzFJcREkqSfzsSDAT73NwXhnrHuM/1QEImLAJR840+tI+xirZybjkP3xmJoI=
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com (52.134.66.158) by
 DB3PR0202MB3513.eurprd02.prod.outlook.com (52.134.68.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.21; Mon, 21 Oct 2019 21:05:30 +0000
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::c5b8:6014:87a4:1afe]) by DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::c5b8:6014:87a4:1afe%7]) with mapi id 15.20.2347.029; Mon, 21 Oct 2019
 21:05:30 +0000
From: Peter Rosin <peda@axentia.se>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>, Brendan Higgins
 <brendanhiggins@google.com>, Wolfram Sang <wsa@the-dreams.de>, Benjamin
 Herrenschmidt <benh@kernel.crashing.org>, Joel Stanley <joel@jms.id.au>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Andrew
 Jeffery <andrew@aj.id.au>, Tao Ren <taoren@fb.com>, Cedric Le Goater
 <clg@kaod.org>
Subject: Re: [PATCH i2c-next 1/2] dt-bindings: i2c: aspeed: add hardware
 timeout support
Thread-Topic: [PATCH i2c-next 1/2] dt-bindings: i2c: aspeed: add hardware
 timeout support
Thread-Index: AQHViE2KU5aZojIjkUqCdR4ab3gQm6dlleoA
Date: Mon, 21 Oct 2019 21:05:30 +0000
Message-ID: <0a629f7b-b829-c332-27d8-dc825205ff72@axentia.se>
References: <20191021202414.17484-1-jae.hyun.yoo@linux.intel.com>
 <20191021202414.17484-2-jae.hyun.yoo@linux.intel.com>
In-Reply-To: <20191021202414.17484-2-jae.hyun.yoo@linux.intel.com>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-originating-ip: [213.112.138.100]
x-clientproxiedby: HE1PR05CA0367.eurprd05.prod.outlook.com
 (2603:10a6:7:94::26) To DB3PR0202MB3434.eurprd02.prod.outlook.com
 (2603:10a6:8:5::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peda@axentia.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 91d0eb2c-01b2-461a-2091-08d7566a67be
x-ms-traffictypediagnostic: DB3PR0202MB3513:
x-microsoft-antispam-prvs: <DB3PR0202MB3513DAFA5FCC7AD4146097BCBC690@DB3PR0202MB3513.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0197AFBD92
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(136003)(396003)(366004)(346002)(39830400003)(199004)(52314003)(189003)(7736002)(31686004)(11346002)(8936002)(71200400001)(71190400001)(31696002)(5660300002)(52116002)(2616005)(446003)(476003)(508600001)(305945005)(486006)(14444005)(3846002)(25786009)(7416002)(6116002)(256004)(316002)(76176011)(2906002)(86362001)(6436002)(58126008)(66556008)(66476007)(64756008)(66446008)(66066001)(99286004)(110136005)(4326008)(65956001)(54906003)(65806001)(6486002)(66946007)(229853002)(36756003)(6512007)(14454004)(26005)(81166006)(81156014)(186003)(6506007)(53546011)(102836004)(6246003)(386003)(4001150100001)(8676002)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DB3PR0202MB3513;
 H:DB3PR0202MB3434.eurprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: axentia.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mJqj2ZbhUlIhrfXqL98P05v/azoe2H35E7KthchOMKKzRLo01+l0N1w5ELQQueY80Cdy5mZONO6GZdcrM9KhO2shn5gCvX3l6xQFzuwTPjmxFdu/dI7s2CoOL3YGv8GdC5tuW91RQL1tbI7QjN/0kleF8C09RM0cvesWDa6jdVy6/MDf2ZsZfZT2rG8YxAah8le4WACndK/nT6AN5u3NvxiMwQPfEt9QUrc3jyS8/zsQGC2am6OzI8aQz2C4qVTauhm6teBV7OEY2aRtY7aqNRFiUKzV/7y5g9uCKMBZ7E0xm0hkFaTmVVI43O9PtxmYIMmijLrs6zHNHmTD2EPR+Pc41elp3xKpsDtEcprF3FCMQe2KVY61rPIHTmR3BaatwcaBJgXysZkB9oW53QY12LOR03Ulp1BNW3+IpvWVtG9yOHNgZtkSKq2j/Mv/J1Gh
x-ms-exchange-transport-forked: True
Content-ID: <08F8C0D291CEAA46A8C814AED28C379A@eurprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: 91d0eb2c-01b2-461a-2091-08d7566a67be
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2019 21:05:30.4539 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qjCxwIOnZ9iL7XFNToBawV2OwLWNd5V7TOhZA8Z9CNeEl2o/DBABErzUMOKG0b0n
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0202MB3513
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_140535_924307_3BA111BF 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.131 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-21 22:24, Jae Hyun Yoo wrote:
> Append a binding to support hardware timeout feature.
> 
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-aspeed.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt b/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt
> index b47f6ccb196a..133bfedf4cdd 100644
> --- a/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt
> +++ b/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt
> @@ -17,6 +17,8 @@ Optional Properties:
>  - bus-frequency	: frequency of the bus clock in Hz defaults to 100 kHz when not
>  		  specified
>  - multi-master	: states that there is another master active on this bus.
> +- aspeed,hw-timeout-ms	: Hardware timeout in milliseconds. If it's not
> +			  specified, the H/W timeout feature will be disabled.
>  
>  Example:
>  
> 

Some SMBus clients support a smbus-timeout-disable binding for disabling
timeouts like this, for cases where the I2C adapter in question on occasion
is unable to keep the pace. Adding that property thus avoids undesired
timeouts when the client is SMBus conformant without it. Your new binding
is the reverse situation, where you want to add a timeout where one is
otherwise missing.

Anyway, since I2C does not have a specified lowest possible frequency, this
feels like something that is more in the SMBus arena. Should the property
perhaps be a generic property named smbus-timeout-ms, or something like
that?

If the above is not wanted or appropriate, then I would personally prefer
aspeed,bus-timeout-ms over aspeed,hw-timeout-ms. To me, hw-timeout-ms sounds
like a (more serious) timeout between the CPU and the I2C peripheral unit
or something like that. But I don't care deeply...

Cheers,
Peter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
