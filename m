Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF32E28259
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 18:14:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WqSXUkyf0S8EwC0wvdz1PDZqLJDEbvTwOTs3WNIdV4U=; b=KCiHlWPvciuwk4
	eyJ80Pn+ZLWrTVm/KIQVpRj+klqwaO/iwMBHhpzQlXjvruqjVjMJgYSP+1Zup84wWO9DJghPvGDlY
	2XyldVspP90+FxGtaEBHk3LEd81jCE0REv+WW+jHk1d2TK/GfW3RZgYd0o8+CTYBax5ANchHgN/LZ
	qHaLl7t1gfwgTMCFol7Q/7iiWhxXYxjUDa/WKNQ5/PguCcsZNq1cZ7s4kET50x5YGux3uyNBgyx5z
	292lbRpXqPdzaDjlyxP69ckb+HUAIyL9KABgusPv/EQ3dm6qnqcEl9R46epiiFyv9cuOORWD/ytTM
	TTkVrzFxmRG+HqqlzbBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTqM9-0001jA-3Q; Thu, 23 May 2019 16:14:13 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTqLv-0001dL-Vv
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 16:14:03 +0000
Received: by mail-pf1-x443.google.com with SMTP id y11so3484147pfm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 09:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=aRONL6lUSP8ySgexr3N6TwqdyB5aYrx+k7X7nWH0u7g=;
 b=ggWF1rOFU/L+bItrGYOrJMFIMeJBMy1WrRcSsr/WIBe/SB8eNQTLknryHkreR5tByW
 lsdj3s7N2iF3ZDqzrgDKd43KkU+Pp7q9FmJ1bkqWQFr8iPV8+Yz+spKDbDMSLJFvjANm
 clswCgsoDvvQhg0gmadmjdbo1953N4JsWXfxRagJfIxprFe+KcKANt6T8950sS7EYiZB
 0KN8NFVK5S8mFMZJogjBrFskvYWQGNqp3MpQS98Ba1ppmifq1k3Vu0iGVIUan9sHb2fv
 DeS79O4YsObFSplomEdYGoLwhlj0RUtaf3oCSV81fgKrm2gTW8VqIGBn6z+BWYOlPneP
 7YUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=aRONL6lUSP8ySgexr3N6TwqdyB5aYrx+k7X7nWH0u7g=;
 b=Cgc2k3NpdWHWpmSedL/ipaOxtncjAUnPKRvlCiDrxZr6BRcN98HqvhmwOQJESS7jyE
 1kSaKNhieeLvrarVV8UTvdJR1Wtg9HvBI80/HvaDwLUwo5ExUpApEX63Q4x4qM+QY/2Q
 ahrmtWIFYiXX+Ij9WwufpUVvX4uPHEqZWBB/02rjytXLuT6YiVWoIj8pd5T2et/MkMHx
 dnpk9BSqE9N2uvbRzMwwRzdPELxgdsI3EnY6G7qUo3ph42pisK7M/fnT9nZ29IKk8cnL
 mFUZ1S5cOEoCYsraJ/ItT/WrJELpkB/FXPRhrFRWbDvXN5Raz6rU3rvlw9FFxV5dJ1k/
 6pCQ==
X-Gm-Message-State: APjAAAXGuEj9qLD7+D9tyVt6YpTteoQUO6V+RmnIrVDkLkSSjckX7w1t
 5BjgLCL63iYvUL9xi/aQBWQijjbimRDtyg==
X-Google-Smtp-Source: APXvYqwfbn9vU6s+/np/lHKs6WpigAe5sHs/aZok+lBA7/xt8Mml6cW1UHNizjxuvC6Fg0TkrO0QyQ==
X-Received: by 2002:a63:5107:: with SMTP id f7mr11171884pgb.198.1558628039057; 
 Thu, 23 May 2019 09:13:59 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:ed4f:2717:3604:bb3f])
 by smtp.googlemail.com with ESMTPSA id c5sm30795748pgh.86.2019.05.23.09.13.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 May 2019 09:13:58 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH 3/3] arm64: dts: meson: g12a: Add hwrng node
In-Reply-To: <f4a1f115-d886-ddf3-c4fc-ea995f10a434@baylibre.com>
References: <20190520134817.25435-1-narmstrong@baylibre.com>
 <20190520134817.25435-4-narmstrong@baylibre.com>
 <CAFBinCD6wJnYd3-E=kS6WCZLFebV9JYk-GybBxoMA8qQqGfSHw@mail.gmail.com>
 <f4a1f115-d886-ddf3-c4fc-ea995f10a434@baylibre.com>
Date: Thu, 23 May 2019 09:13:57 -0700
Message-ID: <7hblzt408q.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_091400_262776_DFB44C50 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> On 20/05/2019 19:45, Martin Blumenstingl wrote:
>> Hi Neil,
>> 
>> On Mon, May 20, 2019 at 3:49 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>>>
>>> The Amlogic G12A has the hwrng module in an unknown "EFUSE" bus.
>>>
>>> The hwrng is not enabled on the vendor G12A DTs, but is enabled on
>>> next generation SM1 SoC family sharing the exact same memory mapping.
>>>
>>> Let's add the "EFUSE" bus and the hwrng node.
>>>
>>> This hwrng has been checked with the rng-tools rngtest FIPS tool :
>>> rngtest: starting FIPS tests...
>>> rngtest: bits received from input: 1630240032
>>> rngtest: FIPS 140-2 successes: 81436
>>> rngtest: FIPS 140-2 failures: 76
>>> rngtest: FIPS 140-2(2001-10-10) Monobit: 10
>>> rngtest: FIPS 140-2(2001-10-10) Poker: 6
>>> rngtest: FIPS 140-2(2001-10-10) Runs: 26
>>> rngtest: FIPS 140-2(2001-10-10) Long run: 34
>>> rngtest: FIPS 140-2(2001-10-10) Continuous run: 0
>>> rngtest: input channel speed: (min=3.784; avg=5687.521; max=19073.486)Mibits/s
>>> rngtest: FIPS tests speed: (min=47.684; avg=52.348; max=52.835)Mibits/s
>>> rngtest: Program run time: 30000987 microseconds
>>>
>>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
>>> ---
>>>  arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 13 +++++++++++++
>>>  1 file changed, 13 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
>>> index 8fcdd12f684a..19ef6a467d63 100644
>>> --- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
>>> +++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
>>> @@ -197,6 +197,19 @@
>>>                                 };
>>>                         };
>>>
>>> +                       apb_efuse: bus@30000 {
>>> +                               compatible = "simple-bus";
>>> +                               reg = <0x0 0x30000 0x0 0x1000>;
>> the public S922X datasheet lists the range as FF630000 - FF631FFF
>> that translates to a size of 0x2000, which the vendor kernel
>> (kernel/aml-4.9/arch/arm64/boot/dts/amlogic/mesong12a.dtsi from
>> buildroot-openlinux-A113-201901) seems to use as well:
>>   io_efuse_base{
>>     reg = <0x0 0xff630000 0x0 0x2000>;
>>   };
>> 
>> where did you take the size from?
>
> Another typo, it's 0x2000.
>
>> 
>>> +                               #address-cells = <2>;
>>> +                               #size-cells = <2>;
>>> +                               ranges = <0x0 0x0 0x0 0x30000 0x0 0x1000>;
>> (see reg property above)
>> 
>>> +
>>> +                               hwrng: rng {
>> this should be rng@218
>
> Exact.
>

Will wait for v2 on this one,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
