Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD5019055D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 06:56:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=StoBly9tEgt9WMpBmTvU+HSrj8+0hGGX2hJl4wT9kEU=; b=h0sOUjEr8Or2T9
	FJtt+8eYRqSuJtizYt9I6uK9hrZRdAUxhnZFlQ3jEWjPYnvPvXNGNDzdaxD4FGfcTeM3qYpFmcuVk
	WPB7wjXBrlsbdubOZeC381TR5Q1RSeYiz4rRJhmaWGlTKP6W6K+KgKSebyhF+BPv+P8NfKhM6kZkp
	uIaUBLmq96dmO2fAy09L4VCMIky2gee3SbRB8p0r0aTkWqC+KfE1ab6RgGTftNfLgKCOLMmGN+zfh
	/unXCOh8GkZPLhBcNjZKW7RK8oPKPJMVyNF0jb/0hKZP2ksij6OcHQ6b/fOCCHOY0XGvAtJurDz+e
	4leovCoibK9wt6WEekDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGcXu-0003OU-Lc; Tue, 24 Mar 2020 05:56:14 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGcXm-0003Nw-Gy
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 05:56:08 +0000
Received: by mail-lj1-x244.google.com with SMTP id 19so17243046ljj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 22:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZIgOJesy3rleouhcqifjbAO4ow/9ZhExaaD5aoN7YJQ=;
 b=sOXO4EVoYyXDc/XDnuDmx8GdcjNnHctC1516GhWFsNxKS7B85Ckl4eNK43Fy0Q/l5e
 +IWs3YRcUpU4aA1lX2YsPJ+qBWVECYldEtK0AdLcQg5Pvan5BqfFHYAPr/KUjqSCWL18
 jTUtmo3phxh2TEliavvM06E5VYUhOukWCrqw6/VnEFN2cRUZO4Lhnd9C3WcaJaKoFrdp
 j6VfniKVVOut4BItjcC8pP9PoIgfbSPyhp9PSQqbgrYPrVlgdicqVZkOww1YRFPVB7IZ
 YtHF3Oc1TPZcikB2ewZwZz55ELrDXRnzogEG4lca7XOgHLzHstZJnTwfPVmpERfw+U8W
 uZ0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZIgOJesy3rleouhcqifjbAO4ow/9ZhExaaD5aoN7YJQ=;
 b=oktsKvds310Bb1tVTmU+IhDbt3bEfUVB3Cx35tXdJUO/u4I44TLijL7jiME3ucToVO
 trjJC0Ex+Rcyo+Xoc3t44WCcOvoyoKc+LHqec2DHFtRoUeLLYIsmbx585O170pOjwARd
 tjoIchqj/jvx5M4IzOM/mQZBpGQnDVy4YOrIeAF21c6XoDCiAHymMNBCf6dl9Q0lAJRc
 0dWTXP8EFl8x0GSU/4bI0Au6CqllVjTKDbzKMy0xwQT6SO1m67RVjgOggDy+oY5F9JVH
 ImuuFpQdSBhFlOV0+R02oNq1Beaf9kLIFzy7k5wInGATDzPiIS+vMiHvn0YHqFfsJhh9
 9ZbQ==
X-Gm-Message-State: ANhLgQ2g27CsJyG5W3Y51etNs19pSRZpSLbQ7AX2DCYmXP8VxXMwsey8
 WSP3t+vWjJfAr6WGGoNUPgbs9f42Y+vr0+V0pE/ErA==
X-Google-Smtp-Source: ADFU+vscG3rg0VL8Psf3Hfj0NUbJHZfA8zcYs3LQ6Ux97OwG7WctOvEAIs7PrpQ9BiE+KR7g+c9Zqvt9xLOmBCYDVfE=
X-Received: by 2002:a2e:85cb:: with SMTP id h11mr16152375ljj.55.1585029363806; 
 Mon, 23 Mar 2020 22:56:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200322112437.18070-1-linus.walleij@linaro.org>
 <CAP245DXiU9XUwP-h1CAnORG=a+NAOcZiY7RvkOsgRQSAhSGG4Q@mail.gmail.com>
 <CACRpkdZzMsq6fYv3QiKi-FnnNivnyXj7oKzMrvt3XvN2-6WnDw@mail.gmail.com>
In-Reply-To: <CACRpkdZzMsq6fYv3QiKi-FnnNivnyXj7oKzMrvt3XvN2-6WnDw@mail.gmail.com>
From: Amit Kucheria <amit.kucheria@linaro.org>
Date: Tue, 24 Mar 2020 11:25:52 +0530
Message-ID: <CAP245DW-D5EGFq0cpMNy2DSa6DNrYjehwCBzjKyOiaWGEZVpLw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: Fix leftover entry-methods for PSCI
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_225606_574815_1F9F42BD 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Fabio Estevam <festevam@gmail.com>,
 Chunyan Zhang <chunyan.zhang@unisoc.com>, soc@kernel.org,
 arm-soc <arm@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Shawn Guo <shawnguo@kernel.org>,
 Lists LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 22, 2020 at 5:26 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Sun, Mar 22, 2020 at 12:49 PM Amit Kucheria <amit.kucheria@linaro.org> wrote:
>
> > My patch went in, in 4.18.
> >
> > The FSL entry went in, in 4.20 and the spreadtrum one in 5.5.
> >
> > > Fixes: commit e9880240e4f4 ("arm64: dts: Fix various entry-method properties to reflect documentation")
> >
> > So only minor comment is that it isn't really a fix.
>
> OK I'll resend a v2 without the Fixes and your reviewed-by.
>
> > We've tried
> > improving the text in the binding too but somehow people still get
> > confused. Converting the binding to YAML and enforcing it seems to be
> > the only course of action left now.
>
> Since nothing in the kernel checks for entry-method right now, maybe
> we could just add code to do that and warn in dmesg if entry-method
> is set to anything else than "psci"?

Hi Linus,

Documentation/devicetree/bindings/arm/idle-states.yaml already
triggers an error on 'make dtbs_check'. Perhaps we just keep an eye on
these?

db845c-check-2020-02-24-222456.log:/home/amit/work/builds/build-check/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dt.yaml:
idle-states: entry-method:0: 'psci' was expected
db845c-check-2020-02-24-222456.log:/home/amit/work/builds/build-check/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dt.yaml:
idle-states: entry-method:0: 'psci' was expected
db845c-check-2020-02-24-222456.log:/home/amit/work/builds/build-check/arch/arm64/boot/dts/sprd/sp9863a-1h10.dt.yaml:
idle-states: entry-method:0: 'psci' was expected

Regards,
Amit

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
