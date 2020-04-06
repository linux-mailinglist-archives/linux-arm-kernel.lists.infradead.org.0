Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B96A819FB22
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 19:13:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K7ktJjbike2l9ztzdVC81e1Lv0riORIKpLm5ErJ73VE=; b=efhON2wmnuZMPE
	Uk2PjrkuDNC1C5sEQVj0wJhKEO7WTEEUt2xlJBsYQwrtLMCanyYG/UiN5VPNZqaUC84lB9+ugAna7
	oImLhNUJBGrfJnWX7aWtZE/bzLPRvSHcLvBbgxDxnu0KmO22VBMsZWMdA9smGM7wDeNFmNI4M2Gep
	YEZpgE+LDeJBL2H81Gi2qULsDyU/ZGMdgFck0KNkZuxHxfQSNuNUp014M0t6dqiMm0q9tCxgFYxIj
	b3uDxvj1D+EDXKQE/vZqFFDklv8O/X+qGcIBlalf9HcEyFAOsDiw92zLkf5jq+t29ZU48/AoY2b3M
	JVBZl8xpSTQnaaRPGkiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLVJH-0005Do-3a; Mon, 06 Apr 2020 17:13:19 +0000
Received: from mail-bn8nam11on2116.outbound.protection.outlook.com
 ([40.107.236.116] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLVJ5-0005Bx-Gh
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 17:13:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hfDynuLfduOOUCdChqCr0r7ftJKtRvSdsMGQuLvrGBMtZ1uci+kuPADb72kRTMnBUWp1oeElFoogoARz8phjzcBZUkICVAIfni+mRDbStIz6LSwGIr1Gk7Vp8ZJz+vU14xfG0gRSTqky5vz6OIANOtZxVeZqmKNVI05jKMgQJN5NAWozDqIyAn/sXDSC78+Ku2h3H1LDmSLvLMka81yzAoDfEcWgoc6KFaIQAyNph+zLW71iXtWGYji6KLecvLNPY39ET+JHnqGjQ8xHZtEpnH7alPk7+46uMNaBD/o+G4+hTuiGvBKyu+Fy4myPr0dm/U1t9xz4RgUHQ1wwnUwQTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wM0GsUud3iCCSD9iWAv3J0OScKtoOfsxyWwYx1n+IDQ=;
 b=TFu+eMfRzofbjA8qz4xkj2Mbp2aUiyBG18eibUV2GGPxSMA9/AO6XpZjTvC09LQYdnsrXMyD1FpmBjFmSzrneGwVIGHAR/IN+xZBV61qMRs67kbiy+GxUbCy7W0qfsgn8bi70pdb7DwaMidIgcc1DAe9prPHBNqqf9aY8Dp2ueVkyT3vjLXdH0pdKMDN+ZdKpsd37fcV/wcbbv2RyHvgGdqpey8mjckjYdJ/PDwxcKblCiSxhelmwjTeyrbN1PplqpVu38jgKoqVsTFScZ8zyAMo6oa54U82NhoU2Yab+UIPaUmmG0X6PIxhp6Iypgms4SvS5U5KWo4VWVTBolNU2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wM0GsUud3iCCSD9iWAv3J0OScKtoOfsxyWwYx1n+IDQ=;
 b=fL5PLjuUX2egsls0WAXQit6rMHjXq9YUvNUUKsXhLO0/UvV18PsozcqcfiPonjRX7aguNtfeK1D9U/K1TYhI/5ETB5Cunjxt6grPEXexPJqNg06X4h5ctBe+MsoGi32sSkysHD/B5E3cPd32A7T4oRl1CB0ou4gNKJSUuZXLgTg=
Received: from MW2PR2101MB1052.namprd21.prod.outlook.com (2603:10b6:302:a::16)
 by MW2PR2101MB0924.namprd21.prod.outlook.com (2603:10b6:302:10::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.6; Mon, 6 Apr
 2020 17:13:03 +0000
Received: from MW2PR2101MB1052.namprd21.prod.outlook.com
 ([fe80::71ee:121:71bd:6156]) by MW2PR2101MB1052.namprd21.prod.outlook.com
 ([fe80::71ee:121:71bd:6156%9]) with mapi id 15.20.2900.012; Mon, 6 Apr 2020
 17:13:02 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: Ard Biesheuvel <ardb@kernel.org>, "lersek@redhat.com" <lersek@redhat.com>
Subject: RE: [PATCH] efi/libstub/arm64: avoid image_base value from
 efi_loaded_image
Thread-Topic: [PATCH] efi/libstub/arm64: avoid image_base value from
 efi_loaded_image
Thread-Index: AQHWBUObXv2MTW3u/Ue45F8yahNJA6hgxFuAgAAA5gCAAAAuAIAAqMgQgAAIF4CAAOLlAIAAXdmAgAmrCCA=
Date: Mon, 6 Apr 2020 17:13:02 +0000
Message-ID: <MW2PR2101MB1052F06F444705247419B2B3D7C20@MW2PR2101MB1052.namprd21.prod.outlook.com>
References: <20200328205809.23825-1-ardb@kernel.org>
 <20200330074721.GV22097@bivouac.eciton.net>
 <CAMj1kXFPtY20afbAZgXT3As4TUuAqi3=pG8u19hjMjFxgN6HWA@mail.gmail.com>
 <CAMj1kXEf5rT1pmDNQoOd5Tx9xQ=fUMT0xo4JXZNfz=VDY9268Q@mail.gmail.com>
 <DM5PR2101MB104760D03E632DD4DBE99AE1D7CB0@DM5PR2101MB1047.namprd21.prod.outlook.com>
 <CAMj1kXF+2O5cDC9zuNp9Lx9Oe6WyxRghPqSi63CnF+KCcGUZyw@mail.gmail.com>
 <CAMj1kXFJB9ciJ41V2tpQNX_mN7S8BweV9_ME3sDxKjwnR2Jwbg@mail.gmail.com>
 <MW2PR2101MB10525381BAB07997EA5F6B7CD7C80@MW2PR2101MB1052.namprd21.prod.outlook.com>
In-Reply-To: <MW2PR2101MB10525381BAB07997EA5F6B7CD7C80@MW2PR2101MB1052.namprd21.prod.outlook.com>
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
x-originating-ip: [2001:4898:80e8:3:c94d:543c:127f:af4]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f34682ab-c71a-425b-e3f4-08d7da4dc3d5
x-ms-traffictypediagnostic: MW2PR2101MB0924:|MW2PR2101MB0924:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW2PR2101MB0924028E738D2FC5344B1FE8D7C20@MW2PR2101MB0924.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0365C0E14B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW2PR2101MB1052.namprd21.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(136003)(346002)(376002)(396003)(39860400002)(366004)(9686003)(8676002)(8936002)(4326008)(81156014)(81166006)(55016002)(316002)(54906003)(110136005)(53546011)(186003)(8990500004)(86362001)(5660300002)(71200400001)(107886003)(52536014)(33656002)(6506007)(10290500003)(66476007)(76116006)(66446008)(64756008)(66556008)(66946007)(2906002)(82960400001)(82950400001)(7696005)(478600001)(365024005);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EZdm4bZFcY1Eda1DLvdzqDxYxTn05kxe3/dMDiDPw2dpTjTjdaZ5wqKXwbD0rmUAa89S9FDJ3Iebf4i0R84iHVmNLWqfRQNU5N73nDSZNmMyhscV9PNCISc2VRSvP4Uh+QtGVCXi0N3xsj49HhiQsVVBoNuRixZsnnFoe7Sev0g2r6eU8uxngFVtFkPvKHs7h4FnRVYyugPRky+M+X5ngeOoOcM9eq21/5u7ZFqUxwdX19U+BUf57WaRqbXrbSfzrflEf1ia7HRImsd4a/2/RGIXgd0QXWrhAgi44vzCxEX5vEbshBUzwbIWIk9PlsqIzBcmexMgS+tY1oItrEAvFPH2cNa+59+j3bHw+rQqAlzWp+kYjN1rZ5Ksj85SWn0ln8x8kM8A8FV3lHtfpDrEoJMwu9H3WpWvQKTf06oDjro4PKTL/I73rifnSQ9YgyLhx42YMnwgvwvKUq2dtMfFTIEG72SPJNWi1zLlYmAw6oKx/UNGUr48lur8YjUmfE1w
x-ms-exchange-antispam-messagedata: Uxkp1N6J+0OhB98jydXfEkNUpKU+MbObzveXIUJ66jU3tM13bj39vhQG7CTfhTkGAQOmv9Y5QJbsMRbPxebiT4luS+kv3fxT3O5JNEc+lUh5n03jLG05dkofbu2PGeTJ1sc1vnRjdOtTWL3BlQc6VFUwlldX2Kan6s07/nJKGlMk74npyjMaP9RS2yocbvwP1afv4z2BNepIusciM7sQew==
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f34682ab-c71a-425b-e3f4-08d7da4dc3d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2020 17:13:02.7397 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ap5//IT4IJL0j3gQC0/sxQQ91XuxJh8IJZsInDhqwti2D6YEW6qIm3L9TH9ormwi0XYQHhaimCIqzh/A7Z7hNI0euQriB++qOB4QNUOeIWE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR2101MB0924
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_101307_639650_78926247 
X-CRM114-Status: GOOD (  28.84  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.116 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

From: Michael Kelley  Sent: Tuesday, March 31, 2020 6:38 AM
> 
> From: Ard Biesheuvel <ardb@kernel.org>  Sent: Tuesday, March 31, 2020 12:56 AM
> >
> > On Mon, 30 Mar 2020 at 20:24, Ard Biesheuvel <ardb@kernel.org> wrote:
> > >
> > > On Mon, 30 Mar 2020 at 20:12, Michael Kelley <mikelley@microsoft.com> wrote:
> > > >
> > > > From: Ard Biesheuvel <ardb@kernel.org>  Sent: Monday, March 30, 2020 12:51 AM
> > > > >
> > > > > On Mon, 30 Mar 2020 at 09:50, Ard Biesheuvel <ardb@kernel.org> wrote:
> > > > > >
> > > > > > On Mon, 30 Mar 2020 at 09:47, Leif Lindholm <leif@nuviainc.com> wrote:
> > > > > > >
> > > > > > > On Sat, Mar 28, 2020 at 21:58:09 +0100, Ard Biesheuvel wrote:
> > > > > > > > Commit 9f9223778ef3 ("efi/libstub/arm: Make efi_entry() an ordinary
> > > > > > > > PE/COFF entrypoint") did some code refactoring to get rid of the
> > > > > > > > EFI entry point assembler code, and in the process, it got rid of the
> > > > > > > > assignment of image_addr to the value of _text. Instead, it switched
> > > > > > > > to using the image_base field of the efi_loaded_image struct provided
> > > > > > > > by UEFI, which should contain the same value.
> > > > > > > >
> > > > > > > > However, Michael reports that this is not the case: older GRUB builds
> > > > > > > > corrupt this value in some way, and since we can easily switch back to
> > > > > > > > referring to _text to discover this value, let's simply do that.
> > > > > > >
> > > > > > > It is not clear to me how "older GRUB builds" would differ here.
> > > > > > > I think more investigation is needed before making that claim.
> > > > > > > My suspicion is that some (old) version of non-upstream, shim-enabled
> > > > > > > distro-specific build is playing a part.
> > > > > > >
> > > > > > > So, do we have the option for more detailed investigations, or can we
> > > > > > > vague the claim up to say "some GRUB builds seen in the wild, based
> > > > > > > on an upstream 2.02" or suchlike?
> > > > > > >
> > > > > >
> > > > > > I've queued a fix that prints a nastygram if the value deviates from
> > > > > > the expected one. Let's see if this triggers any reports.
> > > > >
> > > > > (/me looks at context)
> > > > >
> > > > > *This* is the fix that prints a nastygram.
> > > >
> > > > FWIW, I pulled the BOOTAA64.EFI and grubaa64.efi files from CentOS 7.6
> > > > and CentOS 8.0 binary packages and tested both in my Hyper-V VM.
> > > > Using strings | grep '2\.' to get version info, the CentOS 7.6 grubaa64.efi
> > > > shows:
> > > >
> > > >         User-Agent: GRUB 2.02~beta2
> > > >
> > > > The CentOS 8.0 grubaa64.efi shows:
> > > >
> > > >         User-Agent: GRUB 2.03
> > > >
> > > > Both versions produce the FIRMWARE BUG warning when using Ard's
> > > > latest patch.  I'll assume the equivalent RHEL versions are the same.
> > > > So we've got official distro releases that show the problem.
> > > >
> > > > As reported earlier, the BOOTAA64.EFI and grubaa64.efi from a
> > > > Debian release (not exactly sure which one) do not produce the
> > > > FIRMWARE BUG warning.  The grubaa64.efi reports as 2.04-4.
> > > >
> > >
> > > Thanks a lot Michael, that is really helpful.
> >
> > I could not reproduce the issue with Debian Stretch's
> > 2.02~beta3-5+deb9u2, so it does appear to be RedHat's value add that
> > is to blame here.
> >
> > @Laszlo: TL;DR RedHat's GRUB for arm64 appears to clobber the
> > image_base field of the efi_loaded_image struct passed to the kernel.
> > Could you please recommend a way to report this?
> 
> Or there could be something weird about my Hyper-V VM.  I have a
> couple of ARM64 bare metal machines, but they are in the office
> with no remote access, and we're on the work-from-home plan for
> now.  But I may be able to get into the office later this week and
> try it.  I'd like to rule out anything related to Hyper-V, and will
> update this thread if I can.
> 

I have tried this scenario on bare metal running RHEL 7.4, and the
problem reproduces as described above.  So this is *not* related to
running in a Hyper-V VM, which is what I wanted to make sure of.

Michael
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
