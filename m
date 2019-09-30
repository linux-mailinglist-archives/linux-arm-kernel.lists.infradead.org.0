Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CECC259B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 19:01:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gO4eWApYvCU68XNs8V713OmniBDjK+GAKk47kjAGJDU=; b=mfNFpcbDOufaMv
	Bob8V4fJB2yJ4ggKqj//YLtTgxepKMb9R8iGtxPCS3vmVliJnjWRMTmh9AQHW+tUxGFXMOKd+l1Hx
	IKlpvRhGEyonedhkS6wE6F7oIBIzw4n9GOBkLnuswcKSSEvSXnJhQyKFmjaSajj5beNMdzBuqgxga
	pUDsShtmI8y+fzeNbqasxwkAjB/AdpwBoeBnlfTRoVhQJUNnlg+bED9lYBS1uCpebGvOUtM5Zv/lG
	3Kx3yJcDZMUH5UG66osIHvMtPdB+mAJ8SbHxC9Umj4rb4dBir1OjPpWQNsNTzZ1FZ1lyQfbMwWvx5
	Aq3MqhLoeXIaN/17aJkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEz2r-0006uj-4v; Mon, 30 Sep 2019 17:01:09 +0000
Received: from mail-eopbgr1410100.outbound.protection.outlook.com
 ([40.107.141.100] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEz2h-0006ta-CI
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 17:01:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XT7p4V4ViqcR87H9sjrwIl5iR+QE4OhQTbGluMEdccKgOLolAQUYiNh61nOa+X7e9Q35p9pZwYsNUH6Pc9q3D9XvBQaLm028su8Tne6gcGV5rW8jU50JcpLJFLa3Spd5gODM1JwoFcMjI8j9lwBHIQvj2MWTxyTYVFl2lmexi8FW37QK33/000Y0nMsiL4agnFsf1BT50WMO2Ws2WiYbxH56DIHLnCGyib86jEnclWKqBtD9IoVtU3N2aZXeBdz+qh6lM7es0FVmNA5Ec3eW0dMni0AooeI0ngZztL9PDcNi7+ht96X90dOf2NQPxO5g/ZqSB/vPHWYUBrYl20n9Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dbbk1gKuUgnjeB+wZCocJfKsBvxRPmFOtdswhZp83ZE=;
 b=n4F6hnNdmLgS8e5meOr+Z9XdhRV2xJnBkF8LxRovt8ZWfejoshcwNhLeVCp3P1UgsQe1RBzQVHoJHjYr18xNG6Ccw45ra3AC2wfZ8nIRsIpgiGnITExib5odZxxoOLvMA1NX9PXaFBa+7i7ylY7o/MvRzQlnBOW4OqgSBsIcy4C18/Hih6zAmb8vMKT/DpdwIDNBN6HJtGKcFylXO5Ut9RBaJZ9UrrCP5ro+i/2SfZTi6ypbOtoUylcBuixjz9Hsx0IMgOzWqVowDgeJJc/E5YNrUhke1m5YQFTZsYd/F0ZYnOfVmcbYf4G9Wwkn5qs6bBT9prL3cbypVf4l3dOF3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dbbk1gKuUgnjeB+wZCocJfKsBvxRPmFOtdswhZp83ZE=;
 b=ZnQLud/WKfB2Z1lVQ3bf01lD9j9SYRJRTwvLf2vrmxeNqDnFAVU3m05H576ROfCEtttiNtBC8uj/fwpRNg+UiDz2TLzfKoJ1IMhqKO7qnkV4EHbJA9Qd9CiYNBNB9NeDIMocfFf247DuLsMUNeb4yQ/exFIVL5mCBGlpSzKZJvQ=
Received: from TY1PR01MB1770.jpnprd01.prod.outlook.com (52.133.163.13) by
 TY1PR01MB1754.jpnprd01.prod.outlook.com (52.133.163.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Mon, 30 Sep 2019 17:00:52 +0000
Received: from TY1PR01MB1770.jpnprd01.prod.outlook.com
 ([fe80::55fe:d020:cc51:95c4]) by TY1PR01MB1770.jpnprd01.prod.outlook.com
 ([fe80::55fe:d020:cc51:95c4%7]) with mapi id 15.20.2305.017; Mon, 30 Sep 2019
 17:00:52 +0000
From: Fabrizio Castro <fabrizio.castro@bp.renesas.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Russell King
 <rmk+kernel@armlinux.org.uk>
Subject: RE: [PATCH] ARM: fix __get_user_check() in case uaccess_* calls are
 not inlined
Thread-Topic: [PATCH] ARM: fix __get_user_check() in case uaccess_* calls are
 not inlined
Thread-Index: AQHVd1S32ABkM001uEud5so3zUxMOqdEckYg
Date: Mon, 30 Sep 2019 17:00:52 +0000
Message-ID: <TY1PR01MB1770D6BDEFAD1A5003C2006DC0820@TY1PR01MB1770.jpnprd01.prod.outlook.com>
References: <20190930055925.25842-1-yamada.masahiro@socionext.com>
In-Reply-To: <20190930055925.25842-1-yamada.masahiro@socionext.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=fabrizio.castro@bp.renesas.com; 
x-originating-ip: [193.141.220.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f2c6cb68-7df5-4500-13ab-08d745c7c04b
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: TY1PR01MB1754:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <TY1PR01MB175442DA45332F80D39F001FC0820@TY1PR01MB1754.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 01762B0D64
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(376002)(39860400002)(366004)(346002)(396003)(199004)(189003)(53546011)(6506007)(52536014)(76116006)(66476007)(33656002)(64756008)(14454004)(66446008)(66556008)(66946007)(7696005)(86362001)(102836004)(76176011)(478600001)(3846002)(26005)(66066001)(5660300002)(2906002)(25786009)(186003)(8676002)(6116002)(7416002)(81156014)(316002)(74316002)(81166006)(966005)(8936002)(305945005)(2501003)(44832011)(11346002)(486006)(7736002)(446003)(476003)(99286004)(110136005)(229853002)(54906003)(6436002)(6306002)(9686003)(55016002)(71190400001)(71200400001)(6246003)(4326008)(256004)(14444005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:TY1PR01MB1754;
 H:TY1PR01MB1770.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: bp.renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GhK2ukuGgEKquMuujWVlR0Eeig8Mr9TafaiqN0O1jx8IOK4qyLse1/oUOOY4VrpDEfYbXFCsEmpBWQ+CIk0Q+VRTVTmJNdoZz2OZ4ASGqqiSfLj/CcrMxhYGu9x1GRPmJ/1Bj/3l7fJpPhETIfXYrUrI7Q+Nqj6No20vS1oeEEDcLFhXD5I7uqHxvZ+KL/qRKcXkbdIVGy7MX27J5RFgHYSvWm92lDwt3S9Mp9mM9SVcgU+VFkZum5JpyfWrC6bZxAWI0THMaBWFPgjPAY+aRw0QRdk2YcHfmQXgqmYiWzUtYez806j39a2wsmTe0xDmPPANn3IyriJdL+qrmEGf109J2A+CwyNuR8WVksYLh05yKofVZCu8LppnlcTSkpxUXHn4KgJ95YxbejGVqGT8aMobojJyqEsZ2zo0JW1xw7hsHUISYhSjLWHplRywaqdPS8eoV84BKI1cD7/Y9OlPHA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2c6cb68-7df5-4500-13ab-08d745c7c04b
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2019 17:00:52.1529 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DERwuL3LMHtJmHm4s9DdTc7sk1c7xgyL5riacHf/ViIEyhiJEmwEUqTORTxcLodtomcUanBrbjhReVKMa2LIH8wCK10aKaBEJEFwdmA2pko=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY1PR01MB1754
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_100059_421326_91847E1D 
X-CRM114-Status: GOOD (  23.38  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.141.100 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Vincent Whitchurch <vincent.whitchurch@axis.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Russell King <linux@armlinux.org.uk>, Stefan Agner <stefan@agner.ch>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Olof Johansson <olof@lixom.net>, Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: linux-kernel-owner@vger.kernel.org <linux-kernel-owner@vger.kernel.org> On Behalf Of Masahiro Yamada
> Sent: 30 September 2019 06:59
> Subject: [PATCH] ARM: fix __get_user_check() in case uaccess_* calls are not inlined
> 
> KernelCI reports that bcm2835_defconfig is no longer booting since
> commit ac7c3e4ff401 ("compiler: enable CONFIG_OPTIMIZE_INLINING
> forcibly"):
> 
>   https://lkml.org/lkml/2019/9/26/825
> 
> I also received a regression report from Nicolas Saenz Julienne:
> 
>   https://lkml.org/lkml/2019/9/27/263
> 
> This problem has cropped up on arch/arm/config/bcm2835_defconfig
> because it enables CONFIG_CC_OPTIMIZE_FOR_SIZE. The compiler tends
> to prefer not inlining functions with -Os. I was able to reproduce
> it with other boards and defconfig files by manually enabling
> CONFIG_CC_OPTIMIZE_FOR_SIZE.
> 
> The __get_user_check() specifically uses r0, r1, r2 registers.
> So, uaccess_save_and_enable() and uaccess_restore() must be inlined
> in order to avoid those registers being overwritten in the callees.
> 
> Prior to commit 9012d011660e ("compiler: allow all arches to enable
> CONFIG_OPTIMIZE_INLINING"), the 'inline' marker was always enough for
> inlining functions, except on x86.
> 
> Since that commit, all architectures can enable CONFIG_OPTIMIZE_INLINING.
> So, __always_inline is now the only guaranteed way of forcible inlining.
> 
> I want to keep as much compiler's freedom as possible about the inlining
> decision. So, I changed the function call order instead of adding
> __always_inline around.
> 
> Call uaccess_save_and_enable() before assigning the __p ("r0"), and
> uaccess_restore() after evacuating the __e ("r0").
> 
> Fixes: 9012d011660e ("compiler: allow all arches to enable CONFIG_OPTIMIZE_INLINING")
> Reported-by: "kernelci.org bot" <bot@kernelci.org>
> Reported-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

Tested-by: Fabrizio Castro <fabrizio.castro@bp.renesas.com>

> ---
> 
>  arch/arm/include/asm/uaccess.h | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/include/asm/uaccess.h b/arch/arm/include/asm/uaccess.h
> index 303248e5b990..559f252d7e3c 100644
> --- a/arch/arm/include/asm/uaccess.h
> +++ b/arch/arm/include/asm/uaccess.h
> @@ -191,11 +191,12 @@ extern int __get_user_64t_4(void *);
>  #define __get_user_check(x, p)						\
>  	({								\
>  		unsigned long __limit = current_thread_info()->addr_limit - 1; \
> +		unsigned int __ua_flags = uaccess_save_and_enable();	\
>  		register typeof(*(p)) __user *__p asm("r0") = (p);	\
>  		register __inttype(x) __r2 asm("r2");			\
>  		register unsigned long __l asm("r1") = __limit;		\
>  		register int __e asm("r0");				\
> -		unsigned int __ua_flags = uaccess_save_and_enable();	\
> +		unsigned int __err;					\
>  		switch (sizeof(*(__p))) {				\
>  		case 1:							\
>  			if (sizeof((x)) >= 8)				\
> @@ -223,9 +224,10 @@ extern int __get_user_64t_4(void *);
>  			break;						\
>  		default: __e = __get_user_bad(); break;			\
>  		}							\
> -		uaccess_restore(__ua_flags);				\
> +		__err = __e;						\
>  		x = (typeof(*(p))) __r2;				\
> -		__e;							\
> +		uaccess_restore(__ua_flags);				\
> +		__err;							\
>  	})
> 
>  #define get_user(x, p)							\
> --
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
