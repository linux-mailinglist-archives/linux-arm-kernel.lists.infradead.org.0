Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1101F6C52
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 18:45:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t857HyuhNxQ1zGCUTyHD2Jj14wFz9sAqQElenmwlOJU=; b=BklKP+TgCckKQl
	wfuffvSrfbWlPS1xne8UG1e2bTVq3Vkblgo9nKjEqawjXlOgmnH510uAcjAT/2ro3iNTwJl35vjCR
	D6H/HD/c/lqAleUwBi5sQzaTYmDBjJ+pu5lXbpii/MTeFzWEQA8hY9fHBU0uTIsHlJzZLjCp6lXSb
	vnas9sEfFJ4Cf7i4B569Lx6AUrzFXj7LU1hB4bT5nCZl/dGbHYgtURAtSI34Rle1SBkqnnClfVR6e
	BtsWxUQ0MaWKEAMk6gIZg/nroQhbZ1hqKZsUKztLpblKEqdUvjJW6m9TWQl0kFl9WnRztVU3sLXEu
	h0UtjA+xWsgmi8OM0ImQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjQKp-0005e9-KH; Thu, 11 Jun 2020 16:45:47 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjQKh-0005db-6g
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 16:45:41 +0000
IronPort-SDR: L9LuRXnhy7F04MbeUlgXsDkmNXJChfRhyiFRmFRfqOADxjv0oDQeV5dnsiePqjszJhF1PKzDX/
 228iZUi6NUag==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2020 09:45:37 -0700
IronPort-SDR: jaB72kpuZ3JbVXXCTRcs01LlXYQya5OBuqLc2ZIbWVOP1xbYSqsy5tVHNHKPeZ5ujj1FuK/qqu
 yEyhGbMzNfsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,499,1583222400"; d="scan'208";a="350242238"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga001.jf.intel.com with ESMTP; 11 Jun 2020 09:45:28 -0700
Received: from fmsmsx124.amr.corp.intel.com (10.18.125.39) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 11 Jun 2020 09:45:27 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx124.amr.corp.intel.com (10.18.125.39) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 11 Jun 2020 09:45:27 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.54) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 11 Jun 2020 09:45:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FiZUv0DQFj7TvdCOL2KI3V48XYefiOGWC7AiKJpy7jsQTwKZe8HVaY1pEe/xHsNQVno3LEtNHN7ldfFR0nOBEDfJ8IjNWbapEqcL0uwNIz0g2u5PV1Qo8b7B4dL+xB9ryjAhnm0t5bM8R6CR0gQTlu8zmcP3lbvMVWhTLI7SJ/+CBppuAI68+3MRH8oIWKvoLpbeXEl42EWwy80N8wMZJ7Fk4Mpo0+Vf/Gj1eDYvSLydKTLfN8NutYX0RH3ezWl63YRu05GHcH73qOBcw+kcF+JtyFntOhGu+h/and4shLkMH9V864UuaPhFnu/XK8sMvw27nWI+q5/49t6f6/86mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nuvyTSkvDUs3fkrLN6vsNeUi4g+Io0xVB1sGU5g8UO8=;
 b=VZA/uJJfoE+TG6Xs8SR97CbpEG9l/eU4xM+7EelgqAnaSdDHTwFPPNXDbHC55twnqnoZTKCO45HuNzHEdxw6cLwpwl7ypzEL2MWEvk/eMXuAByE+EoeVbgBU629PLOZNgRZ0+haAphBAYcYECVxkq9kwAEC/ylAlPDmBL9JgvblxKVAsLMK29utAoMiZ7pNWut/RDFbB8rC4BFy6YmuiqiZXjOXIHcMKshxmS3UuhlN1Xobby3R1Naw8PmooPPLFrBDjTyND/qPcOT9phN7YVoD8XVA3LTY8OURUCBpTmkweKDAT5SDTB+pMcMUYfruY+GktSSAqWN5idAeCDz/Dzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nuvyTSkvDUs3fkrLN6vsNeUi4g+Io0xVB1sGU5g8UO8=;
 b=gSH6ohGOwJjsbFnZ4LnZLnjNpm7SH2NMv9d+F91LWVXal+lNIjQ5Gii0NMIHSox1Sp6Qqfv5aRe+VOKrtI3jiUubfGCZNWzMyb1INw0oSD0CRn6dXMmrBkGiXWYWs0l0kw5NyCDaWJ+GrBjtE4MAEjkONt0SDIxlROkLIntFXRg=
Received: from BYAPR11MB3096.namprd11.prod.outlook.com (2603:10b6:a03:8f::14)
 by BYAPR11MB2552.namprd11.prod.outlook.com (2603:10b6:a02:c7::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Thu, 11 Jun
 2020 16:45:23 +0000
Received: from BYAPR11MB3096.namprd11.prod.outlook.com
 ([fe80::ad0c:c6a9:6f39:eb92]) by BYAPR11MB3096.namprd11.prod.outlook.com
 ([fe80::ad0c:c6a9:6f39:eb92%5]) with mapi id 15.20.3088.019; Thu, 11 Jun 2020
 16:45:23 +0000
From: "Kaneda, Erik" <erik.kaneda@intel.com>
To: Jung-uk Kim <jkim@FreeBSD.org>, Nick Desaulniers <ndesaulniers@google.com>
Subject: RE: [Devel] Re: [PATCH] ACPICA: fix UBSAN warning using
 __builtin_offsetof
Thread-Topic: [Devel] Re: [PATCH] ACPICA: fix UBSAN warning using
 __builtin_offsetof
Thread-Index: AQHWOGr94BDOASQdIU6ZpTv243EHY6jShAOAgAAI/wCAAATVgIABFD4Q
Date: Thu, 11 Jun 2020 16:45:23 +0000
Message-ID: <BYAPR11MB3096904AD67CC83A67A38215F0800@BYAPR11MB3096.namprd11.prod.outlook.com>
References: <CAMj1kXErFuvOoG=DB6sz5HBvDuHDiKwWD8uOyLuxaX-u8-+dbA@mail.gmail.com>
 <20200601231805.207441-1-ndesaulniers@google.com>
 <BYAPR11MB3096A0EA2D03BCB76C91F80AF0830@BYAPR11MB3096.namprd11.prod.outlook.com>
 <CAKwvOdnh6Zh+P9SM_qFiy-9u7Y21fn=byTJtG4fTTRJqqU9bcQ@mail.gmail.com>
 <9f4322a5-eea6-fb65-449c-90f3d85f753e@FreeBSD.org>
In-Reply-To: <9f4322a5-eea6-fb65-449c-90f3d85f753e@FreeBSD.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: FreeBSD.org; dkim=none (message not signed)
 header.d=none;FreeBSD.org; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 92771cec-05c6-4516-bb5c-08d80e26d619
x-ms-traffictypediagnostic: BYAPR11MB2552:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB2552078559FAD6DF253B1005F0800@BYAPR11MB2552.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0431F981D8
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7ejP+eL6k9pIfBXTOsiF17zyUCEbl7MLPmhnQGyrE+u+Q22aSx0QHBQr7UjSsfTaSUQYaf6zz4r8zsAej8uLiYzHD8TuLdUPO+9cxeuVunNjc2QV39aUve8mEyseBkiCB6eLdMa3A0sIJC93kKz9aiilMeTuqgLHGVf2TnbooLfQ9HrCyNfJ4DmwHyg1udAr9nNFUZT/rVuMTqK45UdrlD4OepLpUgxcwH0PAqTvVQ5YbGzeG42k5TvN73FGMlIFAdJc9SKxKeIMjeZV+s7tcSGiXN+3e3xND6KXrLW3CwKdRL1lSG2cP6JWA9+f5XoVXG2T6XeceBqjeye9Up5EfvfZr5ImWUg0+WTGnpuS8kTEg5o9Mfxf4Ke/agxjolfvrPLsYM0DWVYGHuqKikfUgA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3096.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(136003)(396003)(366004)(376002)(346002)(66946007)(4326008)(83380400001)(86362001)(5660300002)(66556008)(66446008)(66476007)(76116006)(186003)(26005)(71200400001)(7416002)(64756008)(9686003)(2906002)(52536014)(478600001)(8936002)(966005)(33656002)(55016002)(110136005)(6506007)(8676002)(54906003)(53546011)(7696005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: sHp+qIpuyrd1BNpy3j/PbXOq96PQ855vxmPpnwwPQhNdO8YNzWe+5dGEALeAr9x44/9qfzFnqsnpIm84N4T+YCGQp+RB+UMPvDQWaiZR6X2HOTYtB7/1urah1edlIVxsfUi44KP5x8WHf08TfXS1eZkaSvTVnELc/cdAV2mjvwKOhrC3kIMQBYyRDwG8OlPMICRBjdM0ucBnUqgBi47Vi9yLmRHXSK+YQ3/J5sZEdeKeeJh11HEqw0U6NNAhVE1e4SHnSMcr/ynj4wP0GHlN/Zx2CczMvWR5PbeZmhVePljScko5Y6EnbWmLJIwZm6FrzuIWU18Za1dlUtqxwjqgp9Dg1jiwmX1QwKR66JPlQmKdy9gwidJ9O2CxIJ6Br9sLevYQczGj9gXv0xQ3xLmxsEFt89V//yhRjoFiFaBnVIR0KwDjRuJZHjK3agBzwGlC1SKDkJ/4GqJwz63FCW+yBy4FApT3qElEpBM8Qf6SPejuXqii3yGIplqBhyM6MRPR
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 92771cec-05c6-4516-bb5c-08d80e26d619
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2020 16:45:23.4722 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e3Mg6+W6gq3R/LJEzeobSt79cr76Vdd26XSyF5w4UgAvoLWJlVRslIvTKgzxFFH+4ZDjtPzTdjLtsJYBwKbxzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2552
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_094539_353573_C16C9754 
X-CRM114-Status: GOOD (  32.98  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "glider@google.com" <glider@google.com>,
 "dvyukov@google.com" <dvyukov@google.com>, "pcc@google.com" <pcc@google.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "devel@acpica.org" <devel@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Jung-uk Kim <jkim@FreeBSD.org>
> Sent: Wednesday, June 10, 2020 4:46 PM
> To: Nick Desaulniers <ndesaulniers@google.com>; Kaneda, Erik
> <erik.kaneda@intel.com>
> Cc: Wysocki, Rafael J <rafael.j.wysocki@intel.com>; Ard Biesheuvel
> <ardb@kernel.org>; dvyukov@google.com; glider@google.com; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> lorenzo.pieralisi@arm.com; mark.rutland@arm.com; pcc@google.com;
> rjw@rjwysocki.net; will@kernel.org; stable@vger.kernel.org; linux-
> acpi@vger.kernel.org; devel@acpica.org
> Subject: [Devel] Re: [PATCH] ACPICA: fix UBSAN warning using
> __builtin_offsetof
> 
> On 20. 6. 10., Nick Desaulniers wrote:
> > On Wed, Jun 10, 2020 at 4:07 PM Kaneda, Erik <erik.kaneda@intel.com>
> wrote:
> >>
> >> +JKim (for FreeBSD's perspective)
> >>
> >>> -----Original Message-----
> >>> From: Nick Desaulniers <ndesaulniers@google.com>
> >>> Sent: Monday, June 1, 2020 4:18 PM
> >>> To: Moore, Robert <robert.moore@intel.com>; Kaneda, Erik
> >>> <erik.kaneda@intel.com>; Wysocki, Rafael J
> <rafael.j.wysocki@intel.com>;
> >>> Len Brown <lenb@kernel.org>
> >>> Cc: Ard Biesheuvel <ardb@kernel.org>; dvyukov@google.com;
> >>> glider@google.com; guohanjun@huawei.com; linux-arm-
> >>> kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> >>> lorenzo.pieralisi@arm.com; mark.rutland@arm.com;
> >>> ndesaulniers@google.com; pcc@google.com; rjw@rjwysocki.net;
> >>> will@kernel.org; stable@vger.kernel.org; linux-acpi@vger.kernel.org;
> >>> devel@acpica.org
> >>> Subject: [PATCH] ACPICA: fix UBSAN warning using __builtin_offsetof
> >>>
> >>> Will reported UBSAN warnings:
> >>> UBSAN: null-ptr-deref in drivers/acpi/acpica/tbfadt.c:459:37
> >>> UBSAN: null-ptr-deref in arch/arm64/kernel/smp.c:596:6
> >>>
> >> Hi,
> >>
> >>> Looks like the emulated offsetof macro ACPI_OFFSET is causing these.
> We
> >>> can avoid this by using the compiler builtin, __builtin_offsetof.
> >>>
> >> This doesn't really fly because __builtin_offsetof is a compiler extension.
> >>
> >> It looks like a lot of stddef.h files do this:
> >>
> >> #define offsetof(a,b) __builtin_offset(a,b)
> >>
> >> So does anyone have objections to ACPI_OFFSET being defined to
> offsetof()?
> >>
> >> This will allow a host OS project project to use their own definitions of
> offsetof in place of ACPICA's.
> >> If they don't have a definition for offsetof, we can supply the old one as a
> fallback.
> >>
> >> Here's a patch:
> >>
> >> --- a/include/acpi/actypes.h
> >> +++ b/include/acpi/actypes.h
> >> @@ -504,11 +504,17 @@ typedef u64 acpi_integer;
> >>  #define ACPI_SUB_PTR(t, a, b)           ACPI_CAST_PTR (t, (ACPI_CAST_PTR
> (u8, (a)) - (acpi_size)(b)))
> >>  #define ACPI_PTR_DIFF(a, b)             ((acpi_size) (ACPI_CAST_PTR (u8, (a))
> - ACPI_CAST_PTR (u8, (b))))
> >>
> >> +/* Use an existing definiton for offsetof */
> >
> > s/definiton/definition/
> >
> >> +
> >> +#ifndef offsetof
> >> +#define offsetof(d,f)                   ACPI_PTR_DIFF (&(((d *) 0)->f), (void *)
> 0)
> >> +#endif
> >
> > If this header doesn't explicitly include <stddef.h> or
> > <linux/stddef.h>, won't translation units that include
> > <acpi/actypes.h> get different definitions of ACPI_OFFSET based on
> > whether they explicitly or transitively included <stddef.h> before
> > including <acpi/actypes.h>?  Theoretically, a translation unit in the
> > kernel could include actypes.h, have no includes of linux/stddef.h,
> > then get UBSAN errors again from using this definition?
> >
> > I don't mind using offsetof in place of the builtin (since it
> > typically will be implemented in terms of the builtin, or is at least
> > for the case specific to the Linux kernel). But if it's used, we
> > should include the header that defines it properly, and we should not
> > use the host's <stddef.h> IMO.  Is there a platform specific way to
> > include the platform's stddef.h here?
> >
> > Maybe linux/stddef.h should be included in
> > include/acpi/platform/aclinux.h, then include/acpi/platform/acenv.h
> > included in include/acpi/actypes.h, such that ACPI_OFFSET is defined
> > in terms of offsetof defined from that transitive dependency of
> > headers? (or do we get a circular inclusion trying to do that?)
> 
Hi,

> Actually, I think we should let platform-specific acfoo.h decide what to
> do here, i.e.,

That's a better solution. For Linux, it would look something like this:

--- a/include/acpi/actypes.h
+++ b/include/acpi/actypes.h
@@ -508,10 +508,15 @@ typedef u64 acpi_integer;

 #define ACPI_TO_POINTER(i)              ACPI_CAST_PTR (void, (acpi_size) (i))
 #define ACPI_TO_INTEGER(p)              ACPI_PTR_DIFF (p, (void *) 0)
-#define ACPI_OFFSET(d, f)               ACPI_PTR_DIFF (&(((d *) 0)->f), (void *) 0)
 #define ACPI_PHYSADDR_TO_PTR(i)         ACPI_TO_POINTER(i)
 #define ACPI_PTR_TO_PHYSADDR(i)         ACPI_TO_INTEGER(i)

+/* Platforms may want to define their own ACPI_OFFSET */
+
+#ifndef ACPI_OFFSET
+#define ACPI_OFFSET(d, f)               ACPI_PTR_DIFF (&(((d *) 0)->f), (void *) 0)
+#endif
+
 /* Optimizations for 4-character (32-bit) acpi_name manipulation */

 #ifndef ACPI_MISALIGNMENT_NOT_SUPPORTED
diff --git a/include/acpi/platform/aclinux.h b/include/acpi/platform/aclinux.h
index 987e2af7c335..5d1ca6015fce 100644
--- a/include/acpi/platform/aclinux.h
+++ b/include/acpi/platform/aclinux.h
@@ -71,6 +71,11 @@
 #undef ACPI_DEBUG_DEFAULT
 #define ACPI_DEBUG_DEFAULT          (ACPI_LV_INFO | ACPI_LV_REPAIR)

+/* Use gcc's builtin offset instead of the default */
+
+#undef ACPI_OFFSET
+#define ACPI_OFFSET(a,b)            __builtin_offsetof(a,b)
+
 #ifndef CONFIG_ACPI

> 
> #ifndef ACPI_OFFSET
> #define ACPI_OFFSET(d, f) ...
> #endif
> 
> Jung-uk Kim
> 
> >> +
> >>  /* Pointer/Integer type conversions */
> >>
> >>  #define ACPI_TO_POINTER(i)              ACPI_CAST_PTR (void, (acpi_size) (i))
> >>  #define ACPI_TO_INTEGER(p)              ACPI_PTR_DIFF (p, (void *) 0)
> >> -#define ACPI_OFFSET(d, f)               ACPI_PTR_DIFF (&(((d *) 0)->f), (void
> *) 0)
> >> +#define ACPI_OFFSET(d, f)               offsetof (d,f)
> >>  #define ACPI_PHYSADDR_TO_PTR(i)         ACPI_TO_POINTER(i)
> >>  #define ACPI_PTR_TO_PHYSADDR(i)         ACPI_TO_INTEGER(i)
> >>
> >> Thanks,
> >> Erik
> >>
> >>> The non-kernel runtime of UBSAN would print:
> >>> runtime error: member access within null pointer of type for this macro.
> >>>
> >>> Link: https://lore.kernel.org/lkml/20200521100952.GA5360@willie-the-
> truck/
> >>> Cc: stable@vger.kernel.org
> >>> Reported-by: Will Deacon <will@kernel.org>
> >>> Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> >>> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> >>> ---
> >>>  include/acpi/actypes.h | 2 +-
> >>>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>>
> >>> diff --git a/include/acpi/actypes.h b/include/acpi/actypes.h index
> >>> 4defed58ea33..04359c70b198 100644
> >>> --- a/include/acpi/actypes.h
> >>> +++ b/include/acpi/actypes.h
> >>> @@ -508,7 +508,7 @@ typedef u64 acpi_integer;
> >>>
> >>>  #define ACPI_TO_POINTER(i)              ACPI_CAST_PTR (void, (acpi_size)
> (i))
> >>>  #define ACPI_TO_INTEGER(p)              ACPI_PTR_DIFF (p, (void *) 0)
> >>> -#define ACPI_OFFSET(d, f)               ACPI_PTR_DIFF (&(((d *) 0)->f), (void
> *)
> >>> 0)
> >>> +#define ACPI_OFFSET(d, f)               __builtin_offsetof(d, f)
> >>>  #define ACPI_PHYSADDR_TO_PTR(i)         ACPI_TO_POINTER(i)
> >>>  #define ACPI_PTR_TO_PHYSADDR(i)         ACPI_TO_INTEGER(i)
> >>>
> >>> --
> >>> 2.27.0.rc2.251.g90737beb825-goog
> 
> _______________________________________________
> Devel mailing list -- devel@acpica.org
> To unsubscribe send an email to devel-leave@acpica.org
> %(web_page_url)slistinfo%(cgiext)s/%(_internal_name)s

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
