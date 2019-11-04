Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCEBEE57E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 18:04:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wyxjmmenz3Z1OfIl1XUtpMQTFirL0qsLwGYs78ewOxE=; b=izSRH+kRNFBh/K
	UH8MHqSlaS7EehOxK069ZyzSvZVFjL/qaSYp0g7EIAYIf1hy5dm4bZy6/ooIanAZifN07+V2xxQac
	Q7jOJlm/RqRyfeLpq5OardxQlCl3eelgYyDnIeZEK3i5SWBnf1taA5t4556SXwzMEYWhNooRfj5kl
	ddsnstD4XtHRWzgD8VQHSA+qc4ebc1Fm5862svbzgzD7Mm2XPgz9A+0m//FT4/SD1IxbIXngGUzJX
	Kf6C+4KE6ghGRyqL4YgiVt+8+SzrLwPTE9uGfBztc0BzWPhGRlSPHpWWEGWyGI2YNc1/bj+RcettR
	NiZCV54ynuFi6J5w5glA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRfls-0003hF-49; Mon, 04 Nov 2019 17:04:04 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRfli-0003gd-Qy
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 17:03:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1572887016;
 bh=PI7dAw1uU03KDM2kwW+WwA/xzQ2h0kyFFuuTAXPmP5w=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=jIcuW1V9N/vp0Pp6ApmnBa6GDUV+x38frXo+Cp26LOHZYKBcp2S5r0LsBQtXDK38h
 znyF0vsjXAZYb0K2AXk1Ly37fCzmKUDZzPCYqfhOu0iAzIajKih0YE1E/g3ZOQfeIz
 8mujWGnkg8CwCDyobwRBkx9Njav/7KO8YCRm0EU8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.164] ([37.4.249.112]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1N95iR-1hq5fU3Wtz-0164Ln; Mon, 04
 Nov 2019 18:03:35 +0100
Subject: Re: [PATCH] ARM: dts: bcm2837-rpi-cm3: Avoid leds-gpio probing issue
To: Pavel Machek <pavel@ucw.cz>
References: <1570964003-20227-1-git-send-email-wahrenst@gmx.net>
 <20191104090919.GC12355@duo.ucw.cz>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <6426d9b6-8ef1-903a-47fb-6844e29dffdd@gmx.net>
Date: Mon, 4 Nov 2019 18:03:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191104090919.GC12355@duo.ucw.cz>
Content-Language: en-US
X-Provags-ID: V03:K1:qX/zG45X4O/oDA29SB1fKSYqUQKAxW6UyeV3mrJ54AmiRk8x42G
 GeCQLS92oaCS6+ejAGhrH5tRSWBnLEEN3i0xwdkQQ2t3NDXvesDw3uP6lql1w4N46tGJa7d
 K+HBDBxJy8NCMO6SiGtGcVy/L2o6kUTUcNDMBZs9UMzNpj4NI6Du3s5GYbITiRLC0oYqImm
 NUONt5iURZ9CFbGoSkZoA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:AKi8FyK/A4k=:Zv18n1lZNDVxFqawjJrsWx
 3i+KX7zMM/HVqfGvzpMMbf+FVUYJB+4KFcORTlcbHvLDBmwnSYTw5JzEM5VCSr80raPDBv8od
 HzYkSy+Zor2VG8NedKvihSwAokRmJtHeCsaLr0DJKd4C4tCI3qk+oC1brqMwlgKvvHDAROCvX
 x8xybu+M70awLnyZOS/n+zDCgrA2W9M2SLs3a2nzJtbjVEl+HSYsN9yDmRTgjg0hOrf4vb45i
 uu9whvCd6VitDwzncHaBkiIsRk2wi5MT4cnc8FUe4FsvVcyQOewU+0325+d/xyiyyEDgIG2VW
 ZKFNCrzCqFQKi69azL6SWvtGd073+JVt1JX7jLeLiijQ3gO3O4h8hMVxRlwziBJ+84TZ+dKIb
 1zDBZjdeSIrNwJ/E8vLLyyaU4qi0/DWS5KmMp1N+qzMbQSYeG76ObJDUVqZWlv4xDq+jxRROX
 Hu29FVgNApGEq7O6xxuX5yYZ+dNXEGU95UHQ1qTIQmEAmzZlaNa1dXlbwrfJ3UK6SfwaQbFZe
 CeFuhkJFOduxGApViqeo/CGjcJ5n4pQF1Pl31B8voPlu1L+Tq2FuDNFFuxeQFs9Mh4624/2bW
 KMIQnqQRLGH9W46xMzbsl8H5jM86n+6kEQjwSPFhCWLJ/eUAsgndx/WqPKCf/Syhlax5EsKyZ
 9ETxCEkGF10OmX3qLxTGRmvjY+iu+n9b/gKHD6wASLmMsjZEAwwZSPiMgOQ94oZWJ/H+60mSa
 lwVlmVKV895BQQSDQf3A3Z8NZT8ptG4Wld+cYy6MvfjDgsSRpAwqu1lONv07PJJ2HsaoutNAv
 EJruYDJ92hXjYXSZutNFyqbiYck7fk2qR7QdlKFbUX/5JIOElIG0RtuZjnBMaMmXTrNr/ep3h
 LK+O3ZiNFAHqJIW0QY8aLx5kSypTnNRYWHUa0qQW5cvNmY67e3LrcLqjbuR/Mwi6inW4uuBbL
 6AwxF3IvWb4KhCjMTxTKfSEBxPlTpXOBNXSuqyw6dmIe4eJReTHsdmocnKmUhRPIvxH3aSpse
 bHoxVEQBmluuKaor6lpzkfh08B/1nqJt0ZiVcTPjy8VLRwnizoShGHl4DDftBZOfVPXBNFQUi
 JmAtPLfh7Dj0lVqfCNmhEK6qvxEB1AszMAh9hFD9OdWDB+/a+oDM0H6CvxH7jWsh25+dT+yoa
 yIcP/q25izAzqyIzHWIH/mp1G18HK990uhGRVkNMtmWM0sZb8gP7f1v0ORvXviQEo/PFqTAjb
 txLVVfBOOq2FwlAE7lA411ge+6OfqYG7baLUNEQg06vgOyDv1wvr9gFf6+dg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_090355_263620_D17D0AD1 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Linus Walleij <linus.walleij@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Dan Murphy <dmurphy@ti.com>, linux-leds@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

Am 04.11.19 um 10:09 schrieb Pavel Machek:
> On Sun 2019-10-13 12:53:23, Stefan Wahren wrote:
>> bcm2835-rpi.dtsi defines the behavior of the ACT LED, which is available
>> on all Raspberry Pi boards. But there is no driver for this particual
>> GPIO on CM3 in mainline yet, so this node was left incomplete without
>> the actual GPIO definition. Since commit 025bf37725f1 ("gpio: Fix return
>> value mismatch of function gpiod_get_from_of_node()") this causing probe
>> issues of the leds-gpio driver for users of the CM3 dtsi file.
>>
>>   leds-gpio: probe of leds failed with error -2
>>
>> Until we have the necessary GPIO driver hide the ACT node for CM3
>> to avoid this.
>>
>> Reported-by: Fredrik Yhlen <fredrik.yhlen@endian.se>
>> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
>> Fixes: a54fe8a6cf66 ("ARM: dts: add Raspberry Pi Compute Module 3 and IO board")
>> Cc: Linus Walleij <linus.walleij@linaro.org>
>> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> Acked-by: Pavel Machek <pavel@ucw.cz>

thanks but this patch has already been applied.

Can i consider this as a "yes" to my intended question ( Is the behavior
change in leds-gpio desired )?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
