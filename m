Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A443EDC70D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 16:14:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZEu4hxb5P/sTyvwLbiXxPiBtdGAWs6cR7ANpk45e8dk=; b=oJWPgWFu/i13Ax
	BAwcGe3UvWDhk87pOVA9+l6vXPmJiabW19HUd/qEHv+j6Xdc0lH+BsmNIr3nnlB+RqUw1Ppa8suvE
	7+vbyQAxK0aT5qSngc9jgBHkhgAX2glT6234yCUWbOChBo9B5AQzUv2ISys8uiiCC42185xt02kmY
	fMN50SyTHy3lJ+VVnHDiw6UeXc5/WPSdsM7RdVz0Tp2KtxMo4+iHNR/EnfnO289zswo+/4E8KWMKk
	jVZK7oDCCgyjDOfNByTsCL33TLH1P032cnEWC9Px4P4L1c2lXXjXqLpFyI87qRhwXiMWMOlai6XZz
	WN9BVK5/vMLwqLDTywRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLT1H-0004ys-42; Fri, 18 Oct 2019 14:14:19 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLT12-0004ve-SZ
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 14:14:06 +0000
Received: by mail-wm1-x342.google.com with SMTP id a6so6341877wma.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 07:14:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=kLq1ak6OonA78S2SD4l4p1BgGk0JwkdQU0AQcZw6UPM=;
 b=SryQMGjL0FX2/83EI8AxHBt0yGA913HUpvi7jzcyAqqLkSvgQXTs+oUZqsRY2IlqJU
 SauwN/gISE10MRw3arZNn/09ipVGpzJO2gmbnhtu1/5kuOrnMc6O4Wpt+9vUDjD+FgHc
 aW3jEJscu8dD2bBkrnCF9XQ+ebK1x/cSMZ/oJrElp1IAjqqDYm4ilF9RWYihm+zfZU0G
 jd5UFXeE8xqLjx6zMFpVYzLvfP4/CckD2jq6f7rMt4MqJbWlKKALvqasmcTqmblnbWQM
 Q9OIrt2Mp5szNoJlAL1uBTnf5g3MjSUm95lMOLo2tLrHfoyzzzEVyZW/Ib7OtHLJ9VD3
 Deqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=kLq1ak6OonA78S2SD4l4p1BgGk0JwkdQU0AQcZw6UPM=;
 b=VlPbEGqrmSRzkMb808Xbsb6BXptBAnyAW6tSpuNHN+dPEMY/hTUFkjr4bA5c6VMX34
 Vv1j3u/hkuCdrGw9Ezhr3+TkpeAcxr+1gUgIH9wd2nVeaMqiMPTbmLs+HAWwNIs/vOCC
 xrjfmdkn0N/RWPVXqXs8baTMK4jUiH87bCxS8sDaQm3FaXzQyz6BpL8LUpbK3aADbG0n
 9sztwwt114uNdVhGiqCQdyvc5PZjZKBL9MW4jL+G80oO7hvPeLgquNO0LpYOIrU3B+Pc
 aUr9okLX7E02bgcjmGiTyl3XOasbC874pbqgOJU1WxFtcAMGpMf2t/JaBexi0RKyzZwl
 bAQA==
X-Gm-Message-State: APjAAAVFF1d2T8gM+0wsCQbJ0QnMNbTPFCn9u1xIdHiFg4p4nQQX++2A
 Pk3vy8+XnqDb5A9RLj6jzrUnAQ==
X-Google-Smtp-Source: APXvYqxUiMjfoio7hl0uPpDr4Z5DKlvx1uehfEIOAhL4NS8agTTdqAVLgjDrpjlCTKrXN5qwGkT20A==
X-Received: by 2002:a1c:6089:: with SMTP id u131mr7954671wmb.60.1571408039321; 
 Fri, 18 Oct 2019 07:13:59 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id s12sm5875759wra.82.2019.10.18.07.13.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 18 Oct 2019 07:13:58 -0700 (PDT)
Subject: Re: [RFCv1 5/5] arm64/ARM: configs: Change CONFIG_PWM_MESON from m to
 y
To: Anand Moon <linux.amoon@gmail.com>, Jerome Brunet <jbrunet@baylibre.com>
References: <20191007131649.1768-1-linux.amoon@gmail.com>
 <20191007131649.1768-6-linux.amoon@gmail.com>
 <CAFBinCAoJLZj9Kh+SfF4Q+0OCzac2+huon_BU=Q3yE7Fu38U3w@mail.gmail.com>
 <7hsgo4cgeg.fsf@baylibre.com>
 <CANAwSgRfcFa6uBNtpqz6y=9Uwsa4gcp_4tDD+Chhg4SynJCq0Q@mail.gmail.com>
 <CAFBinCA6ZoeR4m4bhj08HF1DqxY1qB5mygpaQCGbo3d8M+Wr9Q@mail.gmail.com>
 <CANAwSgSeYTnUkLnjw-RORw76Fyj3_WT0cdM9D0vFsY8g=9L94Q@mail.gmail.com>
 <1jwode9lba.fsf@starbuckisacylon.baylibre.com>
 <CANAwSgSoK4X3_QbO3YpZRXNTpPJ+zVeid=w93f14Eyk8Dd32EQ@mail.gmail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <1496ed3e-e91b-3f09-d359-f36a8944e6b0@baylibre.com>
Date: Fri, 18 Oct 2019 16:13:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CANAwSgSoK4X3_QbO3YpZRXNTpPJ+zVeid=w93f14Eyk8Dd32EQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_071404_948477_A70CED2F 
X-CRM114-Status: GOOD (  24.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/10/2019 16:04, Anand Moon wrote:
> Hi Jerome / Neil / Martin,
> 
> On Wed, 9 Oct 2019 at 17:34, Jerome Brunet <jbrunet@baylibre.com> wrote:
>>
>>
>> On Wed 09 Oct 2019 at 10:48, Anand Moon <linux.amoon@gmail.com> wrote:
>>>
>>> Kernel command line: console=ttyAML0,115200n8
>>> root=PARTUUID=45d7d61e-01 rw rootwait
>>> earlyprintk=serial,ttyAML0,115200 initcall_debug printk.time=y
>>>
>>> [0] https://pastebin.com/eBgJrSKe
>>>
>>>> you can also try the command line parameter "clk_ignore_unused" (it's
>>>> just a gut feeling: maybe a "critical" clock is being disabled because
>>>> it's not wired up correctly).
>>>>
>>>
>>> It look like some clk issue after I added the *clk_ignore_unused* to
>>> kernel command line
>>> it booted further to login prompt and cpufreq DVFS seem to be loaded.
>>> So I could conclude this is clk issue.below is the boot log
>>>
>>> Kernel command line: console=ttyAML0,115200n8
>>> root=PARTUUID=45d7d61e-01 rw rootwait
>>> earlyprintk=serial,ttyAML0,115200 initcall_debug printk.time=y
>>> clk_ignore_unused
>>>
>>> [1] https://pastebin.com/Nsk0wZQJ
>>>
>>
>> Next step it to try narrow down the clock causing the issue.
>> Remove clk_ignore_unused from the command line and add CLK_INGORE_UNUSED
>> to the flag of some clocks your clock controller (g12a I think) until
>>
>> The peripheral clock gates already have this flag (something we should
>> fix someday) so don't bother looking there.
>>
>> Most likely the source of the pwm is getting disabled between the
>> late_init call and the probe of the PWM module. Since the pwm is already
>> active (w/o a driver), gating the clock source shuts dowm the power to
>> the cores.
>>
>> Looking a the possible inputs in pwm driver, I'd bet on fdiv4.
>>
> 
> I had give this above steps a try but with little success.
> I am still looking into this much close.
> 
> Well I am not the expert in clk or bus configuration.
> but after looking into the datasheet of for clk configuration
> I found some bus are not configured correctly.
> 
> As per Amlogic's kernel S922X (Hardkernel)
> below link share the bus controller.
> 
> [0] https://github.com/hardkernel/linux/blob/odroidn2-4.9.y/arch/arm64/boot/dts/amlogic/mesong12b.dtsi#L295-L315
> 
> looking in to current dts changes it looks bit wrong to me.
> 
> *As per 6.1 Memory Map*
> apb_efuse: bus@30000  --> apb_efuse: bus@ff630000
> periphs: bus@34400    --> periphs: bus@ff634400
> dmc: bus@38000        --> dmc: bus@ff638000
> hiu: bus@3c000        --> hiu: bus@ff63c0000

If these was wrong, the drivers simply won't work, at all

> 
> Also the order of these is not correct.

The order is correct, actually

> 
> Down the line in the datasheet some of the interrupt GIC bit are not
> mapped correctly for example.
> 
> *As per 6.9.2 Interrupt Control Source*
> 223 SD_EMMC_C
> 222 SD_EMMC_B
> 221 SD_EMMC_A

There is an offset between the doc and the actual GIC_SPI line,
they start the datasheet numbers from the GIC_PPI numbers (+32).

Neil

> 
> and so on.
> Please share your thought if these changes are valid.
> 
> Best Regards
> -Anand
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
