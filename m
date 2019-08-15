Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C9E8F374
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 20:32:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iYXDrSYvnR1inMZpaemLZA2ni9MP8+QHVt/Xh92rBcY=; b=nTPScy4SQvAnuP8NmZSR9XG+1
	jiGCJAOrWeyt2dzZ5lCu1iLE9CPafx2++INJY60anoFHDnSsRcSS7VnyedlJ7y5jC50JRnHl9un4K
	avI8TyIg+ZoE2WEwLglMoBSbbQFLzwCuWW7kfDhUXfTooQwj2r1DdfiYO488UibkW4hB0sTdFHZNW
	XMwu9BHGoHX/W0fW2Q3u3oaLSz8RN0NwgXfoVhwUDNZolueSTpCS/ybHlgtsnkheK24S5x89zqYhp
	izhZdc/bQhhPVWdQui+nFtMu2zKMGb7WHiMaMQN+obFOXY8EMu3Mz9siqMjDufZ4MNU9N6JDAkciL
	s3vzuq7iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKYA-0002Ky-EW; Thu, 15 Aug 2019 18:32:38 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKXt-0002KO-Ce
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 18:32:24 +0000
Received: by mail-oi1-x243.google.com with SMTP id c15so2957545oic.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 11:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=zr7m4pwTZtuvjpeiIC/jYJKmr4TJLJV4XhMln9ZPv+4=;
 b=QhoIDVYdejOyWyiUAfCz1XWolONEWbCa4OOpGFtUQnKIGhnLyEC0/WGR5DefUSe1mR
 i3zN3r2Q/fvJSZDwrKzaRdvzv43fsSPU0X21BNHiS2Yqh+NKiqKBv6Ii+RH2I3llRllE
 byC/IWheGYP6LEWHOEThfHTWTKIJJf+uR547l94H3w3AmvHSXHgGTk25MdOCZrvH2vOm
 xHVEnRuf1yAPoEGvBmZTWcabaDcqGkwohIXbc60Uis39tG3aq01SVHfE16g3nGRTQp5j
 fFt/E1AjMR0bRMXf2g86K2ujhMJd+JgLRDunGS64polTLVj9Z+V7jNNFV0rN5tUK+OI4
 jJgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zr7m4pwTZtuvjpeiIC/jYJKmr4TJLJV4XhMln9ZPv+4=;
 b=SbYEa/0gqW6VQQEZwMVJEraM1zvKIzXFazIlvTmPaKna2abC6LyM1ofy3H86RBeGq8
 3IY4i/Z/rF0Zgy8w8BzAGJSxcBsNExo4HM90X8psS+cymPyf2A4XbYRKE1eRxw0zXy3g
 WAW515eFBCtkUH4dh57xReXVVFzYmX6IlSt2dkBdIMiWiMaNVxNJVL3RF2rcK/zolTRF
 h6iXFd/bo9AR3/yGWDrwZgiW/5dmS/Mgh7DKS7Z4x5HEPaxv7qHxW6KPA4CseMkBihQN
 UkiMhExIUtSuxliQlZ7hKhro3ngfPgH1QQVBd7vJ51NhCsVmiFf3s1b8hl2EMcv9pQyt
 /6LQ==
X-Gm-Message-State: APjAAAVxV2i3keFyluTuhY2cOarOCvt1bU2zRwKNT9ICGyr1PZ0C1mMT
 G77dEXAvFOWY9BzYt1N9Zmw=
X-Google-Smtp-Source: APXvYqyUNRL91dzBCJhtveiCufmLdZI/X5yNhmzj2dzOWTVqlPUlee32crL4pNFIQyUM9g4pdq2Yow==
X-Received: by 2002:a05:6808:49a:: with SMTP id
 z26mr2630733oid.177.1565893938759; 
 Thu, 15 Aug 2019 11:32:18 -0700 (PDT)
Received: from [10.15.211.16] ([74.51.240.241])
 by smtp.gmail.com with ESMTPSA id t81sm686205oie.48.2019.08.15.11.32.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 15 Aug 2019 11:32:18 -0700 (PDT)
Subject: Re: [PATCH 00/14] ARM: move lpc32xx and dove to multiplatform
To: Arnd Bergmann <arnd@arndb.de>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20190731195713.3150463-1-arnd@arndb.de>
 <20190731225303.GC1330@shell.armlinux.org.uk>
 <CAK8P3a1Lgbz9RwVaOgNq=--gwvEG70tUi67XwsswjgnXAX6EhA@mail.gmail.com>
 <CAK8P3a0=GrjM_HOBgqy5V3pOsA6w1EDOtEQO9dZG2Cw+-2niaw@mail.gmail.com>
From: Sylvain Lemieux <slemieux.tyco@gmail.com>
Message-ID: <b43c3d60-b675-442c-c549-25530cfbffe3@gmail.com>
Date: Thu, 15 Aug 2019 14:32:15 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a0=GrjM_HOBgqy5V3pOsA6w1EDOtEQO9dZG2Cw+-2niaw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_113221_458880_6C31E78C 
X-CRM114-Status: GOOD (  24.66  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [74.51.240.241 listed in dnsbl.sorbs.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slemieux.tyco[at]gmail.com)
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 Jason Cooper <jason@lakedaemon.net>, "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, USB list <linux-usb@vger.kernel.org>,
 Vladimir Zapolskiy <vz@mleia.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 SoC Team <soc@kernel.org>, Alan Stern <stern@rowland.harvard.edu>,
 Guenter Roeck <linux@roeck-us.net>, linux-serial@vger.kernel.org,
 Networking <netdev@vger.kernel.org>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On 8/15/19 9:11 AM, Arnd Bergmann wrote:
> On Thu, Aug 1, 2019 at 9:33 AM Arnd Bergmann <arnd@arndb.de> wrote:
>>
>> On Thu, Aug 1, 2019 at 12:53 AM Russell King - ARM Linux admin
>> <linux@armlinux.org.uk> wrote:
>>>
>>> On Wed, Jul 31, 2019 at 09:56:42PM +0200, Arnd Bergmann wrote:
>>>> For dove, the patches are basically what I had proposed back in
>>>> 2015 when all other ARMv6/ARMv7 machines became part of a single
>>>> kernel build. I don't know what the state is mach-dove support is,
>>>> compared to the DT based support in mach-mvebu for the same
>>>> hardware. If they are functionally the same, we could also just
>>>> remove mach-dove rather than applying my patches.
>>>
>>> Well, the good news is that I'm down to a small board support file
>>> for the Dove Cubox now - but the bad news is, that there's still a
>>> board support file necessary to support everything the Dove SoC has
>>> to offer.
>>>
>>> Even for a DT based Dove Cubox, I'm still using mach-dove, but it
>>> may be possible to drop most of mach-dove now.  Without spending a
>>> lot of time digging through it, it's impossible to really know.
>>
>> Ok, so we won't remove it then, but I'd like to merge my patches to
>> at least get away from the special case of requiring a separate kernel
>> image for it.
>>
>> Can you try if applying patches 12 and 14 from my series causes
>> problems for you? (it may be easier to apply the entire set
>> or pull from [1] to avoid rebase conflicts).
> 
> I applied patches 12 and 13 into the soc tree now. There are some
> other pending multiplatform conversions (iop32x, ep93xx, lpc32xx,
> omap1), but it looks like none of those will be complete for 5.4.

I think the patchset (v2) for the LPC32xx is ready for 5.4
([PATCH v2 00/13] v2: ARM: move lpc32xx to multiplatform)
 >
> I now expect that we can get most of the preparation into 5.4,
> and maybe move them all over together in 5.5 after some more
> testing. If someone finds a problem with the one of the
> preparation steps, that we can revert the individual patches
> more easily.
> 
>        Arnd
> 
Sylvain

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
