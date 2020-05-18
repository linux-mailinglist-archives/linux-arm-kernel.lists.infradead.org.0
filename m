Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0B41D78FE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 14:51:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w6B8fZ9MHMG1todRU097oEVYpuWVJv6Rv4OYVrSSQoo=; b=kka684zvMc53qZ
	6UzjXPbeqWIPhZlGGgGcrzfeb9hzeR0KvvHSQOv01p+OWzCmK6P1xw4Xw+CQ2786auXb5p0XvHIqT
	s63EaWpZRI9+inrS/30ooF7QY0KKjjHoYDWyTOXHDMehrGo6vWEJATCWuE2O43JYuGdUrzGH3X/WQ
	nOyeRsjR9IuLqz1pFpdX/mYpOaTTc4Lhu+MdBn668kN1Gs32lNNaLoSN8Lbgxp1lEDTxmIATgxoVM
	ctqL2HC5Iv9yeJljENBh0S1a9kAkbD2HYsriySTeKEg2MX95S5FbscxqsxTOzcP/st+/RZpQr/1Tl
	rDoavrSCX5l5kpJWzunA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jafEz-0003jm-N7; Mon, 18 May 2020 12:51:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jafEq-0003iU-Km
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 12:51:26 +0000
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
 [209.85.166.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 05071206D4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 12:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589806283;
 bh=59VoFxWg86wvMXwZUsJGWlhU4ZYA2YVdpnEWpzS7DZE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=TRlQTwf11+v0bpjUNl2t5dPXV5ZIgFjYItuEHgPDLLWI8nX/b3fI1Gf9oXF2MEkY+
 ag3gxxuz76Dqxvfrl2+KlKkbDYuLczLDqjJr4Jr/MylKyy2pqFx2xqJ5fah7iXpxfv
 0CUSaHum5Oyo+Swa4XBHPXOioS47ylD1QP5MYOTg=
Received: by mail-io1-f54.google.com with SMTP id 79so10425663iou.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 05:51:22 -0700 (PDT)
X-Gm-Message-State: AOAM531GTlxwvifKpjO9j+GRrzMT1AKz3tceLm04iterII4tpD7q4yfb
 hsKv+nVj3GrcxsUyN9rBhn3W8SUw+0GJz5SSgCE=
X-Google-Smtp-Source: ABdhPJz9/6CkchQipSV8AM+pHvWaEqOIHqsO5Jiu/QyHeKgC98RsdhCrUuUpwXRVK59Pi3qeDsED7Bv2BcEqy1sJsHA=
X-Received: by 2002:a5e:8705:: with SMTP id y5mr14514218ioj.142.1589806282417; 
 Mon, 18 May 2020 05:51:22 -0700 (PDT)
MIME-Version: 1.0
References: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
 <1584200119-18594-10-git-send-email-mikelley@microsoft.com>
 <CAK8P3a1YUjhaVUmjVC2pCoTTBTU408iN44Q=QZ0RDz8rmzJisQ@mail.gmail.com>
 <MW2PR2101MB10524254D2FE3EFC72329465D7F70@MW2PR2101MB1052.namprd21.prod.outlook.com>
 <CAK8P3a1YCtc3LJ-_3iT90_Srehb96gLHvTXsbJ0wT6NFYCG=TQ@mail.gmail.com>
 <MW2PR2101MB1052E413218D295EF24E5E05D7F40@MW2PR2101MB1052.namprd21.prod.outlook.com>
 <f2b63853-24ae-d6b7-cd43-5792c0d4d31b@nvidia.com>
 <4202ea20-6e51-31d3-44b1-3861798a8158@nvidia.com>
In-Reply-To: <4202ea20-6e51-31d3-44b1-3861798a8158@nvidia.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 18 May 2020 14:51:11 +0200
X-Gmail-Original-Message-ID: <CAMj1kXEpryfqk5eKxB5NrDcriEBRQKEHnDVZNBMfB4DY=708fw@mail.gmail.com>
Message-ID: <CAMj1kXEpryfqk5eKxB5NrDcriEBRQKEHnDVZNBMfB4DY=708fw@mail.gmail.com>
Subject: Re: [PATCH v6 09/10] arm64: efi: Export screen_info
To: Nikhil Mahale <nmahale@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_055124_719884_2AEED03A 
X-CRM114-Status: GOOD (  28.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 linux-arch <linux-arch@vger.kernel.org>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 linux-efi <linux-efi@vger.kernel.org>, Boqun Feng <boqun.feng@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, gregkh <gregkh@linuxfoundation.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Jason Wang <jasowang@redhat.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michael Kelley <mikelley@microsoft.com>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "olaf@aepfle.de" <olaf@aepfle.de>, Marc Zyngier <maz@kernel.org>,
 Andy Whitcroft <apw@canonical.com>, vkuznets <vkuznets@redhat.com>,
 KY Srinivasan <kys@microsoft.com>, Will Deacon <will@kernel.org>,
 Sunil Muthuswamy <sunilmut@microsoft.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 18 May 2020 at 06:25, Nikhil Mahale <nmahale@nvidia.com> wrote:
>
> On 5/13/20 7:56 PM, Nikhil Mahale wrote:
> > On 3/20/20 3:16 AM, Michael Kelley wrote:
> >> From: Arnd Bergmann <arnd@arndb.de> Sent: Wednesday, March 18, 2020 2:27 AM
> >>>
> >>> On Wed, Mar 18, 2020 at 1:18 AM Michael Kelley <mikelley@microsoft.com> wrote:
> >>>> From: Arnd Bergmann <arnd@arndb.de>
> >>>>> On Sat, Mar 14, 2020 at 4:36 PM Michael Kelley <mikelley@microsoft.com> wrote:
> >>>>>>
> >>>>>> The Hyper-V frame buffer driver may be built as a module, and
> >>>>>> it needs access to screen_info. So export screen_info.
> >>>>>>
> >>>>>> Signed-off-by: Michael Kelley <mikelley@microsoft.com>
> >>>>>
> >>>>> Is there any chance of using a more modern KMS based driver for the screen
> >>>>> than the old fbdev subsystem? I had hoped to one day completely remove
> >>>>> support for the old CONFIG_VIDEO_FBDEV and screen_info from modern
> >>>>> architectures.
> >>>>>
> >>>>
> >>>> The current hyperv_fb.c driver is all we have today for the synthetic Hyper-V
> >>>> frame buffer device.  That driver builds and runs on both ARM64 and x86.
> >>>>
> >>>> I'm not knowledgeable about video/graphics drivers, but when you
> >>>> say "a more modern KMS based driver", are you meaning one based on
> >>>> DRM & KMS?  Does DRM make sense for a "dumb" frame buffer device?
> >>>> Are there any drivers that would be a good pattern to look at?
> >>>
> >>> It used to be a lot harder to write a DRM driver compared to an fbdev
> >>> driver, but this has changed to the opposite over the years.
> >>>
> >>> A fairly minimal example would be drivers/gpu/drm/pl111/pl111_drv.c
> >>> or anything in drivers/gpu/drm/tiny/, but you may want to look at the
> >>> other hypervisor platforms first, i.e drivers/gpu/drm/virtio/virtgpu_drv.c,
> >>> drivers/gpu/drm/vmwgfx/vmwgfx_drv.c, drivers/gpu/drm/xen/xen_drm_front.c,
> >>> drivers/gpu/drm/qxl/qxl_drv.c, and drivers/gpu/drm/bochs/bochs_drv.c.
> >>>
> >>
> >> Thanks for the pointers, especially for the other hypervisors.
> >>
> > Sorry if anybody in 'to' or 'cc' is receiving this reply multiple times.
> > I had configured by email client incorrectly to reply.
> >
> > screen_info is still useful with a modern KMS-based driver.  It exposes
> > the mode parameters that the GOP driver chose.  This information is
> > needed to implement seamless or glitchless boot, by both ensuring that
> > the scanout parameters don't change and being able to read back the
> > scanout image to populate the initial contents of the new surface.
> >
> > This works today on arches which implement (U)EFI and export
> > screen_info, including x86 and powerpc, but doesn't work on arm or
> > arm64.  As arm64 systems that implement UEFI with real GOP drivers
> > become more prevalent, it would be nice to be have these features there
> > as well.
>
> In addition to this, even if a driver doesn't implement a framebuffer
> console, or if it does but has an option to disable it, the driver still
> needs to know whether the EFI console is using resources on the GPU so
> it can avoid clobbering them. For example screen_info provides information
> like offset and size of EFI console, using this information driver can
> reserve memory used by console and prevent corruption on it.
>
> I think arm64 should export screen_info.
>

If there are reasons why KMS or fbdev drivers may need to access the
information in screen_info, it should be exported. I don't think that
is under debate here.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
