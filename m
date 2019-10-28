Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 169F0E77FC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 19:00:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VewdcaUAsg41Uzcas6+CIkv/TE7e5t8D6p8uNHXMDjc=; b=VlTA8rzcllFB3z
	XFtaZwgPIPUL+K2HJa8rR5su8wEWW0fWPsCIP6vYaF6bzL1cmS4S8FegyezZC3T9OSFTThZuTE4DK
	TFVMFbqXmch0646y/a5OkzFngoKAr2zH5CDaMgu4hr/uJsbb/gJSykUdM8g5vyrU60M298LWCJEIe
	1B2WB5yzpmic/0/JO2s1qSvUuLrzsDAJJbp1/JaLQp6RKXPr2zqH2F+yUb0d2EM0noNE9TF7Jf7rS
	e61RdrZSoJsw2j0ba85CdafecMuOxCS/w1ZSYzYvxdG7FCp8O3JshI6cWiQsx6pVT1SP1yhqtq5gP
	qlnf03gSngJRQUzNx9Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP9JX-00012v-Lm; Mon, 28 Oct 2019 18:00:23 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP9JO-00012T-4D
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 18:00:15 +0000
Received: by mail-il1-x143.google.com with SMTP id o16so8962543ilq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 11:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8ZRA4B7FXW6W3RV8tn3gg3cUt3S15ss1oFglpHJlY5A=;
 b=zHLBWNkMxANTvwUl0FlcedkhxdOgCZtrZoDsoWKv+ek6Z3m8siH8NnqcPAkM57lkwO
 jl56v6UoXJmG7MMFRJ4TGFmYb1GFwcrLVjbMh+xgwhUbe++4A6g2cAcbbGafahxrBxBh
 xGwuNtGYC0Y6Og9hH3ZZWtXg3LJc43dNgkICShfZYv9yt2mQrit5Cfk0WIptLj4hqyl6
 j1lhHmL5NLI0jVpwqeXeame/kAJqn9zrtLd0gM1XjdR6GcDOEKTOaYM0YqiAJNgKRSUE
 J7jejSFSjXTPQ5c0WP7U/wrVNcJ9JZeHnLuKPhsN5uW5ll/VNZwN/gKFR7QpYz/lT6C3
 ixNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8ZRA4B7FXW6W3RV8tn3gg3cUt3S15ss1oFglpHJlY5A=;
 b=hRKfMXr6ddOUKZC1VxGhV3YgEtZ/JS6O3+TvIGYuCEMRWGnfLO2KwbCUTevim4IIu9
 6AkCPrvDFAxv0u5x2sZPS8jf2jnpfNwXJxrHv8FT7z6DY5J9v7bRa76GvNeSf4iBRQlO
 3mvTWRmuPBPqxvYWScujmcW7+EmflylLA/NvtLKi6CDgDj0J0YlOnKbm+OYabhvTgCuH
 mFHPdwMkotGPAi2WdBnawSAFqQON0qzTbL2jqtNRng0c59F27iFfJ7vXNo+im6OPG2g2
 Tlx3Gs35OkOycqW1KGyo8jO5WPNu7xfkRZtrH6OdPtQAUraeAUm2Ix5glBfJD6Skoiyl
 2vFw==
X-Gm-Message-State: APjAAAWuwDAQmZZlORFUtfjdWrU53Z/rvei5axjhxxjhfdc4Hq0j/Vpt
 idHF23HuZno7yCgiUhVrIbXFxLJ5k2/pohe/8yDhzQ==
X-Google-Smtp-Source: APXvYqxcExEAISwj/XJbHLQIdEKw/l1wqOsOwo+jUVoxMxO9rsxV5Cf/v4Uwtd152UziFriUZZXVD1/2FO6vdoNUfdw=
X-Received: by 2002:a92:1907:: with SMTP id 7mr22036675ilz.72.1572285613084;
 Mon, 28 Oct 2019 11:00:13 -0700 (PDT)
MIME-Version: 1.0
References: <cbc2af1aece3762553219ba6b5222237dacaea9d.camel@pengutronix.de>
 <20191028155620.j72vxqnp6sqdl5j3@localhost>
In-Reply-To: <20191028155620.j72vxqnp6sqdl5j3@localhost>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 28 Oct 2019 11:00:02 -0700
Message-ID: <CAOesGMhvCRWMsC1eLAtTA5sh0qjE8gQYnKoxb4kFOQZNjFRMuQ@mail.gmail.com>
Subject: Re: Reset controller fixes for v5.5
To: Philipp Zabel <p.zabel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_110014_220850_1D6F2213 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: ARM-SoC Maintainers <arm@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 9:00 AM Olof Johansson <olof@lixom.net> wrote:
>
> On Mon, Oct 28, 2019 at 02:15:31PM +0100, Philipp Zabel wrote:
> > Dear arm-soc maintainers,
> >
> > The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
> >
> >   Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
> >
> > are available in the Git repository at:
> >
> >   git://git.pengutronix.de/git/pza/linux.git tags/reset-fixes-for-v5.5
> >
> > for you to fetch changes up to f430c7ed8bc22992ed528b518da465b060b9223f:
> >
> >   reset: fix reset_control_ops kerneldoc comment (2019-10-28 12:18:23 +0100)
> >
> > ----------------------------------------------------------------
> > Reset controller fixes for v5.5
> >
> > This tag fixes a memory leak in reset_control_array_put(), which is
> > called by reset_control_put() for reset array controls. The other
> > patches are small kerneldoc comment fixes to avoid documentation build
> > warnings.
>
> Hi,
>
> Please send these to soc@kernel.org from here on out, so they get captured in
> our patchwork (I bounced this time).

Seems like the automation for marking pull requests as merged (and the
automailer) doesn't work with bounces, so: Merged into arm/fixes.
Thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
