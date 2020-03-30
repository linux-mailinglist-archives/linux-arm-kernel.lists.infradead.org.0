Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B76D19831B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 20:12:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+/S/z+jSxO9g2S1Q7pv03+4BKw1r0RpPx2rTksqfRv0=; b=tsnWJqWpzRt5AQ
	WZJ1WNX0xz/h2RKKWs6dGRagODR7nG4v5ao3kIWQtErsg75D43ZhoItIEy91WCghzP5Us/SVr6zsQ
	6yzuAKRiFeb5Hay8Q4lprqBSH/PcOMg4pJmaCvb36hSEFnI9r8vwvq9woGUEV3U+AaVHDIW0mE4Du
	Q/kvsim4XU9IplhSd5ZbJ6XGtfTTwR4nfaS/RiiEwrir0g/djcG/Uo/bduGnoFn4d1LGrIndIslA4
	tkfQ9tnBADNJorEJsnmXKBDmfybyLj0HgvzaYNwwIm7DO7Nu1vRzNd97sNqw66twuC8s0S0dy2kPm
	TTsclWEFIr8Td6E01Uww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIyu2-0007jx-Vy; Mon, 30 Mar 2020 18:12:51 +0000
Received: from mail-co1nam11on2129.outbound.protection.outlook.com
 ([40.107.220.129] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIyts-0007jT-VK
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 18:12:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KWdcYnqdG11T14UW1Bgwx/rFNMAzMc5D7172dXtPqCWBRKENpJvr7EqmK0FrWRdMX8ynRmbjlyFo4bPF+wMgE9nBxoewmLyJabVoOB9Zq7ucgY193GSZ1fejDM4fWxwOthqRzyHY56EdTM+gE8zm8Zp4Sr9eNwhxXfomZqRHm/IRZlouTqYggc+Ks9T/Em6D2U//RLmzzDf5Z13RQTtouIjaSx7ojV7qCsg+36frVO7637ztBqJgn2RxSJbW2TcJiq0bHai5vXjMB162M1JEFGrCvZa0AQP4PWqL/zBTLaQORhDUZqh2bBTCmZL2TehDFIelhkZlpl24Utq712Yi+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jy250IrG9u6aOLw+oIxJlCv3mA0PZRenUZSN0Qr0S6c=;
 b=VYiOwS0CSGGOA914X4wdB0hIXpg1HWIO/MToRQheVVkCsQej1Mu4PfePZFMKOO6NoZalbx11k0PWD7vDDk/GCFMPv68FBXl9btuTHC008JSaAQ+RrAIHNSH+zosVAsAECeP36vhIRf0Jo5ZsV7jX+1MUmEnbB8iMnpHkqkOf2YZcDMm8VoPj1lP7I4AsgYjrx/OmFWIo/xznu/N935W0+xQQecE+wKQJKxRBaDJpB8ME2Yr9aLvKdnnFcJ9O+6J8NmJYA4XefnMmK9ZhNLkrz0ptlzr0LffiBVNSwy3KMSS0Gx81z5hMgLsuS/L9rQqggLkaDe5Ppd7zQAEiXOoR0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jy250IrG9u6aOLw+oIxJlCv3mA0PZRenUZSN0Qr0S6c=;
 b=Epny1QZ9y08rME9deT2g5oBHQz1zQyzVQyFTRem9RGF8OektG43VYR0YoDvzcjgxwJZ3lvuvh8Yn9fG4UU+2rwvbfCmTmTHvNYRFLcHK3wv4w417zPhoxAwtN45otwZ/p1M0z+2memLfXjAsE8PLiBRIBsJxr1uDHmqByRpPoxI=
Received: from DM5PR2101MB1047.namprd21.prod.outlook.com (2603:10b6:4:9e::16)
 by DM5PR2101MB0935.namprd21.prod.outlook.com (2603:10b6:4:a5::37)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.3; Mon, 30 Mar
 2020 18:12:37 +0000
Received: from DM5PR2101MB1047.namprd21.prod.outlook.com
 ([fe80::1cf9:aae4:18cc:8b3d]) by DM5PR2101MB1047.namprd21.prod.outlook.com
 ([fe80::1cf9:aae4:18cc:8b3d%7]) with mapi id 15.20.2900.002; Mon, 30 Mar 2020
 18:12:37 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: Ard Biesheuvel <ardb@kernel.org>, Leif Lindholm <leif@nuviainc.com>
Subject: RE: [PATCH] efi/libstub/arm64: avoid image_base value from
 efi_loaded_image
Thread-Topic: [PATCH] efi/libstub/arm64: avoid image_base value from
 efi_loaded_image
Thread-Index: AQHWBUObXv2MTW3u/Ue45F8yahNJA6hgxFuAgAAA5gCAAAAuAIAAqMgQ
Date: Mon, 30 Mar 2020 18:12:37 +0000
Message-ID: <DM5PR2101MB104760D03E632DD4DBE99AE1D7CB0@DM5PR2101MB1047.namprd21.prod.outlook.com>
References: <20200328205809.23825-1-ardb@kernel.org>
 <20200330074721.GV22097@bivouac.eciton.net>
 <CAMj1kXFPtY20afbAZgXT3As4TUuAqi3=pG8u19hjMjFxgN6HWA@mail.gmail.com>
 <CAMj1kXEf5rT1pmDNQoOd5Tx9xQ=fUMT0xo4JXZNfz=VDY9268Q@mail.gmail.com>
In-Reply-To: <CAMj1kXEf5rT1pmDNQoOd5Tx9xQ=fUMT0xo4JXZNfz=VDY9268Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=mikelley@ntdev.microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2020-03-30T18:12:36.0834379Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=13c2cf8b-0026-4669-a1c7-30e995bf61a7;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-originating-ip: [24.22.167.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9184ec95-f24a-4ff1-ea4b-08d7d4d5edc8
x-ms-traffictypediagnostic: DM5PR2101MB0935:|DM5PR2101MB0935:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR2101MB0935626D7B887D0516D5682DD7CB0@DM5PR2101MB0935.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0358535363
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR2101MB1047.namprd21.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(136003)(366004)(346002)(39860400002)(376002)(396003)(6506007)(82950400001)(26005)(82960400001)(107886003)(316002)(52536014)(54906003)(4326008)(5660300002)(186003)(10290500003)(53546011)(8936002)(478600001)(8676002)(71200400001)(81166006)(110136005)(81156014)(2906002)(7696005)(66556008)(66476007)(66946007)(64756008)(66446008)(33656002)(86362001)(76116006)(55016002)(8990500004)(9686003);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P7hbZJfn3+bQq25eFnU+EQOmvc26BRUwIsDA9eenczBkv63VTutpwx8V5+HTTzMg1GxSqHO9Rf4UU4i5LEtyVG+YAn5sHKqmamA+Etd/uJ5LvUTDVVeKAfbg0p4UUh1pu6t9PbpIKHxV2RRjjxSSdovjWKDCSGfWPDmbi2ntG40DsFGYoSwZfY6M+2JREIxrFGh0RDupxJDMsiMSes/WSYhXfU1Yqiw52qeBB0IO4CXm4MNq/wGN/RLJBP/nlngF4KTvWctylQ05jGWms6FjflHa985IyIJXGVI5wMWT3qKJ6pt2W7N0INOop+tF5NCv3OlzIIx6BRgz+1wuV6d9VXG0w1MuCyICJg6kqQAGOocCvlX2yFWJfOfoI1rCO+pXTY/AJdn5ioRfjniPY5AQCihjwB8508h/CUX1Uhbf7LVfPRVXIuRCug1Qeld60EYO
x-ms-exchange-antispam-messagedata: 3j+0I1uwZjlXCkfOLU3kOpw++9r5r0a36is5+OYJD1IOXMUONNdzpSxzUAZW7A2mc3hHOR2akuryZLMxa1kAALu6qU7C/KpvOoCmNOWAjWYsgD/UHR1ESwkfKy57rD1pVVflVWYx932SxWer8DHEWw==
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9184ec95-f24a-4ff1-ea4b-08d7d4d5edc8
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Mar 2020 18:12:37.7335 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VrvcEKcAli2oKOBU/z963JNkbl1P1AfpIN4e7gbIwiWYbmaxSKIeoRrbtdSJvIjTUwT0NETY4zHR8JHXbcVz5CbDLLo/Vd2hELxd+iOfXeY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR2101MB0935
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_111241_058981_146D7148 
X-CRM114-Status: GOOD (  18.75  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.129 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.129 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Boqun Feng <Boqun.Feng@microsoft.com>,
 linux-efi <linux-efi@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ard Biesheuvel <ardb@kernel.org>  Sent: Monday, March 30, 2020 12:51 AM
> 
> On Mon, 30 Mar 2020 at 09:50, Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Mon, 30 Mar 2020 at 09:47, Leif Lindholm <leif@nuviainc.com> wrote:
> > >
> > > On Sat, Mar 28, 2020 at 21:58:09 +0100, Ard Biesheuvel wrote:
> > > > Commit 9f9223778ef3 ("efi/libstub/arm: Make efi_entry() an ordinary
> > > > PE/COFF entrypoint") did some code refactoring to get rid of the
> > > > EFI entry point assembler code, and in the process, it got rid of the
> > > > assignment of image_addr to the value of _text. Instead, it switched
> > > > to using the image_base field of the efi_loaded_image struct provided
> > > > by UEFI, which should contain the same value.
> > > >
> > > > However, Michael reports that this is not the case: older GRUB builds
> > > > corrupt this value in some way, and since we can easily switch back to
> > > > referring to _text to discover this value, let's simply do that.
> > >
> > > It is not clear to me how "older GRUB builds" would differ here.
> > > I think more investigation is needed before making that claim.
> > > My suspicion is that some (old) version of non-upstream, shim-enabled
> > > distro-specific build is playing a part.
> > >
> > > So, do we have the option for more detailed investigations, or can we
> > > vague the claim up to say "some GRUB builds seen in the wild, based
> > > on an upstream 2.02" or suchlike?
> > >
> >
> > I've queued a fix that prints a nastygram if the value deviates from
> > the expected one. Let's see if this triggers any reports.
> 
> (/me looks at context)
> 
> *This* is the fix that prints a nastygram.

FWIW, I pulled the BOOTAA64.EFI and grubaa64.efi files from CentOS 7.6
and CentOS 8.0 binary packages and tested both in my Hyper-V VM. 
Using strings | grep '2\.' to get version info, the CentOS 7.6 grubaa64.efi
shows: 

	User-Agent: GRUB 2.02~beta2

The CentOS 8.0 grubaa64.efi shows:

	User-Agent: GRUB 2.03

Both versions produce the FIRMWARE BUG warning when using Ard's
latest patch.  I'll assume the equivalent RHEL versions are the same.
So we've got official distro releases that show the problem.

As reported earlier, the BOOTAA64.EFI and grubaa64.efi from a
Debian release (not exactly sure which one) do not produce the
FIRMWARE BUG warning.  The grubaa64.efi reports as 2.04-4.

Michael
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
