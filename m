Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 824001EA14
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 10:25:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3/HyfktfIkooq3E/VPUuVJ4EX2MEOfGI64C4uuE+Jcc=; b=BKLDaFRqxyF47C
	8UVRBAGn2V8OQoY27iyivsZKYZdPSEK6Hlds4fEk0pN6ANcS8AxfifFhN6jdQ81PeCK0w8OUoyNoc
	PVtzbryX6TYh4IYoT074LSz0Hcr22HzGDex/s60M+geHA7JZNMeirI+KPf+PRLXhGXkqj17Emz0gb
	45nx9NHALGEVY8ihnFRjr8Iu1foKA6d677zpsR2uZu+22CHz0JDZYynmUTe9tQBe5KGGmV1dyJNUK
	+ykb8et/45NlNqCSB95bySA3s8W61zhafMNFdQnMUHBTFSBYrj5TBq5W1ifvPGEGUk7FZscs+fiwT
	PmoIViDL/+NalVjM9+pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQpEB-0001dK-O9; Wed, 15 May 2019 08:25:31 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQpDu-0001cb-Iq
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 08:25:17 +0000
Received: by mail-wr1-x442.google.com with SMTP id s17so1614094wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 01:25:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=1RJ4wJraO0JKEEKi7q0XAZAfeNAA5nMmUuCn84Wyo+M=;
 b=FQcA4CgwUYbJJKI4XTcXfFC8PdZW9xysNz0dCBghlkQVjZyYgj2ux99SundzoibPt9
 +9dx6lcIUSPlegcuL+YZoEhhFO9JqT20RmdSC0+NmG/ni1M4OTZCl30n8eLkqcT5+IBg
 K2U+7kLWBI9oo4EBBdvatpF8221D/RSxfgCql3lg7CzERLJpccy8gy8g+eSBbtnGaPd1
 90kiWobbMBL+Zwz2gOSGY2TpsQXlbexLoQ5cIvFPytfBTPMxC69eZX1aY+Q09DzvDKac
 43c9qxVhcjg21LJzQEw2Vf6VfJ0J+vdTRoGhya9fEc6eV6YILbj3wMb8vI3J01HRmf3Y
 UZKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1RJ4wJraO0JKEEKi7q0XAZAfeNAA5nMmUuCn84Wyo+M=;
 b=OpIZnLRVa7KKqqkrT0pYwTxD0yFSRTkd+1+x2+TSO9nKTBGZlttZPaLR+08auHmmQX
 YW5rPr23sE3PKbdrqsS+t1uY7m1EMJx0lhd2QEims+V6uQknjnWlc/5F2+ZM9mS+wz8K
 7lwpiMQX9clv9Yf8zWwgAQVDPuvsEUJdO0/QrT288piNDa6ZYx8b5a31VTfkP5Bu+ucn
 EKlX3TDktFscaAbxWvdQzIyo0YzvxFnccJT+zLAm8Fxy9X8i2DdPrmXP9Krx7kAaSZ6n
 yI0NBu8AbZUILXVW3SkKNhaLhU30SiCklcwxNE8iEWgBif82nq1//UEmXslQM6VK243m
 9w1Q==
X-Gm-Message-State: APjAAAVEFINGmjD0pl8ND7nngdZsTGWhHxlbYnh0lAKtlWTthG2Lf9hg
 naKboacrIKUuQM98z6wfbbU=
X-Google-Smtp-Source: APXvYqxbfmImKl0PFsy8mOvTN8YOoICMxG0cTOqHUJtK7C18xUApX0Xl5Bw9RVCz3xS1U9v2fpsG/A==
X-Received: by 2002:adf:dfc4:: with SMTP id q4mr21494130wrn.201.1557908712873; 
 Wed, 15 May 2019 01:25:12 -0700 (PDT)
Received: from [192.168.1.4] (ip-86-49-110-70.net.upcbroadband.cz.
 [86.49.110.70])
 by smtp.gmail.com with ESMTPSA id v184sm1849944wma.6.2019.05.15.01.25.11
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 01:25:11 -0700 (PDT)
Subject: Re: [PATCH] ARM: dts: r8a779x: Configure PMIC IRQ pinmux
To: Geert Uytterhoeven <geert@linux-m68k.org>
References: <20190502140634.4529-1-marek.vasut@gmail.com>
 <CAMuHMdVGAq1XgSohBjc8i4c_o-N-yWGedS_LLS_Apr4Bx10xGQ@mail.gmail.com>
 <fa79e656-d71a-6f3d-21a5-8acac72e20f0@gmail.com>
 <CAMuHMdXrK7CMhBjFXAYX4wUPK=4Q2LpBCu+65-t5Y7-VjEBsog@mail.gmail.com>
From: Marek Vasut <marek.vasut@gmail.com>
Openpgp: preference=signencrypt
Message-ID: <b0dd348d-2a14-96d4-da19-3984dfe1bbeb@gmail.com>
Date: Wed, 15 May 2019 10:25:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAMuHMdXrK7CMhBjFXAYX4wUPK=4Q2LpBCu+65-t5Y7-VjEBsog@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_012514_792917_3DEC2D24 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marek.vasut[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Simon Horman <horms+renesas@verge.net.au>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/3/19 8:13 PM, Geert Uytterhoeven wrote:
> Hi Marek,

Hi,

> On Fri, May 3, 2019 at 5:18 PM Marek Vasut <marek.vasut@gmail.com> wrote:
>> On 5/3/19 2:36 PM, Geert Uytterhoeven wrote:
>>>>  &rwdt {
>>>> @@ -309,6 +314,8 @@
>>>>  };
>>>>
>>>>  &iic3 {
>>>> +       pinctrl-names = "default";
>>>> +       pinctrl-0 = <&pmic_irq_pins>;
>>>
>>> Given Blanche has a single device connected to irq2, I think it makes
>>> sense to move the pinctrl properties to the pmic node below.
>>
>> It makes blanche somehow inconsistent with the other boards, but if you
>> insist ... ?
> 
> Typically the pinctrl properties are part of the device node that uses them.
> For the other boards, that's not possible, as they are shared by all PMIC
> nodes. Hence the other boards are the exceptions, actually ;-)
> 
> Note that for multi-PMIC boards, adding the pinctrl properties to a single
> PMIC node won't work, as that would break:
>   1. The case where the driver for that PMIC is not compiled in,
>   2. The R-Car Gen2 regulator quirk.

Well it wouldn't work because it's shared by two PMICs and thus two
driver instances in the first place.

-- 
Best regards,
Marek Vasut

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
