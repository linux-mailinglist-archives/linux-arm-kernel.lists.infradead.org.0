Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1901ABCD3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 11:34:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d5ily+PKW1eDrs6Z8k3bfiMOA1QZBmd/KjP7DIALPmc=; b=V16Qy3mhYGYEznD5f0ZPH+jiS
	HJiOuH2zUEPldKjjKpCMIR+BdwIzKiG6x8aSM0JsxIsYWZ3N/qf4na54JH4bc1uVIzp+wITSWqU68
	zbnoSgHSBSjFoGq6KNRFPBVi7j2SwbMHeqG4JmnIKA2EsIxsTIKFQVXdwtuvxd5/VGJFtxETX7bQa
	IeFPNoGJmuGIDc8wf1nhxcvjF9Ug21EliRXtrUU8UHge2CBXkm9tW+bi8k/tGOhzLEOZky/N+BPPu
	3dnkoPolgsMYlt+Uaa2Hm+CN8XGFuSJLt3cI62ZHrXumlrNnb7+Q70JPTbJ5f0udXBbvZ+QHfEcit
	OLwCvUEWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP0uv-0000n1-2g; Thu, 16 Apr 2020 09:34:41 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP0uj-0000lv-S0
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 09:34:31 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 135AA22F53;
 Thu, 16 Apr 2020 11:34:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1587029666;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Wl0AyceV1HH2Bd5JaxMdDxBcxIXT6A+UuSLy9IcpOs4=;
 b=fdSgq9LvNOGqIy0gUfMq93deaPw6BZqZHdv+a38XnNPqqltZFNASH8ql6fitG2O9ld7Fhd
 89CCvLeW9VQPPWsn6QhIAbe2kDBbC8GjtJta3+KazM2VUze0Fpwb1G7AZsv7C/L7/DB79C
 HBuO5V1WWdBRNC5k1tGvQI1iyeMkQhA=
MIME-Version: 1.0
Date: Thu, 16 Apr 2020 11:34:26 +0200
From: Michael Walle <michael@walle.cc>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v2 10/16] gpio: add a reusable generic gpio_chip using
 regmap
In-Reply-To: <CACRpkdZPZ4nFQ6B3tGG9wvceoTWqAkfY0r1UKs2pf_c=ZNBG=w@mail.gmail.com>
References: <20200402203656.27047-1-michael@walle.cc>
 <20200402203656.27047-11-michael@walle.cc>
 <CAMpxmJVE3PgVCxkQ-ryc5=KSrKcpdmk1cnJUxJBz9QFCx-e_+A@mail.gmail.com>
 <80bd8661ec8a1f5eda3f09a267846eaa@walle.cc>
 <CAMpxmJVC7e9JnHzBo-h8M1+KmcA32=Rvxo7+znH=-kAbcCr_LQ@mail.gmail.com>
 <e0388a2137e23d76b2415a7549c01dd1@walle.cc>
 <CAMpxmJW1x4Orh1BZ4TUoCsYeaAAZ4NBUNvoMG9JgP0iLvXTOtg@mail.gmail.com>
 <62d157198a75a59ada15c496deeab49b@walle.cc>
 <eab972adf53bbac20b5a9e613fcfb5b0@walle.cc>
 <CACRpkdZPZ4nFQ6B3tGG9wvceoTWqAkfY0r1UKs2pf_c=ZNBG=w@mail.gmail.com>
Message-ID: <576a6244fa3b996327c49023fe953215@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: 135AA22F53
X-Spamd-Result: default: False [1.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[23]; NEURAL_HAM(-0.00)[-0.404];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 FREEMAIL_CC(0.00)[baylibre.com,vger.kernel.org,lists.infradead.org,kernel.org,suse.com,roeck-us.net,linaro.org,gmail.com,pengutronix.de,linux-watchdog.org,nxp.com,linutronix.de,lakedaemon.net,linuxfoundation.org];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_023430_055050_7F417B1C 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pwm@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 2020-04-16 11:20, schrieb Linus Walleij:
> On Tue, Apr 14, 2020 at 9:57 PM Michael Walle <michael@walle.cc> wrote:
> 
>> So what about the following:
>> 
>> #define GPIO_REGMAP_ADDR_ZERO (unsigned int)(-1)
> 
> Yeah with regmap explicitly using int I guess we can't use
> S32_MAX, so that is fair.
> 
>> So this way the user might assign the base addresses the normal way
>> except when he wants to use zero, in that case he has to use
>> 
>>    ->base_adr = GPIO_REGMAP_ADDR_ZERO;
>> 
>> gpio-regmap.c could use then:
>> 
>> if (base_addr)
>>    something_useful(gpio_regmap_addr(base_addr));
>> 
>> unsigned int gpio_regmap_addr(unsigned int addr)
>> {
>>    return (addr == GPIO_REGMAP_ADDR_ZERO) ? 0 : addr;
>> }
> 
> That's reasonably clean.

Ok, at least on that side. For my sl28 gpio driver I then have
the problem that depending on 'base' I might have to use
GPIO_REGMAP_ADDR_ZERO:

   #define GPIO_REG_DIR 0
   config.reg_dir_out_base = base + GPIO_REG_DIR;

So there is still a convenience macro:
   #define GPIO_REGMAP_ADDR(addr) ((addr) ? addr : GPIO_REGMAP_ADDR_ZERO)

which you can use if you can't be sure that the address is not non-zero.
So the code in my sl28 gpio driver looks like:

  config.reg_dir_out_base = GPIO_REGMAP_ADDR(base + GPIO_REG_DIR);

I'll respin the patch with the current remarks.

-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
