Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 173B5D8067
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 21:38:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rXz48m3TnuYq4FwRTq3xZVeBs+qYrvVCqmONbX4KBM8=; b=uwFNbdqrJRYnTg
	aCD8qmcos4D2/3nJT9yaOurtT1WXMrAbtl2yOPsyCdgQTtG2PTJ97j7T3zA3lQ0oZxat6xFtkkcUh
	h5nuPkXMdqjkL3x2Irgf3WnVc7jx6QwjGa3NY52oMtbQ0SJ3On8I0N7dihzJm9zXmA0sBDBSNxJA3
	oly93FBs0xedF0jG4e1UJ/+rowDIXZdmMRZynwCSjBXUc0L5Uxf3Ki30mjQQ3rMhI1ZOlVAQSWwR+
	Ff42h/WTBpkuDOn6ByfhOSLPqjZOkW2mNECmGc/Ppn5TAfNtMGNOdgrFnvVdosqEqXqAP/3ydZU7F
	Cl4jU1m7YbfoB5LzN3Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKSeY-0001hM-QS; Tue, 15 Oct 2019 19:38:42 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKSeO-0001gv-P1; Tue, 15 Oct 2019 19:38:34 +0000
Received: by mail-wm1-x342.google.com with SMTP id f22so290844wmc.2;
 Tue, 15 Oct 2019 12:38:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=E3B63BPD8WhwxK8F76UGDMYTwfefF6997Iwnobico4A=;
 b=Xllzek0xvgC6jyu0c/eT0B5b5aeiV60nBgSZGPvRxpjAoFKIPpaVMpzpzUkMuwHAmw
 /9XxR1AfJJy7ypuSC5x5YBD6yucZzrC8bTLEmJ9zZLxf67zI/wsARAkzC87m7QXamiyL
 5CmBD6IAoEJIka4UWE8kxjnrDCTvNBq6pOXElaCBtaO4tHLrQxlGrU6uyxb7ggFHBT/R
 o/bIdwVJEl9koupbRlYlRttmxeAdLwHs2HQ//RWJ2KkqdlqeYa0rQV3OyCt01UjXQmPg
 oP+C8ofnMK5bSOykDzNEyUPCRinX/wFGvxYvNNuS/kwkzJZagqQbXmtJwjw9zoUb81+x
 1OyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=E3B63BPD8WhwxK8F76UGDMYTwfefF6997Iwnobico4A=;
 b=qZ0mI3OTe7Gw9bs/hHqtFtuKk6znxWKTSoTE/r1/9Kll5H4QvWnDwOJdSXS5uQQwsJ
 MV1XPBFIRYmfiR0RA3LE38af1IdMVf7Q/tXCSgy0BUPlqCL4tpWrtw0/sYS+ObZ+GVPP
 1KJGZhUJbYe8/qSDj/PKaZ9jkOjF6D5bqFUfLHbFCjbGzslDByG01X6ity/biYgaReRL
 WTLex/q6Ztd5JQs68X/Pqoegt6dWkKEIGAmPs6aDueIWe21Eo9edNGLRPqpPGhp4LIXG
 eFJ+PktHYGCP/6G4cVzzC+I1zB7AQpxCz8iSaKeAIZcmeQ0+TKagcL2jNh6J72qAwRqr
 b33Q==
X-Gm-Message-State: APjAAAVpPq6xGICvzfE5rhsPTgBR2jTZNpD2Io1UPRdfLCnEbuBOc8lV
 j1z1SJmSV1dVKfMKi4GsiNM=
X-Google-Smtp-Source: APXvYqweDgbFaIKgQlfsCgzo3guTMj64bM+rRO3BOaL1eG4Xww1rEpLEQ4okEl1oQARRe7th47z9jA==
X-Received: by 2002:a1c:f305:: with SMTP id q5mr137336wmq.137.1571168311140;
 Tue, 15 Oct 2019 12:38:31 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f26:6400:44d1:b396:5862:c59e?
 (p200300EA8F26640044D1B3965862C59E.dip0.t-ipconnect.de.
 [2003:ea:8f26:6400:44d1:b396:5862:c59e])
 by smtp.googlemail.com with ESMTPSA id h125sm335917wmf.31.2019.10.15.12.38.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 15 Oct 2019 12:38:30 -0700 (PDT)
Subject: Re: lan78xx and phy_state_machine
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Woojung Huh <woojung.huh@microchip.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>
References: <20191014140604.iddhmg5ckqhzlbkw@beryllium.lan>
 <20191014163004.GP25745@shell.armlinux.org.uk>
 <20191014192529.z7c5x6hzixxeplvw@beryllium.lan>
 <25cfc92d-f72b-d195-71b1-f5f238c7988d@gmx.net>
 <b9afd836-613a-dc63-f77b-f9a77d33acc4@gmail.com>
 <20191014221211.GR25745@shell.armlinux.org.uk>
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <524267e6-df8e-d884-aeef-1ed8700e4e58@gmail.com>
Date: Tue, 15 Oct 2019 21:38:22 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191014221211.GR25745@shell.armlinux.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_123832_838827_DBFB950B 
X-CRM114-Status: GOOD (  20.06  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hkallweit1[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hkallweit1[at]gmail.com)
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
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15.10.2019 00:12, Russell King - ARM Linux admin wrote:
> On Mon, Oct 14, 2019 at 10:20:15PM +0200, Heiner Kallweit wrote:
>> On 14.10.2019 21:51, Stefan Wahren wrote:
>>> [add more recipients]
>>>
>>> Am 14.10.19 um 21:25 schrieb Daniel Wagner:
>>>> Moving the phy_prepare_link() up in phy_connect_direct() ensures that
>>>> phydev->adjust_link is set when the phy_check_link_status() is called.
>>>>
>>>> diff --git a/drivers/net/phy/phy_device.c
>>>> b/drivers/net/phy/phy_device.c index 9d2bbb13293e..2a61812bcb0d 100644
>>>> --- a/drivers/net/phy/phy_device.c +++ b/drivers/net/phy/phy_device.c
>>>> @@ -951,11 +951,12 @@ int phy_connect_direct(struct net_device *dev,
>>>> struct phy_device *phydev, if (!dev) return -EINVAL;
>>>>
>>>> +       phy_prepare_link(phydev, handler);
>>>> +
>>>>         rc = phy_attach_direct(dev, phydev, phydev->dev_flags, interface);
>>>>         if (rc)
>>
>> If phy_attach_direct() fails we may have to reset phydev->adjust_link to NULL,
>> as we do in phy_disconnect(). Apart from that change looks good to me.
> 
> Sorry, but it doesn't look good to me.
> 
> I think there's a deeper question here - why is the phy state machine
> trying to call the link change function during attach?
After your comment I had a closer look at the lm78xx driver and few things
look suspicious:

- lan78xx_phy_init() (incl. the call to phy_connect_direct()) is called
  after register_netdev(). This may cause races.

- The following is wrong, irq = 0 doesn't mean polling.
  PHY_POLL is defined as -1. Also in case of irq = 0 phy_interrupt_is_valid()
  returns true.

	/* if phyirq is not set, use polling mode in phylib */
	if (dev->domain_data.phyirq > 0)
		phydev->irq = dev->domain_data.phyirq;
	else
		phydev->irq = 0;

- Manually calling genphy_config_aneg() in lan78xx_phy_init() isn't
  needed, however this should not cause our problem.

Bugs in the network driver would also explain why the issue doesn't occur
on other systems. Once we know more about the actual root cause
maybe phylib can be extended to detect that situation and warn.

> At this point, the PHY hasn't been "started" so it shouldn't be
> doing that.
> 
> Note the documentation, specifically phy.rst's "Keeping Close Tabs on
> the PAL" section.  Drivers are at liberty to use phy_prepare_link()
> _after_ phy_attach(), which means there is a window for
> phydev->adjust_link to be NULL.  It should _not_ be called at this
> point.
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
