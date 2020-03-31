Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C143F199B0D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:12:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZXipN9skqBMIGvMtr5Cz1CT6S7wQJy30y+vfngMdrVk=; b=JklaSn9/s/3/wE
	J73pR/V22A87UKkTRLU3voaTCbXJ+h8vKak2WdA3SAPBdRud2Xn7zq1h4zcVuzTW78iUsPqCl/k0i
	F9zIjFSRYRs/jLrDAKBfa0ly0hEA0ULUCxkdSomuVOWHWn94Ceba8eQnXqDOgthY1hgKgPpPH46hf
	BqutT5HXDzoU5pbabscZRbJHwHiq9MtFQZjWOxKHyydJvITD5DK5LpqN+31rJ59WcMkYQGtBpA/Ds
	7Qkqx48yBZatJ64ytwoJuRCUYG0ysAgZE/I8TqyUviHQxXOeN0Z7VvP4JILgqposbhe1sTPvpaKqJ
	xRvTBe0p2ipkn6u+IiIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJUZ-0005Wn-IN; Tue, 31 Mar 2020 16:11:55 +0000
Received: from mail-bn8nam11on2090.outbound.protection.outlook.com
 ([40.107.236.90] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJUL-0005Vc-FJ
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 16:11:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZuHeZTR1jrQNqmW0vyZgz/d5ltjVZZoheyIThK1fXd+1cPnTVFPXMWbw8OQN2A4K0KIuN0uB6kkwLDFMfLbxUI9LOTuIBh6TfA+m8E3pTp8qOl61D6jQ00PdRb7hHCAFCHJG8Pj5llRwWNN0Gr20qaGR9YcnnDOTMCLkVRbW8AosnDammka7L3KGrmoshRcXpiZ8pD5nOXjpoTIugUoXRJjWoX84ZruICbbuQO3TPTMM7ViMH8iwXG5eSJeQ2GRDAcep9RRKzGX7oHIYQeV6N8z0aIrk8sazyOzfWRQgoCSe/VoVmb3WZDS76hQ7bf5gryiT8aKs912RMieOOD+ELA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lCw+T1nTJEBmtAG0toLAUHlQawDKBnglLx8yByveOIE=;
 b=HLLkeqbzzVoaTwRdZTYQJzQtArTgkvPSyQgcuxLlFu+7fBJqHZlSE+FN0uqMDyyMjrFRcPkh/qmXCNzTsbm3WrWgpLdL8M4RPPK7P3e9tb8oCXHa///INYt1hO6vt9WyFK2lxSAjeM1JOzgRA6nPblk8azTWK38uQUCdPuFg6paK5bIsr/19/GUcBJyKGiO5frTXYsZlrqFWO0OO1sBqx9WcgfeNCTsoB53thunpjP3Fx9u0Bv+flPxvnT3sJMjXXO0ZGjbW6NAOdmYELodL5fQuEZUp33VYWojSJmGnChySoBoUd/BUkzHX+30cz2FzJQHVEsHpv1ZV76FNPXjegg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lCw+T1nTJEBmtAG0toLAUHlQawDKBnglLx8yByveOIE=;
 b=aUayF902efsTPpUG+qdfNgLZgl7bWHmrbIXPlsZPpQUJ8WHCKsVpxRd2Eml4Q8bv7R3nSMTspMGaXZJ9szRD1F/2cy6sDHRVYULIh8j3ZjetoJQHmdVL38To223WTlYSH2e5Pl6l64WBCceYbdbrkY0PxqQGMQ74gDroojTHso8=
Received: from MW2PR2101MB1052.namprd21.prod.outlook.com (2603:10b6:302:a::16)
 by MW2PR2101MB1114.namprd21.prod.outlook.com (2603:10b6:302:a::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.2; Tue, 31 Mar
 2020 13:37:46 +0000
Received: from MW2PR2101MB1052.namprd21.prod.outlook.com
 ([fe80::71ee:121:71bd:6156]) by MW2PR2101MB1052.namprd21.prod.outlook.com
 ([fe80::71ee:121:71bd:6156%9]) with mapi id 15.20.2900.002; Tue, 31 Mar 2020
 13:37:46 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: Ard Biesheuvel <ardb@kernel.org>, "lersek@redhat.com" <lersek@redhat.com>
Subject: RE: [PATCH] efi/libstub/arm64: avoid image_base value from
 efi_loaded_image
Thread-Topic: [PATCH] efi/libstub/arm64: avoid image_base value from
 efi_loaded_image
Thread-Index: AQHWBUObXv2MTW3u/Ue45F8yahNJA6hgxFuAgAAA5gCAAAAuAIAAqMgQgAAIF4CAAOLlAIAAXdmA
Date: Tue, 31 Mar 2020 13:37:45 +0000
Message-ID: <MW2PR2101MB10525381BAB07997EA5F6B7CD7C80@MW2PR2101MB1052.namprd21.prod.outlook.com>
References: <20200328205809.23825-1-ardb@kernel.org>
 <20200330074721.GV22097@bivouac.eciton.net>
 <CAMj1kXFPtY20afbAZgXT3As4TUuAqi3=pG8u19hjMjFxgN6HWA@mail.gmail.com>
 <CAMj1kXEf5rT1pmDNQoOd5Tx9xQ=fUMT0xo4JXZNfz=VDY9268Q@mail.gmail.com>
 <DM5PR2101MB104760D03E632DD4DBE99AE1D7CB0@DM5PR2101MB1047.namprd21.prod.outlook.com>
 <CAMj1kXF+2O5cDC9zuNp9Lx9Oe6WyxRghPqSi63CnF+KCcGUZyw@mail.gmail.com>
 <CAMj1kXFJB9ciJ41V2tpQNX_mN7S8BweV9_ME3sDxKjwnR2Jwbg@mail.gmail.com>
In-Reply-To: <CAMj1kXFJB9ciJ41V2tpQNX_mN7S8BweV9_ME3sDxKjwnR2Jwbg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=mikelley@ntdev.microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2020-03-31T13:37:44.3591636Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=deac7ec8-f648-47d1-8a97-4257f5f9d3ae;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-originating-ip: [24.22.167.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f7b84d1c-923f-4861-2d70-08d7d578b263
x-ms-traffictypediagnostic: MW2PR2101MB1114:|MW2PR2101MB1114:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW2PR2101MB11149E7F4FCAA2CEE4B917ADD7C80@MW2PR2101MB1114.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0359162B6D
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW2PR2101MB1052.namprd21.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(366004)(66476007)(66556008)(64756008)(66946007)(9686003)(7696005)(71200400001)(66446008)(76116006)(55016002)(4326008)(26005)(107886003)(8936002)(54906003)(33656002)(8676002)(86362001)(6506007)(81166006)(186003)(81156014)(82950400001)(53546011)(498600001)(110136005)(52536014)(5660300002)(10290500003)(2906002)(82960400001)(8990500004)(365024005);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: J2PSF+tJ4P0ibnVw4f8G1aO5/Sa/PgYJkbYQC+rhZkI54uRWCG8XSSI60fL/d43qy5v1Q5B63bH9TZ4VscGuD5tTHu0dsxTeNCBCsDb+ZwxhDAx5egi6dHZAq79jDx5fO9ZgAvFwFevfTEivoB5nAYjsPY9B2u/8yPNQkPG9lkvGcQrytn3hhnaMeD8Yr/eEup4oDZjt+mJ2Z+ynb80D/Vk4b+7ChIMhR4Y2t6cQ8KB5YkUDe8UfUnGxqxeFh9y9bsD6y5B9NTngd14F5K/C6u8Kf7wD/jXlK9R/TJeQ4V+9Z77bTTPdIFJlRlb5HTIeqrMitIiRyOn+SCvR8Jy+Fd72bFV2TQ6/fMOO1Ce+nc/TSEsb73YcLZtV7LIT3aR0bVD0HJ0GW7+zIQNe/wgi38/TkaHQf6PXKSHedoj7pWBC+zAaNAkocLUyvS+lI7AoDK7pjJlA5931NJXkEDRywxZZFGYSe8FllJF3r0IQwSuvQVhLNU7yrD/VpDdvqXK1
x-ms-exchange-antispam-messagedata: eTCQ5/IBfBKQamZ9bnP4WiEtSE2AoGbMeFIodGuWzOVqkTCsVxeN3NOaPaAlLU6nGXbt2azV+phIN4eVgPt0hDUr8dr5t9yiIaFyIZTiV9EQntvqbE0PW2wQKIYutWKscRORKbZE+q6c3yP+3SlBCA==
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7b84d1c-923f-4861-2d70-08d7d578b263
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2020 13:37:46.0551 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wWK9cB+KK9xUZiZWPH5XnSzUC25XRg3UG1HeL/B0ebKbpV6cd6PtlK/G7YIydsk4Btb1IIYkbOUyGt+KfG2rzScmom7y33IA5TVJg+hMuNI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR2101MB1114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_091141_525195_FE2E4ADE 
X-CRM114-Status: GOOD (  25.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.90 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-efi <linux-efi@vger.kernel.org>,
 Boqun Feng <Boqun.Feng@microsoft.com>, Leif Lindholm <leif@nuviainc.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ard Biesheuvel <ardb@kernel.org>  Sent: Tuesday, March 31, 2020 12:56 AM
> 
> On Mon, 30 Mar 2020 at 20:24, Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Mon, 30 Mar 2020 at 20:12, Michael Kelley <mikelley@microsoft.com> wrote:
> > >
> > > From: Ard Biesheuvel <ardb@kernel.org>  Sent: Monday, March 30, 2020 12:51 AM
> > > >
> > > > On Mon, 30 Mar 2020 at 09:50, Ard Biesheuvel <ardb@kernel.org> wrote:
> > > > >
> > > > > On Mon, 30 Mar 2020 at 09:47, Leif Lindholm <leif@nuviainc.com> wrote:
> > > > > >
> > > > > > On Sat, Mar 28, 2020 at 21:58:09 +0100, Ard Biesheuvel wrote:
> > > > > > > Commit 9f9223778ef3 ("efi/libstub/arm: Make efi_entry() an ordinary
> > > > > > > PE/COFF entrypoint") did some code refactoring to get rid of the
> > > > > > > EFI entry point assembler code, and in the process, it got rid of the
> > > > > > > assignment of image_addr to the value of _text. Instead, it switched
> > > > > > > to using the image_base field of the efi_loaded_image struct provided
> > > > > > > by UEFI, which should contain the same value.
> > > > > > >
> > > > > > > However, Michael reports that this is not the case: older GRUB builds
> > > > > > > corrupt this value in some way, and since we can easily switch back to
> > > > > > > referring to _text to discover this value, let's simply do that.
> > > > > >
> > > > > > It is not clear to me how "older GRUB builds" would differ here.
> > > > > > I think more investigation is needed before making that claim.
> > > > > > My suspicion is that some (old) version of non-upstream, shim-enabled
> > > > > > distro-specific build is playing a part.
> > > > > >
> > > > > > So, do we have the option for more detailed investigations, or can we
> > > > > > vague the claim up to say "some GRUB builds seen in the wild, based
> > > > > > on an upstream 2.02" or suchlike?
> > > > > >
> > > > >
> > > > > I've queued a fix that prints a nastygram if the value deviates from
> > > > > the expected one. Let's see if this triggers any reports.
> > > >
> > > > (/me looks at context)
> > > >
> > > > *This* is the fix that prints a nastygram.
> > >
> > > FWIW, I pulled the BOOTAA64.EFI and grubaa64.efi files from CentOS 7.6
> > > and CentOS 8.0 binary packages and tested both in my Hyper-V VM.
> > > Using strings | grep '2\.' to get version info, the CentOS 7.6 grubaa64.efi
> > > shows:
> > >
> > >         User-Agent: GRUB 2.02~beta2
> > >
> > > The CentOS 8.0 grubaa64.efi shows:
> > >
> > >         User-Agent: GRUB 2.03
> > >
> > > Both versions produce the FIRMWARE BUG warning when using Ard's
> > > latest patch.  I'll assume the equivalent RHEL versions are the same.
> > > So we've got official distro releases that show the problem.
> > >
> > > As reported earlier, the BOOTAA64.EFI and grubaa64.efi from a
> > > Debian release (not exactly sure which one) do not produce the
> > > FIRMWARE BUG warning.  The grubaa64.efi reports as 2.04-4.
> > >
> >
> > Thanks a lot Michael, that is really helpful.
> 
> I could not reproduce the issue with Debian Stretch's
> 2.02~beta3-5+deb9u2, so it does appear to be RedHat's value add that
> is to blame here.
> 
> @Laszlo: TL;DR RedHat's GRUB for arm64 appears to clobber the
> image_base field of the efi_loaded_image struct passed to the kernel.
> Could you please recommend a way to report this?

Or there could be something weird about my Hyper-V VM.  I have a
couple of ARM64 bare metal machines, but they are in the office
with no remote access, and we're on the work-from-home plan for
now.  But I may be able to get into the office later this week and
try it.  I'd like to rule out anything related to Hyper-V, and will
update this thread if I can.

Michael
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
