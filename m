Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 853A0AD506
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 10:43:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P/1EC+ChQ8BXZTZx02M4Pz4xSdhbPBrejCoMbKW6WHA=; b=YN9uO+KHyZCnn5
	sXrnfmzWHK8/2nr4JOyz2qq34ttdM8hbzc4aEVCXZdfzgVZ2Mg67vYSf0SKMGGgAUWaUF3dVrRYZa
	h63w+enwgbI1lTx+53/QTcfosJwAVlCeryyV4WbCzkbuR9PSoOdA8py5e+OwGzg468jWRSV9PKLSb
	dH0hKGu90B0pWIdNKJzQoc38fLrEukh/JmbwCNGrYkcB/nvjpucdrSX7xFmkAG4ItqLnC0AleIJRP
	mK5NuFU7/lv7hSOyAmcWQM8Z8YAVE6OXhecmAo8wM2ZlN+UWaZjwyrEAZwxftaisuMYO5H1D80eBD
	Q6mniI8W+ogL3zPogsGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7FGJ-0007Iw-Mc; Mon, 09 Sep 2019 08:43:03 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7FG7-0007IZ-CN
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 08:42:52 +0000
Received: by mail-wm1-x341.google.com with SMTP id 7so3113408wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 01:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=VRJyS7lUCXas8WAE658lk9X9sHjdPlVwIBMgs+wdqWI=;
 b=QZfGunqBjejLiGnNAxL/fPG1ckyIjU+rD3juRxpa2g4ni1iEHvKAgTpq7F2wp0DESC
 NsjRU4d7+kheApD7wdnMg5VShbozYS4+gq14PcUoTSb2UC+7XY/Tgrktw60ghtoYyKKv
 jSFIg9wXvU//K9X08jH0DUxiBejNu0n1h7Jd9iU0JVFIYfZujPU/36FU+E+lFKAvuV//
 tm18hs03Hl6EeVaOUZ5C054OiHN2UAw1q6D3Lh7DxCiBFTyKOKCRBwF7O+MpEoN0m8of
 odRouRg7RdoB/E4IN93u4i8baIcjCSqiyiHgHN2L+j2nDnUqMvXdRJ899taCfpPppcnF
 ZniA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VRJyS7lUCXas8WAE658lk9X9sHjdPlVwIBMgs+wdqWI=;
 b=JRwmwkzLyNvLEcIvh9+honNhwrlhFPn1VocI8o1XHM6sD9gCYU2YuH+7xjyapWiJ77
 uhiT01aX5CkCX+QkJby2VdygMN6q3U7Esbrq9BUtiBgUvwHLssoH8IeWohP3x5VryIvZ
 Od7+8/ztMfHI3Bs/Phz0wDW+jMRW6Ha1EpTGu8LIE+Q3sqaIpRleUXhJicops3GAEF9Y
 zAG0JoFi2ZMzDO6tjNNN9Gp0q6o4RCi41xNg9nxj16XLmBpa+92u9lbOSTyvTJlSLkMi
 +4UyXnT6cNPw1VL5Xpk3ueC79DIanBSsPQka1Err+eSt4G14XBvPAHKuTBHTqp3Nf38c
 ZTpQ==
X-Gm-Message-State: APjAAAWwqHKNcg67YiMBXJi5uNX7vTlKtdPjMy7cIniFe9FDT1p7TB5Y
 VV+WGdHaaF3DKlxo3iLWmVPVvP/kti4=
X-Google-Smtp-Source: APXvYqyNPG78C9VVatLsGWpEXNrqd7ULWSAW5snh5OGScKgXrUtJNXyuYtwzdWdI6mN+/5JVu2Q80w==
X-Received: by 2002:a1c:a90b:: with SMTP id s11mr19030554wme.92.1568018569510; 
 Mon, 09 Sep 2019 01:42:49 -0700 (PDT)
Received: from [192.168.42.85] (p578adb1c.dip0.t-ipconnect.de. [87.138.219.28])
 by smtp.gmail.com with ESMTPSA id h125sm17930614wmf.31.2019.09.09.01.42.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Sep 2019 01:42:48 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: renesas: Add /soc dma-ranges
To: Geert Uytterhoeven <geert@linux-m68k.org>
References: <20190907161634.27378-1-marek.vasut@gmail.com>
 <CAMuHMdXkExZXeXnxuKkMC0J4m56cZUmJpcq2JCXuMv3PBzA0Dg@mail.gmail.com>
From: Marek Vasut <marek.vasut@gmail.com>
Message-ID: <b77e6a66-be14-4f94-c116-788b8fa18b31@gmail.com>
Date: Mon, 9 Sep 2019 10:42:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdXkExZXeXnxuKkMC0J4m56cZUmJpcq2JCXuMv3PBzA0Dg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_014251_444134_12021B01 
X-CRM114-Status: GOOD (  17.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

On 9/9/19 10:19 AM, Geert Uytterhoeven wrote:
> Hi Marek,

Hi,

> On Sat, Sep 7, 2019 at 6:16 PM <marek.vasut@gmail.com> wrote:
>> From: Marek Vasut <marek.vasut+renesas@gmail.com>
>>
>> Add dma-ranges property into /soc node to describe the DMA capabilities
>> of the bus. This is currently needed to translate PCI DMA ranges, which
>> are limited to 32bit addresses.
>>
>> Signed-off-by: Marek Vasut <marek.vasut+renesas@gmail.com>
> 
> Thanks for your patch!
> 
>> NOTE: This is needed for the following patches to work correctly:
>>       https://patchwork.ozlabs.org/patch/1144870/
>>       https://patchwork.ozlabs.org/patch/1144871/
> 
> What happens with the above patches applied, and without this one?

It triggers https://patchwork.kernel.org/patch/11087391/#22811745

> As PCI/OF driver patches go in through different trees, is it safe to apply
> this patch now?
> Should they go in together?

I didn't get any feedback on the other two patches, but this one here is
safe to go in either way.

>>  arch/arm64/boot/dts/renesas/r8a7795.dtsi  | 1 +
>>  arch/arm64/boot/dts/renesas/r8a7796.dtsi  | 1 +
>>  arch/arm64/boot/dts/renesas/r8a77965.dtsi | 1 +
> 
> Do we need similar patches for the other R-Car Gen3 and RZ/G2 DTS files?
> What about R-Car Gen2 and RZ/G1?
I suspect we need such patches for any ARM64 machine with PCIe with this
32bit limitation.

-- 
Best regards,
Marek Vasut

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
