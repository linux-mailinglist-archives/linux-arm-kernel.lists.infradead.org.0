Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58CA010E7A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 10:25:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XgiRZfej5BnvDISKPHIGDqxelYxoDFYaRRHfMIhkWWc=; b=MhcpxUyz8w32yf
	EMJhLBJ6s1PsMJTcJ/JaaIs0LIh6QyLpBqwtLy8XeOXrK6vzDPX5mdP7YDYcLDwsbsvz13b+Uprkt
	N0CY/Vf0qZf+IySoUDTJFHV/9DViC3UX2XapHwnmedEWtNAgTwDKUnePO55YQaaGk26tNMZxcHB5y
	Kiw7YSXJGsRI1qLljL0pk2iGSndI7KYZNmOlvJMXrjEyaYr4kbvogg8WOd6w8HCn7KUQ7bIzBY/GD
	akv3ZZ4GYDaNN675svhXuBCf39KVJaCjxbVm3OMu/DN5P7Ekzf/q31opCjDzj5+7LgwZG9lvWT0d+
	/UG9oSVOvMVaX28i78pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibhxp-0007ba-KN; Mon, 02 Dec 2019 09:25:53 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibhxf-0007al-6z
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 09:25:44 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 907632041C;
 Mon,  2 Dec 2019 10:25:37 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 7DB261FFCE;
 Mon,  2 Dec 2019 10:25:37 +0100 (CET)
Subject: Re: [PATCH v1] clk: Convert managed get functions to devm_add_action
 API
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
References: <3d8a58bf-0814-1ec1-038a-10a20b9646ad@free.fr>
 <20191128185630.GK82109@yoga> <20191202014237.GR248138@dtor-ws>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <f177ef95-ef7e-cab0-1322-6de28f18ecdb@free.fr>
Date: Mon, 2 Dec 2019 10:25:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191202014237.GR248138@dtor-ws>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Mon Dec  2 10:25:37 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_012543_397711_6B15D285 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Guenter Roeck <linux@roeck-us.net>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/12/2019 02:42, Dmitry Torokhov wrote:

> On Thu, Nov 28, 2019 at 10:56:30AM -0800, Bjorn Andersson wrote:
> 
>> On Tue 26 Nov 08:13 PST 2019, Marc Gonzalez wrote:
>>
>>> Date: Tue, 26 Nov 2019 13:56:53 +0100
>>>
>>> Using devm_add_action_or_reset() produces simpler code and smaller
>>> object size:
>>>
>>> 1 file changed, 16 insertions(+), 46 deletions(-)
>>>
>>>     text	   data	    bss	    dec	    hex	filename
>>> -   1797	     80	      0	   1877	    755	drivers/clk/clk-devres.o
>>> +   1499	     56	      0	   1555	    613	drivers/clk/clk-devres.o
>>>
>>> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
>>
>> Looks neat
>>
>> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> 
> This however increases the runtime costs as each custom action cost us
> an extra pointer. Given that in a system we likely have many clocks
> managed by devres, I am not sure that this code savings is actually
> gives us overall win. It might still, I just want to understand how we
> are allocating/packing devres structures.

I'm not 100% sure what you are saying.

Are you arguing that the proposed patch increases the run-time cost of
devm_clk_put() so much that the listed improvements (simpler source code,
smaller object size) are not worth it?

AFAIU, the release action is only called
- explicitly, when devm_clk_put() is called
- implicitly, when the device is removed

How often are clocks removed?

In hot code-path (called hundreds of times per second) it makes sense to
write more complex code, to shave a few cycles every iteration. But in
cold code-path, I think it's better to write short/simple code.

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
