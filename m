Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BEF11DF1A4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 00:04:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xc0ApXY4pglXcfd8FwYGMNKO9dmgyx03D1YGrc5YqSg=; b=Sc4/7+7H6RXg0F
	LyXXIcpwEE1+L7LIc2xTYFwi7GKVVNHZVOw2OoxOf56QwuXC4sjc95bNE06bbi7cLlPzKV7WmR+Ix
	DN9DEgi3+CKo0JuuOjcJ6v7a7IN9Vm1KHUU4UiLKkn0CKqgS3KLSsKUiq3eneqib+SGhjuhQpKiOd
	3708PWm/QVNZKebQdPYZ+YRwLjKVBsUb3wpfHert6N34rS3A5gwJOqAe/7squGdCA3BMukHuIFaI4
	bdTy7kOMK21Etb8t/PS9n3F54mtRlFRRD05NZ9+rLJIchOadHaVnF7k6XCbr947AhtSYiUQdnw8Fe
	PC/vmeuwrpR3RSvrpn+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcFmE-0004nw-Fg; Fri, 22 May 2020 22:04:26 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcFm5-0004nJ-DX
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 22:04:18 +0000
Received: by mail-il1-f194.google.com with SMTP id w18so12185576ilm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 15:04:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=973NC73pjk2NBifwj8WHpMk/zDWJCDkNGu1zxBkh+HU=;
 b=DqoynKQ9lGe3u95wvZhcKq4a8akY/M4+y/yVV2Y020i3NPQUTj2BxbdHa3LmqOVZXR
 9iw6z48DbaMhioXh0yX+SO1oAo2m6VQLZpHBg7k/lz0/TN3VdF6rvIfDCUGWM3ydRnOB
 grJ1BcNZU+anhNqdoESrXPqnAdiqwrGgrpuCVlaBPs+d6UUVqu+8uw91pOriHA4czN1G
 t2a6n1Gwj01iDCcba+9W4yet0Uqzd+jlOXGF9GpbPGZuY0IaRLrK7/2eqniKMygYaTU7
 pd9Kst0wNNKe/M5HFrFpNmlG1g6gH1Lg8Q5R4MOoRCq1PMjA8SJ1n2cHqX6xwi8B7Ix1
 GvFg==
X-Gm-Message-State: AOAM533kcc8s/bIgAPt5wI1P9RHHfMBTU4OQKdBKloWe9aj0QCGSZYo0
 paVUHWOxRlC3qLA72oa8ccyydD2KhnI=
X-Google-Smtp-Source: ABdhPJwfu10UDXfdxd3GLkmBTdr3c5+g1ygcl/OzQJiEHRzG0IZP1Gsowwt32S+68vD110qRH16JRg==
X-Received: by 2002:a92:4a09:: with SMTP id m9mr14290006ilf.27.1590185055646; 
 Fri, 22 May 2020 15:04:15 -0700 (PDT)
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com.
 [209.85.166.172])
 by smtp.gmail.com with ESMTPSA id h5sm5078071ile.35.2020.05.22.15.04.14
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 15:04:14 -0700 (PDT)
Received: by mail-il1-f172.google.com with SMTP id l20so12204571ilj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 15:04:14 -0700 (PDT)
X-Received: by 2002:a92:c401:: with SMTP id e1mr15993370ilp.134.1590185054260; 
 Fri, 22 May 2020 15:04:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200427134003.45188-1-max.krummenacher@toradex.com>
 <20200427134003.45188-5-max.krummenacher@toradex.com>
In-Reply-To: <20200427134003.45188-5-max.krummenacher@toradex.com>
From: Li Yang <leoyang.li@nxp.com>
Date: Fri, 22 May 2020 17:03:50 -0500
X-Gmail-Original-Message-ID: <CADRPPNT8FQJ4vZUkk-t=o2GnNB=JSxkadjxiH0LZcQhC1e8VMg@mail.gmail.com>
Message-ID: <CADRPPNT8FQJ4vZUkk-t=o2GnNB=JSxkadjxiH0LZcQhC1e8VMg@mail.gmail.com>
Subject: Re: [PATCH v3 4/5] arm64: defconfig: add MEDIA_PLATFORM_SUPPORT
To: Max Krummenacher <max.oss.09@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_150417_456068_4C0C81B1 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pku.leo[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Arnd Bergmann <arnd@arndb.de>, Anson Huang <Anson.Huang@nxp.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, lkml <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>, soc@kernel.org,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Will Deacon <will@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 8:43 AM Max Krummenacher <max.oss.09@gmail.com> wrote:
>
> Commit 06b93644f4d1 ("media: Kconfig: add an option to filter in/out
> platform drivers") adds a new Kconfig symbol which now hides drivers
> currently enabled in the arm64 defconfig. Enable it to get those
> drivers back.
>
> Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>

Acked-by: Li Yang <leoyang.li@nxp.com>

This is pretty important otherwise some of the drivers enabled in
defconfig will no longer build.

>
>
> ---
>
> Changes in v3:
> - new patch: added 'arm64: defconfig: add MEDIA_PLATFORM_SUPPORT' now
>   needed for some enabled drivers or these drivers will silently not
>   be built.
>
> Changes in v2: None
>
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index b8259814065dc..472aa82b9feee 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -569,6 +569,7 @@ CONFIG_MEDIA_DIGITAL_TV_SUPPORT=y
>  CONFIG_MEDIA_SDR_SUPPORT=y
>  CONFIG_MEDIA_CONTROLLER=y
>  CONFIG_VIDEO_V4L2_SUBDEV_API=y
> +CONFIG_MEDIA_PLATFORM_SUPPORT=y
>  # CONFIG_DVB_NET is not set
>  CONFIG_MEDIA_USB_SUPPORT=y
>  CONFIG_USB_VIDEO_CLASS=m
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
