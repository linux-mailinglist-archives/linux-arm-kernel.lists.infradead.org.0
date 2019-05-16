Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8875E209ED
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 16:40:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=66XTFUPi7W+zSCvNuEwV6oxPs1eeDZ/vKdQYh2Dw0HI=; b=oj5LgCQs1h5yjC
	a9znFOHn3DfeGcF8KCXmw7ZzcWQ2gyOvwkRQZkdbctb7HVRz4IVa+CfUgIuZUW86pPdAX0ip9EDPV
	QLavtYQH9AvvhJHbizfQXthTZ9nctZa+PVu2cplREtNT19UIgmWrFLIzdVZxK9JABnFl9Sfho3LZu
	dE7wki09ilCmYzmCfz57wvARsppZwIAyRqAycYYtwgAccWvkDV0ftRSLifKc3QpehE7VsqgC5TytQ
	HzdWslKooTXdG9EMHu3Ahj7S07+NnuVYpgsMbWJ9u38jSU/XJDZnZ+nvap7zu7mtX910Y/4G/6Vf6
	yT7AidvcWAR5yVdxD0Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHY0-0006la-Vq; Thu, 16 May 2019 14:39:52 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHXu-0006l5-EU
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 14:39:47 +0000
Received: by mail-ed1-x543.google.com with SMTP id w33so5588457edb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 07:39:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3CyBDin8DCVhqMsm5Y31nNq5E0wYgKjhJ5os3L5pACs=;
 b=XewtSERXwuRq/hMVzfTTvLn3bup7RL3HYHHiSaecYOcuXF0IYqV7+eahP0uoc2sntm
 all0N0vBT2cEdbkpmEsZSMOHRpXo6iW0x4s9X85jbF/Gs3irW/ih2LB9XWftHVqFvoxL
 zLCWkLS84U94nRd2oDZuAQn3I+MZk66knbYg515af60MhANSCel3a9ThgmTA0MVapTqI
 5zV2XK01YaT/iulH3tvZbCE7lRjnY+IhIzPwTcHf6do6SiNoFYitBpKumOTkoznvSoYZ
 6KDcV0oC5T1hfz1q7tbHZMWpCM0WYLl0ytkNaqiRTMcFgZuF3edRp1KtFoFaMc9E57Z3
 le5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3CyBDin8DCVhqMsm5Y31nNq5E0wYgKjhJ5os3L5pACs=;
 b=Eg1GN4Gx/DzMKDFftJpg8do9stvXwjcjZLk8aB5AZBhNmFWjdSTQu+9fhrdbWHjsmf
 AYhKSLd6m309hRwcIMdppxyhBt/VQvlxxxLCOUI0PBZfdQfNd/SaBM22nYh6TwEuaAvO
 TqjM6kzOZcHisDlsM5v8+ISZVD24lLelqX1v4DaHemn5/AI2PkWitdV6btiqBr38Jv0N
 R3tp6wVXuINiZUHJxqXBi8ROjn/tMb27U16Dok0PIAUg0lgvZXAGXPLy4rjJ/FLlUiu3
 98HwajThOn7ldfb3ae8Wvb93GxOKFMB9UcyhlJPA9B9u539eeNjtsiwY//zrH1Ro8H8Z
 j46w==
X-Gm-Message-State: APjAAAUBfdbHs51G+2VkOFnZ+dzweVo4ejbg0h8wUtfm+i0zyMnjaSgP
 63w9V521H5JMlYvdFgNZeINqAUkNoBkfziBcVWvtuA==
X-Google-Smtp-Source: APXvYqzVw4+DR7PKEpSfxZo2Bdbylhw3TaXpzTsHymAwtO3mmxyKdPyPNxfkAFlXWKqIm8B6CbcVq2T1cTiJkrYtHQs=
X-Received: by 2002:a17:906:b6c8:: with SMTP id
 ec8mr39217179ejb.89.1558017584937; 
 Thu, 16 May 2019 07:39:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190516102817.188519-1-hsinyi@chromium.org>
 <20190516102817.188519-2-hsinyi@chromium.org>
 <CAL_JsqLx1UdjCnZ69aQm0GU_uOdd7tTdD_oM=D7yhDANoQ0fEA@mail.gmail.com>
In-Reply-To: <CAL_JsqLx1UdjCnZ69aQm0GU_uOdd7tTdD_oM=D7yhDANoQ0fEA@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 16 May 2019 16:39:32 +0200
Message-ID: <CAKv+Gu_kgHEhk-p8KoGVgpifdjA67Li-D19_KSLo+1h4ZvL=3g@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] arm64: implement update_fdt_pgprot()
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_073946_484988_877C215C 
X-CRM114-Status: GOOD (  17.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Devicetree List <devicetree@vger.kernel.org>, Yu Zhao <yuzhao@google.com>,
 Kees Cook <keescook@chromium.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Stephen Boyd <swboyd@chromium.org>, Chintan Pandya <cpandya@codeaurora.org>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Jun Yao <yaojun8558363@gmail.com>,
 Miles Chen <miles.chen@mediatek.com>, James Morse <james.morse@arm.com>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 16 May 2019 at 16:37, Rob Herring <robh+dt@kernel.org> wrote:
>
> On Thu, May 16, 2019 at 5:28 AM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> >
> > Basically does similar things like __fixmap_remap_fdt(). It's supposed
> > to be called after fixmap_remap_fdt() is called at least once, so region
> > checking can be skipped. Since it needs to know dt physical address, make
> > a copy of the value of __fdt_pointer.
> >
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > ---
> >  arch/arm64/kernel/setup.c |  2 ++
> >  arch/arm64/mm/mmu.c       | 17 +++++++++++++++++
> >  2 files changed, 19 insertions(+)
>
> Why not just map the FDT R/W at the start and change it to RO just
> before calling unflatten_device_tree? Then all the FDT scanning
> functions or any future fixups we need can just assume R/W. That is
> essentially what Stephen suggested. However, there's no need for a
> weak function as it can all be done within the arch code.
>
> However, I'm still wondering why the FDT needs to be RO in the first place.
>

It was RO because it could be RO, and we wanted to ensure that it
didn't get modified inadvertently (hence the CRC check we added as
well)

If there is a need for the FDT to be RW, let's make it RW.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
