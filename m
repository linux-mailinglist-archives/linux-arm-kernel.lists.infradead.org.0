Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A954B1AB629
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 05:23:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PjheQit+r3/Lvt4LQjMEv3LnpLi1EY1dc9O1v+Fn3Dg=; b=OAU7eAAiEa+sw7wI0bnbKrlwS
	lMqXFr6oeq3aGm1MG3+04VkJMBo37wHrtcIzOPRUO1fM+QYMOxz9izHcDpngsBdjWbs0z0a4iU9Pl
	Rjyc4kvpZA1m7ANOxkwmmttSwCThV6DhjTQ9BuSCzBNE+OjU/mMbUqK5BLWjr7n7Ovm1XpNxt8+5X
	OtMyhmi7WXiUR5U46Ufyi5T4iRCRhfM4GDoszJ1zuIdhrRiJr3o7ZhJU/A4DUTgoec98FJdQtC0eQ
	hlD9KtZRAF2YC+JZHy7yqeREGU4RKnVQTT2mkrvlp8+zgYlFAMZSmRDObTWV7C6o931RaLTMCLyZg
	YtLPwnmyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOv7Q-0003ZM-Ba; Thu, 16 Apr 2020 03:23:12 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOv7G-0003WU-1o; Thu, 16 Apr 2020 03:23:03 +0000
Received: from [10.28.39.241] (10.28.39.241) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server id 15.1.1591.10; Thu, 16 Apr 2020
 11:23:40 +0800
Subject: Re: [PATCH v2 0/2] Add a watchdog driver that uses ARM Secure Monitor
 Calls.
To: Julius Werner <jwerner@chromium.org>
References: <20200403052900.258855-1-evanbenn@chromium.org>
 <CAKz_xw0gV+w_gMkLfB4qUBdULLfFoiv1TBWp9_PHy33wP_XWyA@mail.gmail.com>
 <890948ef-7276-fdae-d270-eb30eff3eab2@amlogic.com>
 <243e107c-35c1-2d14-5285-c9e13744963c@amlogic.com>
 <CAODwPW9RSB37+4EJ2QXAwz=ShFB23L1GKC2mLYE5L5JuQR2tPw@mail.gmail.com>
From: Xingyu Chen <xingyu.chen@amlogic.com>
Message-ID: <ea5ae44f-8b63-d34d-b313-c8deeafd86e1@amlogic.com>
Date: Thu, 16 Apr 2020 11:23:39 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAODwPW9RSB37+4EJ2QXAwz=ShFB23L1GKC2mLYE5L5JuQR2tPw@mail.gmail.com>
Content-Language: en-GB
X-Originating-IP: [10.28.39.241]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_202302_092175_DFBAE3F5 
X-CRM114-Status: GOOD (  17.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Yonghui Yu <yonghui.yu@amlogic.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Anson Huang <Anson.Huang@nxp.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, "moderated
 list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Evan Benn <evanbenn@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,Julius

On 2020/4/16 6:29, Julius Werner wrote:
>> In addition, It looks more reasonable to use the "msec" as the unit of
>> timeout parameter for the ATF fw interface with SMCWD_SET_TIMEOUT:
>>
>> - The fw interface will compatible with the uboot generic watchdog
>> interface at [0], and there is no need to convert timeout from msec
>> to sec.
> 
> I think we're trying hard to keep this compatible to a Trusted
> Firmware counterpart that we have already shipped, so we would prefer
> to keep it at seconds if possible. That's what the Linux watchdog core
> uses as well after all, so it just seems natural. I don't really see
> how what U-Boot does would have anything to do with this.

If the uboot introduces a smcwd driver, and it maybe work like this:

static const struct wdt_ops XXX_wdt_ops = {
	.start = XXX_wdt_start,
	...
}

static int XXX_wdt_start(struct udevice *dev, u64 ms, ulong flags) {
	timeout =  ms / 1000;  //convert timeout from msec to sec.
	smcwd_call(SMCWD_SET_TIMEOUT, timeout, NULL);
	smcwd_call(SMCWD_ENABLE, 0, NULL);
}

Best Regards
> 
>> - Some vendor's watchdog may be not support the "wdt_trigger_reset"
>> reset operation, but they can use the method below to reset the system
>> by the watchdog right now.
>>
>> watchdog_set_time(1);  //1ms
>> watchdog_enable();
> 
> They can still do that but they should do that on the Trusted Firmware
> side. Emulating a missing reset functionality should be handled by the
> hardware abstraction layer (in this case Trusted Firmware), not at the
> Linux API level. So Linux would still send a PSCI_SYSTEM_RESET SMC,
> but then Trusted Firmware can choose to implement that by setting the
> watchdog to the smallest possible timeout (which it can because it's
> accessing it directly, not through this SMC interface) and letting it
> expire.
> 
> .
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
