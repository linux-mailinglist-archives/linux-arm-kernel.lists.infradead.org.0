Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C75BFA6F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 22:09:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ETmcSxnbLdZeUnWEOq8JKY33MYZ91Gu5ashNy9Fhtcw=; b=A8lAdHYAsh/KWc
	ttbUtbLx57dBxGCgIfY2HHgBlpXQx89UWyZxBZWQj60aYWV6lceixttbuLC5cF2lSP0ksbMy/3itd
	uskR40/beKGlryWmAFmXLUc0XnuH0+/bg+reL4Dpor/Ic+5DTp8AONzp+e8YS0qYCS2RTBwuCF2eI
	v/BZnR3HgFTsyFPMl8DIWqGNCWUimRuzMFOA0p5ygMY7s0qnKb0lfwPaYwRa8a8ufSROiqzvYce53
	Vrc4YKxzwqm3ABEGQm4DuAwXtCOzAssJs0zeVXxs3hbYojElj2hvy3hawxAwJKzJrOUBdIVgVy6AG
	PCi8iaRGQ09r3BpsYwVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDa53-0008F5-2F; Thu, 26 Sep 2019 20:09:37 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDa4a-0008Ee-0U
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 20:09:09 +0000
Received: by mail-wm1-x343.google.com with SMTP id v17so3852745wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 13:09:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YTzDAcw9gbPn+mRJBI6qSPJU/C8hb0B7P6TDypbBA4E=;
 b=CyEMak8EtCE86FpsbhlopviQJNKrauDIJ5jwwsZaxSFuZV38/imJ6QNKg2a3NZg2TO
 dzYBCRQq2HsYSi2sFChJZ481fe133jhT5w39Yp+rz9C44bxS9UxXgJX3Sy6IdUBRkpJ6
 1ucQ3Ga3ht+dFuMpuMXaDHvhervmdpJTga1F69+HD6t0YP2ZwX8klVS1pf41jIvGBy/l
 VFy7uHQA6cQJW0RCqhMdvGqqhf1ElrbC+qQJG1byyIAcOwwt5qAgJXQ9kn4TLQrwwh/9
 E55PeSTiiqPOq3a/po4rZhqH2vjgmnT5c2li1aL/SZ+zqTXsWX0qXybtmzopMv1TxXHK
 M8NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YTzDAcw9gbPn+mRJBI6qSPJU/C8hb0B7P6TDypbBA4E=;
 b=INXyzGu9onT+iOuHEONn+KoDD30Fo58yd7x953af4KdBZjK4CDFZRpfAt5Y8rbNlXq
 7QGoL+q+tHJ08JH1eTz+hdF625PkcF/BaDd+vfgAtCD9SSx0g1u4fM9KiGB29aoujyv7
 a3PJDJ/MW4nVeR4loNmA5e+JvoqjOamDF6xzNtgb2SYTipduJOz0jtI/LqyF9p0eeNyC
 P38y3HyPFMv9IkK7VabZhGK96QCA8vsmrvFq/DAHwWFUYbHWGTwT/UpyplkqOlq7B0M7
 CU4kSdUQ/NKDmTTU/HKlgpIwcpREVIoKLRJbg5ACzWMhfNs43ltRed2VlLoHwNDd1mFK
 b+MA==
X-Gm-Message-State: APjAAAXRmft/BVbKHKMzPVJzYP9Qoav5BFGY3wRp7hWS1uxT9g8uvqEV
 Fi9gtoTFd94C/wzAIWuXjyI=
X-Google-Smtp-Source: APXvYqxapfwxt9WSMkRC1OxiuZDvCN91dpJLvyhRXECYrNlDR2mH607VSDm8HUYeWzuzng1MvTazIA==
X-Received: by 2002:a1c:7f54:: with SMTP id a81mr4671490wmd.100.1569528545830; 
 Thu, 26 Sep 2019 13:09:05 -0700 (PDT)
Received: from [192.168.42.85] (cst-prg-31-94.cust.vodafone.cz. [46.135.31.94])
 by smtp.gmail.com with ESMTPSA id a192sm3650781wma.1.2019.09.26.13.09.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 26 Sep 2019 13:09:04 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: renesas: Add /soc dma-ranges
To: Rob Herring <robh@kernel.org>
References: <20190907161634.27378-1-marek.vasut@gmail.com>
 <CAL_JsqL47dQT-P78j4Ph61fsgA45Ha0AJjDajiMk52yFj++s+g@mail.gmail.com>
 <CAL_JsqK+SwX8Lu+-4UgpLVxL05yTcs8Af9mPVHqzbf6+HF9v3A@mail.gmail.com>
From: Marek Vasut <marek.vasut@gmail.com>
Message-ID: <92e78919-741c-f709-c9b6-c5fb833f68b1@gmail.com>
Date: Thu, 26 Sep 2019 22:02:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqK+SwX8Lu+-4UgpLVxL05yTcs8Af9mPVHqzbf6+HF9v3A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_130908_056791_59E97E03 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marek.vasut[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 Wolfram Sang <wsa@the-dreams.de>,
 "open list:MEDIA DRIVERS FOR RENESAS - FCP"
 <linux-renesas-soc@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/24/19 12:33 AM, Rob Herring wrote:
> On Fri, Sep 13, 2019 at 10:14 AM Rob Herring <robh@kernel.org> wrote:
>>
>> On Sat, Sep 7, 2019 at 5:16 PM <marek.vasut@gmail.com> wrote:
>>>
>>> From: Marek Vasut <marek.vasut+renesas@gmail.com>
>>>
>>> Add dma-ranges property into /soc node to describe the DMA capabilities
>>> of the bus. This is currently needed to translate PCI DMA ranges, which
>>> are limited to 32bit addresses.
>>
>> FYI, I've started working on this problem and issues around
>> dma-ranges/dma_mask. Hopefully I'll get some patches out next week.
> 
> I've pushed out a branch here:
> 
> git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git dma-masks
> 
> Can you test it on Renesas. I don't have a real platform having the issue.

Due to ER/KR, I can only test it Monday-ish. I hope that's OK ?

-- 
Best regards,
Marek Vasut

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
