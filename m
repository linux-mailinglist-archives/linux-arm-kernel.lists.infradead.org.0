Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B38FEEA4E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 21:42:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3mUexh4YvYn6ctaBeHSXFi/Av9CK0CKiSp6YSRQK9m4=; b=YPin++qnkOPLUb
	K4FzhsI/EtZcqqyxyVRunE6koi3c467LUcRNObVdgiHZi6yyA+oVjVzBUuYCpSmqpnm0F1xv48BXr
	hXFYyplqFxDphZ5sBzQLAfJShH5dVW3GNKbNnL1sKy5ibv50Qb9k6j9+PfjkNOsL3rF6jfAq+cMK7
	EGKQmGeP7iBjUnM2bXtJgiyyemLUpKZrPbjTl9m8uWZhosdY3fnvQih7DtybhUQS9kZmBjskBZavy
	EMh4GHVJkbfhHvkALKGWDvMFlFGZWejCBza3ZUDQIa059smEDGTAC72vK+Y7dwIMpdzdsOdskiAfu
	MqYWp680FFYzfF1+3ADw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPunp-0003IB-09; Wed, 30 Oct 2019 20:42:49 +0000
Received: from smtp08.smtpout.orange.fr ([80.12.242.130]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPune-0003Hf-5I
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 20:42:39 +0000
Received: from belgarion ([90.55.204.252]) by mwinf5d15 with ME
 id Kwib210045TFNlm03wib3h; Wed, 30 Oct 2019 21:42:36 +0100
X-ME-Helo: belgarion
X-ME-Auth: amFyem1pay5yb2JlcnRAb3JhbmdlLmZy
X-ME-Date: Wed, 30 Oct 2019 21:42:36 +0100
X-ME-IP: 90.55.204.252
From: Robert Jarzmik <robert.jarzmik@free.fr>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 35/46] cpufreq: pxa3: move clk register access to clk
 driver
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-35-arnd@arndb.de>
 <20191028092327.939C82184C@mail.kernel.org>
X-URL: http://belgarath.falguerolles.org/
Date: Wed, 30 Oct 2019 21:42:35 +0100
In-Reply-To: <20191028092327.939C82184C@mail.kernel.org> (Stephen Boyd's
 message of "Mon, 28 Oct 2019 02:23:26 -0700")
Message-ID: <87tv7qm0ck.fsf@belgarion.home>
User-Agent: Gnus/5.130008 (Ma Gnus v0.8) Emacs/26 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_134238_481091_C540780F 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.130 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robert.jarzmik[at]free.fr)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.130 listed in wl.mailspike.net]
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Haojian Zhuang <haojian.zhuang@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Michael Turquette <mturquette@baylibre.com>, Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Stephen Boyd <sboyd@kernel.org> writes:

> Quoting Arnd Bergmann (2019-10-18 08:41:50)
>> +void pxa3xx_clk_update_accr(u32 disable, u32 enable, u32 xclkcfg, u32 mask)
>> +{
>> +       u32 accr = ACCR;
>> +
>> +       accr &= ~disable;
>> +       accr |= enable;
>> +
>> +       ACCR = accr;
>> +       if (xclkcfg)
>> +               __asm__("mcr p14, 0, %0, c6, c0, 0\n" : : "r"(xclkcfg));
>
> It's just a coprocessor instruction though? I don't see what this has to
> do with clks that we model in the kernel? Why can't it just be put in
> the cpufreq driver that calls it?
I think you forget the "ACCR = accr", which is an MMIO register write. ACCR
stands for "Application Subsystem Clock Configuration Register", so I think Arnd
is right to put it in here.

As for the broader question you ask, about the cpufreq driver, the reason is
unfortunately "historic" : pxa3xx cpufreq driver doesn't use the clock framework
to set the bus clocks, but does it by directly accessing the registers : old
platform, old ways, etc ...

Cheers.

-- 
Robert

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
