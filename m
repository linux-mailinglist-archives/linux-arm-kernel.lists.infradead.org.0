Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6621757D9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 11:02:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iV7F6bA23NSX3tDnNDMT+Yz/H6lP8QyLb/2gbIqp1CM=; b=SoTLGYuuwjj2vh
	wISv+0viAfxZkQdbGXm7dFJN5Wb683eohx5bbCf9F/xIRhUKVbtJz+ihZLXld3IJ6g3O7w0BeA8Kq
	i9Wkv/odul/ojN6JZ3RffwQo7BImdssYVr87+vhUuzlhY0XvSwwCWCgi6XeEdmksG/XaBIwSi6vLV
	EJ3GiwBCsR/IkvVS8gntj9puyeGwcYUR/unvOSUILvUeMyjsI2QlQbixkzO30wnbkXxNbmyfzg04s
	qqxSp69fty3bwfxhEaQ0DcUz9xgBUqOTIO+FIJz8Flplqt4kXujSeX+WBkqyN/42HoNyuA+OhjPq7
	/jk+BryYcCw5SPybvvGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8htf-0005fi-0S; Mon, 02 Mar 2020 10:01:59 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8htY-0005ea-Ar
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 10:01:54 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 25B9D20025;
 Mon,  2 Mar 2020 11:01:46 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 3E52720020;
 Mon,  2 Mar 2020 11:01:45 +0100 (CET)
Subject: Re: [RFC PATCH v4 2/2] clk: Use devm_add in managed functions
To: Geert Uytterhoeven <geert@linux-m68k.org>
References: <68219a85-295d-7b7c-9658-c3045bbcbaeb@free.fr>
 <e88ca46a-799d-9c86-f2d2-6284eb3c3419@free.fr>
 <CAMuHMdUZfR6pYG-hourZCKT-jhh1t+x-ySF4JnEPJjscGAQT+A@mail.gmail.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <7622db71-b1f4-62b4-86ee-78e00d5bd52c@free.fr>
Date: Mon, 2 Mar 2020 11:01:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAMuHMdUZfR6pYG-hourZCKT-jhh1t+x-ySF4JnEPJjscGAQT+A@mail.gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Mon Mar  2 11:01:46 2020 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_020152_523366_7CBDDFCF 
X-CRM114-Status: GOOD (  18.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [marc.w.gonzalez[at]free.fr]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rafael Wysocki <rjw@rjwysocki.net>, Russell King <linux@armlinux.org.uk>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Suzuki Poulose <suzuki.poulose@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/02/2020 14:36, Geert Uytterhoeven wrote:

> Hi Marc,
> 
> Thanks for your patch!
> 
> On Wed, Feb 26, 2020 at 4:55 PM Marc Gonzalez <marc.w.gonzalez@free.fr> wrote:
>> Using the helper produces simpler code, and smaller object size.
>> E.g. with gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu:
>>
>>     text           data     bss     dec     hex filename
>> -   1708             80       0    1788     6fc drivers/clk/clk-devres.o
>> +   1524             80       0    1604     644 drivers/clk/clk-devres.o
> 
> And the size reduction could have been even more ;-)

I'll see what I can do! ;-)

I have another patch with even smaller object code, but it requires
C11 to be well-defined (memcmp the whole struct, which requires zeros
in the padding holes).


>> --- a/drivers/clk/clk-devres.c
>> +++ b/drivers/clk/clk-devres.c
> 
>> @@ -55,25 +51,17 @@ static void devm_clk_bulk_release(struct device *dev, void *res)
>>  static int __devm_clk_bulk_get(struct device *dev, int num_clks,
>>                                struct clk_bulk_data *clks, bool optional)
>>  {
>> -       struct clk_bulk_devres *devres;
>>         int ret;
>>
>> -       devres = devres_alloc(devm_clk_bulk_release,
>> -                             sizeof(*devres), GFP_KERNEL);
>> -       if (!devres)
>> -               return -ENOMEM;
>> -
>>         if (optional)
>>                 ret = clk_bulk_get_optional(dev, num_clks, clks);
>>         else
>>                 ret = clk_bulk_get(dev, num_clks, clks);
>> -       if (!ret) {
>> -               devres->clks = clks;
>> -               devres->num_clks = num_clks;
>> -               devres_add(dev, devres);
>> -       } else {
>> -               devres_free(devres);
>> -       }
>> +
>> +       if (ret)
>> +               return ret;
>> +
>> +       ret = devm_vadd(dev, my_clk_bulk_put, clk_bulk_args, num_clks, clks);
>>
>>         return ret;
> 
> return devm_vadd(...);

If you think that makes it look better, I'll make the change!


>> @@ -128,30 +109,22 @@ static int devm_clk_match(struct device *dev, void *res, void *data)
>>
>>  void devm_clk_put(struct device *dev, struct clk *clk)
>>  {
>> -       int ret;
>> -
>> -       ret = devres_release(dev, devm_clk_release, devm_clk_match, clk);
>> -
>> -       WARN_ON(ret);
>> +       WARN_ON(devres_release(dev, my_clk_put, devm_clk_match, clk));
> 
> Getting rid of "ret" is an unrelated change, which actually increases
> kernel size, as the WARN_ON() parameter is stringified for the warning
> message.

Weird... Are you sure about that? I built the preprocessed file,
and it didn't appear to be so.

#ifndef WARN_ON
#define WARN_ON(condition) ({						\
	int __ret_warn_on = !!(condition);				\
	if (unlikely(__ret_warn_on))					\
		__WARN();						\
	unlikely(__ret_warn_on);					\
})
#endif

Maybe you were thinking of i915's WARN_ON?

#define WARN_ON(x) WARN((x), "%s", "WARN_ON(" __stringify(x) ")")

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
