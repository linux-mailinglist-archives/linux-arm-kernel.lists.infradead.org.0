Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD9F157F47
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 16:55:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MrdWUyEFvzk5G78H/lSCQh/f0V2nP5YghCQ2xWzlkE4=; b=Jt3t3Rxm2uTwjA
	7VlQ67ZpUT045vYo69sx9+9ehb0zfBdoM7/YjSkOVYLdIfDiYAuPqgAwkWQVnZandIM6uPsKBDt2c
	jrkurcOzWQ1YC7yKCepHKgGeRqEHUZ4JwfUigFx7rqnGK5ack2X78rsg7cvrqNpWTuC/NclN9evRc
	onwKH/32cmMDstPVLLhk/jKLXdg/fR2dGCL+fLHadGCu3HCgV4dudGnObkWaGimJdjwLfMUYiLu0P
	vDd61gmWyhutNKL3qcagbuDakffueS0eQLLzcJdyjKBO6DlBK5n8zIezfv3DJyUv+clx0rmdZjVdV
	Wd4Qd4f2ALp4HdHC2q+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1BPI-00041P-7k; Mon, 10 Feb 2020 15:55:32 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1BP9-0003vy-Dz
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 15:55:26 +0000
Received: from mail-qv1-f53.google.com ([209.85.219.53]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MfpGR-1jgokk02ZN-00gGOb for <linux-arm-kernel@lists.infradead.org>; Mon,
 10 Feb 2020 16:55:15 +0100
Received: by mail-qv1-f53.google.com with SMTP id n8so3364636qvg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 07:55:09 -0800 (PST)
X-Gm-Message-State: APjAAAW9FsgfuA4v5qflTBXLDeG+AFG0EbpQ5xjLz2dSqFpTyXk0Hk8Q
 bk90QE22bvAcuSGnr1XO6hH5FtNuL+4OR9FLyv0=
X-Google-Smtp-Source: APXvYqzD4gF79za8QjGnOdvdxMye/9gCcsvE1sbWfcQ/2Iho40EJZiFepFIPJyPs4Sj+zYmpLY+XdCjR8myFcnfghrI=
X-Received: by 2002:a0c:f9c7:: with SMTP id j7mr10699586qvo.222.1581350108754; 
 Mon, 10 Feb 2020 07:55:08 -0800 (PST)
MIME-Version: 1.0
References: <20200210141324.21090-1-maz@kernel.org>
 <CAOesGMhHkez-5vxwWuzXc2Rm=dYYWjMX9C8AewVy9GDWuZcwMw@mail.gmail.com>
In-Reply-To: <CAOesGMhHkez-5vxwWuzXc2Rm=dYYWjMX9C8AewVy9GDWuZcwMw@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 10 Feb 2020 16:54:52 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1pi3yBVMdXQyZsm_NFLn=UrVRgQ2O5b3-RmF9JTi5z7A@mail.gmail.com>
Message-ID: <CAK8P3a1pi3yBVMdXQyZsm_NFLn=UrVRgQ2O5b3-RmF9JTi5z7A@mail.gmail.com>
Subject: Re: [RFC PATCH 0/5] Removing support for 32bit KVM/arm host
To: Olof Johansson <olof@lixom.net>
X-Provags-ID: V03:K1:Bwhl7Jc+8c8WNNEH47HwYSsBj7WKaUWf8c0GokFAtG1WYPDamGf
 +jyyVtqYkkzWquptbUlo7IQuwe57AxITXGdxxG+d4kfFfb6BGk/YAUOIY8RDivFLFeiJI0Z
 9K0t59Gh5b5TmOnRHv/T8HomZX+UahufnTZurSWNhqEm3FfkcGbxyt+qSmYsJ/FPdJ5gPcE
 n23vRkIl2gLZRtDPhsLWQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8NeqiNVqkyo=:bKhP32GtaYa+qRgSg5jXu9
 AJc3MQ5JUsUyHI6uJUf7n2IfJM18e6vVHXMKt2YiU/qqrxac3nBlDvawD8gpQeo7VsG3OPJDP
 c+WGA30t5AQsZNmLOc8Ghtr2d8xDc7MsLLWZLni0tazWqBYip08CKz6iBnVtsUNGWYa/t4o9z
 82jy1U7slsvGKgMmNwsPyhvTypEwyzPLQy4mvyn2Hcj8XaJb6w1BUWbpsWqGnjy9CT9ICbH4I
 0/5bfdYp2u91rJWGX87NMUX4cq56CwVN9FVdKue8Cy/i/S4e1MMDcDnFyZUqYR2mk36bYdBzI
 9J+idMQXDQekmDKr9la5FWfJkpamMvlJQ9DiNZENOchtmsd5Uj7IcTW5Ui0G4Usn74ZMecewy
 L3Zm5mJo3vhy53qKuoREfbwNd5mVRK7bWOH2FTPlLWc1NTcJ+2cm7QxJUNiVVRlpApqDt6Yan
 ev/KMdjqcLsXaGmfDIUVCtyBpSfVAsInaHBMvozXu3RnD7rqIHeifO25ybK9kPDvmurH0E9Gj
 b+Wo7NGFM2ta4QoLlughXByo6nYiXJ4SALRX7bce8j9Tn6yx4MuQQi1lTIai5X0Rhtj8I8oC+
 KZ2wH2FKMpY54gzLb393XzXbDdmbPC3fLD4vGPUFtrXbPR9BLrqlfYHsZaRJpQ13FBUqf6inl
 OOP93hOi7z4sIyKd6rC1X99SkFqktnVrzNgABykw94dhhbSxu4BWl/kbFhenlzeQURtkc0rFm
 zC5nzsER9K0DLKtTarh8nnqe2tDqUsSvdhLpf5atfJGWLmyErYuaPLB9wGT5VTbUMKFPH8K+J
 XMtaDqpHFa3i9kLTQyTYgfALg/WqyMdk3r4W1mQEVYO/V4rfXg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_075523_777434_0579F72F 
X-CRM114-Status: GOOD (  21.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.75 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Anders Berg <anders.berg@lsi.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>,
 Russell King <linux@arm.linux.org.uk>, kvm list <kvm@vger.kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Quentin Perret <qperret@google.com>,
 Christoffer Dall <Christoffer.Dall@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 4:32 PM Olof Johansson <olof@lixom.net> wrote:
> On Mon, Feb 10, 2020 at 3:13 PM Marc Zyngier <maz@kernel.org> wrote:
> >
> > KVM/arm was merged just over 7 years ago, and has lived a very quiet
> > life so far. It mostly works if you're prepared to deal with its
> > limitations, it has been a good prototype for the arm64 version,
> > but it suffers a few problems:
> >
> > - It is incomplete (no debug support, no PMU)
> > - It hasn't followed any of the architectural evolutions
> > - It has zero users (I don't count myself here)
> > - It is more and more getting in the way of new arm64 developments
> >
> > So here it is: unless someone screams and shows that they rely on
> > KVM/arm to be maintained upsteam, I'll remove 32bit host support
> > form the tree. One of the reasons that makes me confident nobody is
> > using it is that I never receive *any* bug report. Yes, it is perfect.
> > But if you depend on KVM/arm being available in mainline, please shout.
> >
> > To reiterate: 32bit guest support for arm64 stays, of course. Only
> > 32bit host goes. Once this is merged, I plan to move virt/kvm/arm to
> > arm64, and cleanup all the now unnecessary abstractions.

I think this makes a lot of sense: we are seeing fewer new 32-bit
systems that have enough RAM to be a usable virtualization host,
as most new boards with more than 1GB of RAM typically pick 64-bit
SoCs, and on less than 1GB it gets awfully tight to do anything useful.

> Since I'm generally happy to drop legacy code that has no users, with
> the "if there are any significant users that speak up, I'll revoke my
> support" caveat:
>
> Acked-by: Olof Johansson <olof@lixom.net>

Same here

Acked-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
