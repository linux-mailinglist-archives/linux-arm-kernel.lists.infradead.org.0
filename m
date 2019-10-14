Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD882D6AB5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 22:20:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nMDi5v7mFHVZ5tTl1O4HYABAv9GKvrjfdFrMb0oSZaQ=; b=ovaH7pT5S3hTOm
	gTlMcYl+BKxIWgKBbkBKATY3gIPFNR/d3JDbT4OTTNiFgsrVMGZ2kvKPw075Evj4unteYmUo5l+ai
	goZjyNRwq5FCGWnexP5l8Ut8hJ5BA15j5xsXD8k2skFj+6lbQ5aItnQejMQVYK8weI4zVSMWuU+kZ
	XRcDxOTd8ABZDHiw5ZvUS4IVQDtwBtyG8oDzTaHkxCGS+FSSzZ0C09mzZjPBav9jT5fyBpAXqPXci
	jQNqQ6A9ejp2FH+tJZEe04pU4HhIEfpskm5H6co5bvIKm/zmrYU5RP0B5LfTwPr8VswGGYllT1SDZ
	cIL/+tZKZoUpRgYwfCNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK6pZ-0005oO-Bu; Mon, 14 Oct 2019 20:20:37 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK6pR-0005nW-BX; Mon, 14 Oct 2019 20:20:31 +0000
Received: by mail-wr1-x442.google.com with SMTP id z9so21131406wrl.11;
 Mon, 14 Oct 2019 13:20:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4pJ8h1KvG9GMPqRJCIBO4L84mDfYWc2RR4B52wfi9C0=;
 b=FpwwRgGjAc3xrZCrVPSRcgQlYoFdjvNTwhpUQlBalQ99gJJj4xzpTr6JxyglWveRx2
 a/vgpxi6EmvRuX8FYJRy9ICXJZbBO7+caNgbl8O7n5erU1jnIZM8ngttSsX6MV+WQP7R
 hiXH/Id8TdJsWgzsziV9jeSPB1020ICpXoLrPMohPH6T1nCUGLqhVYs9K7CcGNojMWb8
 t9oytQSRE3NUh5kooxGM+7nnb3itY7FkMv9hjXcGAwBo2kqrIR8ySIlAOkGoMMeY9jtN
 ry8PN1TVGWznE6pt7ALBdiWPXiyNlP9KMiMnmp7h21uKJSBrHv5GClsDmUYBdNMIe71a
 YdkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4pJ8h1KvG9GMPqRJCIBO4L84mDfYWc2RR4B52wfi9C0=;
 b=Dv8fL9zRhuMWAxmDw2DOURX8PHVIHhv3EY9XGOyA1XfKDzzhhH32qbzUmxRWGD5oBf
 cD1dsXs5vgb0pYKnVOZsi2/Nsc5yMbmG+0pDPmENSwmzlcIYEssGdP426M2MzkikQ7Jo
 C+va6LcXphK5WhRvh7su2yWGhNmobVUSVMkrgIUsqvd5OVCUOgMvZqsX3vDnNAVEdbIi
 1QOwWwiHXmv/B2IlPoD++weqJtdqjzMBX3jw6E/Nv0TY2Ubynh6G+O5hR9sWKemGwj7c
 PwUFNkSQa+Hvjp6/ZL6CSkMp2CeXIugUKy4JHCj5L9R8WyGxIBDlTduqjjlyhPIa5Ihm
 Drfw==
X-Gm-Message-State: APjAAAVfgQddJrVU3pCCEnSXIJZ79Myh4pb8BCL06idAIFgbQyrWPxde
 t2YWmU3oW8ZxpXXhEa2fXTE=
X-Google-Smtp-Source: APXvYqzSbq14INxUN4bj8YseI10o6NiB5w+YmbHKi06Q5p4i2P5FLL7Q6YMhWCWY6l9aZuAcACL+Vw==
X-Received: by 2002:adf:dc82:: with SMTP id r2mr5984223wrj.74.1571084424355;
 Mon, 14 Oct 2019 13:20:24 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f26:6400:ed5d:7e31:897c:be08?
 (p200300EA8F266400ED5D7E31897CBE08.dip0.t-ipconnect.de.
 [2003:ea:8f26:6400:ed5d:7e31:897c:be08])
 by smtp.googlemail.com with ESMTPSA id r2sm42492616wma.1.2019.10.14.13.20.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 14 Oct 2019 13:20:23 -0700 (PDT)
Subject: Re: lan78xx and phy_state_machine
To: Stefan Wahren <wahrenst@gmx.net>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>
References: <20191014140604.iddhmg5ckqhzlbkw@beryllium.lan>
 <20191014163004.GP25745@shell.armlinux.org.uk>
 <20191014192529.z7c5x6hzixxeplvw@beryllium.lan>
 <25cfc92d-f72b-d195-71b1-f5f238c7988d@gmx.net>
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <b9afd836-613a-dc63-f77b-f9a77d33acc4@gmail.com>
Date: Mon, 14 Oct 2019 22:20:15 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <25cfc92d-f72b-d195-71b1-f5f238c7988d@gmx.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_132029_456424_00FF0689 
X-CRM114-Status: GOOD (  18.34  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hkallweit1[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hkallweit1[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniel Wagner <dwagner@suse.de>, netdev@vger.kernel.org,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14.10.2019 21:51, Stefan Wahren wrote:
> [add more recipients]
> 
> Am 14.10.19 um 21:25 schrieb Daniel Wagner:
>> On Mon, Oct 14, 2019 at 05:30:04PM +0100, Russell King - ARM Linux admin wrote:
>>> On Mon, Oct 14, 2019 at 04:06:04PM +0200, Daniel Wagner wrote:
>>>> Hi,
>>>>
>>>> I've trying to boot a RPi 3 Model B+ in 64 bit mode. While I can get
>>>> my configuratin booting with v5.2.20, the current kernel v5.3.6 hangs
>>>> when initializing the eth interface.
>>>>
>>>> Is this a know issue? Some configuration issues?
>>> I don't see any successfully probed ethernet devices in the boot log, so
>>> I've no idea which of the multitude of ethernet drivers to look at.  I
>>> thought maybe I could look at the DT, but I've no idea where
>>> "arm/bcm2837-rpi-3-b-plus.dts" is located, included by
>>> arch/arm64/boot/dts/broadcom/bcm2837-rpi-3-b-plus.dts.
>> Sorry about being so terse. I thought, the RPi devices are well known. My bad.
>> Anyway, the kernel reports that is the lan78xx driver.
>>
>> ls -1 /sys/class/net/ | grep -v lo | xargs -n1 -I{} bash -c 'echo -n {} :" " ; basename `readlink -f /sys/class/net/{}/device/driver`'
>> eth0 : lan78xx
>>
>>> The oops is because the PHY state machine has been started, but there
>>> is no phydev->adjust_link set.  Can't say much more than that without
>>> knowing what the driver is doing.
>> This was a good tip! After a few printks I figured out what is happening.
>>
>> phy_connect_direct()
>>    phy_attach_direct()
>>      workqueue
>>        phy_check_link_status()
>>          phy_link_change
>>

Interesting is just what is special with your config that this issue
didn't occur yet on other systems.

>>
>> Moving the phy_prepare_link() up in phy_connect_direct() ensures that
>> phydev->adjust_link is set when the phy_check_link_status() is called.
>>
>> diff --git a/drivers/net/phy/phy_device.c
>> b/drivers/net/phy/phy_device.c index 9d2bbb13293e..2a61812bcb0d 100644
>> --- a/drivers/net/phy/phy_device.c +++ b/drivers/net/phy/phy_device.c
>> @@ -951,11 +951,12 @@ int phy_connect_direct(struct net_device *dev,
>> struct phy_device *phydev, if (!dev) return -EINVAL;
>>
>> +       phy_prepare_link(phydev, handler);
>> +
>>         rc = phy_attach_direct(dev, phydev, phydev->dev_flags, interface);
>>         if (rc)

If phy_attach_direct() fails we may have to reset phydev->adjust_link to NULL,
as we do in phy_disconnect(). Apart from that change looks good to me.

>>                 return rc;
>>
>> -       phy_prepare_link(phydev, handler);
>>         if (phy_interrupt_is_valid(phydev))
>>                 phy_request_interrupt(phydev);
>>
>> _______________________________________________
>> linux-rpi-kernel mailing list
>> linux-rpi-kernel@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
> 

Heiner

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
