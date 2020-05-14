Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F6E1D3F27
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 22:46:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mLbgCFdcWxr6UItJuySCvsGHgRbztgjvi9WrHhyI+uk=; b=t2uiQdXziXxo3KzLXPeflzpcU
	aAtPJkQzj+3+uRzDOWEd9m+ndfztc5VANYfXJLp0zaj32ZoCRSTu/XWU1RaoLnOmz0mlasLHr4cBk
	zFfQc+t6cHMXlTkU/ZHY4v4A970KP1f3WoWo4D2Pc9//T699aYot3ZK5K2K64KVyV8un3pfGC/557
	231A+Hrv8h6SiGc/nlCdwsdOOjWI1j4C7V9mZnnWge0H9SXiXgB4CTvJE5FLAFE8Cd96QhOXlHH/M
	6yj1EkwmoCnldAn7gYNXScshc9SEBkTl7eYPHqmRq4b1+lZxofrCzqO31sMCZ05SJHETE0bJNsMlw
	t4V3GNdhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZKk5-0001MU-K6; Thu, 14 May 2020 20:46:09 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZKjt-0001CE-T9
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 20:46:03 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id BF3CB22EEB;
 Thu, 14 May 2020 22:45:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1589489154;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DMXKBlWL/MST7cL34EcyY2r7dUnEYA7BplVDp3fsnk0=;
 b=vkg/zj/0PDSbf5X0pK+in32oGplSgPjZpIyY9VFe7AbF/2ZsjfhevzzkEFvlj0qRy3JA0c
 1CSKjkXkWnIGZ95mLlXpOIqKRhQvgXP6n4LMjJosWwuh08bDDGHGGq619bZyreTcqDdXnr
 T5BtNH3gx2QelwgM2PzR7k5O5g5eGkA=
MIME-Version: 1.0
Date: Thu, 14 May 2020 22:45:53 +0200
From: Michael Walle <michael@walle.cc>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v3 02/16] mfd: mfd-core: Don't overwrite the dma_mask of
 the child device
In-Reply-To: <20200428152543.GI5677@sirena.org.uk>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-3-michael@walle.cc>
 <20200428124548.GS185537@smile.fi.intel.com>
 <3cd3705a-4f48-6a46-e869-3ee11dc17323@arm.com>
 <20200428142938.GX185537@smile.fi.intel.com>
 <6ccad285-7b5f-3037-d4d5-ff4d9571b612@arm.com>
 <20200428152543.GI5677@sirena.org.uk>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <8fb998f882938680d98f1c2f6f8254c1@walle.cc>
X-Sender: michael@walle.cc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_134559_838326_D4076E0A 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pwm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 2020-04-28 17:25, schrieb Mark Brown:
> On Tue, Apr 28, 2020 at 03:49:49PM +0100, Robin Murphy wrote:
> 
>> For better or worse, the platform bus is the dumping ground for random 
>> crap,
>> so we just have to deal with all the abstraction breakage that leaks 
>> out of
>> that.
> 
> The reason we're using the platform bus for this is that historically
> people were creating buses which were essentially carbon copies of the
> platform bus with the name changed and it was felt that rather than
> duplicate code it was better to just use platform devices with no MMIO
> ranges defined.  If there's some assumptions about DMA for platform
> devices floating about somewhere it might be reasonable to revisit this
> and create a non-DMA variant of platform devices since there is a
> meaningful difference.

Was there any conclusion? Should I keep or drop this patch in the next 
version
of this series?

-- 
-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
