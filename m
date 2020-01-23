Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 339C3146571
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 11:13:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uqVGtWMcchHnaSLKIbM/n4JpvJyiwSQVbRLncToYjko=; b=YQtP8WeziK7GlO
	9nhbV6jY5mIGj9OaJJMyzuH5YXj2T2im0GwTOAn12IletxUOM4zavwqyUz8uaF5jN7x2QpYm3HBwJ
	N2UBmsN2UVXtoWG6ODprfYLKW+2qW14Su18Vp5ZfstpKZqGNAbXNAWEf6bRoJVjgTEaCyAOW7hegc
	+f3feijPeiiq50sVTJOk46CdCC3YOHgc+gJJDIQ1bysb455uTXvd4fZjgWC2UdvprRdShV0qPnnxg
	p+LsflRn7KPXXoX2aa7mmsA3JL4aiOKZ3+3KsbyX40DBiagGdABTPjgckFhMDS/OA1B76dXpMgIMF
	CnUTVCzXveUznNhYrf/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuZUj-0002Oc-5Y; Thu, 23 Jan 2020 10:13:49 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuZUV-0002NX-1I
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 10:13:36 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 903D120108;
 Thu, 23 Jan 2020 11:13:33 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 7A4FF200B9;
 Thu, 23 Jan 2020 11:13:33 +0100 (CET)
Subject: Re: [RFC PATCH v2] clk: Use a new helper in managed functions
To: Geert Uytterhoeven <geert@linux-m68k.org>
References: <56c7b6d5-1248-15bd-8441-5d80557455b3@free.fr>
 <CAMuHMdX3kZoEfCeGamreeWq0-Tu2+Mw8MYEbRUZV8wBS+e2K=A@mail.gmail.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <8f1f01a1-b0c7-77d5-7d01-dd53811fa217@free.fr>
Date: Thu, 23 Jan 2020 11:13:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAMuHMdX3kZoEfCeGamreeWq0-Tu2+Mw8MYEbRUZV8wBS+e2K=A@mail.gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Jan 23 11:13:33 2020 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_021335_363680_B1DE00E4 
X-CRM114-Status: GOOD (  23.98  )
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>, Russell King <linux@armlinux.org.uk>,
 Guenter Roeck <linux@roeck-us.net>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22/01/2020 14:33, Geert Uytterhoeven wrote:

> On Wed, Jan 22, 2020 at 2:02 PM Marc Gonzalez wrote:
>
>> Introduce devm_add() to factorize devres_alloc/devres_add calls.
>>
>> Using that helper produces simpler code and smaller object size:
>>
>> 1 file changed, 27 insertions(+), 66 deletions(-)
>>
>>     text           data     bss     dec     hex filename
>> -   1708             80       0    1788     6fc drivers/clk/clk-devres.o
>> +   1508             80       0    1588     634 drivers/clk/clk-devres.o
>>
>> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
> 
> Thanks for your patch!
> 
>> --- a/drivers/base/devres.c
>> +++ b/drivers/base/devres.c
>> @@ -685,6 +685,20 @@ int devres_release_group(struct device *dev, void *id)
>>  }
>>  EXPORT_SYMBOL_GPL(devres_release_group);
>>
>> +void *devm_add(struct device *dev, dr_release_t func, void *arg, size_t size)
> 
> Is there any advantage of using dr_release_t over "void (*action)(void *)",
> like devm_add_action() does?  The latter lacks the "device *" parameter.

(I did forget to mention that v1 used devm_add_action.)
https://patchwork.kernel.org/patch/11262685/

A limitation of devm_add_action is that it stores the void *data argument "as is".
Users cannot pass the address of a struct on the stack. devm_add() addresses that
specific use-case, while being a minimal wrapper around devres_alloc + devres_add.
(devm_add_action adds an extra level of indirection.)

>> +{
>> +       void *data = devres_alloc(func, size, GFP_KERNEL);
>> +
>> +       if (data) {
>> +               memcpy(data, arg, size);
>> +               devres_add(dev, data);
>> +       } else
>> +               func(dev, arg);
> 
> Both branchs should use { ...}

Ah yes, scripts/checkpatch.pl needs --strict to point this out.

>> +
>> +       return data;
> 
> Why return data or NULL, instead of 0 or -Efoo, like devm_add_action()?

My intent is to make devm_add a minimal wrapper (it even started out as
a macro). As such, I just transparently pass the result of devres_alloc.

Do you see an advantage in processing the result?

>> @@ -33,10 +25,7 @@ struct clk *devm_clk_get_optional(struct device *dev, const char *id)
>>  {
>>         struct clk *clk = devm_clk_get(dev, id);
>>
>> -       if (clk == ERR_PTR(-ENOENT))
>> -               return NULL;
>> -
>> -       return clk;
>> +       return clk == ERR_PTR(-ENOENT) ? NULL : clk;
> 
> Unrelated change (which is less readable than the original, IMHO).

I'd like to hear the maintainers' opinion. I defer to their preference.

>> +
>> +       if (!ret)
>> +               if (!devm_add(dev, wrap_clk_bulk_put, &arg, sizeof(arg)))
>> +                       ret = -ENOMEM;
> 
> Nested ifs are easier to read when the outer one uses curly braces:
> 
>         if (!ret) {
>                 if (!devm_add(dev, wrap_clk_bulk_put, &arg, sizeof(arg)))
>                         ret = -ENOMEM;
>         }
> 
> Or merge the condition with &&.
> 
>>
>>         return ret;
> 
> But in this case, I would write it as:
> 
>         if (ret)
>                 return ret;
> 
>         if (!devm_add(dev, wrap_clk_bulk_put, &arg, sizeof(arg)))
>                 return -ENOMEM;
> 
>         return 0;

I like the simplicity of this code.


> (+ consider devm_add() returning the error code instead, cfr. above).

Some functions return an int, some a pointer, some might store the
result through a pointer.


> BTW, I'm still wondering if the varargs macro discussed on #armlinux would
> help.  I.e.
> 
>     devm_add(dev, wrap_clk_bulk_put, struct clk_bulk_devres, clks, num_clks)
> 
> would create and populate the temporary arg variable.
> 
> That would require defining an argument struct for the use in devm_clk_get(),
> though.

There could be a helper for the "pass-a-struct" use-case, using a compound literal:

#define helper(dev, func, type, args...) devm_add(dev, func, &(type){args}, sizeof(type))

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
