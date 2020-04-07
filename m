Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A0D1A0AE0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 12:14:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4vpYkAFO9AoqJuqWT5+qOFLy0wA+Ud9VN1OjcBQI9Cc=; b=SFFVGg8JTTWHny
	j+BwqzzQm2yUyqn068saddzosAATgC8AjspNgJIFRJluwfDndgcAAsMRUzwpiFnbExO4VxFcGplnI
	HgkW+bZtTC2qDdafpis3RVT4UmE+QBYEOoe+otPIJFpmL2CN4fbk0w5vi3dylLyTbWHSFi1qBNHR6
	O1a/dTcTLtcifVQyObZRDtx9qtey9cjcd6lNFMN08zqvvEd0h3YskVMCKEL8m2dEBpeh6nc53Ie3Y
	72HCCubn73doc4aBXEYKW5dqWWKqLE/Z2Y6KKImSziCkSfSCfX0HWcxXZh/h2nTQCQszKq0dYM6nq
	Vf0Q9gAJ0Y4VpFHkOeag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLlFV-0006WA-Cj; Tue, 07 Apr 2020 10:14:29 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLlFP-0006Vd-MR
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 10:14:25 +0000
Received: from mail-qv1-f41.google.com ([209.85.219.41]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MiagL-1iqoPA0xdv-00flOi for <linux-arm-kernel@lists.infradead.org>; Tue,
 07 Apr 2020 12:14:15 +0200
Received: by mail-qv1-f41.google.com with SMTP id t4so1514839qvz.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 03:14:14 -0700 (PDT)
X-Gm-Message-State: AGi0PuZn3QsFDBhIyGOypoczvrnh5RqcfjPGMfiZkvWJbMMqRsOu+5gf
 1Mh3tcYwy7SygU0Ta2R4C8H4oGF3l8SntcXij2w=
X-Google-Smtp-Source: APiQypLcN7L1DrA6sMyPy8TT9W08H2XIQj5dMbaQAYdApZV0ejkLKXARq3v1OyAaNhUoWM80iJHKigFfQ6cV5W6IhCQ=
X-Received: by 2002:a0c:fc03:: with SMTP id z3mr1273835qvo.210.1586254453888; 
 Tue, 07 Apr 2020 03:14:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200407074623.29378-1-ardb@kernel.org>
 <CAMj1kXH+dz3MhCyR-LNnsPeNvw_ZX8kqxCy0Uuu5t_u0bgx3aw@mail.gmail.com>
In-Reply-To: <CAMj1kXH+dz3MhCyR-LNnsPeNvw_ZX8kqxCy0Uuu5t_u0bgx3aw@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 7 Apr 2020 12:13:58 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1WuX6YjZEgpbOZxu6Jb85FLqtow+AeeSC0hurSb8XA3g@mail.gmail.com>
Message-ID: <CAK8P3a1WuX6YjZEgpbOZxu6Jb85FLqtow+AeeSC0hurSb8XA3g@mail.gmail.com>
Subject: Re: [PATCH] ARM: decompressor: deal with ADR going out of range in
 efi_enter_kernel()
To: Ard Biesheuvel <ardb@kernel.org>
X-Provags-ID: V03:K1:hZ4j+g4q8EjbZDY320pxsA5Loz3vvuwC/pBGMKVZf36rn6eAf/8
 As3In+sXsR+uPoWwv1ZAjT4vPs4ev/i1JiN0P2RsDsnIjzCjwDccYDCRMMLViGokAlhUQ4+
 hdBnudOsDy/lt9CXY+B9xWk7MnPEc2lz6GX1U48I+mVaiowhtx7qvFUOv3Cc/FT9FWxS0Pw
 Hvq6vHIHC+vbs9Ph08A0A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vs7fkeeRV7g=:Vg1aNjYoYneqXO43wRwZR4
 i25AeF6UJhlR5wW3fxK7lEKsjRuhy++bgeV/QLMbn9hZgvAPfv+HRM6C9lJ+z+TNyvFmROWpz
 T4ayVqk2RrHhG7tYLLYgK4qv+5TjKbwngmFRmzdXu1PeVT9atx1itwnlkDW7J0S7FfJEkdu4W
 xGKVSUUo5k220P3Lu+pQdLYn6+wTvHv+IFATY8ivfMxHOIvTh6cfF1L+uMXb6evp2q16KUnqI
 HOGr0c/XGqjjXxSdZqtmTWgFN0v0RzALEpG1hy5PyPmXKNpO17zm0zr9ydjQttK6j9QsdNLbC
 1RsaMoNCQ33UohuCtxtAg6ORtkB25/Te0doqzrpTzQHlj7/6+1AubQah7Q3UlHHvo4k/AT7bx
 f+HDzta6SByMtivZ8OHqVivNMm8rUVdtBVZy7xVJJawpcxDjHORurlLqh7D+08L1tbUALAfJ/
 jKlpRfrfQT1sSDR9kJrkxfgDpbnf0LByweicGRFIV33WmuJzF3Zc0Q2B8uwMsZ1gC/j+U+C2b
 1dlJGH9GXv0DqUVhVY5HPccZrFDL21AQ4BYvbKKJeTxY6gbjV6AL/deQ+4HIarmGI3cOrbCSC
 qiKPCWy/qMhjykkDeOwIxxh7hFG7EBKxNm/Xgudi9e7chKxlF0EaHT0sqONjrezjFEJvW69fA
 RvWq6skZBtFDxgV0usX1LfLSYgvRMNwfVYKl2oryPDAeIt66Suk2yX/Zdf72nH+ewKI3jWolm
 soF+LsNftJOJ9aFuwf4O96eI5PmgBojIWCecGtUatox8AW5hSHJ3wAP3IfxbJtRSar2e6XjLs
 yqBOSGUNL2Kxe9ZD9/SuK2rW9uVm1GKw54lruQldcwX6Adj6TY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_031424_024242_BD792E28 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 7, 2020 at 10:06 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Tue, 7 Apr 2020 at 09:46, Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > Commit 0698fac4ac2a ("efi/arm: Clean EFI stub exit code from cache instead
> > of avoiding it") introduced a PC-relative reference to 'call_cache_fn' into
> > efi_enter_kernel(), which lives way at the end of head.S. In some cases,
> > the ARM version of the ADR instruction does not have sufficient range,
> > resulting in a build error:
> >
> >   arch/arm/boot/compressed/head.S:1453: Error: invalid constant (fffffffffffffbe4) after fixup
> >
> > ARM defines an alternative with a wider range, called ADRL, but this does
> > not exist for Thumb-2. At the same time, the ADR instruction in Thumb-2
> > has a wider range, and so it does not suffer from the same issue.
> >
> > So let's switch to ADRL for ARM builds, and keep the ADR for Thumb-2 builds.
> >
> > Reported-by: Arnd Bergmann <arnd@arndb.de>
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
>
> If nobody has any objections, I'll take this as a EFI fix.

I've added it to my randconfig build tree. If you don't hear back from
me today, you can add my

Tested-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
