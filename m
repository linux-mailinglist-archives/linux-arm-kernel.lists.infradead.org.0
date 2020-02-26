Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 280D9170CCD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 00:52:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oal4Z5+lV9wyzVpIEFBaTcPMV7akJOw1Ro3Q6wbY2To=; b=urPaeoCJgyz6QXC2j/wGc2wRT
	lvNRsL2amz9xGilLuplWDHuWWzXle0PBNi408C/5qEVzITPiaIbmfl6qxCgysAvqZlexrTsqCSGL+
	kTyK+Skt7acenvrqfm17Q3jA54Yhe35m/B7ErCR4x6Pg0MFwfyngMn3lIechP23Z9uC/1M7zQDhTx
	1fqwdXX0cwsqmTYZx7T5xtWXpBpaIvS86EE3KCueIw8YkGaqeGNAmPRfMhdwS7ci0J2KcJhaNcdIk
	ZAtcpIa8gQVBRw23tpBWD2a+8D5JUF5Mj/YBQHHlnfESOMvSLuS4qQj02OkhUO+3z+1n3fVvXIOYf
	BFYsSI92Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j76Th-0001mW-Ot; Wed, 26 Feb 2020 23:52:33 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j76TU-0001mD-PX
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 23:52:22 +0000
Received: by mail-pf1-x441.google.com with SMTP id i19so610943pfa.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 15:52:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=XlzTesc/osvmK67dq3mpi/UOZrAvhagv1EzzaH9Ps1E=;
 b=mFoUw0MqmxHI0oPPMELQOYtzcg9+E08usopU8RyqjLJWRg0LfOnJOWt+AjXWMkSQ/+
 ik+r+itUBGD5T380/0MmUPBH+89PWyBdB8+F/1DaSYlSp7CIk8Fn/3teXYUW1zo9xLUH
 v4z8aa9IgEG3jL96PPv5LScPNWljvvNvKlMzL7Be/vTorndLrIXxvpq+plAwXKHkbUom
 m2el//LdaDsyddJT8U73S8hkrTiL/xXFJolh/qFYcxRZrEI1OuYanj9TXwArqs45lePW
 vxV7QH+fF42WDZRjYeU3k4tsni1QLk30hSxJFZFEmXkFxeEViN2UHWaJeeMyd3OJu1qD
 D9Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=XlzTesc/osvmK67dq3mpi/UOZrAvhagv1EzzaH9Ps1E=;
 b=e5fn3G0FVLECph+66FKRAMHi0vWI6YM8Fy7nUBQXb//2Z1YtXc6A48kPBLESzAp4YL
 WmRB/iGajmm13XeSs0+r6e1ebFQmS4voNFuspJKHdly3JUYmzQkd+PSU4+IZ2b8lf2Kc
 qy/UPhulD40pMwolkNCpJgenw4xJQhZUzzPd8Mzy0POXSNaN6jRN58e89Rkgp8R95Cfh
 OKTKpnusFx0tKG9on0VeggyLFBX8YtQlEfQABeL/zrlSr9wdGZVNuuvTVoko8bq14sJA
 dqekNuX+KkEg2zv5yAroiSzd3IKKfiwp4LCIYa/oUj1BMG1q9tJHlKRiuGeU5rR1jAIg
 VsIg==
X-Gm-Message-State: APjAAAWEah3Z63alZScQpH6rH57zWCTD/Z77sMe0QFYbvt4poXEKUOPP
 SnMOSXIvjwwfOyVIc1ASJ18IuN39fwQ=
X-Google-Smtp-Source: APXvYqxvMlCakj/OIN3Ab7wp9/W+3XGgGXTH9cJ24Kd1VC3/qZU0qrVdvmi+QWNetqsm4pIH3dMQwg==
X-Received: by 2002:a62:fb07:: with SMTP id x7mr1198766pfm.125.1582761139317; 
 Wed, 26 Feb 2020 15:52:19 -0800 (PST)
Received: from [172.30.88.123] (sjewanfw1-nat.mentorg.com. [139.181.7.34])
 by smtp.gmail.com with ESMTPSA id 64sm4159507pfd.48.2020.02.26.15.52.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 26 Feb 2020 15:52:18 -0800 (PST)
Subject: Re: [RESEND PATCH v3 02/17] media: v4l2-fwnode: Pass notifier to
 v4l2_async_register_fwnode_subdev()
To: Sakari Ailus <sakari.ailus@linux.intel.com>
References: <20200215194136.10131-1-slongerbeam@gmail.com>
 <20200215194136.10131-3-slongerbeam@gmail.com>
 <20200225150721.GO5379@paasikivi.fi.intel.com>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <33258045-b708-1390-06e0-fde224296dfb@gmail.com>
Date: Wed, 26 Feb 2020 15:50:04 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200225150721.GO5379@paasikivi.fi.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_155220_856185_DDEF7077 
X-CRM114-Status: GOOD (  19.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [slongerbeam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, Rui Miguel Silva <rmfrfs@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sakari,

Thanks for the feedback.


On 2/25/20 7:07 AM, Sakari Ailus wrote:
> Hi Steve,
>
> On Sat, Feb 15, 2020 at 11:41:21AM -0800, Steve Longerbeam wrote:
>> Instead of allocating a notifier in v4l2_async_register_fwnode_subdev(),
>> have the caller provide one. This allows the caller to implement
>> notifier ops (bind, unbind).
>>
>> The caller is now responsible for first initializing its notifier with a
>> call to v4l2_async_notifier_init().
>>
>> Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
> Instead of improving v4l2_async_register_fwnode_subdev(), could you convert
> the users (IMX driver in this case) to call the preferred APIs instead?

I presume you mean using v4l2_async_notifier_add_fwnode_remote_subdev(). 
Ok, I'll convert to use that API.

Steve

>   As
> the lines below show, v4l2_async_register_fwnode_subdev() has only two
> users left --- the other one of which is the IMX driver. After converting
> these two, we could just remove this API.
>
> See e.g. drivers/media/pci/intel/ipu3/ipu3-cio2.c and
> drivers/media/platform/omap3isp/isp.c for examples.
>
>> ---
>> Changes in v3:
>> - added the missing calls to unregister/cleanup the new subdev notifiers.
>>    Reported by Rui Silva.
>> ---
>>   drivers/media/platform/video-mux.c         |  8 +++++++-
>>   drivers/media/v4l2-core/v4l2-fwnode.c      | 11 +----------
>>   drivers/staging/media/imx/imx6-mipi-csi2.c |  7 ++++++-
>>   drivers/staging/media/imx/imx7-media-csi.c |  7 ++++++-
>>   drivers/staging/media/imx/imx7-mipi-csis.c |  9 ++++++++-
>>   include/media/v4l2-fwnode.h                | 12 ++++++++----
>>   6 files changed, 36 insertions(+), 18 deletions(-)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
