Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A02814A737
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 16:31:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M2TTt4vd+fIQNJJtNM3MyN5b6sr6HsDNUhOAOwyG04A=; b=Yl0+Zp2jRqmKIi
	jk+owGSf5lnQcelqZW7aqPsvkr9Gjt4111JAK02qx2vRKVFijPlCMPu5gEnYh+p29es1Yflxb4vhv
	xEBp4Bf93h9V1gTKJN2LJbJcTDE4IGI/lBhvEJh7XRihX+BF6IzSum8s+UKy+Ao/G/29HvJXKHNHc
	OK8NhRj+pRZDgYSBh9PMRXJ7rw0am9/wrS5wNMeF5XQsFAvKQ/pQzrwzu8C7GKSvSbuleQ42Op9+5
	al44wQqJUwx3lnBiuV6njKYSf8vqrS0Cy1HW3pcRM/GvKmD2Q/4Vtr1SPSkmEjAfu+Lx3nUiLOjQR
	lU+Xb2IT60LLK5C93Vqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw6Mc-00020N-0g; Mon, 27 Jan 2020 15:31:46 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw6MP-0001zr-3L
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 15:31:34 +0000
Received: by mail-io1-xd43.google.com with SMTP id s24so8902664iog.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Jan 2020 07:31:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wZcHaTZrpp0lawR3GVqPBRKtc340w6izk1X9AeM0tys=;
 b=nvSzcH1Xw7GOlXuNwsORWXRC/m0RWJ3mbBUNb3p1i0GNqi0ywJkeOETyFvVkBKYObE
 Cgb2HM2FjwusqDbbOtR9PU0CZKX3lNLeuvCuw77kxNBqCuOpO8nv6LhHettTcrHCl6hR
 NxEuO4OgmrYm7iV7mz5pU/VK2+uy9/fwL1tLj7KlmgGhLuQLYb1F0SIBOjZHwsF8OMYa
 Q9yFjzfwTRNEYcOvYltkHY0KGhSXs1eZ9rUey3urJvl6xrZ1s59qiZkwxm0ybINVUD+r
 lRG8nvLj/KjTkFcXau+buOgfpkrPNM+3/lHyfHltis2wyMcs65vmPoAD8hVVa4U5EVQt
 lM/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wZcHaTZrpp0lawR3GVqPBRKtc340w6izk1X9AeM0tys=;
 b=k5pGfPxo1yDA3DXaKlD6LzzL7GmYmEOucTXx3mPi6uESJANOGC6C0NN8FfYu6lK0Dm
 36PkPP8K3Y2goQ8mEvQNA+rMexi2ZUbt88TnWI63CGCVV+PFvtov7N2frGi8/bbgo29L
 vFs5esdJ/5XODTkyqLtjdaykqXFooobQDW7G3wg+09tWYWQplTeyHjd87uUB+yynsQW1
 ZvvD5vZlD3rsAaaXPYxGSOFIW0P/nHFPphyuPFq2MO0fwVs7n3XsR9Fmafd8a5SULggE
 PuXvL03cv6VBF8UpyLiPfvOr4YWrD2FUPcAuO+KO+HmBeHCViIBmpuu+OA2QjeYW+f8x
 IYqg==
X-Gm-Message-State: APjAAAVuLFeJIizA1J21+Lpzl38FH8XqhEeIhywG8F+s9j4P7e4/Dms8
 ccqMj5Bozj9sc76ISiPqip4LTjgrefyPVLKHDPS20Aj4
X-Google-Smtp-Source: APXvYqyMcGQOVpPrRqmndzHbICrmTzpBtqo7gVvyN5KQ6FS38oEewn3YPTazGr2cisDl7epkP7znrZ+knCDZ9WJ+jaY=
X-Received: by 2002:a5e:da0d:: with SMTP id x13mr11830080ioj.123.1580139091245; 
 Mon, 27 Jan 2020 07:31:31 -0800 (PST)
MIME-Version: 1.0
References: <043eb5b2-a302-4de6-a3e8-8238e49483b1@ti.com>
 <0b4efa9c-b811-1083-ce9c-8a92903e3680@ti.com>
In-Reply-To: <0b4efa9c-b811-1083-ce9c-8a92903e3680@ti.com>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 27 Jan 2020 07:31:20 -0800
Message-ID: <CAOesGMh4w0w5Q-VTtHxSBU5rRUtaN--4oB3xfXPTk_Z+Aeru0Q@mail.gmail.com>
Subject: Re: [GIT PULL] DaVinci SoC updates for v5.6
To: Sekhar Nori <nsekhar@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_073133_141726_A5614DA1 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 ARM-SoC Maintainers <soc@kernel.org>, ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 12:54 AM Sekhar Nori <nsekhar@ti.com> wrote:
>
> Hi Arnd, Olof,
>
> On 14/01/20 11:48 PM, Sekhar Nori wrote:
> > The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:
> >
> >   Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)
> >
> > are available in the Git repository at:
> >
> >   git://git.kernel.org/pub/scm/linux/kernel/git/nsekhar/linux-davinci.git tags/davinci-for-v5.6/soc
> >
> > for you to fetch changes up to 5e06d19694a463a012c2589e29078196eb209448:
> >
> >   ARM: davinci: dm644x-evm: Add Fixed regulators needed for tlv320aic33 (2020-01-13 17:36:26 +0530)
>
> Can you please pull in this for v5.6? I have not seen it in linux-next
> still.

Odd, it does not seem to have been picked up by patchwork, so I missed
tracking it.

Merging it now into arm/late.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
