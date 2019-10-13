Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DABFD57AF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 21:20:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iTYcEhn8N3oT4LlHBVQx69Ni/Y7QOeLWBPi1aIukoc8=; b=qmRNp3t9zPmhWT
	tULeTAvH44Rxz0tWPcopElOFwjS6kEhcDfOgxhQ85hrPHSF0OxBah91LUdNPs0dY3MvSGWULw8Olw
	uiOjyPeFpi64Mg0ScskMDTUMNzI5dv9DNcVdFQBAvbXA6F5srQvjy+nflk7f7ejMWjj9rqYNLfiPR
	qy/0foFNf9cDS3f2KsbSzxBMqbL+0F1BzeScgk0WyygSp2NJsLvU5a51lnnRCju61j641BOJospMo
	h3NMCCzFLxYNZPUGd06ZmXvogF/xzFBNSEGzaJRQB9pOv4HXbJ/QXlCAu5w2Q/rUSfOAf8OnqK2hp
	CGonXBh+hZnGpN+L3bTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJjPb-0007Ug-1I; Sun, 13 Oct 2019 19:20:15 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJjPL-0007T6-OQ; Sun, 13 Oct 2019 19:20:01 +0000
Received: by mail-pg1-x543.google.com with SMTP id i76so8796423pgc.0;
 Sun, 13 Oct 2019 12:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=lRxf/vrG9t+cMEQuqxixOE+c6Dr/iWC77uPoe58nNNw=;
 b=SGgntrP+Yup2ENd2fVKPff1wGrEmryh+1fCrncAsrikd8e/Zv5U+MRWQjaRWvSgzIf
 KbGwvo4VXV9KBF87iDQg5td72rnePTD/8dUMXkThgsJqxyXarShHHjIEHQtnCgcKLSLj
 OEc4AKKg0ybxc2l37/axgwlTKXC0mCkXNjEJ/2Ky+NuHHZ+YA+So8cCcUIq8thXGJZeO
 IJUTWwL2je6M/QY7Xjion2ZYGYDVN3jg19p/HahQGwgCIPo5zraGRx2NLi3/XzJUYut1
 S8qOa3kvMgWuGk2EP0QBpqxn/rdpckje1xED3tOilCi9MzEB4F5NdNw1dYfw6n5WsLyf
 ZI+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lRxf/vrG9t+cMEQuqxixOE+c6Dr/iWC77uPoe58nNNw=;
 b=EeRnZZLpBfJXRurz2g7Sk/bDuDANAcYE/vbM51lYinRdP9qaGzH8s91iuxqHGLPyzi
 aZDQc7VP93ZaCgFdC3qX2Hq0XEdOLEES9DnD1SIPmTscr5v2HRZNLtcCC6jYAfo7dTgQ
 MOWxXbGb7drApkBqe9KRUWYFy8Ax7COt2ltknrJflOkWa2sBFgCx8KKugLNrte2qto51
 tNMsXk9B78Ok79QVncg8gW6SxoVaSBFkN8kfHa5FwA/e+yLjM8wYs5eUHbJjyIN8RoX/
 CLtrbJ0HgdJBa5WEPVq6LvyyLqKC31AE0jQLof99YgamzmIWt+DTXz83cY3ztxcUOfVu
 2T3A==
X-Gm-Message-State: APjAAAUk43eMnOKxtTZ3K6KyLKWGjfi/EwYF4kM/4wsctSdL9qwXDDfc
 kBdu4LdgwkUcfzgvKuPOTXc=
X-Google-Smtp-Source: APXvYqzLbTKziQGuwKu2hH5qEstlBYM5Nko/pZSX4t8b9AAXB+d9CizX6GPr1c5GZDxHfs6dk7++fQ==
X-Received: by 2002:a63:1b07:: with SMTP id b7mr11328013pgb.166.1570994398196; 
 Sun, 13 Oct 2019 12:19:58 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 20sm16619394pfp.153.2019.10.13.12.19.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 13 Oct 2019 12:19:57 -0700 (PDT)
Subject: Re: [PATCH v1 3/3] ARM: dts: bcm2711: Enable GENET support for the
 RPi4
To: Stefan Wahren <wahrenst@gmx.net>, matthias.bgg@kernel.org,
 "David S . Miller" <davem@davemloft.net>
References: <20191011184822.866-1-matthias.bgg@kernel.org>
 <20191011184822.866-4-matthias.bgg@kernel.org>
 <a514751e-e82a-b5ea-34d3-46468c851a80@gmail.com>
 <c7fac096-4a0a-1d52-2284-4fe86554fbc8@gmx.net>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <15b182b4-488a-c023-91ff-e0e253dc41f9@gmail.com>
Date: Sun, 13 Oct 2019 12:19:55 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <c7fac096-4a0a-1d52-2284-4fe86554fbc8@gmx.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_121959_821567_909F6973 
X-CRM114-Status: GOOD (  20.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Matthias Brugger <mbrugger@suse.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-kernel@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/13/2019 11:41 AM, Stefan Wahren wrote:
> Hi Florian,
> 
> Am 11.10.19 um 21:31 schrieb Florian Fainelli:
>> On 10/11/19 11:48 AM, matthias.bgg@kernel.org wrote:
>>> From: Matthias Brugger <mbrugger@suse.com>
>>>
>>> Enable Gigabit Ethernet support on the Raspberry Pi 4
>>> Model B.
>>>
>>> Signed-off-by: Matthias Brugger <mbrugger@suse.com>
>>>
>>> ---
>>>
>>>  arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 22 ++++++++++++++++++++++
>>>  arch/arm/boot/dts/bcm2711.dtsi        | 18 ++++++++++++++++++
>>>  2 files changed, 40 insertions(+)
>>>
>>> diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
>>> index cccc1ccd19be..958553d62670 100644
>>> --- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
>>> +++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
>>> @@ -97,6 +97,28 @@
>>>  	status = "okay";
>>>  };
>>>
>>> +&genet {
>>> +	phy-handle = <&phy1>;
>>> +	phy-mode = "rgmii";
>> Can you check that things still work against David Miller's net-next?
>> Tree, in particular the BCM54213PE PHY might be matched by the BCM54210E
>> entry in drivers/net/phy/broadcom.c and I just fixed an issue in how
>> RGMII delays were configured:
>>
>> https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git/commit/?id=fea7fda7f50a6059220f83251e70709e45cc8040
>>
>> This might require you to change the 'phy-mode' property to what is
>> appropriate.
> 
> i applied your changes, kept the phy-mode above and the interfaces cames
> up. But there is a lot of packet loss using ping. After applying this
> downstream patch [1] the packet loss doesn't occur.

Packet loss is symptomatic of a mis-configured RGMII interface between
the MAC and the PHY.

> 
> Is the packet loss a possible cause of the wrong phy-mode and mentioned
> patch only a workaround?

The patch at [1] is not doing much with respect to RGMII delays, so it
will just keep whatever was configured prior to Linux taking over the
PHY. The addition of the BCM54213PE entry makes use of the
bcm54xx_config_init() callback, which does not call
bcm54xx_config_clock_delay() for the BCM54213PE PHY model, which is why
it "solves" the packet loss by preserving whatever was already configured.

I would suggest checking with the Pi folks whether 'rgmii' is really the
right mode of operation here (that is, the PHY is not adding TXC or RXC
delays at all), or it just happens to work by virtue of the PHY device
defaulting to a certain mode *and* the PHY device driver in Linux not
attempting to correctly change the RX/TX clock delays based on the
phy_interface_t value (aka: maintain the status quo).

Thanks for checking!

> 
> [1] -
> https://github.com/raspberrypi/linux/commit/360c8e98883f9cd075564be8a7fc25ac0785dee4
> 

-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
