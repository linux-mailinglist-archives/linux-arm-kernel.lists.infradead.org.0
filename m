Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB2F42CEA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 19:03:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RvvP/YbuvldljYjpnb2QKrgkjWOVUbYp3oqE1cGxlUU=; b=VX/rQzazeo/awe
	Wle+FnzpTE2o5Fgt81am7jMZ97O+CEUHWy2sellUGbQpI1bgLB5DfVWMpOQyqqv60tzCieKD9Pb5p
	7ejN31opL92PwPx90AXGvi6I5xlJxFne7+APZAzoWQptlurw74F3csSX+QVRLlipjQc2PR35DI6Xb
	YMdGSX5YbmPCESNOsDhVEHZnP0FmZT7aShyDnxQ4CR8YNYuQFO2YyPcTjNUjB4l11XbSAMqyGytLJ
	zyp3egMmB2Azpc1nSJuf7WpZQEdBrY+h/Jxlx4tgviIsGBMWzbyQZcCczuNto+qATdqVQvkfY2J4p
	DsHVrHFx7qMBGNk6+N5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb6eO-0003q4-OC; Wed, 12 Jun 2019 17:03:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb6eB-0003pS-Md
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 17:02:52 +0000
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
 [209.85.222.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 509462173C
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 17:02:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560358971;
 bh=wm+5WcQRfJbnz//CCyMX9+vekrFgXyfxfNrI9oF65uE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=17E6SyeNw6ZnKarS0veB9PZx5/4zF4Yp4MRLZD+59Nj1gd70dPyRErF2J1VkfrNkT
 ncoeqQbdZCODxKeI4zkQ7HKfCc8xS/O//l6oRddEVCxPJPoGrwo/n3KDaNdRqa2pdd
 VYUl7NuxxUiDHf0nG1gJxHdqJruLyPXhP4Q6KUzI=
Received: by mail-qk1-f169.google.com with SMTP id d15so10831775qkl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 10:02:51 -0700 (PDT)
X-Gm-Message-State: APjAAAWjF8gJnZe91kaM1zQafaiJ64lSbrxuLzeTcNVN9WtJoOY4GxZO
 iQUs0p53hYjnh4G7UtJX9ZC4Sfraflu7yaEEww==
X-Google-Smtp-Source: APXvYqxn/t5SpdMAOZKVGkLfsgJbeVeWbNLaVCgN9g2E8d6YQWTmTBKgNCoQ/G6XvynII/wN2xt4CKVsW+/qwPEnzAA=
X-Received: by 2002:a05:620a:16c1:: with SMTP id
 a1mr24460916qkn.269.1560358970567; 
 Wed, 12 Jun 2019 10:02:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190612043258.166048-1-hsinyi@chromium.org>
 <20190612043258.166048-3-hsinyi@chromium.org>
In-Reply-To: <20190612043258.166048-3-hsinyi@chromium.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 12 Jun 2019 11:02:39 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+RTpRkn22RDTQe9De9se3suoM1ZrYH=Nk8aOKZuJLdGg@mail.gmail.com>
Message-ID: <CAL_Jsq+RTpRkn22RDTQe9De9se3suoM1ZrYH=Nk8aOKZuJLdGg@mail.gmail.com>
Subject: Re: [PATCH v6 2/3] fdt: add support for rng-seed
To: Hsin-Yi Wang <hsinyi@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_100251_760790_BFEF5BDC 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yu Zhao <yuzhao@google.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Stephen Boyd <swboyd@chromium.org>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Jun Yao <yaojun8558363@gmail.com>,
 Miles Chen <miles.chen@mediatek.com>, James Morse <james.morse@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 10:34 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> Introducing a chosen node, rng-seed, which is an entropy that can be
> passed to kernel called very early to increase initial device
> randomness. Bootloader should provide this entropy and the value is
> read from /chosen/rng-seed in DT.
>
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> ---
> change log v5->v6:
> * remove Documentation change
> ---
>  drivers/of/fdt.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)

I assume this will go thru the arm64 tree.

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
