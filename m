Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6AB1D95CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 14:02:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KFufUgM+oPMirQG69XmfT9iqaF+yqTRipnfbMDC1LGU=; b=d1zxDBjWPB0bAS
	6/5+OTxJxIs9Z2Egu1BuYnFVmXgu4cpnseoTzK610mNv9eyrJqrtAg2SDXGNDbOrUnL4epQbPfHqG
	Zj9VWD5q0i2HR1FVLajtp3L2aZuHmLp8Jqx/dlEc3qavKqM/jl+wSNFa/brMchu47/LIXk433WVsP
	y4fe+EnTJGIaC9Vg4Vk41xC3exThW5qFxY4ICYU7yiDeMGam2aiv0l5q3LNd4kWWNb0on70L9YjoH
	ONJnyq8zza4F6bfK6sRdII/c5gmfUxNaBS7jW05LxZO0z0zYpVe16CSBOJwJiIan0ZjcCqGRZNMZC
	7ODqV6JDPY335bbHeXFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb0xG-00042i-Mk; Tue, 19 May 2020 12:02:42 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb0x8-00042I-I3
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 12:02:36 +0000
Received: by mail-lj1-x244.google.com with SMTP id u15so13428919ljd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 05:02:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b8KwBLKnWCGgbe53yebPowDIx5ULF3rWj/6PyJ/tx+M=;
 b=mHTuqLAae2iE7ABruI92CLk17sUOghT8/kPediRmqiB4EaDa1ewV7fMfQ3JkVdsUEp
 5/jrl3ekK7teSb1RpdgwqnPFjxyJEF3Wt0hjalfIimOGFqqtNGTMu79Qkk8hCazAMnUK
 /c9bNyrs/1vd304P5MYd6gdpC0pTOJM59BkOWeGPFH3AQmCiepiRk2tF/QL7qOx0U6Ch
 RSxp58rrqVBB4RV3DF56H0jmlGheMoxkn3Ife6YG9qa9zHwIHJ5qFHX/2Mfa3Y2c0b6i
 e5xVofQfINmNawBfojAVn/92vG5ZCASF+cUs0+YZtJYH1Cbpj80N+GLVBBA5fLCMYWuI
 TkjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b8KwBLKnWCGgbe53yebPowDIx5ULF3rWj/6PyJ/tx+M=;
 b=fXD47rNSTZGBmOFloM+PLi3u8WgLLXiQr07halTd2G5MZnRD2aIflkh+ZHvUm2bmhq
 cSNARnE/Aj/AGgniOyt1lSH9poPN7hfGHPRbSeBsbSugeZYVfc72SNlv8RszhSUj8mje
 SZ8o0ajcSPyFAnExmfW+IMiBSXmM93u0gl3qzBAiAZv7Z1A4YjdW8Z1r9G4YIbUJrpCu
 bobDngHGTb6E37IFiUIVFWBJZhui32Vq2AKHEixa/lyPeMvTXPP0nt8AJhuwDCCI5GBg
 67Y7Nsi0N4LQUMsS8gHTMpnJV5TD05FAtwZVYrstjoUE72r88qQahblc9qRpTudwxvHX
 bZ1g==
X-Gm-Message-State: AOAM531Pg4T2Cwc3KsakDP1EOsnpBTNrHJzWeqjw+1nGTZ4pTeAZT4Ip
 9DGsZxxNj1Bxw0KM8yxy4iV0oRGYx7/1HKKb6EE1+NTisbI=
X-Google-Smtp-Source: ABdhPJyTZo81kV8Mg2yhrwa9EXegaNSnP2ZfZ5NZoQywU2X/nwdhcVApbAAvw+QM9fSRrCuMxHQNpoL2NPavxhJYJKc=
X-Received: by 2002:a2e:8018:: with SMTP id j24mr3228064ljg.99.1589889752730; 
 Tue, 19 May 2020 05:02:32 -0700 (PDT)
MIME-Version: 1.0
References: <828135836.20701492468756240.nrg02771@nifty.com>
In-Reply-To: <828135836.20701492468756240.nrg02771@nifty.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 19 May 2020 14:02:21 +0200
Message-ID: <CACRpkdZP-JN2PNSnDeKcavod61gJfRQmm9mMUUU2yCd3cgchqw@mail.gmail.com>
Subject: Re: Increase stack size to 16KB
To: nrg02771@nifty.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_050234_595324_42F31309 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 18, 2017 at 12:40 AM <nrg02771@nifty.com> wrote:

> I want to increase stack size to 16KB on freescale 32bit arm system.
(...)
> I modified the following kernel source code to increase stack size.
> I confirmed kernel work fine, but after mounted rootfs, init process
> dose not work with the following error message.
>  I confirmed init process created without error, but it seems when
> executing init process the error occurs.
> Is it possible to increase stack size to 16KB with 32bit arm freescale
> environment?
>
> I confirmed OMAP arm 32bit environment work fine with the same modification.

I think I have solved this as part of my work on the KASan
support for ARMv4 and ARMv5.

Could you check this patch:
https://lore.kernel.org/linux-arm-kernel/20200515124808.213538-1-linus.walleij@linaro.org/

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
