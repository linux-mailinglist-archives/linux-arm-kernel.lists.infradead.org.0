Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91AD11CCD2B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 May 2020 21:06:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4O/sB66E7tLEwXmiezNNoSAAAH/e2ioXeKjL/D+/I28=; b=EiDmJ2edzVHLar
	67AOUTMnmCmW7MGYnaIONinGpEay4bnQvwyWDbtCZzzR+IVoDC7B8qc0JnwXJ+VaiGZ6uXHMn8R9b
	omDtYgMvg/hyJZbmUuEbSlKNxac8D82UgjIIq5rHUwVx1t6Xs6kLQeQz7P/syIKTKKsy4vUKztNp0
	0c0A7LkWhCxqCGPNVmTxD8GICj7LLFoZijF6hdbvVN5YVrw3trMOv3c2WzxNkJ9l+4V+yg+GKBDCc
	0iQdHWk33an7uh+P9S1tMha8irkXJXVw3tlzEKcyk6oQrZKJCJI1c+8LXgfxLzvcpEar4mRMyFgaG
	kCa169jpKIQDozFSbcVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXrGz-0005az-Cl; Sun, 10 May 2020 19:06:01 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXrGr-0005aO-5n
 for linux-arm-kernel@lists.infradead.org; Sun, 10 May 2020 19:05:55 +0000
Received: by mail-pg1-x542.google.com with SMTP id r22so1902053pga.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 10 May 2020 12:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TrDysAnyzIqn5Cn1iMOx1jHu5Zp3yUHwKX37t/G/0oo=;
 b=Tusd/kAIJ93DCgBlGio6JGtGTJMloGM3X+oLDhyeqDPqSqCXLICnX9B8HMn/Jd0Tik
 +k7rp+0JfNDOaOh23t8jMPC6KRZz/xaa8oDPLQ+uXPvlcS1bGZ1DLNaxEcN5K35fNAUQ
 K4+XmSRSvOCSjx8VciY3xSCCEOJy8x4ot1c6rf6Kzelxqy31GZ+6vunnB01XxySlLljG
 nKgOxJLV8Qb0HRTMNhZNqOejR93rP3pryODWevJvGCthrkNvR2P1xPBlvkfvmDyxSxTH
 wJlGEMaTgD4KvDzqEGV1cq7HxVl6HOFnLM2W1f9zS4HlohudcR0q29xfWtlTGa7bPjpw
 Je0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TrDysAnyzIqn5Cn1iMOx1jHu5Zp3yUHwKX37t/G/0oo=;
 b=Q2cmUlvf2PYYE3wHNr8T4WS797nl/zXYbb/W9PbRct0si2itWwobLi5g/M4Dky22qZ
 fxVFvTdjG1jC6kSNIrgkFxOKQ/1EcvF6tuANpWAUCb6laZ+gVWJ5mBDy+lkZ1hrjsNkO
 6/n7OdrXW/tLFP0l8a1LvZw+sZ1vmaaocEdZGXyq3943ys2PXypjtSCfTkwK8k4uwPpX
 vzFB52UoveUMKn70D43E/x9mJHizdcXYG7YcRtLwqZsBSsbg9V644URtp8+9n0lHjC+R
 bXOp8D2oiCOgE64tCpvqaGbYcAeD2Y7SAike7wHPf/nuk5atZ4/ESBS2aKzDn0/R/Bw/
 pFaA==
X-Gm-Message-State: AGi0PuYW9jSFFLdJMf7SeyLGQsoE4Aj7ymne3GgMDtE751RH3qx5tB+F
 hALVtmAq7GkL3/Hfyl6ADhYuLEV40k2N9Pt5VqQ=
X-Google-Smtp-Source: APiQypLeReEsRK6CfvZljwNh3sLkBBj5r2qTM7yV0oIgFRo3EmuOUB97cNaBFdGIXnDDJM4DwzZIgvCMuvjhuSRGYZ8=
X-Received: by 2002:a65:6251:: with SMTP id q17mr11271737pgv.4.1589137550161; 
 Sun, 10 May 2020 12:05:50 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1588460322.git.syednwaris@gmail.com>
 <20200504114109.GE185537@smile.fi.intel.com>
 <20200504143638.GA4635@shinobu>
 <CAHp75Vf_vP1qM9x81dErPeaJ4-cK-GOMnmEkxkhPY2gCvtmVbA@mail.gmail.com>
 <20200505145250.GA5979@shinobu>
 <CACG_h5pcb3uOn+or-6L8bMk3bBNFXWJre9C9pRi3hNgFxGkd_g@mail.gmail.com>
In-Reply-To: <CACG_h5pcb3uOn+or-6L8bMk3bBNFXWJre9C9pRi3hNgFxGkd_g@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sun, 10 May 2020 22:05:38 +0300
Message-ID: <CAHp75VcRztO-DPnUin-2TU9e10k0VViD7=S3ypQ0vQ=ittxNkw@mail.gmail.com>
Subject: Re: [PATCH v5 0/4] Introduce the for_each_set_clump macro
To: Syed Nayyar Waris <syednwaris@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_120553_217599_0C7F487B 
X-CRM114-Status: GOOD (  21.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux-Arch <linux-arch@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>, Arnd Bergmann <arnd@arndb.de>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, rrichter@marvell.com,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linux PM <linux-pm@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, "Zhang,
 Rui" <rui.zhang@intel.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 9, 2020 at 7:36 PM Syed Nayyar Waris <syednwaris@gmail.com> wrote:
> On Tue, May 5, 2020 at 8:24 PM William Breathitt Gray
> <vilhelm.gray@gmail.com> wrote:
> > On Tue, May 05, 2020 at 04:51:56PM +0300, Andy Shevchenko wrote:
> > > On Mon, May 4, 2020 at 5:41 PM William Breathitt Gray
> > > <vilhelm.gray@gmail.com> wrote:
> > > > On Mon, May 04, 2020 at 02:41:09PM +0300, Andy Shevchenko wrote:
> > > > > On Sun, May 03, 2020 at 04:38:36AM +0530, Syed Nayyar Waris wrote:

...

> > > > > Looking into the last patches where we have examples I still do not see a
> > > > > benefit of variadic clump sizes. power of 2 sizes would make sense (and be
> > > > > optimized accordingly (64-bit, 32-bit).

> > > > There is of course benefit in defining for_each_set_clump with clump
> > > > sizes of powers of 2 (we can optimize for 32 and 64 bit sizes and avoid
> > > > boundary checks that we know will not occur), but at the very least the
> > > > variable size bitmap_set_value and bitmap_get_value provide significant
> > > > benefit for the readability of the gpio-xilinx code:
> > > >
> > > >         bitmap_set_value(old, state[0], 0, width[0]);
> > > >         bitmap_set_value(old, state[1], width[0], width[1]);
> > > >         ...
> > > >         state[0] = bitmap_get_value(new, 0, width[0]);
> > > >         state[1] = bitmap_get_value(new, width[0], width[1]);
> > > >
> > > > These lines are simple and clear to read: we know immediately what they
> > > > do. But if we did not have bitmap_set_value/bitmap_get_value, we'd have
> > > > to use several bitwise operations for each line; the obfuscation of the
> > > > code would be an obvious hinderance here.
> > >
> > > Do I understand correctly that width[0] and width[1] may not be power
> > > of two and it's actually the case?

> > I'm under the impression that width[0] and width[1] are arbitrarily
> > chosen by the user and could be any integer. I have never used this
> > hardware so I'm hoping one of the gpio-xilinx or GPIO subsystem
> > maintainers in this thread will respond with some guidance.
> >
> > If the values of width[0] and width[1] are restricted to powers of 2,
> > then I agree that there is no need for generic bitmap_set_value and
> > bitmap_get_value functions and we can instead use more optimized power
> > of 2 versions.

> Regarding the question that whether width[0] and width[1] can have any
> value or they are restricted to power-of-2.
>
> Referring to the document (This xilinx GPIO IP was mentioned in the
> gpio-xilinx.c file):
> https://www.xilinx.com/support/documentation/ip_documentation/axi_gpio/v2_0/pg144-axi-gpio.pdf
>
> On page 8, we can see that the GPIO widths for the 2 channels can have
> values different from power-of-2.For example: 5, 15 etc.
>
> So, I think we should keep the 'for_each_set_clump',
> 'bitmap_get_value' and 'bitmap_set_value' as completely generic.
>
> I am proceeding further for my next patchset submission keeping above
> findings in mind. If you guys think something else or would like to
> add something, let me know.

Thank you for investigation. So, if Xilinx is okay with the change, I
have no objections.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
