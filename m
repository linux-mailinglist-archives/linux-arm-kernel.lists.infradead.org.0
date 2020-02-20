Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 694D3165F6C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 15:06:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b9G9nJo6972wYPypGnsmbgyDjcPVrac+ZNh9Etd0u8M=; b=tOIQ51xs2kswu/
	y7xHlx11hybcxu+oKfKoPzcek09YcMnfL31p6KKp79pitTlUZYTf/lWBHy1UbmzRjGjedjTTzmbGn
	8Yo3ZJwgnGcZX2qwEK1d2IL7wjRKf3KJYYtCFDqGAxMQXzA/tuK150SYCsfr6kwCYGyLQocUNN9dV
	YYelcywjUlq4DnkFB5xNBwniewu5abDCtqb5avgSXBAkMK7tYGtNWkGqBdiaNvHpGu6Yv4vL3lzVW
	Ks93e9zvj2hagO1XMfRmlh7oct7b99kQTmh6XWNJ9fRZCbgvoROEDtWhJqtbqWltutcQHFfaWBFzT
	h2afAljxese/SaGNGfVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4mSt-0007De-3b; Thu, 20 Feb 2020 14:06:07 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4mSk-0007Cu-J1
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 14:06:00 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id E162B20050;
 Thu, 20 Feb 2020 15:05:54 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id AEA9E1FF6A;
 Thu, 20 Feb 2020 15:05:54 +0100 (CET)
Subject: Re: [RESEND RFC PATCH v3] clk: Use new helper in managed functions
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <f48d1df3-fc1f-ac5c-b11e-330f18aad539@free.fr>
 <20200220112700.GJ3374196@kroah.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <8866e533-967f-e208-1ec8-888d72f3052e@free.fr>
Date: Thu, 20 Feb 2020 15:05:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200220112700.GJ3374196@kroah.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Feb 20 15:05:54 2020 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_060558_772605_7A432981 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [marc.w.gonzalez[at]free.fr]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-clk <linux-clk@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Stephen Boyd <sboyd@kernel.org>,
 Suzuki Poulose <suzuki.poulose@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rafael Wysocki <rjw@rjwysocki.net>, Russell King <linux@armlinux.org.uk>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/02/2020 12:27, Greg Kroah-Hartman wrote:

> On Thu, Feb 20, 2020 at 11:04:58AM +0100, Marc Gonzalez wrote:
>
>> Introduce devm_add() to wrap devres_alloc() / devres_add() calls.
>>
>> Using that helper produces simpler code, and smaller object size.
>> E.g. with gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu:
>>
>>     text	   data	    bss	    dec	    hex	filename
>> -   1708	     80	      0	   1788	    6fc	drivers/clk/clk-devres.o
>> +   1524	     80	      0	   1604	    644	drivers/clk/clk-devres.o
>>
>> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
>> ---
>> Differences from v2 to v3
>> x Make devm_add() return an error-code rather than the raw data pointer
>>   (in case devres_alloc ever returns an ERR_PTR) as suggested by Geert
>> x Provide a variadic version devm_vadd() to work with structs as suggested
>>   by Geert
>> x Don't use nested ifs in clk_devm* implementations (hopefully simpler
>>   code logic to follow) as suggested by Geert
>>
>> Questions:
>> x This patch might need to be split in two? (Introduce the new API, then use it)
>> x Convert other subsystems to show the value of this proposal?
>> x Maybe comment the API usage somewhere
>> ---
>>  drivers/base/devres.c    | 15 ++++++
>>  drivers/clk/clk-devres.c | 99 ++++++++++++++--------------------------
>>  include/linux/device.h   |  3 ++
>>  3 files changed, 53 insertions(+), 64 deletions(-)
>>
>> diff --git a/drivers/base/devres.c b/drivers/base/devres.c
>> index 0bbb328bd17f..b2603789755b 100644
>> --- a/drivers/base/devres.c
>> +++ b/drivers/base/devres.c
>> @@ -685,6 +685,21 @@ int devres_release_group(struct device *dev, void *id)
>>  }
>>  EXPORT_SYMBOL_GPL(devres_release_group);
>>  
>> +int devm_add(struct device *dev, dr_release_t func, void *arg, size_t size)
> 
> Please add a bunch of kerneldoc here, as I have no idea what this
> function does just by looking at the name of it :(

Fair enough. (This was one of my "Questions" in the patch comments.)

Note: My patch adds a new function, then makes use of said function.
Is this typically done in two patches or one?

Patch 1/2 augmenting the API.
Patch 2/2 making use of the new function.

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
