Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CD01FC114
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 23:39:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ASZ/Zx2ODqF7hUn85f1RqZqX0yRQ2u2oNuD+dcJ+/Bk=; b=tW/5c/8PSRGZ81
	yTErTQP28yyh9Wrf17wYRdxs+jHvM/k+ZdKxbITCgWB6z0VaUnpf4izwzdC5REPyQe9pzvbrE9JSq
	ewEV+Tu1zBYZbHaPX908M2hIynX8uMiEPSIgcwIM2hsafRCL3bdLsd7q8pg/uN7MNglKSrrDzlyAI
	IE4cwSwsG5qT2yzfnhb3EdMBOGujog/m1tDpsucP0tZNb3GncjrazhXAQsuEEcvUIE2cv9euWUVb+
	Y5CZLMD+zYsrusIITujYm9jtMSTPq5OIRIW4wJ2CzkjHA4t0zn2aC/p8sDfDJU4svFNSdrzqdqIjq
	dx3ZBSfbTSzwHI+yUHHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlJIw-0002wo-6l; Tue, 16 Jun 2020 21:39:38 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlJIo-0002w4-4n
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 21:39:31 +0000
IronPort-SDR: mhLFIR1rrjkvRCI/fFtB54IjdKskaWi4CTuE7gqM4pjKjv/QXcRpNqceqpLfZPiRMAQ5FoqQaE
 i7fRIlk7KF4g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 14:39:27 -0700
IronPort-SDR: XBRSy3osg+2PPiaQluZ+snIRz3oDMTqx+SMcd3CutmyuW6M3pcjJUQxKaO7D/KEWcJoX0hsDm3
 QTaiX2ODyQsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,519,1583222400"; d="scan'208";a="308589653"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga008.jf.intel.com with ESMTP; 16 Jun 2020 14:39:27 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 16 Jun 2020 14:39:26 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Tue, 16 Jun 2020 14:39:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O7uAcNSC5b0i9qwSUhHX6Lsp86QxFgRxC7Zz0mVuPx8IoX4NXCrud4tQnkYiwC5+MFgJPrQelVTbAXWvXTIqy0Dn5nb8G7nWT2QwpnDjkulSobKpuob3kumU2FkQRzTFrNtELFW0gPFRk0G9IKhZ22DHWzK+1/CpmO8nTndZRSJ0RjIzX6qpgikF1MGLogjeDWavf8V7xQNvUfBar/K90J15kjzG4/j4wgPudw2iNAWIiapgPFSQFGL7eyRCGNizHgzpL4ACldEEQzdDlWX5eyBWyPKKribIfjhCbNsQnTDlc/19yL9wuE568b1PGO8ap3v/ymFbr8G9coh/WcS9WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nKhzYrH7L9Wp83NpiMD9toE2NmxOXgLSXKWyEXDxHCE=;
 b=W2FDhSO4DE7DN1ORwbMZGrC5zzcCB23EbG0u0gJA4mOLYM9YLwzrbtQYJmWg9xRRhXGkywGp7j++9zXE5ltweuTrVA1DAi3ieCFNIRprfxsrUYC4ltE1KpA77vOr8sgMjmj8ASkc6b5LNz+qnBZfoFw0guNMi+L5hUB9ihRlRw7rJTC3Fi+2Wk8fjUZ2QLhJvDJ08v2d3Mb9kYQcVtjpSdVB1qEq6rKl0N+0WfmjdspsQudZKU3jrPoo0/avggKu0Cy2rstjhoubfSKu+9Uw1tbyB7dnlyXH4JDW5NcN60H6cxuAcO+ylqL7n+l7n8A5SGFwIvxY1lw0g9aI4BT5iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nKhzYrH7L9Wp83NpiMD9toE2NmxOXgLSXKWyEXDxHCE=;
 b=nkRWWMId7RAaP2QiVyKSaWVtjzZ7juLDWW9J3zG2gn92BQUCnii975RBwu+wUatltV9k2xaONvv4CM+gUELRG82lNKKcoTdYcTAgs1rn9CaU90Bx7u0FfTLEL3CsjnInnXKMXFkAk5xSrTNPmejNjCAwKjt8oRrlKvR1IH6jjgY=
Received: from MWHPR11MB1599.namprd11.prod.outlook.com (2603:10b6:301:e::16)
 by MW3PR11MB4684.namprd11.prod.outlook.com (2603:10b6:303:5d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.21; Tue, 16 Jun
 2020 21:39:18 +0000
Received: from MWHPR11MB1599.namprd11.prod.outlook.com
 ([fe80::deb:2fe:1d84:a19f]) by MWHPR11MB1599.namprd11.prod.outlook.com
 ([fe80::deb:2fe:1d84:a19f%11]) with mapi id 15.20.3088.028; Tue, 16 Jun 2020
 21:39:18 +0000
From: "Kaneda, Erik" <erik.kaneda@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: RE: [Devel] Re: [PATCH] ACPICA: fix UBSAN warning using
 __builtin_offsetof
Thread-Topic: [Devel] Re: [PATCH] ACPICA: fix UBSAN warning using
 __builtin_offsetof
Thread-Index: AQHWOGr94BDOASQdIU6ZpTv243EHY6jShAOAgAAI/wCAAATVgIABFD4QgAAOVICACCW1YA==
Date: Tue, 16 Jun 2020 21:39:17 +0000
Message-ID: <MWHPR11MB15994AAFA4C5903DDB3C5861F09D0@MWHPR11MB1599.namprd11.prod.outlook.com>
References: <CAMj1kXErFuvOoG=DB6sz5HBvDuHDiKwWD8uOyLuxaX-u8-+dbA@mail.gmail.com>
 <20200601231805.207441-1-ndesaulniers@google.com>
 <BYAPR11MB3096A0EA2D03BCB76C91F80AF0830@BYAPR11MB3096.namprd11.prod.outlook.com>
 <CAKwvOdnh6Zh+P9SM_qFiy-9u7Y21fn=byTJtG4fTTRJqqU9bcQ@mail.gmail.com>
 <9f4322a5-eea6-fb65-449c-90f3d85f753e@FreeBSD.org>
 <BYAPR11MB3096904AD67CC83A67A38215F0800@BYAPR11MB3096.namprd11.prod.outlook.com>
 <CAKwvOdndPdAWVSJ530mgT5onG4zsHExqO79=QvvLvpz51D8LsQ@mail.gmail.com>
In-Reply-To: <CAKwvOdndPdAWVSJ530mgT5onG4zsHExqO79=QvvLvpz51D8LsQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: google.com; dkim=none (message not signed)
 header.d=none;google.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.52.209]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0487fc41-cd05-4e04-fda4-08d8123db91c
x-ms-traffictypediagnostic: MW3PR11MB4684:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB468479D764CD85EBB327A0EEF09D0@MW3PR11MB4684.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 04362AC73B
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 14i2li2BPovemeXPsaoir9t3X5vQLniDORQFffwbyY97urfvnNf6V5QavZVqx2WgJXFKF8WhbeefhT0irpvJSpNgIhiSyhdAk7r3od0SKmMB17JlpX9tN0vvfBUhnmwY2QWWGd3l4IOxymuV54UVXI4fwVc6JWL2hy1Du2vTGbzbXpZpq3CwdLWEJJD57KfPPEp20FoVQUh5WAjWkpD1ESBBsGXYiO0oPHN9TSLsn055CwshcIy/p+y7bS+4WOdMFwrKoo1dg9zbmmtrMOLHdbVvIrGn9cpeQCr3Cic0q7oVEpTxCaJ5pP4TOZHl70BoMUMuAIU9AkjY4GpHWeSn6w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1599.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(396003)(366004)(39860400002)(136003)(6506007)(33656002)(76116006)(66476007)(66556008)(6916009)(64756008)(66446008)(66946007)(478600001)(53546011)(7696005)(9686003)(4326008)(55016002)(7416002)(2906002)(86362001)(5660300002)(54906003)(71200400001)(8936002)(83380400001)(52536014)(26005)(316002)(8676002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: GUBuMDFKq7Hu7JnSnFunh/RWzd/DmhJcOYCUaT3H4+y14ZFzy+8jrMT8IXDc/M6xKs206Kppxw42XGnPsO6iR08HrNSR4fWR/pv2EBU43QQ+szvFemQ+7hBpvaEKbCJA8RzllACvYh6HD/v8w9M6gzQzqA9KzmME6+ohz7cBWLffWaGyWG55tFvRE6fuE0zVopRwjkwV2vH1nPTOOhW+x9JIjjDvE8dHeWlccUXMmWpZNSBW9N9W6RdWgg71e4ntmahG20kht1JefbJfe0D5y/i2vG+1H6ImaLdvQkXDMVNRmQMKKcNI6FXtEZMTMH7JKBMrMjs2L4ikRPnvaVtSEPPGzjIo1GlJz5CCTLFHBn0O6jtTbgFamOn6L2Z2PpS+gaeWktWUJq8nv50MQkIlceLo3yRCFpIFOowYngn5VfFClw2ox4d4qbHhcDj8io1wRgeIaytPSlT84B/pN1ksHM+wF5Wu1hqP9nUv/qBJ/Jw=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0487fc41-cd05-4e04-fda4-08d8123db91c
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2020 21:39:18.0385 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0CjBNC2UkkQYJgnq6A+LaWQZ0lnXluVN0otvzB6SlmP2hH+z2TrbKmHqd2YHk3DqD6YeqWlt94HY6pf2nzY+qA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4684
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_143930_311494_57C0E60B 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "will@kernel.org" <will@kernel.org>, "Wysocki,
 Rafael J" <rafael.j.wysocki@intel.com>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "glider@google.com" <glider@google.com>, Jung-uk Kim <jkim@freebsd.org>,
 "pcc@google.com" <pcc@google.com>, Ard Biesheuvel <ardb@kernel.org>,
 "dvyukov@google.com" <dvyukov@google.com>,
 "devel@acpica.org" <devel@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Nick Desaulniers <ndesaulniers@google.com>
> Sent: Thursday, June 11, 2020 10:06 AM
> To: Kaneda, Erik <erik.kaneda@intel.com>
> Cc: Jung-uk Kim <jkim@freebsd.org>; Wysocki, Rafael J
> <rafael.j.wysocki@intel.com>; Ard Biesheuvel <ardb@kernel.org>;
> dvyukov@google.com; glider@google.com; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> lorenzo.pieralisi@arm.com; mark.rutland@arm.com; pcc@google.com;
> rjw@rjwysocki.net; will@kernel.org; stable@vger.kernel.org; linux-
> acpi@vger.kernel.org; devel@acpica.org
> Subject: Re: [Devel] Re: [PATCH] ACPICA: fix UBSAN warning using
> __builtin_offsetof
> 
> On Thu, Jun 11, 2020 at 9:45 AM Kaneda, Erik <erik.kaneda@intel.com>
> wrote:
> >
> > > From: Jung-uk Kim <jkim@FreeBSD.org>
> > >
> > > Actually, I think we should let platform-specific acfoo.h decide what to
> > > do here, i.e.,
> >
> > That's a better solution. For Linux, it would look something like this:
> >
> > --- a/include/acpi/actypes.h
> > +++ b/include/acpi/actypes.h
> > @@ -508,10 +508,15 @@ typedef u64 acpi_integer;
> >
> >  #define ACPI_TO_POINTER(i)              ACPI_CAST_PTR (void, (acpi_size) (i))
> >  #define ACPI_TO_INTEGER(p)              ACPI_PTR_DIFF (p, (void *) 0)
> > -#define ACPI_OFFSET(d, f)               ACPI_PTR_DIFF (&(((d *) 0)->f), (void *)
> 0)
> >  #define ACPI_PHYSADDR_TO_PTR(i)         ACPI_TO_POINTER(i)
> >  #define ACPI_PTR_TO_PHYSADDR(i)         ACPI_TO_INTEGER(i)
> >
> > +/* Platforms may want to define their own ACPI_OFFSET */
> > +
> > +#ifndef ACPI_OFFSET
> > +#define ACPI_OFFSET(d, f)               ACPI_PTR_DIFF (&(((d *) 0)->f), (void
> *) 0)
> > +#endif
> > +
> >  /* Optimizations for 4-character (32-bit) acpi_name manipulation */
> >
> >  #ifndef ACPI_MISALIGNMENT_NOT_SUPPORTED
> > diff --git a/include/acpi/platform/aclinux.h
> b/include/acpi/platform/aclinux.h
> > index 987e2af7c335..5d1ca6015fce 100644
> > --- a/include/acpi/platform/aclinux.h
> > +++ b/include/acpi/platform/aclinux.h
> > @@ -71,6 +71,11 @@
> >  #undef ACPI_DEBUG_DEFAULT
> >  #define ACPI_DEBUG_DEFAULT          (ACPI_LV_INFO | ACPI_LV_REPAIR)
> >
> > +/* Use gcc's builtin offset instead of the default */
> > +
> > +#undef ACPI_OFFSET
> > +#define ACPI_OFFSET(a,b)            __builtin_offsetof(a,b)
> > +
> >  #ifndef CONFIG_ACPI
> >
> 
Hi,

Sorry about the delayed response.

> Looks good at first glance.  Wouldn't actypes.h need to include
> platform/acenv.h first though?  Otherwise you put some header
> inclusion order dependency on folks who include actypes.h to first
> include acenv.h otherwise we're not getting the definition in terms of
> __builtin_offsetof.

Actypes.h is intended for ACPICA use. For files using ACPI_OFFSET, they include headers like acpi.h that ends up including aclinux.h before including actypes.h. For those using ACPI_OFFSET, precedence will be given to the definition in aclinux.h before falling back to the definition in actypes.

Erik

> 
> --
> Thanks,
> ~Nick Desaulniers
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
