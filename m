Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B40FE1C5774
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 15:52:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z3r/4xYc+t7/t2s/p8UtlH9yfWJZUxq+b99gcJOtTuc=; b=Mt6d+22HG6IRXn
	D7wtNg4V+ZxxrmJIos/GSaG0BhepmMm8/sv/klEKSQR0ibIMqsGLPfnbF4Qa+wzQ5lyfqiyzk21rS
	N+NWsKE4KTNEF427+AM/67HYvxdHHNrciV9DcsfOYyfzk20g0NmO4eo338uAkSqHpw8ZLDaLoN/Da
	mxd7sDa9rghMQxgKHeiacsgc1pLqjJwW+2ILTgyg+z4mggGcV7fR6m+88xc/UuLZzA8w1ZPivBEIJ
	rCFJK/VIBwnLDYrUuPnHxTYOEISg47tiAVDTepVOZtURkmuluqeSkNmw/6QIJmicnMHMTMOThfuYK
	aJKtw+eTShYC9GrRtF7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVxzX-00022G-67; Tue, 05 May 2020 13:52:11 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVxzP-00021h-Oo
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 13:52:04 +0000
Received: by mail-pl1-x641.google.com with SMTP id m7so665771plt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 06:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zSUqQDWC8kjEfI7Zwy/W0Ml7p1PvgRlntpeykuMm0bw=;
 b=hl68Rx6+hwqgjCDnRBIJ4ghqd/Mbjw3qnNO117CIrop6ybuvdvRuSN03pEe7LfHEPI
 DEpOBZgu6KgRtAIgWgd9EZ6+ZSZpdmdrcUwE4xCJSRrgUf6ZClZVqGvF71hyrA1fE0CG
 5XBjSIhRA4+6zJ8uXyhuPujWQz6cVK4l21vd5YazoEAGPJUkjCT72SOFXQTriCqkd2pk
 uSYVpm7onCs3V/dcpk87Lc0IyMldYKecnD5gtwshAbJHKmuG7rbftbJtgtq4Hf5Eu4Dp
 pPA8M/GBhnv2uvwEAgQAizkTBjG2gVDkDo7CwZbbHIjISSjFrMXB3MnYmb9f6aJ5H9kM
 v4jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zSUqQDWC8kjEfI7Zwy/W0Ml7p1PvgRlntpeykuMm0bw=;
 b=DGkCz9I+zoaIkhZkvZV3kYd6X1nZs+YW1zkDlBpwk/3sHWnOpmj8tUpMJrDM4mA1Tx
 U3NQ9fmgD8VaUU9/o9XzF9yzLqgP8qnRywwacpvDUR7wk9/zgBcUNzHkHo6CwXa/68XP
 rtMwROARHHgvfXCo1ARmfHuh0VMQ3KH9X15mEL/cGGlNJJU0MNwXKTYuSkPosDAWVveL
 i/chMjQjgcTuz69y+WGdpniixnHx2SKTvRdcIdadWA0YK92JIrG2wWZKeBJy6sD63FTN
 RnF5LgckpPgjS9MdIm6rVKeNwTlTXu8iEuUzC1Yp0gbBGsBC4fy2i62ZaB1nmyi/JwAj
 Hp2g==
X-Gm-Message-State: AGi0PubyfoAYMHFqJ7hXWjbeUvIHEteYacGH9N1c4gb0Lc9fNumQA3RC
 9ONXLYZ1Xt1ADTbvSiYSOnR9yM+cYBwzUPQighE=
X-Google-Smtp-Source: APiQypJNEHsSL0GExSztmK2I6nxQUgw+68Y8I+I3LffAVV8E4crlumGaO3BAzZEfzHPrp79Ypgd2ypo3cV1x0ObIE9w=
X-Received: by 2002:a17:90a:fa81:: with SMTP id
 cu1mr3234534pjb.25.1588686722930; 
 Tue, 05 May 2020 06:52:02 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1588460322.git.syednwaris@gmail.com>
 <20200504114109.GE185537@smile.fi.intel.com>
 <20200504143638.GA4635@shinobu>
In-Reply-To: <20200504143638.GA4635@shinobu>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 5 May 2020 16:51:56 +0300
Message-ID: <CAHp75Vf_vP1qM9x81dErPeaJ4-cK-GOMnmEkxkhPY2gCvtmVbA@mail.gmail.com>
Subject: Re: [PATCH v5 0/4] Introduce the for_each_set_clump macro
To: William Breathitt Gray <vilhelm.gray@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_065203_802842_2F67B878 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Linus Walleij <linus.walleij@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Michal Simek <michal.simek@xilinx.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, rrichter@marvell.com,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linux PM <linux-pm@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Syed Nayyar Waris <syednwaris@gmail.com>, "Zhang, Rui" <rui.zhang@intel.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 4, 2020 at 5:41 PM William Breathitt Gray
<vilhelm.gray@gmail.com> wrote:
> On Mon, May 04, 2020 at 02:41:09PM +0300, Andy Shevchenko wrote:
> > On Sun, May 03, 2020 at 04:38:36AM +0530, Syed Nayyar Waris wrote:

...

> > Looking into the last patches where we have examples I still do not see a
> > benefit of variadic clump sizes. power of 2 sizes would make sense (and be
> > optimized accordingly (64-bit, 32-bit).
> >
> > --
> > With Best Regards,
> > Andy Shevchenko
>
> There is of course benefit in defining for_each_set_clump with clump
> sizes of powers of 2 (we can optimize for 32 and 64 bit sizes and avoid
> boundary checks that we know will not occur), but at the very least the
> variable size bitmap_set_value and bitmap_get_value provide significant
> benefit for the readability of the gpio-xilinx code:
>
>         bitmap_set_value(old, state[0], 0, width[0]);
>         bitmap_set_value(old, state[1], width[0], width[1]);
>         ...
>         state[0] = bitmap_get_value(new, 0, width[0]);
>         state[1] = bitmap_get_value(new, width[0], width[1]);
>
> These lines are simple and clear to read: we know immediately what they
> do. But if we did not have bitmap_set_value/bitmap_get_value, we'd have
> to use several bitwise operations for each line; the obfuscation of the
> code would be an obvious hinderance here.

Do I understand correctly that width[0] and width[1] may not be power
of two and it's actually the case?

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
