Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E710C1FFA5B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 19:34:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bjBHLodWQ4wNtydhsNgq2J2OnzeeJ/PRWzg4kMyDEo4=; b=HzCFkYdXttNctC
	BesBWTQQnHf/+aq23t+Szh97KKQxKGHR/i/U+nY0u1EbDQpMKdHDCEHD8cQ3FKsqs84rgJvxV6GSu
	0peE74KaGTr79GSe1ugj6NnYnLTW+IAxv/jkH7jV3yddJ8Q6w4WT5XhmbNsJqrH2eXEIC/sM9VlmF
	Qf6oTQxgyrtQsObVofB9owatYBqkdx3aEKFtjtnI5fvCKYmaQs+9BKSNL39L2+sHkcLeq3RLoPbnB
	xMoO9tcnGxPQWwjZdjWgnAriEDKUDCcxjig4LNG8NlIDDvA22QzPC2R6RqBOs0K6fhKchjs17xx4U
	yz4aR53cx2ikKh/mr1EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlyQj-0003ug-J6; Thu, 18 Jun 2020 17:34:25 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlyQU-0003u5-Sn
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 17:34:12 +0000
Received: by mail-qv1-xf44.google.com with SMTP id cv17so3127601qvb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 10:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=HEt4Pvebw1D02KEOJn4E0FCDzL41oY+kb0al+hZuU00=;
 b=iiqRWOJedzCE0nYhPevpMxA8E6GErKmVq3eX5LGN4vJS4nnKZIA9PyIsZHpqjFGHVs
 p/LDOiY/w5n9vRMD7htsyddAZewMnIg5W4pcBuRm+vrc+l3pTEy2OhoRkstG43xS/U5l
 5BH2Ab5f8LC6ee+/Yn49oZvorgfF2aKN/i36uBuXFkxWluqJk3sCJQc4c3BgmbyLlUGz
 Ciy8z6wf1a5LrL9jGISLUlgKWKymwDUpxbumR2Ra4OKxnycymndz8538yK+RCIA7yQCS
 fubzWDqY3Ao/URof858vU9iylT4IqHWKeAfrLSinM68jauqU8TGW5Av2d0RTtNzqyoI3
 MfKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HEt4Pvebw1D02KEOJn4E0FCDzL41oY+kb0al+hZuU00=;
 b=Ao9sSeL0juzkyWpqQ4wctvmkDxAsQUt6tp40RatXl0esL8+Hskcy6DAxPZpEJTpWoT
 VtUpw/ugO5xvZ3/DdvS4gu9hdDhxMC52aowckqXK812Jsm3R79Fh3rgfUL4B7sluENcm
 6qtKiwDJFO+X/9CXrceyEE4HQ9DvBXCTJp/1KgWqhojhOZ6wD8cUnS5xg05XNXSS7AbO
 9l+Dozree/DBscvDpbpu9XCnF1vY+gHI/YcZHl4B1s5DbEzqi2DUuC00MKwn2bp8Oysw
 fvmOIexfSPKRnk3Z48Wwqw1fq3m0E4meNm8KpBxgEcVfL2tuKvrXyltxlg06mYmj+d8F
 J9hQ==
X-Gm-Message-State: AOAM53220ShahtO+WQGgsLv1bTRbOkzDcvu5TVRrmYPphAZ+I1KBx3xP
 UbJyhXPgZXlZjrfx0CivnWM=
X-Google-Smtp-Source: ABdhPJzf++G2jVb6Z9CC0IL2NDF9hkq8ySX+4NfRd5wM/n+z3/yS5T9b//i24vaF/xge3XVL62440w==
X-Received: by 2002:a05:6214:9ce:: with SMTP id
 dp14mr4790257qvb.216.1592501649452; 
 Thu, 18 Jun 2020 10:34:09 -0700 (PDT)
Received: from [192.168.1.46] (c-73-88-245-53.hsd1.tn.comcast.net.
 [73.88.245.53])
 by smtp.gmail.com with ESMTPSA id n13sm4307698qtf.35.2020.06.18.10.34.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Jun 2020 10:34:08 -0700 (PDT)
Subject: Re: [PATCH v2 1/3] mfd: core: Make a best effort attempt to match
 devices with the correct of_nodes
To: Lee Jones <lee.jones@linaro.org>
References: <20200611191002.2256570-1-lee.jones@linaro.org>
 <4b188fb5-6667-720d-46e1-6f103efe8966@gmail.com>
 <20200615092644.GA2608702@dell>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <eef50a78-8571-5600-4fee-c824fd4a7f69@gmail.com>
Date: Thu, 18 Jun 2020 12:34:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200615092644.GA2608702@dell>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_103410_927196_3C30ADC0 
X-CRM114-Status: GOOD (  18.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [frowand.list[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, gregkh@linuxfoundation.org, broonie@kernel.org,
 michael@walle.cc, linux-kernel@vger.kernel.org, andy.shevchenko@gmail.com,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 andriy.shevchenko@linux.intel.com, robin.murphy@arm.com,
 linus.walleij@linaro.org, linux@roeck-us.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-15 04:26, Lee Jones wrote:
> On Sun, 14 Jun 2020, Frank Rowand wrote:
> 
>> Hi Lee,
>>
>> I'm looking at 5.8-rc1.
>>
>> The only use of OF_MFD_CELL() where the same compatible is specified
>> for multiple elements of a struct mfd_cell array is for compatible
>> "stericsson,ab8500-pwm" in drivers/mfd/ab8500-core.c:
>>
>>         OF_MFD_CELL("ab8500-pwm",
>>                     NULL, NULL, 0, 1, "stericsson,ab8500-pwm"),
>>         OF_MFD_CELL("ab8500-pwm",
>>                     NULL, NULL, 0, 2, "stericsson,ab8500-pwm"),
>>         OF_MFD_CELL("ab8500-pwm",
>>                     NULL, NULL, 0, 3, "stericsson,ab8500-pwm"),

         OF_MFD_CELL("ab8500-pwm",
                     NULL, NULL, 0, 0, "stericsson,ab8500-pwm"),

         OF_MFD_CELL_REG("ab8500-pwm-mc",
                         NULL, NULL, 0, 0, "stericsson,ab8500-pwm", 0),
         OF_MFD_CELL_REG("ab8500-pwm-mc",
                         NULL, NULL, 0, 1, "stericsson,ab8500-pwm", 1),
         OF_MFD_CELL_REG("ab8500-pwm-mc",
                         NULL, NULL, 0, 2, "stericsson,ab8500-pwm", 2),

>>
>> The only .dts or .dtsi files where I see compatible "stericsson,ab8500-pwm"
>> are:
>>
>>    arch/arm/boot/dts/ste-ab8500.dtsi
>>    arch/arm/boot/dts/ste-ab8505.dtsi
>>
>> These two .dtsi files only have a single node with this compatible.
>> Chasing back to .dts and .dtsi files that include these two .dtsi
>> files, I see no case where there are multiple nodes with this
>> compatible.
>>
>> So it looks to me like there is no .dts in mainline that is providing
>> the three "stericsson,ab8500-pwm" nodes that drivers/mfd/ab8500-core.c
>> is expecting.  No case that there are multiple mfd child nodes where
>> mfd_add_device() would assign the first of n child nodes with the
>> same compatible to multiple devices.
>>
>> So it appears to me that drivers/mfd/ab8500-core.c is currently broken.
>> Am I missing something here?
>>
>> If I am correct, then either drivers/mfd/ab8500-core.c or
>> ste-ab8500.dtsi and ste-ab8505.dtsi need to be fixed.
> 
> Your analysis is correct.

OK, if I'm not overlooking anything, that is good news.

Existing .dts source files only have one "ab8500-pwm" child.  They already
work correcly.

Create a new compatible for the case of multiple children.  In my example
I will add "-mc" (multiple children) to the existing compatible.  There
is likely a better name, but this lets me provide an example.

Modify drivers/mfd/ab8500-core.c to use the new compatible, and new .dts
source files with multiple children use the new compatible:

         OF_MFD_CELL("ab8500-pwm",
                     NULL, NULL, 0, 0, "stericsson,ab8500-pwm"),

         OF_MFD_CELL_REG("ab8500-pwm-mc",
                         NULL, NULL, 0, 0, "stericsson,ab8500-pwm", 0),
         OF_MFD_CELL_REG("ab8500-pwm-mc",
                         NULL, NULL, 0, 1, "stericsson,ab8500-pwm", 1),
         OF_MFD_CELL_REG("ab8500-pwm-mc",
                         NULL, NULL, 0, 2, "stericsson,ab8500-pwm", 2),

The "OF_MFD_CELL" entry is the existing entry, which will handle current
.dts source files.  The new "OF_MFD_CELL_REG" entries will handle new
.dts source files.

And of course the patch that creates OF_MFD_CELL_REG() needs to precede
this change.

I would remove the fallback code in the existing patch that tries to
handle an incorrect binding.  Just error out if the binding is not
used properly.

-Frank

> 
> Although it's not "broken", it just works when it really shouldn't.
> 
> I will be fixing the 'ab8500-pwm' case in due course.
> 
>> Moving forward, your proposed OF_MFD_CELL_REG() method seems a good
>> approach (I have not completely read the actual code in the patch yet
>> though).
> 
> Thanks.
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
