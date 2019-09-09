Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E35AD570
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 11:13:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wXwGjHdx/dx/l99imE6zH8VqgjmQIiNNa9IK/Fwj7jM=; b=tnKAvRPjTg/Vgq
	7vxFkWEmzUIOeg3uF9QneQUHwXcdvYHqA3tsSl90kQtK71SrKASKpgxUU14ynjwwiszDbVD/a+OZB
	VSK8CV3cu2phOAWimeleqRCtya34K6664fdXSRJej52MpvxEUzlrHEyxCVDTfWkptKiFJLm8Wq+wQ
	P9wtL+9EhEy5gOYF714yI8/t9XmN5ejKK/+oHh8a42/oHC/CF5qnzW6S4wK+BoNAnfYiRkbI2yYHZ
	xGeMHEx+f9LZP4ev0dtR9IZ9l4+ceWIEvwoOs+gs1i2jZbUSvZT9J6b6C0+GIARcGoQ/MU1MYb6GN
	N3YUtmLBHEB8CLgjMkdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7FjU-0002eH-1X; Mon, 09 Sep 2019 09:13:12 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7FjG-0002dw-EL
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 09:12:59 +0000
Received: by mail-wr1-x441.google.com with SMTP id t16so12948988wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 02:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=TOP8rH1TcBHjVsyQobZq5kxXku7IvcnwfDzFzX6ktls=;
 b=Sv8yMv7xWt1DU0bHbjx4WGaKAEH2FbWTCT1B3GV/rJSUcpK/1GQcFX4FuLgFfsZOKa
 PLL7yTCayUCymevxbuf6OvYGTm6lIL2f2N38QcVO/SVNbncxw3jlcyMINcongJ+veK/K
 WKwxxe0w88kA1DR5AEZIs4ut9Ry4fNM4AfKW13ABvzeFi0C7ANmVuXeDWxmJ5DVogeZ0
 wvLnTJzpEa//JsqQqN+uwvXWaf7z0CjSOsCQ8LybnM7dY3pGDs4SBiyKZrcL7cwpBkF9
 eGhkWJC3GZOr+0ewc8n9gxQeqeS79JlbeOjnch8PLwDFctTtUkV83rHtbO1PqFVgA5Jr
 8eqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=TOP8rH1TcBHjVsyQobZq5kxXku7IvcnwfDzFzX6ktls=;
 b=stgxW4QIgQMewYoKbPLBqp8arWUmDDVCnys3o6SkltOwkJ7DGpatT407WtpI3Q2J2V
 0iHdTfkfk4pgCOlIAm8xsmQz2mtkrADSs37En0+XTsiWdKXN8HIDOIZD3vEF5+EziZeU
 6Em1WWpUiarwNVmZYZamdbG/PurKerGBPS1XxK6ttHBhi3OTBybNx5c3SRgs7m7/IOop
 Ct2vmrBc2MdG0IyEqfMSzBjOp2aEwnAqMsDW0Z8ckMpQcqou5R3sLS+iiIHqSgHxQqon
 S6xGcqO4SF4JMuatjYbgAzR0dpMDx/8DGBH8GPKWxakkKMG1GhTGeqLO1eV471ZXP8z8
 +Akw==
X-Gm-Message-State: APjAAAWNzAhvojPFDO0TcQZkFOOd0JWVfZDXLUoRi9ar9GWu2Kg+zbo8
 wnHRVwITjP9XMuwAgToTvLs=
X-Google-Smtp-Source: APXvYqzcUrHe6QFnvn3wlKYzRx00vQB3EZSjYjgCfq1vAk3l2W2TkecTuseCX/pslokvp8gon/nXEw==
X-Received: by 2002:adf:ce81:: with SMTP id r1mr17963489wrn.114.1568020376928; 
 Mon, 09 Sep 2019 02:12:56 -0700 (PDT)
Received: from [192.168.42.85] (p578adb1c.dip0.t-ipconnect.de. [87.138.219.28])
 by smtp.gmail.com with ESMTPSA id r17sm13323337wrt.68.2019.09.09.02.12.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Sep 2019 02:12:56 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: renesas: Add /soc dma-ranges
To: Geert Uytterhoeven <geert@linux-m68k.org>
References: <20190907161634.27378-1-marek.vasut@gmail.com>
 <CAMuHMdXkExZXeXnxuKkMC0J4m56cZUmJpcq2JCXuMv3PBzA0Dg@mail.gmail.com>
 <b77e6a66-be14-4f94-c116-788b8fa18b31@gmail.com>
 <CAMuHMdUWezNDVv+U=VeryssmSFm79zU-ptuKmMechcWBboV1=w@mail.gmail.com>
From: Marek Vasut <marek.vasut@gmail.com>
Message-ID: <3e7aebea-9394-8e87-2dbd-0b503fc52799@gmail.com>
Date: Mon, 9 Sep 2019 11:12:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdUWezNDVv+U=VeryssmSFm79zU-ptuKmMechcWBboV1=w@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_021258_489106_B41D6684 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marek.vasut[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Wolfram Sang <wsa@the-dreams.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/9/19 11:05 AM, Geert Uytterhoeven wrote:
> Hi Marek,

Hi,

> On Mon, Sep 9, 2019 at 10:42 AM Marek Vasut <marek.vasut@gmail.com> wrote:
>> On 9/9/19 10:19 AM, Geert Uytterhoeven wrote:
>>> On Sat, Sep 7, 2019 at 6:16 PM <marek.vasut@gmail.com> wrote:
>>>> From: Marek Vasut <marek.vasut+renesas@gmail.com>
>>>>
>>>> Add dma-ranges property into /soc node to describe the DMA capabilities
>>>> of the bus. This is currently needed to translate PCI DMA ranges, which
>>>> are limited to 32bit addresses.
>>>>
>>>> Signed-off-by: Marek Vasut <marek.vasut+renesas@gmail.com>
>>>
>>> Thanks for your patch!
>>>
>>>> NOTE: This is needed for the following patches to work correctly:
>>>>       https://patchwork.ozlabs.org/patch/1144870/
>>>>       https://patchwork.ozlabs.org/patch/1144871/
>>>
>>> What happens with the above patches applied, and without this one?
>>
>> It triggers https://patchwork.kernel.org/patch/11087391/#22811745
> 
> Sure. But what does that mean?
> PCI devices just not working?
> Random memory corruption?
> System lockup?
> Anything else?

Instead of translating the PCI DMA range to 0x40000000-0xffffffff , the
PCI code in the aforementioned patches defaults to maximum range, which
prevents various devices from working correctly, as the buffers get
allocated above the 32bit boundary.

>>> As PCI/OF driver patches go in through different trees, is it safe to apply
>>> this patch now?
>>> Should they go in together?
>>
>> I didn't get any feedback on the other two patches, but this one here is
>> safe to go in either way.
>>
>>>>  arch/arm64/boot/dts/renesas/r8a7795.dtsi  | 1 +
>>>>  arch/arm64/boot/dts/renesas/r8a7796.dtsi  | 1 +
>>>>  arch/arm64/boot/dts/renesas/r8a77965.dtsi | 1 +
>>>
>>> Do we need similar patches for the other R-Car Gen3 and RZ/G2 DTS files?
>>> What about R-Car Gen2 and RZ/G1?
>> I suspect we need such patches for any ARM64 machine with PCIe with this
>> 32bit limitation.
> 
> What about R-Car Gen2 and RZ/G1, which are ARM32, with LPAE?

Presumably we need that too ?

-- 
Best regards,
Marek Vasut

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
