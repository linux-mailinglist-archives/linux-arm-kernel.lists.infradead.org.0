Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 192428B8E3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 14:43:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+w01weohMAb9i3bTjjklJZNjABhw6nz+qIn0//GCNk=; b=IsmUOFpx57MEb3
	jJ3Tvspsjp2iTMB42EHPN0kFHU/dONXjbHJPigmPvv20hP4jr1RP12xIBIOWJLDu3BwixwrPQh5Ce
	y1sKAP0tJyaxkP8s9nCaKDFzLR3zJ8TE0+m4EEZBQof3jGt1bQTGi8s8hYL+cNKfxEKTprQo8pH46
	+DLdIuoclxZEo3z00JYBDSh2Q/TGm/nIRa+6w6XZvuFxbkvqsIZzcM4Ost6fQXQV6mtkkThjEi7uS
	FktMHELYaOvjsSRcD5ima99pAdyABfFukwNOnSw4b/Ev0KxcwOs9Oyp5Fnl1cZm1PXcAESXNASDDG
	I10hFATf7cTWRLMIsVWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxW9X-0003dh-Or; Tue, 13 Aug 2019 12:43:51 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxW9H-0003d0-1y
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 12:43:36 +0000
Received: by mail-ot1-f68.google.com with SMTP id r20so21971773ota.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 05:43:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E+p+zmPurLbMEu2az+xH3AuHi82plJbCMSnO5w/IE6s=;
 b=SnhszppXM0MJ2xEz7ZKyd3YaTrcm448DscWjbzsTWolIE1m6umYQdvacv5oD7GjqbJ
 LE+2dB6BSYt/Q9NAjQJfOyrTr7q459VckrHXYRMs7iJQt0R/WYR/8/abBwhGFTUlAql+
 Px0CMMyQwkaZoEDZdXZWzGiysnRIQBZjG8BasYZhTZhJo6XhPb4b/lKDH1XHs9vv+HUh
 NL1ih2e6AeC78C8MHPFYLTyWzMHjAzxEuh5PbwfFxTU5uSXF5W0e3xWf6wwjm4+VRrBL
 QGa6YgGkU/G7zHtglDIeHGNVA50kgSF7rd/Laardzv4a5g8yJSSLKqZWbVvzIMUgsuir
 slUg==
X-Gm-Message-State: APjAAAVhZGMrUcdnSdAJP9FwL4wbukW0/U1a/H98OPEclMNxVlbkJ4PD
 T9t0Qpx70asDKKyjOBDmLr0y58Kr2iwkHYazSOE6h1E5
X-Google-Smtp-Source: APXvYqx1GQeKyaJsgXsivZqtT+ZWF3j7jl8KtNnj/46bOhi5OBabwhYF49mxUFMveHbU3gpyphWP34Gqnyc+EeluMJk=
X-Received: by 2002:a9d:459d:: with SMTP id x29mr20332510ote.39.1565700214109; 
 Tue, 13 Aug 2019 05:43:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190807155524.5112-1-steve.capper@arm.com>
 <20190809164716.qtt7zizfbqyjukwe@willie-the-truck>
In-Reply-To: <20190809164716.qtt7zizfbqyjukwe@willie-the-truck>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 13 Aug 2019 14:43:23 +0200
Message-ID: <CAMuHMdWvkWGoNC5HbWoZwtpg5VXxTZqRZqQy4BLPgQXZJtKnsQ@mail.gmail.com>
Subject: Re: [PATCH V5 00/12] 52-bit kernel + user VAs
To: Will Deacon <will@kernel.org>, Steve Capper <steve.capper@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_054335_102033_1ECAAA73 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: crecklin@redhat.com, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, bhsharma@redhat.com,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>, maz@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will, Steve,

On Fri, Aug 9, 2019 at 6:47 PM Will Deacon <will@kernel.org> wrote:
> On Wed, Aug 07, 2019 at 04:55:12PM +0100, Steve Capper wrote:
> > This patch series adds support for 52-bit kernel VAs using some of the
> > machinery already introduced by the 52-bit userspace VA code in 5.0.
>
> Cheers, I've pushed this out on a for-next/52-bit-kva branch with one
> small patch on top and Catalin's tags added.

As of commit 14c127c957c1c607 ("arm64: mm: Flip kernel VA space"), the
kernel log is spammed with

    virt_to_phys used for non-linear address: (____ptrval____)
(__func__.6603+0x14d681/0x17fb3d)
    WARNING: CPU: 0 PID: 264 at arch/arm64/mm/physaddr.c:15
__virt_to_phys+0x28/0x58
    Modules linked in:
    CPU: 0 PID: 264 Comm: mdev Not tainted
5.3.0-rc3-rcar3-initrd-00002-g14c127c957c1c607 #38
    Hardware name: Renesas Ebisu-4D board based on r8a77990 (DT)
    pstate: 60000005 (nZCv daif -PAN -UAO)
    pc : __virt_to_phys+0x28/0x58
    lr : __virt_to_phys+0x28/0x58
    sp : ffffffc011953c80
    x29: ffffffc011953c80 x28: ffffff8078790140
    x27: 0000000000000000 x26: 0000000000000000
    x25: ffffffc010a539b9 x24: ffffffc010a86000
    x23: ffffffc010a539ba x22: 0000000000000001
    x21: 0000000000202038 x20: 0000000000000001
    x19: ffffffc010a539b9 x18: 000000000000000a
    x17: 0000000000000000 x16: 0000000000000000
    x15: 00000000000ca51d x14: 0720072007200720
    x13: 0720072007200720 x12: 0720072007200720
    x11: 0720072007200720 x10: 0720072007200720
    x9 : 0720072007200720 x8 : 0000000000000001
    x7 : 0000000000000007 x6 : ffffff8079824f00
    x5 : 0000000000000140 x4 : 0000000000000000
    x3 : 0000000000000000 x2 : 00000000ffffffff
    x1 : 0713abbc9281cf00 x0 : 0000000000000000
    Call trace:
     __virt_to_phys+0x28/0x58
     __check_object_size+0xd0/0x1e0
     filldir64+0x1d8/0x2b0
     kernfs_fop_readdir+0x64/0x200
     iterate_dir+0x68/0x144
     ksys_getdents64+0x88/0x154
     __arm64_sys_getdents64+0x18/0x24
     el0_svc_common.constprop.0+0x84/0xe8
     el0_svc_compat_handler+0x18/0x20
     el0_svc_compat+0x8/0x10
    ---[ end trace 6980a45f636e18be ]---

as soon as userspace starts.

As this commit cannot be reverted easily, I had to revert the full branch with
"git revert -m 1 6ce0dc725177e9856c9a67f2e2cabb3f7a3d90d7".

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
