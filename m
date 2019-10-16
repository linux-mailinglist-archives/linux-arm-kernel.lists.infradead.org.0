Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1FCD882D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 07:48:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uMD34ZqHyG51H11lEeRqsb2ikc9GoJew4E1EzHKA0kw=; b=egJjj99Kcs/evj
	jslZ31K1+COqpdHe1p6Yb9y2fC2mN8dLbGk00OmeUKe4P0arc6OLI0pgxA81We8Cyk0xQuxUXjQ/T
	wS7SA7RY8nk1DCtVh6Ak/5DM7ROmG1o5aqjCxM3JMlCzvPAFnLvQpT7fQv2qOpKuG+ojDKxOipgP/
	wS5zzo3332+WrHKUIVRvDFPig1T83MFuYMXucvny8/JLVUaoVPrstdf6I2sQtYIvYOS3YEDeFKXOj
	V1q1XzXq7al3MH/87x7r4u/RQUmH5LJiUFpxVQCs+AgyTdZd+BWpqQfQqF2AQDElgLVMl0riyiY9U
	5G3rGzawdUrK5hk9ZMeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKcAd-0003PV-JO; Wed, 16 Oct 2019 05:48:27 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKcAS-0003P8-Tx; Wed, 16 Oct 2019 05:48:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1571204883;
 bh=65lW9dAdvijQMWhG3ua+QYp0BwCCA6cteHad21u0XDo=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=HnwlK6zYSSYMRVKucvOP3Nf5CFzE3SYqAz3abmT3rtcB/6Die/o1elFy85+M3q/1m
 d7flwGoo/dyeqbJMrOsdSXhO6uGiNALs5cFVhibZdFK3uNK0tQTabY7pLBoEKHotwj
 XkR+s/27Q0t0Lu9BWSPZjCokOX2u5G6LblMvml9c=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.112]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N0X8o-1i6GCk3v4G-00wUZQ; Wed, 16
 Oct 2019 07:48:03 +0200
Subject: Re: lan78xx and phy_state_machine
To: Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Woojung Huh <woojung.huh@microchip.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>
References: <20191014140604.iddhmg5ckqhzlbkw@beryllium.lan>
 <20191014163004.GP25745@shell.armlinux.org.uk>
 <20191014192529.z7c5x6hzixxeplvw@beryllium.lan>
 <25cfc92d-f72b-d195-71b1-f5f238c7988d@gmx.net>
 <b9afd836-613a-dc63-f77b-f9a77d33acc4@gmail.com>
 <20191014221211.GR25745@shell.armlinux.org.uk>
 <524267e6-df8e-d884-aeef-1ed8700e4e58@gmail.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <4b160706-97a4-1fd8-9ddb-00a81d0cd6bb@gmx.net>
Date: Wed, 16 Oct 2019 07:48:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <524267e6-df8e-d884-aeef-1ed8700e4e58@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:Ew7FNDku7ITKf0fnF4Nvts7IZlNkydC8o0+5l8Ur87v+IVxOCRW
 M+zVQx/mCY6gFDDx04bBSPjOEHDK3L+pYbwv2db9HxHPksvZ6kWy8qDyy9+NmOhmapqMLAF
 exISiaWXKX285EiRT7KLlGkwfILDSWbL57N1/hGngKU4jbUtCRM/RChB7Mq3O1Zgv4tY4/i
 qPJbdhByOWjpgrjehF8Ow==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:m03NsduD8hg=:QTnRELOPLA8iyWNrENMKQl
 KLsEU7kRUXo5eWaGOGCGLHAOQiCLOPPAuyFgB5yfN3DA5MQpjYKqDc9aSWl1dEtGdQYHrgSh1
 +BeyIWC2QppDBJPVXjW14RcD0lz+krIUEr1DVqP2qFGMYfg+ukwtsO3zp77IzULkPxM4LHEo8
 OjJOirz/WYKAwGVKGEtaI74P8pWu87hcGjLRsgsFiy8/aI3ZMQRmaKQZs1uUPx/KXo2hZUDT2
 8UbAWY63nqOH7sseO3mRMcYaAXR469pAOmGz1sjxAEoeBLCXcujdgfR8g8I0Ojf5VjmaBAoHa
 9jcahKCKuAjNTJmDK18WDe56MdNlvq/mxM0yDgLxmCWHvKWzu1FQU5DOV3rrv2N6JSAwe8PuU
 UPdUfRyw5iLzKhCehxW3KPvoTzNblpjUJhW8ao1a2vmYtatCwbDyclF8iM3VvDg+o/oMGsRGz
 BnedLgs66Is26ZYFHXQB+0Nh9ckmgRLHzJPBbpjtsynSbiKayKGMKplBg+jTJ/TIb78YXuKPK
 eWrsX3ppW+MPXo09mHnbeDnsJw0HikzCu8w2FgtF1hrah9svVO6hZD/QfD7rZPnskDfrWQntl
 UY9aT3yUN592nq3DYe0imF6YdCj4wF99ti3Seo7MTEA8tNCJlJYlxzTC5gZ2kRYzTJnOs5jlD
 U5CRDH430kXlWnp3C2lrTHaMe2EDcAxxNHYvIr+PfLwPFDxOZBiHPnJVawkiiLbs+bSvo2I5W
 cxJUt3zcfBw+/WnqvQ6lkAfdF4D2SAayQmVz9EK9T974ksf59v2n5UGo7lzAB43vwB8+o5G4G
 oorUx/I7/TgtkaJCiZlGUa9uFdQ0KTj0JuRx4r0mcH15FS0yPs5OPPj8l1JbGuyDjtDn9h/tz
 a+aMDXzVYzlEWSXOWs4qd87cSpxE+eBQx/L+rbdcLtg9InD1yb76RfFiuN9DDcoILPmcyOLSV
 PVM2G6On1gmL8VQVo7ukBN1vBB9uyl5/yNYBWeeb10lTZDvzLjO03rHCkIrLNPpmm+QAZnOL5
 0YnyKWklDhLLuKtphQiR4foucNKdI7iGEulzOB/3YImC0Y0FOLAUnU/DXODlNsecogl2DXn1c
 EAxvxjh1T8oJyCEo0hmH78d32aIQXTdpJnRnpQwR8Kofgn71trI6sZx9flJO/vUUTHq+AzukV
 0dIMVRZDZ+Fnn5xExVwaRqb7w9iatO8ppgDmVf3T+1EttKRoxdadjMyyxxq7QqXwWS6Sgrxqe
 7AktKoxj47X6d5bEq8Tqe1wm/Snd7PzA9n+qoesHfnVWEL1j67E+8uU8iVEo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_224817_299704_5E90E804 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Wagner <dwagner@suse.de>, netdev@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 15.10.19 um 21:38 schrieb Heiner Kallweit:
> On 15.10.2019 00:12, Russell King - ARM Linux admin wrote:
>> On Mon, Oct 14, 2019 at 10:20:15PM +0200, Heiner Kallweit wrote:
>>> On 14.10.2019 21:51, Stefan Wahren wrote:
>>>> [add more recipients]
>>>>
>>>> Am 14.10.19 um 21:25 schrieb Daniel Wagner:
>>>>> Moving the phy_prepare_link() up in phy_connect_direct() ensures that
>>>>> phydev->adjust_link is set when the phy_check_link_status() is called.
>>>>>
>>>>> diff --git a/drivers/net/phy/phy_device.c
>>>>> b/drivers/net/phy/phy_device.c index 9d2bbb13293e..2a61812bcb0d 100644
>>>>> --- a/drivers/net/phy/phy_device.c +++ b/drivers/net/phy/phy_device.c
>>>>> @@ -951,11 +951,12 @@ int phy_connect_direct(struct net_device *dev,
>>>>> struct phy_device *phydev, if (!dev) return -EINVAL;
>>>>>
>>>>> +       phy_prepare_link(phydev, handler);
>>>>> +
>>>>>         rc = phy_attach_direct(dev, phydev, phydev->dev_flags, interface);
>>>>>         if (rc)
>>> If phy_attach_direct() fails we may have to reset phydev->adjust_link to NULL,
>>> as we do in phy_disconnect(). Apart from that change looks good to me.
>> Sorry, but it doesn't look good to me.
>>
>> I think there's a deeper question here - why is the phy state machine
>> trying to call the link change function during attach?
> After your comment I had a closer look at the lm78xx driver and few things
> look suspicious:
>
> - lan78xx_phy_init() (incl. the call to phy_connect_direct()) is called
>   after register_netdev(). This may cause races.
>
> - The following is wrong, irq = 0 doesn't mean polling.
>   PHY_POLL is defined as -1. Also in case of irq = 0 phy_interrupt_is_valid()
>   returns true.
>
> 	/* if phyirq is not set, use polling mode in phylib */
> 	if (dev->domain_data.phyirq > 0)
> 		phydev->irq = dev->domain_data.phyirq;
> 	else
> 		phydev->irq = 0;
>
> - Manually calling genphy_config_aneg() in lan78xx_phy_init() isn't
>   needed, however this should not cause our problem.
Thanks for this review. This may help to fix at least a one of all the
other issues with lan78xx.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
