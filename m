Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB6D8F52E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 21:56:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CsAKR8vgIT+//A/Au72njn0ckf9ZqGzxWBIxq7LHau4=; b=kJN/T2gZGp3nCNU80jcDyugEd
	p3kqIXdpMMMK6HXxflrI6wlZqJaKBYpHKQkUBNEkOeItKhshOTU10pBAM1+qh8nxJoqp0LBL60R6q
	3j0IkQ9auUSDaqBZSgAO/qsKNFX+t+wWFn779MVhoL0F5PZS6tHiE2Z+SgmsnnnFB5FOxRA2Up4Eo
	2Npg6PjXmtIEN6QK5hqcZzdlKg6Yx0KdnmkYcnMjfY3YUIxgtkOlNZUB+090SFgw1MQNiUGti2N4q
	7BKGixsJYBkpvj5AdnTuk7MSJnFnreC4HPARjj2KP6m5fQPaCbgByKLd9n8xl1vCU9Bxr1SoAlL2E
	QumKygxRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyLrW-0008WQ-2p; Thu, 15 Aug 2019 19:56:42 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyLrG-0008VT-Mn
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 19:56:30 +0000
Received: by mail-wr1-x443.google.com with SMTP id k2so3273575wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 12:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=g9gYXoDI8x/e6fYrmXGn/1ayuYBgMKowuhsSXyNfgGk=;
 b=BxFVHZYKa5FJrzI4dPgxhphpWrPJX2/swt830QW256gBUwXxM+yJC5IcwYLsVK7nDX
 YJfjPvRIeaA5/1BBNJXoqsgHTewr/PGetGNR+nY8LcUb106z3sVc1BGnzwC66iGgyvBi
 +mZLEhnELdlHg5W9w2aWb5ElMS7FgSEkhszGxlzux9iKt0MowKuNOJLEMUsF+38EitOx
 aWGA01aulScsS+DFbHrtKj7iyTuIPYhoHtdzLh8PvOBthQUYT/SsM7uXPDDj4Q1D9eSV
 8Sy3e80DmLJG96aLV8uckZ39ffojhwRHHccpX8EVLTaFDo7W+D2mPyxmub0qfUW0foGm
 Ocvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=g9gYXoDI8x/e6fYrmXGn/1ayuYBgMKowuhsSXyNfgGk=;
 b=bV4jZ6FGQXg0jPmGz689PerstajvJGtG0esG4/s6WwdDGR0dy/WC8cHuWRYGOBf9Gd
 81vLxWJdNnodVNsUEuX45UsiFCtjE7Ruk9a/y4mdwaF/s6GtBBIPI7W6sMuQkvXVF+Sm
 izNLjiho0PGGf2j5JBOnUh7h4sxrVmAej0BbPvRNSYdP2xifbgUkWjvZVAOtwTxvpH70
 YUYZXfQOFjfKf5XRyohnyFR+niypWFvAGuLiqgQqBuudhCgzEJGWU+9orm8ZNoPLgMz7
 6pB5QfzT/AA69xBhAwjjK2Q2s+X1dyy/DKp8iBOnbARS7P4mNIjY7OXfaA4Cl2NGBElr
 D1yw==
X-Gm-Message-State: APjAAAW5SK7usl13/4smzYyPOsDqvhSbI3mvucQVZKJVNMnASjIVRYJW
 96fl8NuY/wbAOJ6jE4762aM=
X-Google-Smtp-Source: APXvYqxCRww3HZkI3tRakEQwmbHT9qSGZgIG7df34SLn3B0yW2ltqN9deIrgqnjQ87uU/8wJDAOtvQ==
X-Received: by 2002:adf:ffc2:: with SMTP id x2mr3219310wrs.338.1565898984599; 
 Thu, 15 Aug 2019 12:56:24 -0700 (PDT)
Received: from [172.30.88.191] (sjewanfw1-nat.mentorg.com. [139.181.7.34])
 by smtp.gmail.com with ESMTPSA id h2sm1762739wmb.28.2019.08.15.12.56.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 15 Aug 2019 12:56:23 -0700 (PDT)
Subject: Re: [PATCH 04/22] media: Move v4l2_fwnode_parse_link from v4l2 to
 driver base
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20190805233505.21167-1-slongerbeam@gmail.com>
 <20190805233505.21167-5-slongerbeam@gmail.com>
 <CAHp75VcOh8bOf_s6t0ehwGtcYn64QFGj303SVvpHrztEOhTRgg@mail.gmail.com>
 <4750b347-b421-6569-600f-0ced8406460e@gmail.com>
 <20190814103054.GI13294@shell.armlinux.org.uk>
 <e0a19469-af9d-d9de-499f-4ffbf04542b3@gmail.com>
 <20190814220437.GJ13294@shell.armlinux.org.uk>
 <1842bf8f-4f97-6294-41db-74f9f8e2befd@gmail.com>
 <20190814231509.GK13294@shell.armlinux.org.uk>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <9b9ca684-9309-cadd-2e58-9ae73162a807@gmail.com>
Date: Thu, 15 Aug 2019 12:56:15 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190814231509.GK13294@shell.armlinux.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_125626_770069_D460E5ED 
X-CRM114-Status: GOOD (  25.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slongerbeam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>,
 "open list:ACPI" <linux-acpi@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Len Brown <lenb@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "moderated list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Hyun Kwon <hyun.kwon@xilinx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>,
 Jacopo Mondi <jacopo+renesas@jmondi.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Enrico Weigelt <info@metux.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 8/14/19 4:15 PM, Russell King - ARM Linux admin wrote:
> On Wed, Aug 14, 2019 at 04:00:30PM -0700, Steve Longerbeam wrote:
>>
>> On 8/14/19 3:04 PM, Russell King - ARM Linux admin wrote:
>>> On Wed, Aug 14, 2019 at 12:04:41PM -0700, Steve Longerbeam wrote:
>>>> On 8/14/19 3:30 AM, Russell King - ARM Linux admin wrote:
>>>>> On Tue, Aug 06, 2019 at 09:53:41AM -0700, Steve Longerbeam wrote:
>>>>>> The full patchset doesn't seem to be up yet, but see [1] for the cover
>>>>>> letter.
>>>>> Was the entire series copied to the mailing lists, or just selected
>>>>> patches?  I only saw 4, 9, 11 and 13-22 via lakml.
>>>> The whole series was posted to the linux-media ML, see [1]. At the time,
>>>> none of the linux-media ML archives had the whole series.
>>>>
>>>>> In the absence of the other patches, will this solve imx-media binding
>>>>> the internal subdevs of sensor devices to the CSI2 interface?
>>>> "internal subdevs of sensor devices" ?? That doesn't make any sense.
>>> Sorry, but it makes complete sense when you consider that sensor
>>> devices may have more than one subdev, but there should be only one
>>> that is the "output" to whatever the camera is attached to.  The
>>> other subdevs are internal to the sensor.
>> Ah, thanks for the clarification. Yes, by "internal subdevs" I understand
>> what you mean now. The adv748x and smiapp are examples.
>>
>>> subdevs are not purely the remit of SoC drivers.
>> So there is no binding of internal subdevs to the receiver CSI-2. The
>> receiver CSI-2 subdev will create media links to the subdev that has an
>> externally exposed fwnode endpoint that connects with the CSI-2 sink pad.
> Maybe - with 5.2, I get:
>
> - entity 15: imx6-mipi-csi2 (5 pads, 6 links)
>               type V4L2 subdev subtype Unknown flags 0
>               device node name /dev/v4l-subdev2
>          pad0: Sink
> ...
>                  <- "imx219 0-0010":0 []
>                  <- "imx219 pixel 0-0010":0 []
>
> Adding some debug in gives:
>
> [   11.963362] imx-media: imx_media_create_of_links() for imx6-mipi-csi2
> [   11.963396] imx-media: create_of_link(): /soc/aips-bus@2000000/iomuxc-gpr@20e0000/ipu1_csi0_mux
> [   11.963422] imx-media: create_of_link(): /soc/ipu@2400000
> [   11.963450] imx-media: create_of_link(): /soc/ipu@2800000
> [   11.963478] imx-media: create_of_link(): /soc/aips-bus@2000000/iomuxc-gpr@20e0000/ipu2_csi1_mux
> [   11.963489] imx-media: imx6-mipi-csi2:4 -> ipu2_csi1_mux:0
> [   11.963522] imx-media: create_of_link(): /soc/aips-bus@2100000/i2c@21a0000/camera@10
> [   11.963533] imx-media: imx219 0-0010:0 -> imx6-mipi-csi2:0
> [   11.963549] imx-media: imx_media_create_of_links() for imx219 pixel 0-0010
> [   11.963577] imx-media: create_of_link(): /soc/aips-bus@2100000/mipi@21dc000
> [   11.963587] imx-media: imx219 pixel 0-0010:0 -> imx6-mipi-csi2:0
> [   11.963602] imx-media: imx_media_create_of_links() for imx219 0-0010
>
> Note that it's not created by imx6-mipi-csi2, but by imx-media delving
> around in the imx219 subdevs.
>
>  From what I can see, smiapp does the same thing that I do in imx219 -
> sets the subdev->dev member to point at the struct device, which then
> means that v4l2_device_register_subdev() will associate the same fwnode
> with both "imx219 pixel 0-0010" and "imx219 0-0010".

Ok, understood.

I realize imx_media_create_of_link() is a bit intrusive, and that's one 
of the things I'm trying to get rid of in this patchset. Unfortunately 
it's there for a reason which is described in patch 0021. But to explain 
here, the imx6-mipi-csi2 receiver outputs its four virtual channels on 
four separate source pads, and those connect to four different 
subdevices (video mux's and CSI's), and the problem is that only the 
first subdev that adds imx6-mipi-csi2 to its notifier asd list will get 
a notifier bind() callback (where links can be created to 
imx6-mipi-csi2) -- the other subdevs don't contain it in their asd lists 
so they never create the links to imx6-mipi-csi2. So until the 
requirement in v4l2-async that no notifiers can contain the same asd in 
its list is relaxed, this function will have to remain, but I can make 
it less intrusive (only create the missing links from imx6-mipi-csi2). 
I'm not able to find a cleaner workaround at the moment.

Steve


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
