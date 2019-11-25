Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 200D7108F3B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 14:51:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LpVYFWgw0LVENY/ESiUcsvhjyv29dFz8uZuAY8gzNOY=; b=in0P/KVs8g1Yxq
	iVwLeROS449YdiDXv/TtsmrIX36RrGfG7wP3XBsryBU63M0Xscm7O6arlhxLWPOQHJPB9JKX4HD/g
	kxTpFRNBVugLMHzsHXiDuNWyNyuRFSoYJCOe6Gmh/Pb2FG7xHzuuNIhI4JoLrvErwcItcjuZliw58
	Z+xogz0qxcUZlNHYFESlu8OB2sUsmCHO2fUTfem8P9O385clyIFeS/dhevGR2flaYE7UfZYaiAnPk
	XVP16gNBpSrQTktQynpbXJS+UQm+0F1FlObcNBE8ZTrV+xaP0eX2mKZisZWXICGlWUDtf3bzEjhJn
	WuMiLp+U5m4Iv/MHRtTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZElg-00077m-RT; Mon, 25 Nov 2019 13:51:08 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZElY-0006xR-0P
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 13:51:01 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 1E11720C37;
 Mon, 25 Nov 2019 14:50:57 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 0767C20609;
 Mon, 25 Nov 2019 14:50:57 +0100 (CET)
Subject: Re: [PATCH v1] clk: Add devm_clk_{prepare,enable,prepare_enable}
To: Bjorn Andersson <bjorn.andersson@linaro.org>
References: <1d7a1b3b-e9bf-1d80-609d-a9c0c932b15a@free.fr>
 <20190715214647.GY7234@tuxbook-pro>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <c4d6c458-3cdf-fbfa-5615-5ab4441d3f60@free.fr>
Date: Mon, 25 Nov 2019 14:50:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190715214647.GY7234@tuxbook-pro>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Mon Nov 25 14:50:57 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_055100_198725_49DCA72E 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Doh! Your reply never made it to my inbox, and I never thought to check
the mailing list...

On 15/07/2019 23:46, Bjorn Andersson wrote:

> On Mon 15 Jul 08:34 PDT 2019, Marc Gonzalez wrote:
> 
> [..]
>> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
>> index c0990703ce54..5e85548357c0 100644
>> --- a/drivers/clk/clk.c
>> +++ b/drivers/clk/clk.c
>> @@ -914,6 +914,18 @@ int clk_prepare(struct clk *clk)
>>  }
>>  EXPORT_SYMBOL_GPL(clk_prepare);
>>  
>> +static void unprepare(void *clk)
> 
> This deserves a less generic name.

Fair enough. Though it's only because of C's function pointer idiosyncrasies
that a function wrapper is even needed.


> clk_enable() is used in code that can't sleep, in what scenario do you
> envision it being useful to enable a clock from such region until devres
> cleans up the associated device?

The use-case I had in mind was
"Device drivers that call
1) clk_prepare_enable from probe()
2) clk_disable_unprepare() in remove()"

(Russell King has pointed out the short-comings of such an approach
in a different sub-thread.)


>> +int devm_clk_prepare(struct device *dev, struct clk *clk);
>> +int devm_clk_enable(struct device *dev, struct clk *clk);
>> +static inline int devm_clk_prepare_enable(struct device *dev, struct clk *clk)
> 
> devm_clk_prepare_enable() sounds very useful, devm_clk_prepare() might
> be useful, so keep those and drop devm_clk_enable().

Oooh, I think I understand what you mean...

I saw clk_prepare_enable() defined as clk_prepare() + clk_enable(),
and figured I'd define devm_clk_prepare_enable() as
devm_clk_prepare() + devm_clk_enable() without realizing that
devm_clk_enable() made no sense.

Solution: drop devm_clk_enable() from include/linux/clk.h
Consequence devm_clk_prepare_enable() cannot be static inline,
but that may not be a big deal...

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
