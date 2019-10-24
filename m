Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE0AE27CE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 03:42:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wW29fPsBaWWNr3P3p5IFZ8tWlFM05thnXlj1S/KgQS4=; b=Y2ml9RtQxUB/9n
	Pmjh+OMzHE/0nKKStsxj05fueX0otJFdd5fJAJkfbbTy+QbJNSMxlN0YDUJqNu6jclAprgphhOWSa
	MlSERcI/HHGPgFxIQDEW50F4OXvkbssnUs4zWBVOOwTwU6lA55hZqLzADdTGiPUOx54FxOQA/mONA
	vhNgAXkN1vEd0YO1ey7hjVIT6lwBu8KThgYekZbfj28zAf9zBlm88szQGOF4+seuOFRJblMRBi7h+
	nzxlShq4u1iyHK+2/bu95s0fN1sqAkirD7dVLpntn4hsTu6DIGpkO5S1iGtOXj+APElBtl0r8buCl
	AysXZBUIna9NVllFUA2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNS8b-0005am-Ss; Thu, 24 Oct 2019 01:42:05 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNS8Q-0005Zt-Pi
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 01:41:56 +0000
Received: by mail-lj1-x241.google.com with SMTP id l21so23149553lje.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 18:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8OJxaH+6kPmw9dgASj0fuVpQ14VN3FuPc/5yGSGtmbY=;
 b=Ztl5xY+MLrQm864BsPw6LxqQ7I482HU/mx+dmOZ3vBiev+zX+ecZlrDHrjPP1TJ5M0
 G1slYe3ezYIVVAOb2tNWoDLJLHhD2Cq6H0rjPHtbPmltWsEi235k+6Bbo49lYMGy7KwI
 ZUNKfysobLawVrjElAPcaLxASua/+EdSTxJrhZA2hUUL1kCZLO1oXm46VpEXehooJ2sQ
 GgBjKEg/L0bqGBaeDaY0zYdWAXOZfrHpYl0VaLF5l+JtJuNtN6QC6DZGRoZP4Tlb2y3m
 yynPG36KPPVA+HJWOKqXL2VPvB5d09J6tZSSxrrlrnhYSQB7nnQE5Nrylhs1XdHy1NBs
 L5pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8OJxaH+6kPmw9dgASj0fuVpQ14VN3FuPc/5yGSGtmbY=;
 b=oQ0KejSIFGLVOMJ/UZYc74d+WZZZz2ooWijwr7h3rWMG5yjlxSc3QPCwJXWF8zFXMC
 Die8qtqyeyi8drHBjv7f/12wXOa7QiHy1qXOxxiC7pdrUng1BSVGf2KXpyLDDAn9wei+
 ssl3E9ifCLft1Dv+jV52J4Xo1XdtLka+0g1b4t1flnt8pSYvRSOWuQfrTLdPWlVTFCzf
 nfZcaArCr+pT6mUDX8tgXbG8vcKxYIoiNHJJigqReXwaRMX885YGlIIUCXhwbEa/iBQR
 R2ejklwXr6h8V35N7kxJ2gzATr7armg/k0w201VS82crUZRhC9EaDUNzif6CDfsr3bae
 mT1A==
X-Gm-Message-State: APjAAAXK9FQjc+zd1oF3b/j1pvXUPAkxnMVwZEshfhE2xGL6IjYDWbJ5
 e1nZukHNC7/vNPwyoUwxKA9eviPFpM/caRvxUJ1ROg==
X-Google-Smtp-Source: APXvYqxFU/AdvtGEjXjz6AO9yFhahr2FZeEFXGQJlEkrVWjpBVlmtuHmyjLej6w3l0uiAHH5Qi0htKzJtZqZqFYOG2Q=
X-Received: by 2002:a2e:2c0f:: with SMTP id s15mr24577899ljs.63.1571881313012; 
 Wed, 23 Oct 2019 18:41:53 -0700 (PDT)
MIME-Version: 1.0
References: <2e3d8287d05ce2d642c0445fbef6f1960124c557.1571828539.git.baolin.wang@linaro.org>
 <CAK8P3a0i_xvSzeRxfT-5LLpaAfGx3USsuXX1dv1x6Bg87jeopg@mail.gmail.com>
 <CAOesGMg5MH3Dq8yBLhHZCJJwMqVaiqqJyhs-tNE_nWDzUaTPCw@mail.gmail.com>
In-Reply-To: <CAOesGMg5MH3Dq8yBLhHZCJJwMqVaiqqJyhs-tNE_nWDzUaTPCw@mail.gmail.com>
From: Baolin Wang <baolin.wang@linaro.org>
Date: Thu, 24 Oct 2019 09:41:41 +0800
Message-ID: <CAMz4kuKRzqtevbUfpT93MLM_9L6jA5oT7g=r9RKVyG4xK=_E1g@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: Update the Spreadtrum SoC maintainer
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_184154_833212_4E1F4BE0 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Lyra Zhang <zhang.lyra@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 arm-soc <arm@kernel.org>, baolin.wang7@gmail.com,
 Orson Zhai <orsonzhai@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 23 Oct 2019 at 23:37, Olof Johansson <olof@lixom.net> wrote:
>
> On Wed, Oct 23, 2019 at 5:17 AM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > On Wed, Oct 23, 2019 at 1:06 PM Baolin Wang <baolin.wang@linaro.org> wrote:
> > > +F:     drivers/power/reset/sc27xx-poweroff.c
> > > +F:     drivers/leds/leds-sc27xx-bltc.c
> > > +F:     drivers/input/misc/sc27xx-vibra.c
> > > +F:     drivers/power/supply/sc27xx_fuel_gauge.c
> > > +F:     drivers/power/supply/sc2731_charger.c
> > > +F:     drivers/rtc/rtc-sc27xx.c
> > > +F:     drivers/regulator/sc2731-regulator.c
> > > +F:     drivers/nvmem/sc27xx-efuse.c
> > > +F:     drivers/iio/adc/sc27xx_adc.c
> > >  N:     sprd
> >
> > Maybe add a regex pattern for "sc27xx" instead of listing each file
> > individually?
> > That would simplify it when files move around or you add more drivers that
> > follow the same naming.
>
> Agreed.
>
> In addition to that: Baolin, when you resend this, feel free to send
> it to soc@kernel.org so we get it into our patchwork tracker (if you
> want us to apply it directly).

Sorry, I missed soc@kernel.org mail list, and will add it in V2. Thanks.

-- 
Baolin Wang
Best Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
