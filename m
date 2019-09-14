Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA9EB2C0C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Sep 2019 17:51:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PXwUqosVC2YTRuh6q5Iu6paq8zeK0UZY2HGSDWo3jPI=; b=dASb9EQ9DPAvnV
	eVOVkG1fWzWM74WrEasDR5PcjmUydmN7oplNSjL0/dF8fTPKCpLBFNJvc9yE3RK8SJe0+49+oQWeX
	KXH9y9fgV1wsOWzLSpRXx477E0ZBFbZily+WyxCrSXJSyjnERxQ3NLw815Y7PG96S2WX1iAzBsHg5
	pHwJeOishUEFTRdYSfih3CSqSUb0gwMFj5XHS021XYOsxPBcgrVMx2HfhAHbsBNnNkAVgNVsOOenk
	ZK41RTWJNPDOoa4tU5nmD6ZNuAeP6c7zwSgEghj7PGBSIiXawpw2l+ctdddH27VXKifOzx5+BV/QC
	4OEi5flTMWdULYi3zTSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9AKX-0002bm-6f; Sat, 14 Sep 2019 15:51:21 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9AKE-0002bI-3r
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Sep 2019 15:51:04 +0000
Received: by mail-wr1-x443.google.com with SMTP id y19so34793068wrd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 14 Sep 2019 08:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=778m3utKBTt1vYchtlPsYkKj5vNVb6Yzv/7CVJjEO8Q=;
 b=HYbPwVq04HkBPUljTz+Bz6kD3q2GFcmF7SEleNcHSYPKPOKfdFWdESfN1rIDDtAM1V
 jWKoDD1QFJV5bMSR/IImIvlaLy22Q63uR3J1g6+CaT4x8k+esdHhkQSWrLD2WYtipING
 O8NH3A9cTK3e9cNInegxDwFEsHclQAJiC4iWXRnS5SdzHm0SakdPOiplLalwYM/Xe3XN
 B545yJWHn9V9lPn6x72hcGX4eldrNyMuEET1A+vslN+KEEm6ACAe29GNjGquY4iWtEV7
 8KIufgH4Y0NhuE3z6be8BC2uYrxuh0IryY+gHqaucSLgy6LzpFv5aLTFL9kmocjR9z/t
 iqWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=778m3utKBTt1vYchtlPsYkKj5vNVb6Yzv/7CVJjEO8Q=;
 b=Ok6S3+K2KeG0Y699lEnjiKDBFcJRf6KmeOEYU54J3sQ2WOIFZUWQ8O5yatQ4MJSeDU
 yrJkazyRlN7yh/9V0LVPMFxiHXJf/5tTksxRQPGeHs3UfMWydOf8kyuv5SP3JQdOmvJC
 Fe6SPtpFC/A/N1PWPXFWBknw2hgGxUI1Mw3V/N1/wrdElhurqRfFoK695PPYmH3qwu4e
 bR+taqdvKI9XI4eQlkSoSta75nAeWWjD3Hif2je/lggt0CMic4fVaArYXNPn6USc0OSO
 xtmiQ1tIYyyr3wS1zqGqhrVhR140GNK2aTvwD1CxpGOaghm4arrYeicw5FynNLvxcYJH
 jJCg==
X-Gm-Message-State: APjAAAV2GvKK6dfUujdALB0mBjIaZsaNigjUJRirwo+Wl83XQaIPw9EP
 CUaSn8KVkddQD6WMRzGSdsY=
X-Google-Smtp-Source: APXvYqwo1Vwe5g2Wrt+XyISdF7+xLZ9yteEIOcNsgHMGadz8yiRXUJofTMQWenDTB4I4hEalMfdnAw==
X-Received: by 2002:adf:f287:: with SMTP id k7mr3122994wro.206.1568476257321; 
 Sat, 14 Sep 2019 08:50:57 -0700 (PDT)
Received: from [192.168.1.4] (ip-86-49-35-8.net.upcbroadband.cz. [86.49.35.8])
 by smtp.gmail.com with ESMTPSA id
 q14sm67908200wrc.77.2019.09.14.08.50.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 14 Sep 2019 08:50:56 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: renesas: Add /soc dma-ranges
To: Rob Herring <robh@kernel.org>
References: <20190907161634.27378-1-marek.vasut@gmail.com>
 <CAL_JsqL47dQT-P78j4Ph61fsgA45Ha0AJjDajiMk52yFj++s+g@mail.gmail.com>
From: Marek Vasut <marek.vasut@gmail.com>
Message-ID: <2d812f08-cacb-2ef2-8073-f03a22ec4033@gmail.com>
Date: Sat, 14 Sep 2019 17:50:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqL47dQT-P78j4Ph61fsgA45Ha0AJjDajiMk52yFj++s+g@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_085102_185392_302840ED 
X-CRM114-Status: GOOD (  24.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marek.vasut[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 9/13/19 5:14 PM, Rob Herring wrote:
> On Sat, Sep 7, 2019 at 5:16 PM <marek.vasut@gmail.com> wrote:
>>
>> From: Marek Vasut <marek.vasut+renesas@gmail.com>
>>
>> Add dma-ranges property into /soc node to describe the DMA capabilities
>> of the bus. This is currently needed to translate PCI DMA ranges, which
>> are limited to 32bit addresses.
> 
> FYI, I've started working on this problem and issues around
> dma-ranges/dma_mask. Hopefully I'll get some patches out next week.

Thanks

>> ---
>> NOTE: This is needed for the following patches to work correctly:
>>       https://patchwork.ozlabs.org/patch/1144870/
>>       https://patchwork.ozlabs.org/patch/1144871/
> 
> First I'm seeing those... Well, I do have v7 from 2+ years ago...

Right, this issue was dragging on for a very long time.

> Not sure if these take into account the new dma_bus_mask, but that
> should simplify solving the issue.

What's that about ?

>> ---
>>  arch/arm64/boot/dts/renesas/r8a7795.dtsi  | 1 +
>>  arch/arm64/boot/dts/renesas/r8a7796.dtsi  | 1 +
>>  arch/arm64/boot/dts/renesas/r8a77965.dtsi | 1 +
>>  3 files changed, 3 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/renesas/r8a7795.dtsi b/arch/arm64/boot/dts/renesas/r8a7795.dtsi
>> index 95deff66eeb6..2102140a6723 100644
>> --- a/arch/arm64/boot/dts/renesas/r8a7795.dtsi
>> +++ b/arch/arm64/boot/dts/renesas/r8a7795.dtsi
>> @@ -330,6 +330,7 @@
>>                 #address-cells = <2>;
>>                 #size-cells = <2>;
>>                 ranges;
>> +               dma-ranges = <0 0x40000000 0 0x40000000 0 0xc0000000>;
> 
> Is the limitation in the bus or the PCI bridge or both? The commit
> message sounds like it's the PCI bridge in which case this is wrong
> (or incomplete).

I believe it is the PCI bridge too.

> 'dma-ranges' should be on the bus node where the
> restriction/translation exists. For PCI devices, that's the PCI bridge
> node. So a 32-bit only PCI bridge should have a dma-ranges size of
> 4GB. If the SoC bus has more restrictions, then that should be in the
> PCI bridge parent assuming that restriction also applies to other
> devices.

Would that mean the dma-ranges for /soc/pcie@fe000000/ [1], which is
already present in the DTSi, is the one that should be used to determine
the controller limitations ?

[1]
https://elixir.bootlin.com/linux/v5.3-rc8/source/arch/arm64/boot/dts/renesas/r8a7795.dtsi#L2653

-- 
Best regards,
Marek Vasut

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
