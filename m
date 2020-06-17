Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A61231FCAAF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 12:21:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BJWcLatRGEFVweCBRe7Z0d4+OinRU+FTFXIltXXitDE=; b=rl1W2rdcZg8KKta1d+PI19Ije
	JU/wXO2Lxk6WKvEgobOeiMCKcMrWEqksdTTYbUcR7ldv9npBr5Ex1MXnETpWWKRpBFaYBvB31uAxa
	9PsbWRVpKS2jSFunF9L++DFxDTKqZmotI5KYEFMPLGDLi2CBhZyuUGCPdp8XuPdu1BdmNK2oWip3b
	6440xjwgms0Rh3rrVKJFIOwAe/kBuil8RsE0JiBF21GAAr5X4kK6RpQTLaByx5QtIbQgye1ZnpRFN
	kKAI0Dt9tInQuf7IJMtzJRbETRdQ+9iD1zGTH/ts8BN6AyWDupE3LzwcN/Gl/UaMlt5/Wgs8ruoP6
	I28BIPPJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlVCW-0000rj-6C; Wed, 17 Jun 2020 10:21:48 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlVCM-0000r3-97
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 10:21:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592389296;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Yhc1s7Zw9ueIYMIEo2xTGTrDtdpadVKmkCOObmttCqE=;
 b=FkGXUgPvvGLIAP9Iq1zjH8apEULKpFbdb84cDykx8C9W5TnpjguWBRHMJSPl0YhGjxG0yO
 7qoO+0z9XdGuyiN4XQdVufzYI+WI7R3kgrXUjaqK0ekeAo9+wOOaDBYFN/6mY3oh8GaxEg
 kfaQskcApeiajOWpoN4/gFPh8qksimg=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-54-rJ9hBqKFOmGYQEkM_22KzA-1; Wed, 17 Jun 2020 06:21:34 -0400
X-MC-Unique: rJ9hBqKFOmGYQEkM_22KzA-1
Received: by mail-ed1-f71.google.com with SMTP id x3so629217eds.14
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 03:21:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Yhc1s7Zw9ueIYMIEo2xTGTrDtdpadVKmkCOObmttCqE=;
 b=WCEyxpBQblDXGt7PdsqV6oHI8tGfgH4hTkA12H1tVJ/1+VFaBY1xbE5pUTpoe7Zr3r
 sghCHG4oFXLXL4n02Zs9T02lkjTMWsl+1JkT85Fk3tFxH8zrwL8jEq+AcU4godLVmzpy
 3QTALHJI7KkfL+ieGwBFtl/WuATgx6nMKfnAxxxxSiVo+P8/3pvO7Bzr7gk/afiHydyX
 LATrQbp3iW09LBAWXJchkwlLotkWx2TdiKixBsvv2DhtGhlgzOXi1pXoS8AT9PE8uTQU
 KBjIF2jG7JRVU6NmitJIzjfq/317kMQG8KryonkYLiaOn3ozGjrW/rVF/+ClaeW/E5pz
 +ASw==
X-Gm-Message-State: AOAM533kuHDF5Cgtcfqrv9p7CIOz6lvGAxH+zK6kF10dzdmV41v2J8U5
 LSqybJnSNvzDOM0YeGRz4YZFO/hEUMfg9HwelsOnneFsUwYE8LektWUtsBSuVQ9rzaz8WNbzKKt
 4yocWhi59YPrfl2/wwj2AFCgVzOBU/79YcVk=
X-Received: by 2002:a17:906:6890:: with SMTP id
 n16mr6668488ejr.553.1592389293038; 
 Wed, 17 Jun 2020 03:21:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz4Vcga1B5df8yMuNCm76AlDwIveU6uNfHx1BCv3dLBndEoal3yutZpn6mAPAdwWw3xnCmDSw==
X-Received: by 2002:a17:906:6890:: with SMTP id
 n16mr6668468ejr.553.1592389292749; 
 Wed, 17 Jun 2020 03:21:32 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id lw5sm13209081ejb.30.2020.06.17.03.21.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Jun 2020 03:21:32 -0700 (PDT)
Subject: Re: [PATCH v2] Input: document inhibiting
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-pm@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-input@vger.kernel.org, linux-tegra@vger.kernel.org,
 patches@opensource.cirrus.com, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org
References: <f9007f37-c526-5fa4-3188-a554d2434177@redhat.com>
 <20200617101822.8558-1-andrzej.p@collabora.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <f0270bea-abac-eb4a-1d95-d4bc41bbd314@redhat.com>
Date: Wed, 17 Jun 2020 12:21:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200617101822.8558-1-andrzej.p@collabora.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_032138_393993_B4561426 
X-CRM114-Status: GOOD (  24.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kernel@collabora.com, Nick Dyer <nick@shmanahar.org>,
 Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Peter Hutterer <peter.hutterer@redhat.com>, Fabio Estevam <festevam@gmail.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Len Brown <lenb@kernel.org>, Michael Hennerich <michael.hennerich@analog.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>,
 =?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>,
 Barry Song <baohua@kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 6/17/20 12:18 PM, Andrzej Pietrasiewicz wrote:
> Document inhibiting input devices and its relation to being
> a wakeup source.
> 
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> ---
> v1..v2:
> 
> - Addressed editorial comments from Randy
> - Added a paragraph by Hans

Thank you.

v2 looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans



> 
>   Documentation/input/input-programming.rst | 40 +++++++++++++++++++++++
>   1 file changed, 40 insertions(+)
> 
> diff --git a/Documentation/input/input-programming.rst b/Documentation/input/input-programming.rst
> index 45a4c6e05e39..7432315cc829 100644
> --- a/Documentation/input/input-programming.rst
> +++ b/Documentation/input/input-programming.rst
> @@ -164,6 +164,46 @@ disconnects. Calls to both callbacks are serialized.
>   The open() callback should return a 0 in case of success or any nonzero value
>   in case of failure. The close() callback (which is void) must always succeed.
>   
> +Inhibiting input devices
> +~~~~~~~~~~~~~~~~~~~~~~~~
> +
> +Inhibiting a device means ignoring input events from it. As such it is about maintaining
> +relationships with input handlers - either already existing relationships, or relationships
> +to be established while the device is in inhibited state.
> +
> +If a device is inhibited, no input handler will receive events from it.
> +
> +The fact that nobody wants events from the device is exploited further, by calling device's
> +close() (if there are users) and open() (if there are users) on inhibit and uninhibit
> +operations, respectively. Indeed, the meaning of close() is to stop providing events
> +to the input core and that of open() is to start providing events to the input core.
> +
> +Calling the device's close() method on inhibit (if there are users) allows the driver
> +to save power. Either by directly powering down the device or by releasing the
> +runtime-pm reference it got in open() when the driver is using runtime-pm.
> +
> +Inhibiting and uninhibiting are orthogonal to opening and closing the device by input
> +handlers. Userspace might want to inhibit a device in anticipation before any handler is
> +positively matched against it.
> +
> +Inhibiting and uninhibiting are orthogonal to device's being a wakeup source, too. Being a
> +wakeup source plays a role when the system is sleeping, not when the system is operating.
> +How drivers should program their interaction between inhibiting, sleeping and being a wakeup
> +source is driver-specific.
> +
> +Taking the analogy with the network devices - bringing a network interface down doesn't mean
> +that it should be impossible be wake the system up on LAN through this interface. So, there
> +may be input drivers which should be considered wakeup sources even when inhibited. Actually,
> +in many I2C input devices their interrupt is declared a wakeup interrupt and its handling
> +happens in driver's core, which is not aware of input-specific inhibit (nor should it be).
> +Composite devices containing several interfaces can be inhibited on a per-interface basis and
> +e.g. inhibiting one interface shouldn't affect the device's capability of being a wakeup source.
> +
> +If a device is to be considered a wakeup source while inhibited, special care must be taken when
> +programming its suspend(), as it might need to call device's open(). Depending on what close()
> +means for the device in question, not opening() it before going to sleep might make it
> +impossible to provide any wakeup events. The device is going to sleep anyway.
> +
>   Basic event types
>   ~~~~~~~~~~~~~~~~~
>   
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
