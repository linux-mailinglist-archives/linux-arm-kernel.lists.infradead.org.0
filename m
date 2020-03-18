Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F621898B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 10:58:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=93JfBz/uD14uiQVJ2zmy9/cb5M57E101NCgxNCxGPjw=; b=tkFmI4eO2f2hKl
	lt2ljoqGqhzMVFlzeQWGdV28sTknMWI7d5pceJ3/WtOJaTnfVZ0vR9yS+7GKf1hxZcJuhvDcUDxl7
	D+Rwn9B/hISmtJKJJymBkmwQ4oaAC/qwsz7oViko7Ro00znYmhtfiiXClT/rJX1pTioDoX07yvI8H
	4ztjmrnJIqXQNawUhs9aYD7NleipVAipUB0XFWjj9aVPsg9NDAILofPaC+UxBHSBJITWxtL7BfY1E
	u8Mtn65FZxiBK1mhebf0eshdtVmxCEwY0SiEUJKKafxIC/braXg3Vuxixt7ly9g6sE0tynraJ0Vpm
	oyK7EuyH51Aw3pXiLM4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEVSr-0007Xe-QX; Wed, 18 Mar 2020 09:58:17 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEVSi-0007XF-Jj
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 09:58:10 +0000
Received: from mail-qv1-f48.google.com ([209.85.219.48]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MUpCz-1injOp1AkT-00Ql8e for <linux-arm-kernel@lists.infradead.org>; Wed,
 18 Mar 2020 10:58:06 +0100
Received: by mail-qv1-f48.google.com with SMTP id cy12so6616291qvb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 02:58:06 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3pRxfFzSQPuW0LQsFMf9tWTszW0UFQ0HCO4HMltcV10vOKpNaD
 8D7RtRYKeeiTfjFPBVFNqWBtLWVoNSgt8MyC5sY=
X-Google-Smtp-Source: ADFU+vsfP2+3J5IZG3GDZ8ki/QoOQxahTKkoibR7gSo+/zPormy/eHru0l6V82QxX1qv4IP7pL+fYEgyv9VIhLsC7RA=
X-Received: by 2002:ad4:52eb:: with SMTP id p11mr3061487qvu.211.1584525485127; 
 Wed, 18 Mar 2020 02:58:05 -0700 (PDT)
MIME-Version: 1.0
References: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
 <1584200119-18594-5-git-send-email-mikelley@microsoft.com>
 <CAK8P3a2Hnm74aUMNFHbjMr4HwHGZn1+xa4ERsxAJY6hMzhEOhQ@mail.gmail.com>
 <632eb459dbe53a9b69df2a4f030a755b@kernel.org>
 <CAK8P3a3aihZeriUWAhWJMsOtdiY4Lo29syrRbB4Po3v4dsLhvA@mail.gmail.com>
 <MW2PR2101MB1052D91D3A9CEEBD7E2EA82FD7F70@MW2PR2101MB1052.namprd21.prod.outlook.com>
In-Reply-To: <MW2PR2101MB1052D91D3A9CEEBD7E2EA82FD7F70@MW2PR2101MB1052.namprd21.prod.outlook.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 18 Mar 2020 10:57:49 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2AO4k3vJ7WuJQz7ick+XPgGY3Jfk8-ROqtwyNs0nWkDA@mail.gmail.com>
Message-ID: <CAK8P3a2AO4k3vJ7WuJQz7ick+XPgGY3Jfk8-ROqtwyNs0nWkDA@mail.gmail.com>
Subject: Re: [PATCH v6 04/10] arm64: hyperv: Add memory alloc/free functions
 for Hyper-V size pages
To: Michael Kelley <mikelley@microsoft.com>
X-Provags-ID: V03:K1:3gdw3KSQXEPRMWgiPL7J8FgPBey+zhsDlKu5uaO6inrhMElSwDK
 euOdcKx2hLbU0Qq6JvrwX+s5R214KGl/LjLLcIQ3nthAbxHqrGEjrRMDgUk+7Zl9HkGbZqO
 d3HYEhuppkFPMgV12L26RR4r2962vW6M8OSt04/Qpd1cYW8XKGzRyO4aHabl/FP3dshFGz8
 wA73PkJqJsZi5KSUw47fw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5FneJkd1/KM=:rXcZ28mvZAx/MQf0bkesKb
 eA41fYO22kP2M9rcahtDsJKylKUwsVF3Ogh2UZlYlDRwZ4bwXwXGV00Pri5AbILcafWXguV2d
 8WIjgarh7nUs5L5mD5t0KgErOulD2xJnbkAgYVMcxfiYe1WkBDTK0OHLAwcC9pPJTH7cATl7R
 G1PFT5/UlEmgfrSImYVrItCH+zkd4/YT5dyV9n4k3wJKe1I+gGiZiTYCwdWOb4LBwEacmj/Vi
 FGTylCbqApy5DQXe4YpkjfdZVF75jC8HHWFlKp53COYbOtGVozzIrDSgzfUi9QdH4Ny75uAP/
 BSZCjUnaePy53UTJAk2b97yiSIhvaGQOtbrXolnccScoj/ISJ4xT1VHGUk792+tBEWipiBO88
 9M4IgUpmKRNKlCUVolj8gzkox9d3ixOFKR/8R3M1ckhxwlffx8Udld/qi3rphDDWXk1hw7GKI
 iBAn4eUQZBXeHDrPIttvvjq9woIe1Qigcbmz/0k1YvpHA+UUIJ2WDHFZ1izJE9MGGGC9QRfL5
 515gtJUNFrFLzhQbLqc1xJU1Sdgt/36pQbQjC13focQhCaCo+MaFWOy8ED5+zaSYytFBt4WSu
 FLOaWboVWfbhJ9J28IulLR5PvqtR9OcT89ydnBvs7/a91eSljxS7AfCoKcgmbVCTHfjy5dSxq
 LpLUU2OsL6mueCDnQ9Doh5JTog9LK3rgnH+NUw9zeSEL2cfNoVQVBy20268az9n3w/QlzDyS1
 cysx6XjuONv27p3ghQ8r0jyFwuKt9J0aZIOpt1ZRR12jI5w0WYQWN6BubAyEkzcFwZBNQFZ2R
 BVrjzGP/auvDy+husejN6agD4h8jz6sJLGg0CLO9VE8sL8e8jY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_025808_943118_C8B7B4D8 
X-CRM114-Status: GOOD (  25.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
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
 gregkh <gregkh@linuxfoundation.org>, Marc Zyngier <maz@kernel.org>,
 Jason Wang <jasowang@redhat.com>, Sunil Muthuswamy <sunilmut@microsoft.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "olaf@aepfle.de" <olaf@aepfle.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Andy Whitcroft <apw@canonical.com>, vkuznets <vkuznets@redhat.com>,
 KY Srinivasan <kys@microsoft.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 1:15 AM Michael Kelley <mikelley@microsoft.com> wrote:
> From: Arnd Bergmann <arnd@arndb.de> Sent: Monday, March 16, 2020 1:33 AM
> >
> > On Mon, Mar 16, 2020 at 9:30 AM Marc Zyngier <maz@kernel.org> wrote:
> > > On 2020-03-16 08:22, Arnd Bergmann wrote:
> > > > On Sat, Mar 14, 2020 at 4:36 PM Michael Kelley <mikelley@microsoft.com>
> > > > wrote:
> > > >>  /*
> > > >> + * Functions for allocating and freeing memory with size and
> > > >> + * alignment HV_HYP_PAGE_SIZE. These functions are needed because
> > > >> + * the guest page size may not be the same as the Hyper-V page
> > > >> + * size. We depend upon kmalloc() aligning power-of-two size
> > > >> + * allocations to the allocation size boundary, so that the
> > > >> + * allocated memory appears to Hyper-V as a page of the size
> > > >> + * it expects.
> > > >> + *
> > > >> + * These functions are used by arm64 specific code as well as
> > > >> + * arch independent Hyper-V drivers.
> > > >> + */
> > > >> +
> > > >> +void *hv_alloc_hyperv_page(void)
> > > >> +{
> > > >> +       BUILD_BUG_ON(PAGE_SIZE <  HV_HYP_PAGE_SIZE);
> > > >> +       return kmalloc(HV_HYP_PAGE_SIZE, GFP_KERNEL);
> > > >> +}
> > > >> +EXPORT_SYMBOL_GPL(hv_alloc_hyperv_page);
> > > >
> > > > I don't think there is any guarantee that kmalloc() returns
> > > > page-aligned
> > > > allocations in general.
> > >
> > > I believe that guarantee came with 59bb47985c1db ("mm, sl[aou]b:
> > > guarantee
> > > natural alignment for kmalloc(power-of-two)").
> > >
> > > > How about using get_free_pages() to implement this?
> > >
> > > This would certainly work, at the expense of a lot of wasted memory when
> > > PAGE_SIZE isn't 4k.
> >
> > I'm sure this is the least of your problems when the guest runs with
> > a large base page size, you've already wasted most of your memory
> > otherwise then.
> >
>
> I think there's value in keeping these functions.  There are 8 uses in
> architecture independent code at the moment, which admittedly saves
> only ~1/2 Mbyte of memory with a 64K page size, but we will have
> additional uses with more memory savings as we get all of the
> Hyper-V synthetic drivers to work with 64K page size.  Furthermore,
> there's coming work that will require additional steps to share a page
> between a guest and the Hyper-V host.  These functions are the right
> place to put the code for the additional sharing steps.  Removing them
> now in favor of a bare kmalloc() and then adding them back doesn't
> seem worthwhile.

My point was to keep the functions but use alloc_pages() internally,
so you can deal with the hypervisor having a larger page size than
the guest, which seems to be a more important scenario if I correctly
understand the differences between the way Windows and Linux
deal with page cache.

As far as I understand, using 64kb pages on Windows is generally
a win as the VFS code already deals with units of that size, while
on Linux the 4kb page size is too deeply entrenched within the
file system code to mess with it: Whatever you gain in terms of
TLB pressure on workloads that cannot use huge pages is all lost
again through extra I/O and wasted physical memory.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
