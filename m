Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFA01F5E95
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 01:07:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x7+bSKmSSEV+Dgme8Hl8aZJUxgFDzIvKa4bXkW9lTTA=; b=nMwkajdo5xQzFA
	9lIRxoyzkMUBFRYIQtVqfjCrCpmz87nEiNb6CwBhFuLdON+nmj6BhOoFZ5m3BrT3veZHHUZKVUKPB
	othtoueDoN4eTJkbdfp78oDiE7FAqWF5F1o55NYHiU04zzaHn/sdOt0tL9VftYKGiMZ5FZoz3D8A1
	/I4t2IAKv9dQKfN4cMSEwt7F2W7vev4U7gzZwWL9oyO3p0cXMUsM8nSFTSc1gug+GpSPI0+yXFEwL
	GglsZHasAplLPzDscG3ZEHb3GvyV02d/g1+V0pVHDplzboYltDMw9HSrM5P6op0IA+1bmsZBvHNLh
	Sss4nnLDCTzO4b5R1wuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj9oK-0007rd-95; Wed, 10 Jun 2020 23:07:08 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj9oB-0007qy-7L
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 23:07:01 +0000
IronPort-SDR: 74EzdGxcDjjMc9vAWxyyF8d9EBV2PV+J7LMj00YMKYYe3bs2flletFFg6URB3roVO3xCL9YrTI
 ZjeI2Xc79xAg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2020 16:06:53 -0700
IronPort-SDR: udQk6HBzF9uxSLyKz9VNfiHCO+b3u3p3cIok7nGcPHNYcsr0swUKYLayP97HjieE+Oolyztnlh
 mdyQ7tDaelZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,497,1583222400"; d="scan'208";a="473597281"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga005.fm.intel.com with ESMTP; 10 Jun 2020 16:06:54 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 10 Jun 2020 16:06:54 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 10 Jun 2020 16:06:54 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 10 Jun 2020 16:06:54 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 10 Jun 2020 16:06:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LDPbhXeDeU7SWXqz/AtR3FhcL/Hrij2jesX/R/blM0XWu8+qTA2UZdiRReO7o1Gh95BSOlYX9dkqhTLjF1hfUxIMsdxHk1NlcX6BiyAsA4V8BQ1WW4P3vkRNJazNlQS/m1YnkwTcETOYCH6W4BO9oL/gHSxzz5vBKwxZBRwNnLELHjs6+Kos6/aFVJfss0HsQWPQqtSHnIPi7aTWclf0inVvbIWMc5MQKMjKJm8f985sDaPN1JLbl1vcEktdMR5MtmhlKM1skpDRKeDvyp/CKg289jWY+ZVD8+zX7uTypPS6faYkIkP4WqV61D94varJUwhdnkUeXL98IPzB4Re5yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l/t0yW+iU7qvLMyxaRCA19vx1L3bJ4zhNYqpL7j59jg=;
 b=WpG2ZUEKwprhLH0XXTcySJgRdDpZ3a5fWyT3BIOfB6Z3uG51YOCgu6Bbxdbs1bTrsQdRWB/U1iQdMqdBrsA14+lhCnhp7KVZrbvts8A65FnP2i8I3sBKIwXtTdCzlJws0wbrBQyLmAce2tjr/XdYPGbJU2wY+Ltaz+v3Z9a/sxA1TPyj6ruecvpOJ7IDPBosxqCSSJ0aror55IyT7PaJ8CdUOi4WUxR8kMIU7xQM9NTvp6icyaA4+9yYbwwNDDyUxx01PxXcU2qPwob8jk3jPYUwTj5/kQbBU6yrU+96KI96VXo1g/gKdNT12kfxIMEuWotT8ozoQTqatPqZjwzJqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l/t0yW+iU7qvLMyxaRCA19vx1L3bJ4zhNYqpL7j59jg=;
 b=E+KNuU62Vnd2DSCO4N/yj3JGWe65lAEFfqPha8i+84e9WkLvCYcjJQuiGlU0DiAzRsJiOaMo2ojf/zdAHfcJwByID3zRDT8dOh6s4VeQCnyx+a1Pp0YQs+OdjhUcNBw5BTFNqM4++L5JT9Dciev0Aog/TWfJbWzp5Y/t2WD4slg=
Received: from BYAPR11MB3096.namprd11.prod.outlook.com (2603:10b6:a03:8f::14)
 by BYAPR11MB3688.namprd11.prod.outlook.com (2603:10b6:a03:f8::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Wed, 10 Jun
 2020 23:06:39 +0000
Received: from BYAPR11MB3096.namprd11.prod.outlook.com
 ([fe80::ad0c:c6a9:6f39:eb92]) by BYAPR11MB3096.namprd11.prod.outlook.com
 ([fe80::ad0c:c6a9:6f39:eb92%5]) with mapi id 15.20.3088.019; Wed, 10 Jun 2020
 23:06:39 +0000
From: "Kaneda, Erik" <erik.kaneda@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>, "Moore, Robert"
 <robert.moore@intel.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>,
 Len Brown <lenb@kernel.org>, Jung-uk Kim <jkim@FreeBSD.org>
Subject: RE: [PATCH] ACPICA: fix UBSAN warning using __builtin_offsetof
Thread-Topic: [PATCH] ACPICA: fix UBSAN warning using __builtin_offsetof
Thread-Index: AQHWOGr94BDOASQdIU6ZpTv243EHY6jShAOA
Date: Wed, 10 Jun 2020 23:06:38 +0000
Message-ID: <BYAPR11MB3096A0EA2D03BCB76C91F80AF0830@BYAPR11MB3096.namprd11.prod.outlook.com>
References: <CAMj1kXErFuvOoG=DB6sz5HBvDuHDiKwWD8uOyLuxaX-u8-+dbA@mail.gmail.com>
 <20200601231805.207441-1-ndesaulniers@google.com>
In-Reply-To: <20200601231805.207441-1-ndesaulniers@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: google.com; dkim=none (message not signed)
 header.d=none;google.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.192]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d91b641c-8cfc-4b87-61b6-08d80d92eeaa
x-ms-traffictypediagnostic: BYAPR11MB3688:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB3688BE441EE88269AF6A2B31F0830@BYAPR11MB3688.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0430FA5CB7
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7xcXok1vt3b8mPU7EEh3Gwt+HASx9t9etCtR7leoU2twfGEpDNJyl8UpbSi50zWAkcCAtT6m+CPTrfQe6VbFCQSPK97RtKF2L7u7WuGGadgSsHN5QwwP9FvRzo1tjA53lVdAy48++n9bPQO+d1FryTUxTANMDhLW5xIPNUysHlLc8b7qgQ93ogK24aseoPMVxYJVfpqEejZFUkaVzaV6RZYHZBlSsH+3va5Ztd/8nTULYkmc/2MzgLAPr18v4KB11GKErg35PF59eq3OWyEgWOq144ZPWXtv6ggq5elSegPPDCjcEgUGSHz8dAxHri4md43elTLEaLDdmaHFt8us84nqalVyzugn8SgbNAhgT9G1GiHRYYsqB1EDwc0mOJB0Zy41zUWeo38UauF1w0LVvQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3096.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(346002)(366004)(376002)(396003)(136003)(83380400001)(33656002)(76116006)(186003)(478600001)(66946007)(66446008)(53546011)(6506007)(64756008)(71200400001)(66476007)(4326008)(7416002)(26005)(9686003)(55016002)(2906002)(66556008)(7696005)(316002)(54906003)(86362001)(5660300002)(52536014)(110136005)(8676002)(966005)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: elckjCR9+TYJD/lC5JnAWva36ahASVKfGF5/yC1ghC5D35pwRy/Q5vMjApjEs1a4qfW7xe7Fc6AnYYJ9OrfNu8kb1rneqxveQyTJkJ2BYPnQkK4s4B8Qhm/NB06bNr+xRQLKRRupkXPkoTY4KQmGM0actdZhJ6ReacFev/0GCmWAh75F1wAclA30TIjrmw1gP4C1l+V4C/dV96qo/3TB9tjboAHIdJH67qp0gMTyprklBHsZP7ecs6Z1bUGWH4poLVJVnJ9iSOcPBUehDvJPst+QoZFwSscYt8VHZ9zY+f1q1j/jlC+d8ppDWAOoi7WnnwY997SDmBYjgwvqEVdAn0pvvJ8z0ircJCDqUuDspEomzWZMBIUDG7ucEmQnpjoQDbe5rQJAyb8T6XUltMmhqoOnzgafA0vnTXA2NtLXcXBNLeyDhsufwnD1cML91z7ai5RW4q/nyY7sB0BQhmR1iymfoFBIC8bdXCC9XdhNu7sDUFmHvPKzUFG3an2xZUN3
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d91b641c-8cfc-4b87-61b6-08d80d92eeaa
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2020 23:06:38.5699 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G/LgcMGKzCObrsAtesLEH+g00ou3h4rPBnVLn4mF+Z25WWveyEcSu0y8gkvr4JJkGUnuT1rDbwfd4uwQMM8o6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3688
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_160659_310456_A7E2C1D8 
X-CRM114-Status: GOOD (  17.62  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "will@kernel.org" <will@kernel.org>, "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "glider@google.com" <glider@google.com>,
 "dvyukov@google.com" <dvyukov@google.com>,
 "guohanjun@huawei.com" <guohanjun@huawei.com>,
 "pcc@google.com" <pcc@google.com>, Ard Biesheuvel <ardb@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "devel@acpica.org" <devel@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+JKim (for FreeBSD's perspective)

> -----Original Message-----
> From: Nick Desaulniers <ndesaulniers@google.com>
> Sent: Monday, June 1, 2020 4:18 PM
> To: Moore, Robert <robert.moore@intel.com>; Kaneda, Erik
> <erik.kaneda@intel.com>; Wysocki, Rafael J <rafael.j.wysocki@intel.com>;
> Len Brown <lenb@kernel.org>
> Cc: Ard Biesheuvel <ardb@kernel.org>; dvyukov@google.com;
> glider@google.com; guohanjun@huawei.com; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> lorenzo.pieralisi@arm.com; mark.rutland@arm.com;
> ndesaulniers@google.com; pcc@google.com; rjw@rjwysocki.net;
> will@kernel.org; stable@vger.kernel.org; linux-acpi@vger.kernel.org;
> devel@acpica.org
> Subject: [PATCH] ACPICA: fix UBSAN warning using __builtin_offsetof
> 
> Will reported UBSAN warnings:
> UBSAN: null-ptr-deref in drivers/acpi/acpica/tbfadt.c:459:37
> UBSAN: null-ptr-deref in arch/arm64/kernel/smp.c:596:6
> 
Hi,

> Looks like the emulated offsetof macro ACPI_OFFSET is causing these. We
> can avoid this by using the compiler builtin, __builtin_offsetof.
> 
This doesn't really fly because __builtin_offsetof is a compiler extension.

It looks like a lot of stddef.h files do this:

#define offsetof(a,b) __builtin_offset(a,b)

So does anyone have objections to ACPI_OFFSET being defined to offsetof()?

This will allow a host OS project project to use their own definitions of offsetof in place of ACPICA's.
If they don't have a definition for offsetof, we can supply the old one as a fallback.

Here's a patch:

--- a/include/acpi/actypes.h
+++ b/include/acpi/actypes.h
@@ -504,11 +504,17 @@ typedef u64 acpi_integer;
 #define ACPI_SUB_PTR(t, a, b)           ACPI_CAST_PTR (t, (ACPI_CAST_PTR (u8, (a)) - (acpi_size)(b)))
 #define ACPI_PTR_DIFF(a, b)             ((acpi_size) (ACPI_CAST_PTR (u8, (a)) - ACPI_CAST_PTR (u8, (b))))

+/* Use an existing definiton for offsetof */
+
+#ifndef offsetof
+#define offsetof(d,f)                   ACPI_PTR_DIFF (&(((d *) 0)->f), (void *) 0)
+#endif
+
 /* Pointer/Integer type conversions */

 #define ACPI_TO_POINTER(i)              ACPI_CAST_PTR (void, (acpi_size) (i))
 #define ACPI_TO_INTEGER(p)              ACPI_PTR_DIFF (p, (void *) 0)
-#define ACPI_OFFSET(d, f)               ACPI_PTR_DIFF (&(((d *) 0)->f), (void *) 0)
+#define ACPI_OFFSET(d, f)               offsetof (d,f)
 #define ACPI_PHYSADDR_TO_PTR(i)         ACPI_TO_POINTER(i)
 #define ACPI_PTR_TO_PHYSADDR(i)         ACPI_TO_INTEGER(i)

Thanks,
Erik

> The non-kernel runtime of UBSAN would print:
> runtime error: member access within null pointer of type for this macro.
> 
> Link: https://lore.kernel.org/lkml/20200521100952.GA5360@willie-the-truck/
> Cc: stable@vger.kernel.org
> Reported-by: Will Deacon <will@kernel.org>
> Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  include/acpi/actypes.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/acpi/actypes.h b/include/acpi/actypes.h index
> 4defed58ea33..04359c70b198 100644
> --- a/include/acpi/actypes.h
> +++ b/include/acpi/actypes.h
> @@ -508,7 +508,7 @@ typedef u64 acpi_integer;
> 
>  #define ACPI_TO_POINTER(i)              ACPI_CAST_PTR (void, (acpi_size) (i))
>  #define ACPI_TO_INTEGER(p)              ACPI_PTR_DIFF (p, (void *) 0)
> -#define ACPI_OFFSET(d, f)               ACPI_PTR_DIFF (&(((d *) 0)->f), (void *)
> 0)
> +#define ACPI_OFFSET(d, f)               __builtin_offsetof(d, f)
>  #define ACPI_PHYSADDR_TO_PTR(i)         ACPI_TO_POINTER(i)
>  #define ACPI_PTR_TO_PHYSADDR(i)         ACPI_TO_INTEGER(i)
> 
> --
> 2.27.0.rc2.251.g90737beb825-goog

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
