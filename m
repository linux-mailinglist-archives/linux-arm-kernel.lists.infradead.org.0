Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 837C81F267D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:43:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=70WnwOjnMQfdj10JufnuBzoZPJRMGvahJzeCCiy4nXg=; b=lUcrQYTOzpHG61
	WzVw9/hx1aSmadTAIbcspcoJ3qnD2NBzs6G31x9VdYgkNwQ4C9AisR1z1aEjohJMEWyuOqicxoEtc
	MIVwm8oBsOopdvxNNdRULMXWBRzggmiek9enFOmMT0udEEM/GS3gjrpu1oXgdtnntjT+JhZChPHt7
	ZHZ4ATOuPV6WA0ueF2oZRoURp6mXyaC9DAI5mCnfiDB+LqymTuVFNaCvv7yKShbgiohfckr8euXzO
	YmE5FKAimvbLN60Go+FVQ1W1tK4WXkkbL8OKjuZMscrF2E3OCdexLm06wApY6ZDujUuoPlXDY9Lvj
	gPh0z+2tleVT4MjVaFlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiRQc-0005Qd-UA; Mon, 08 Jun 2020 23:43:43 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiR4c-0000s2-S9
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 23:21:07 +0000
IronPort-SDR: z9PxtDNt9ILkuwq/9GcnvS5I8dv9E0qIPi1GzW1hO/xgFLLFz+IO+syCDOfJcDWBjTs+ff/UN4
 gjMEyBDa7TbA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 16:20:56 -0700
IronPort-SDR: GVEKN+Sdzpyjph5He8dWFqU4792RyNmdgbHW6dezk+RIVHItTPaj/0e8G7ouifjCXLPaZfiiyw
 1z9/1ezyYMRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,489,1583222400"; d="scan'208";a="472877250"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga005.fm.intel.com with ESMTP; 08 Jun 2020 16:20:56 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 8 Jun 2020 16:20:55 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 8 Jun 2020 16:20:52 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 8 Jun 2020 16:20:52 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Mon, 8 Jun 2020 16:20:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HGAAZYpk5bmrzlSboH+WX2LojCGPp3Ci2ISrptZGsBWMtBoFXuDlCe4lZIYkjj8YxXPxk+MG5S8nOSxxghkLyBDmyLbcIG+7xY5rgGe92J7QQNGOSKODJ6+QnNosJ16leyl/tcI+EDhuxoc00buiTvIbXQpaYGkHTae2mEjPsqRrn07XhRSztriwyIXDmjKQvqiFO64uTHmpZVaaoUoEjsQEfetRmnfveWbGHyAoXr/rf0ZMJKwW4w+SbaemXkxp91RYb66qaNCME9S0WGYBNl97Ue5Hzne+xaztVo4Q+w4mumKCyx6Lu6EQIdac21e9tQfk2NsAMLuEUUW9GaKPyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f6aVbVROYJmQsF3MUYrpfaXpatbExk4/M5Bzum+K41c=;
 b=Cb6hUFcYwF47hpCQ8i40p63VzrTVEzRyPoxmcCiJs1KyXIVwtUFC1M/Ece/7DNpzbVa0LFwOdQPx+TAInaZ501awOoV2me6WIFYnvZoleRxKxGCznsTb+GftVhBoAJzB+ZWN28H8bxv6k8eQZfcpMWUJpSBKUkN+fWDkOgYV/l1BxaGSD/qPEHpi3nRirgoZwhMJJy2Fd5t0mA5qZC/jHKah7kySJPidIkpoJipVn22s/xfJ3InVwiVmLHrR3GwHZWMdwR3HObZ/KhQRuzQ93WDc49+7ruiWRYXGWPZifNTZ0BLPjCwY2+5/DzflMuUzMcJS1bVrnAReiccziYuQKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f6aVbVROYJmQsF3MUYrpfaXpatbExk4/M5Bzum+K41c=;
 b=eZg+Hlz4v51BDG53O6IfrlrZXmcj1wZi6ti3BMWnZYCugXTsXh55dJhBxfe0JlJMAJXMFoSB1o9ywN6zdCxk2OVjQqioo8+DgJy/FKAXzx+WsrVMMsVOYVgGiRl6vh/Ovwp2fYMDIGgMHrsE40d0C3470qxMRaxB01aN0jsTgMc=
Received: from BYAPR11MB3096.namprd11.prod.outlook.com (2603:10b6:a03:8f::14)
 by BYAPR11MB3512.namprd11.prod.outlook.com (2603:10b6:a03:8f::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Mon, 8 Jun
 2020 23:20:44 +0000
Received: from BYAPR11MB3096.namprd11.prod.outlook.com
 ([fe80::ad0c:c6a9:6f39:eb92]) by BYAPR11MB3096.namprd11.prod.outlook.com
 ([fe80::ad0c:c6a9:6f39:eb92%5]) with mapi id 15.20.3066.023; Mon, 8 Jun 2020
 23:20:44 +0000
From: "Kaneda, Erik" <erik.kaneda@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: RE: [PATCH] ACPICA: fix UBSAN warning using __builtin_offsetof
Thread-Topic: [PATCH] ACPICA: fix UBSAN warning using __builtin_offsetof
Thread-Index: AQHWOGr94BDOASQdIU6ZpTv243EHY6jEbrjQgAE8tYCACbloIA==
Date: Mon, 8 Jun 2020 23:20:43 +0000
Message-ID: <BYAPR11MB309660952553AB3EA9A303B5F0850@BYAPR11MB3096.namprd11.prod.outlook.com>
References: <CAMj1kXErFuvOoG=DB6sz5HBvDuHDiKwWD8uOyLuxaX-u8-+dbA@mail.gmail.com>
 <20200601231805.207441-1-ndesaulniers@google.com>
 <BYAPR11MB30969737340044437013BF44F08B0@BYAPR11MB3096.namprd11.prod.outlook.com>
 <CAKwvOdmsCmPFiDOq7AYUyEx=60B=qo8u9yhnJDQ6nd6Ew7xDkQ@mail.gmail.com>
In-Reply-To: <CAKwvOdmsCmPFiDOq7AYUyEx=60B=qo8u9yhnJDQ6nd6Ew7xDkQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: google.com; dkim=none (message not signed)
 header.d=none;google.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.52.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f035c9f2-12f6-42b0-89bd-08d80c02915d
x-ms-traffictypediagnostic: BYAPR11MB3512:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB35129814DE957994DFC43656F0850@BYAPR11MB3512.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 042857DBB5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WqFK+UvF7i6eRfNr77zIL5DNUv+HZfiwAfdoVCoepnnFaomnlIoUeUY83/r3nMihO6bKaxtTky12cFEHljD8Bo7AoMo2FJ96+qrkatfnjztnsv/DuB3yk55U9J70PHRa5wovK8gnFTqRhPVnnkhzFhTPElpSlLM/HUlNAu6xgxJ7brBzK4FNk6WmNrhG0aDMrwGgYszi7NuoHgJxREVzAFzbHX876o+BhSIPJQUiPs11MePD72wJsNmWs0S6Vjq0lrS8HwI7I4eY60HDh4J9YEhI4mwFHNn+eQ6rIw/jJSWqaXmfR3aKflLqYdFq0fTJLgxjx5dgijzjp8AzwCMIsg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3096.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(39860400002)(396003)(376002)(346002)(366004)(26005)(4326008)(8936002)(7696005)(186003)(6506007)(52536014)(6916009)(55016002)(9686003)(53546011)(5660300002)(86362001)(83380400001)(54906003)(478600001)(66946007)(76116006)(66446008)(66476007)(316002)(2906002)(66556008)(7416002)(71200400001)(8676002)(64756008)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: bZeWdsZSEwydr1UGhtRW9SfMujJW6tm6HY+L4NjaQ2AYCEHOZjJaumv1bed4sNjg6wJrU9HnlzJBmXKqyqb1L2ddx5qD+Ogejr3UCk2Iyw4SILSpuru1dN5cxc5DfCY2iZU2iOf6louyx3BJThnn/ysPinPxSvp8WHtlc3Yve31c+PMLNRpw9oTgHy4xVYRb+oq+7PJD9ic8uEoxA+O9wCV/9tgXjYX9NVhVYousLtwuX70BmUF4MgfurfHbmzwTKOV9zOLPLOWLLrvKwLXdTW4lnk18JB4/xsfGFx+kkqKlnMmai3JNMJzzpm/TDVtZIP/R1x3UnnclUiFSFxv2CiG3BD83V/fHt3KTBjxOtSxqSzXjEm1k7ohSxfr+TdX6EOoZTlBI3wcRB5kKwcpt20sq1cozeQRxzefJOchltdkQbdcjhRgylewbsnHOI8ao0ZsVXq2ZoMW+k5CexRk6WVviti2ddIOp51HAnmrtk9A=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f035c9f2-12f6-42b0-89bd-08d80c02915d
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2020 23:20:43.9990 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lh1a80XnT7qUEBYXJe9c321NHddbM2J/3VHG42hATQqSuELaqb+g44bTJKMXQZzD/nw8qjRni1kQVCLyou92HQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3512
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_162059_061970_5E6ACC95 
X-CRM114-Status: GOOD (  18.33  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "will@kernel.org" <will@kernel.org>, "Wysocki,
 Rafael J" <rafael.j.wysocki@intel.com>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>, "Moore,
 Robert" <robert.moore@intel.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "glider@google.com" <glider@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "guohanjun@huawei.com" <guohanjun@huawei.com>,
 "devel@acpica.org" <devel@acpica.org>, "pcc@google.com" <pcc@google.com>,
 Ard Biesheuvel <ardb@kernel.org>, "dvyukov@google.com" <dvyukov@google.com>,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Nick Desaulniers <ndesaulniers@google.com>
> Sent: Tuesday, June 2, 2020 11:47 AM
> To: Kaneda, Erik <erik.kaneda@intel.com>
> Cc: Moore, Robert <robert.moore@intel.com>; Wysocki, Rafael J
> <rafael.j.wysocki@intel.com>; Len Brown <lenb@kernel.org>; Ard
> Biesheuvel <ardb@kernel.org>; dvyukov@google.com; glider@google.com;
> guohanjun@huawei.com; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org; lorenzo.pieralisi@arm.com;
> mark.rutland@arm.com; pcc@google.com; rjw@rjwysocki.net;
> will@kernel.org; stable@vger.kernel.org; linux-acpi@vger.kernel.org;
> devel@acpica.org
> Subject: Re: [PATCH] ACPICA: fix UBSAN warning using __builtin_offsetof
> 
> On Mon, Jun 1, 2020 at 5:03 PM Kaneda, Erik <erik.kaneda@intel.com>
> wrote:
> >
> >
> > Hi,
> >
> > > Will reported UBSAN warnings:
> > > UBSAN: null-ptr-deref in drivers/acpi/acpica/tbfadt.c:459:37
> > > UBSAN: null-ptr-deref in arch/arm64/kernel/smp.c:596:6
> > >
> > > Looks like the emulated offsetof macro ACPI_OFFSET is causing these.
> > > We can avoid this by using the compiler builtin, __builtin_offsetof.
> >
> > I'll take a look at this tomorrow
> > >
> > > The non-kernel runtime of UBSAN would print:
> > > runtime error: member access within null pointer of type for this macro.
> >
> > actypes.h is owned by ACPICA so we typically do not allow
> > compiler-specific extensions because the code is intended to be
> > compiled using the C99 standard without compiler extensions. We could
> > allow this sort of thing in a Linux-specific header file like
> include/acpi/platform/aclinux.h but I'll take a look at the error as well..
> 
Hi,

> If I'm not allowed to touch that header, it looks like I can include
> <linux/stddef.h> (rather than my host's <stddef.h>) to get a definition of

Why not use your host's stddef.h?

> `offsetof` thats implemented in terms of `__builtin_offsetof`.  I should be
> able to use that to replace uses of ACPI_OFFSET.  Are any of these off limits?

Yes, the idea is to define ACPI_OFFSET in a way that you want so that we don't touch the uses below.

Erik
> 
> $ grep -rn ACPI_OFFSET
> arch/arm64/include/asm/acpi.h:34:#define
> ACPI_MADT_GICC_MIN_LENGTH
> ACPI_OFFSET(  \ arch/arm64/include/asm/acpi.h:41:#define
> ACPI_MADT_GICC_SPE (ACPI_OFFSET(struct acpi_madt_generic_interrupt, \
> include/acpi/actbl.h:376:#define ACPI_FADT_OFFSET(f)             (u16)
> ACPI_OFFSET (struct acpi_table_fadt, f)
> drivers/acpi/acpica/acresrc.h:84:#define ACPI_RS_OFFSET(f)
>   (u8) ACPI_OFFSET (struct acpi_resource,f)
> drivers/acpi/acpica/acresrc.h:85:#define AML_OFFSET(f)
>   (u8) ACPI_OFFSET (union aml_resource,f)
> drivers/acpi/acpica/acinterp.h:17:#define ACPI_EXD_OFFSET(f)
> (u8) ACPI_OFFSET (union acpi_operand_object,f)
> drivers/acpi/acpica/acinterp.h:18:#define ACPI_EXD_NSOFFSET(f)
> (u8) ACPI_OFFSET (struct acpi_namespace_node,f)
> drivers/acpi/acpica/rsdumpinfo.c:16:#define ACPI_RSD_OFFSET(f)
>  (u8) ACPI_OFFSET (union acpi_resource_data,f)
> drivers/acpi/acpica/rsdumpinfo.c:17:#define ACPI_PRT_OFFSET(f)
>  (u8) ACPI_OFFSET (struct acpi_pci_routing_table,f)
> 
> --
> Thanks,
> ~Nick Desaulniers
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
