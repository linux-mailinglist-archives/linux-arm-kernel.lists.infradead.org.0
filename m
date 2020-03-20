Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7CB18D4A2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 17:38:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qi3K+3fGrzvfnDMeShpB8l8B5Hzz92xCb7iovsRcSvk=; b=YxiWNsBe3DhVJi
	un0bXdldyNtXHLj7Ud9wKAQPHs6fNStxEgqy7uKBiIA8RI2uk7Am1h9j/CAOoUl8/b7raKvly2Mbq
	FslNOXxpNAFrlQDA1aksWjiFqPtI9za32OfKwH5/AhlTCwuqFEWigmO3lHaQMpaOIF5J8vmLpjXIB
	HYHbTH6yZ0VP/ArYYHtGty3aQssR7qKKPbn4iQ7XbinFbHOK321POm0vl/vfsOQ8doRajjiiFKytM
	PCTLaOd+f/bg9yIEOC2K2GGbEqFyJOU7y13T9b1W9UGMBUg4APralWsfizSLNRpULtGnlqQIxx1mw
	4mMmhVUbuWPESrB9GGwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFKfM-0006Ac-RD; Fri, 20 Mar 2020 16:38:36 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFKfE-0006A9-G7
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 16:38:30 +0000
Received: from mail-lf1-f45.google.com ([209.85.167.45]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MZCSt-1ikgjr0cK1-00V53x for <linux-arm-kernel@lists.infradead.org>; Fri,
 20 Mar 2020 17:38:26 +0100
Received: by mail-lf1-f45.google.com with SMTP id a28so5048605lfr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 09:38:26 -0700 (PDT)
X-Gm-Message-State: ANhLgQ1304UB9saFPaMLurE3Eg9wRSE3RAqV0VHJEZF5MWyPzUGeuNjS
 eMrE+V4bjb+ikLGI//KNRfrErGzhuTEp4ke3Dyg=
X-Google-Smtp-Source: ADFU+vtDZNMNKwMI70MLhlIra5oX/KaY/A/S1YKukFTCrCxBIkwCOeyp0t9ZbbgR8Fv4tYMpVwDwO7KgBnd4/HFsTvw=
X-Received: by 2002:a19:6406:: with SMTP id y6mr5994490lfb.125.1584722305592; 
 Fri, 20 Mar 2020 09:38:25 -0700 (PDT)
MIME-Version: 1.0
References: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
 <1584200119-18594-2-git-send-email-mikelley@microsoft.com>
 <CAK8P3a1GFDUY4mXzst4Ds+S-4SGXso6-jfpsYyy-eHyceAC1Zg@mail.gmail.com>
 <MW2PR2101MB10524879CD685710A51AB740D7F70@MW2PR2101MB1052.namprd21.prod.outlook.com>
 <CAK8P3a02EULGxyuKFq8YnbG8BQ_m-RKciaNEc9ZbdP2yz9dt+Q@mail.gmail.com>
 <MW2PR2101MB1052686237C57955148F173ED7F40@MW2PR2101MB1052.namprd21.prod.outlook.com>
In-Reply-To: <MW2PR2101MB1052686237C57955148F173ED7F40@MW2PR2101MB1052.namprd21.prod.outlook.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 20 Mar 2020 17:38:09 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0y==1RsoMOnME9bgP5V_mts4rbaUW08Tt7mS9csXBqDw@mail.gmail.com>
Message-ID: <CAK8P3a0y==1RsoMOnME9bgP5V_mts4rbaUW08Tt7mS9csXBqDw@mail.gmail.com>
Subject: Re: [PATCH v6 01/10] arm64: hyperv: Add core Hyper-V include files
To: Michael Kelley <mikelley@microsoft.com>
X-Provags-ID: V03:K1:QiXi37dryyEdtsdRkvIxBKa/7TuRrT4QDnG7Cd1Ey5PcV8obugG
 ZfAR13LGoUfMmkXVYZTTdDkhqOiJNb4Cs1NWYzAMqgqcfj0wyOvNnx4GuF3eCk8rGdHWwqk
 AsJJE2uf361RISTSD9ni17ivZBkZx68HNLj4YnDQgVuZjLn2obhovgnPieQ3qEDgPCWoiIS
 RkrqQ0+KcUn+fv5aFJfrQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xAxByPmzUc0=:h4x01V013m7cUgOxw4jPCZ
 APrxVQvr3wYbp/EKi/v1AHfwNm5NzUGIzhE46tQvIxe2wDRcNwKCQ4GypwP4AzlYAnywVaNER
 PehSO6sKEsIymWE4Vm50LB3G2gckA8dIJTK+3tAsF+iakuLQa70nDKnCFqzH+S4qN91FzHfoA
 hAX/dUtMZpfplqF0OJEL5ugg5+QAlkdGVNDcHp1stwDJMiGfB4CDSQp6Csmu3tCQyTue0DreZ
 3veVzXWlmJ4jslb0ixiZDgS3NlioSyTEsveFWuVnAZhHiTErk43QQs4D95uYbYJ7b0fusJFCd
 6fCJThJxSwXfK4F8SWMnFS5UJvpyYy2uQgrARrNtAnBgNhlTZ6/x8DSxhQ2xXQeofYvvxEZ6Z
 WRlxpeO1/6AJp+/1pNB8M3Q/oT7R7+dwSVMyRggUnC15OOBhrOiUK+aG+8qsloYJl0Zajq2+R
 xJgSp+qAcFkL/FEv20ay7ObjQKmOFwJziJgfyG82dW2D4MZsab9q89YX9vzApcLGtLlwtZVux
 cjJ119DarOZErShaEVShc1MZxVflJDHMni2CQsSFH0lZCNVRMuC3+U9dzFTe7O6BP3awDHtZh
 5HRpvQtc/HZ7VuN/Nx+pNyBjgBdQJCaizM8aGfTlQK8dJTpipQXen1IdW+9bmSVtx0r3DhzNk
 ueR9ZekWgnug/BXhhlDZ78WMgjO6YNpzsETK1iFYcdWstDP7xY38yDjNWBmm7fBpvFlnZASyS
 o9apHV3LSoPwkSIj0cXo+V8PBuYNyXH+TZJquSHQ6/XiMJCQ2eDxIte8Lh+EW/Cdp+k7hSiVK
 3+isuV8C6+gxd2HiXW0u2dXhKtwudDlCoWPUU+I/qcKAWgYauw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_093828_829309_D9AB6428 
X-CRM114-Status: GOOD (  24.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.13 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 linux-arch <linux-arch@vger.kernel.org>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 linux-efi <linux-efi@vger.kernel.org>, Boqun Feng <boqun.feng@gmail.com>,
 gregkh <gregkh@linuxfoundation.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Jason Wang <jasowang@redhat.com>, Sunil Muthuswamy <sunilmut@microsoft.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "olaf@aepfle.de" <olaf@aepfle.de>, Marc Zyngier <maz@kernel.org>,
 Andy Whitcroft <apw@canonical.com>, vkuznets <vkuznets@redhat.com>,
 KY Srinivasan <kys@microsoft.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 10:31 PM Michael Kelley <mikelley@microsoft.com> wrote:
> From: Arnd Bergmann <arnd@arndb.de> Sent: Wednesday, March 18, 2020 3:10 AM
> > Just drop the __packed annotations then, they just confuse the compiler
> > in this case. In particular, when the compiler thinks that a structure is
> > misaligned, it tries to avoid using load/store instructions on it that are
> > inefficient or trap with misaligned code, so having default alignment
> > produces better object code.
>
> So I'm confused a bit.  Were the original concerns in the above LKML
> discussion bogus?  Is it legal for the compiler to reorder fields or add
> padding, even if the layout of fields in the structure doesn't require it?
> If the compiler *could* do such, then it seems like keeping the __packed
> would be appropriate per the LKML discussion.

The padding is defined in the ELF psABI document for a particular
architecture. In theory an architecture might require padding around
smaller members, but they generally don't when you look at the ones
that Linux runs on. The few odd ones are those that require less
padding, only aligning members to 16 or 32 bit rather than natural
alignment, or padding the size of the structure to 32 bit even if it
only contains 8-bit or 16-bit members. When you have structures
in which every member is naturally aligned and the size it a multiple
of 32 bit, better leave out the __packed.

Aside from generating sub-optimal code, the __packed annotation
can also lead to undefined behavior, if you pass a pointer to
an unaligned member into a function call that takes an aligned
pointer. Newer compilers warn about this.

> > > Unfortunately, changing to a bit mask ripples into
> > > architecture independent code and into the x86
> > > implementation.  I'd prefer not to drag that complexity
> > > into this patch set.
> >
> > How so? If this file is arm64 specific, there should be no need to make
> > x86 do the same change.
>
> This file, hyperv-tlfs.h, is duplicating some definitions on the x86 and
> ARM64 sides that are used by arch independent code, and this is one
> of those definitions.  I had held off on breaking the file into arch
> independent and arch specific portions because the Hyper-V team has
> left some gray areas for functionality that isn't yet used on the ARM64
> side.  So in some cases, it's hard to know what functionality to put
> into the arch independent portion.
>
> But I think I'll go ahead and make the separation with reasonably good
> accuracy, and update the x86 side accordingly.  That will reduce the size
> of this patch set to contain only the things that we know are ARM64
> specific and which are actually used by the ARM64 code.  Things like the
> hv_message_flags will go into the arch independent portion so that
> they can be used by the arch independent code without cluttering up
> the arch specific code.  Making the change will help reduce any
> confusion about what is ARM64-specific. The other core #include file,
> mshyperv.h, has already been done this way.

Ok, sounds good.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
