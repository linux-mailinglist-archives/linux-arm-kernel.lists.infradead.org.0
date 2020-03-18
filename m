Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 894FD1897E5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 10:27:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f1M0Ukh7rBhgYeTzGLCZiqHiOovmRI3NA55YMgct9cQ=; b=P0dReZySLIK/FS
	HsFAIz7tF6CJ7y9y5Qxkkl3mr0aRnbAdnlQPttabUwUGaZ4w7BFa4PO2N17fQ45n9nC7FJ3Lws1OP
	TZIJknYM5zQUXbKg5i6bloFGcoTmnaR7+hE+hbpZ9xu+WL3lqPZ5+ei0HAVb2FfAhFddO5RI8Hozo
	24KKRuJUJEJKN5xPiud+VKr9hTEPxgKxk/7PLXmcSaosKAJ+06z6erL9r/sirorehZrBPxDWTerbg
	S5cm+dapbm/ULsWinMKVq2ae0yKhin61UBkVtNlHEfNsEEJeNtHAKYZkfOJTpZ3ow/AFPsAHEloei
	dtTZxX0+r0yroedjRksQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEUyz-0004XX-AD; Wed, 18 Mar 2020 09:27:25 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEUyr-0004WT-Ag
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 09:27:19 +0000
Received: from mail-qv1-f47.google.com ([209.85.219.47]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1N4hj5-1jORD70FF9-011kaE for <linux-arm-kernel@lists.infradead.org>; Wed,
 18 Mar 2020 10:27:10 +0100
Received: by mail-qv1-f47.google.com with SMTP id n1so8711565qvz.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 02:27:09 -0700 (PDT)
X-Gm-Message-State: ANhLgQ0U4wW1XrCMn8eUGbSQMTdfUo8oUpfZud3CQe9EEgdjcE4R/3tE
 L/NlHHtY4Y4dA09OHEHTpxaOx7PoGOZ4i8FnjZ8=
X-Google-Smtp-Source: ADFU+vt7gawMELH51e53V+lfgh4tcfw+GTIfcD3E5r0fL6EUTEgpPXQEXZxqtN5P7/SqAe4TJoaZf/SOj1Csy9P5qbQ=
X-Received: by 2002:a0c:a602:: with SMTP id s2mr3278276qva.222.1584523628935; 
 Wed, 18 Mar 2020 02:27:08 -0700 (PDT)
MIME-Version: 1.0
References: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
 <1584200119-18594-10-git-send-email-mikelley@microsoft.com>
 <CAK8P3a1YUjhaVUmjVC2pCoTTBTU408iN44Q=QZ0RDz8rmzJisQ@mail.gmail.com>
 <MW2PR2101MB10524254D2FE3EFC72329465D7F70@MW2PR2101MB1052.namprd21.prod.outlook.com>
In-Reply-To: <MW2PR2101MB10524254D2FE3EFC72329465D7F70@MW2PR2101MB1052.namprd21.prod.outlook.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 18 Mar 2020 10:26:52 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1YCtc3LJ-_3iT90_Srehb96gLHvTXsbJ0wT6NFYCG=TQ@mail.gmail.com>
Message-ID: <CAK8P3a1YCtc3LJ-_3iT90_Srehb96gLHvTXsbJ0wT6NFYCG=TQ@mail.gmail.com>
Subject: Re: [PATCH v6 09/10] arm64: efi: Export screen_info
To: Michael Kelley <mikelley@microsoft.com>
X-Provags-ID: V03:K1:D+PYxEZ8dlW1bGumGz8ORTzFAGiZUTHRZdVxRD0bCXMwaF6WxHe
 07LwOxmBo2FYISxuD5h6OJWJGV6cBO+owrJX/wZBwWF3JDICuxF/m9UyLM6EslbZF92FlyO
 Gu9PlaNPM3YHMcmNUif5EXb07Ba0o0wYE0e+CPpmrpX/7QBjXUvyP5BMa2cPLBgIl+2MUw/
 ZRLBuBleICUaqJbs3U+Cg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:RWiAdXSV1AQ=:7prXP4ufNXky1fbijTj2Ee
 rOEqR7DMLju+aJjx7Wd+j+mHiwmDMblj8TnBdP+ovd/M3bUL/VMIrIesx++f66YuzQ3wHYQAH
 /VP+xo8xlG8oIg0s0YlP/0vc5VoMrVpIed54gq/PnX/Yex8h8Jb2R4GnJnjxP7mUNJ0zOmewI
 2nCp+b7dJNkJouT1mkt6urw0P2OAQRi+8c1OuIXr/eiowZXZZu2EgN99sNVJii5jJqCi/tp4Z
 Az7i38AEbxsSMLMY8Q9cdOyyViElUYiubDO0IYG8tW/fd5QJxu6h+BTtycIzZHcqGWeaOH5PP
 LWRPQjlR6pWQAqZ1t1vXSIqJpUNlgmooc6QD2qzUjXbSPn3h8f21UbDteAxqGdnApZ8Xyhn3d
 MP77prti8p3IFh+lVlAniNOt52zvtNRq4saBWjhfNwivT2ln6LuFuZQD+62SAt2PDRdGVt5pK
 fkUsK9+EZ6UTrSS5HdH/1Zms/gpFX5pZqzXonxSWp0w5EsZpBPf8MOX7RiDLeOK2Qo7xmb4cc
 q/aKALRlVOJcEtVJdW3YiUwlc7WeV+56v+nvaBGeAp9FdQGwBHUTlryRXfZb9mZ1WWMvC1IQK
 L+UlR7sZHzJwNa+2wL/C8GcFEVi2rTOmliIdKJ8rOD7aEXuma8YwwGpIDK9DtyNWua622ZCrL
 waFbGI3heFLNzP0oORfqx+CQ3Wc5mzCqwh9SmdQruca4cT7YAvMAIMPD23U7XCJEQw8tpWo3f
 WYtX7+WUWPHC3a/yAQwNRUBlWtRZe6GUwer50QEJTIZ4Tcy9ReeK+Z4hOdVkZqTEBDwfx0hdI
 NutOB3sNbysx7J2/Z+NzhMmw8ZwFY75h+AWW1mD6GCCXZ2w2ac=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_022717_660950_8BFF6823 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
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

On Wed, Mar 18, 2020 at 1:18 AM Michael Kelley <mikelley@microsoft.com> wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> > On Sat, Mar 14, 2020 at 4:36 PM Michael Kelley <mikelley@microsoft.com> wrote:
> > >
> > > The Hyper-V frame buffer driver may be built as a module, and
> > > it needs access to screen_info. So export screen_info.
> > >
> > > Signed-off-by: Michael Kelley <mikelley@microsoft.com>
> >
> > Is there any chance of using a more modern KMS based driver for the screen
> > than the old fbdev subsystem? I had hoped to one day completely remove
> > support for the old CONFIG_VIDEO_FBDEV and screen_info from modern
> > architectures.
> >
>
> The current hyperv_fb.c driver is all we have today for the synthetic Hyper-V
> frame buffer device.  That driver builds and runs on both ARM64 and x86.
>
> I'm not knowledgeable about video/graphics drivers, but when you
> say "a more modern KMS based driver", are you meaning one based on
> DRM & KMS?  Does DRM make sense for a "dumb" frame buffer device?
> Are there any drivers that would be a good pattern to look at?

It used to be a lot harder to write a DRM driver compared to an fbdev
driver, but this has changed to the opposite over the years.

A fairly minimal example would be drivers/gpu/drm/pl111/pl111_drv.c
or anything in drivers/gpu/drm/tiny/, but you may want to look at the
other hypervisor platforms first, i.e drivers/gpu/drm/virtio/virtgpu_drv.c,
drivers/gpu/drm/vmwgfx/vmwgfx_drv.c, drivers/gpu/drm/xen/xen_drm_front.c,
drivers/gpu/drm/qxl/qxl_drv.c, and drivers/gpu/drm/bochs/bochs_drv.c.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
