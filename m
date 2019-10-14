Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8E2D6A73
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 21:57:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yWRxWrCmLYHg338jWMQxjvf7/1N1t8szVVERYN/3Fak=; b=pdkaStzCJINnsW
	/9F0Glhq9TK/KnvjeoHs3sMxjVyVNdMihfUa+hSXfOrXzkiClEu7d2geTu0Tp3dKbWqYlUUPQOgze
	php/umYpyx8Z2ngyYOmi432LJZk44H3uh4fXPbDaFbCv3ohF2ZCFNcijFIv7Si7V1Yxy3Mg7lz/a2
	UIbQjq4uGrVh2u6Dg7RQnTrZ8IeZcTdl57Vd3R086YqLwFVzLtAoyQZR6qM0cgEnec4z0av1xftCE
	iudPDTM1wLfuL+PCWWL3XNJBV71UJ9kDXSiWn9zdEQzJwqfhCvnGH1i0u8BzCzOhZsr55BfNG50+n
	2bD5RvkJjhdUN79hG3ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK6Sj-0005tD-C6; Mon, 14 Oct 2019 19:57:01 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK6SV-0005s7-Jw; Mon, 14 Oct 2019 19:56:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1571082692;
 bh=Y5igX5hM4djlJOytXHHgXEoCTCqTk5mnFb6UVSCd1h8=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=MlvJuysrZF8FTKWBUNzlIeCXDVbRZ3rotEK0L91nevZGT/ys7PN6/NwJseFEb8yOR
 2CTJmKA2jI9BLxpu1H4NZ29vjk8H02VO5bjPRAeK7xvMXYwaUqzBCjJ2LlEnYOyqao
 uhCT01n/rjTTiqmqOIxJIERb6du7rSXSWaJgMXnQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.112]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MQe9s-1ifTFa2qyE-00NfK1; Mon, 14
 Oct 2019 21:51:32 +0200
Subject: Re: lan78xx and phy_state_machine
To: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
References: <20191014140604.iddhmg5ckqhzlbkw@beryllium.lan>
 <20191014163004.GP25745@shell.armlinux.org.uk>
 <20191014192529.z7c5x6hzixxeplvw@beryllium.lan>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <25cfc92d-f72b-d195-71b1-f5f238c7988d@gmx.net>
Date: Mon, 14 Oct 2019 21:51:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191014192529.z7c5x6hzixxeplvw@beryllium.lan>
Content-Language: en-US
X-Provags-ID: V03:K1:KhWpe5vytOT1yOYuJgf6j0RJfHwIaadx2ie96PDTExWMpgUyJyp
 Ysb5ZE9tonrP1/8sjsGnJJ0f9KSwEIq9YIIknrglbvR43hHcyaLy88Nn819Wje1ignXmbho
 5FdKt6ENUTXtBVdVMm3/oWPzmw4ugl7Ipn3QZ6QIfeJH4LluTAczTUuoU83jyNy/xlxwrXN
 +ccThxeBseApyZe4oLIZg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZJxRnKYKkL4=:TThLYJvjThvWnnIvBxGHTZ
 uRJOw6MilpZy1iPJFyFCmBN54Iv/1uydUEACb53douaeMgqeMvEO1yNuLOIuV4y7CQ2OF538J
 QBlBTnis6ULCe2O5671otVLQgLwlq3/0D2irv2dtZskESdQhEnsiQwJnVJNFG5HGqFJfUXyOm
 +6nI/ME1W43f1G46oBzV3VYvT1P89MUVGh3+uJ3K5cQ07qTfkgCPEC8Y2/oRrnipnIdLaCNlk
 +YkG2Ba+M3VHkjpcZcYkfOqR63XP35xFrK8JDGsQOmotOaejars2OaYZn5k6wflKxt/SfYwXs
 u5a2/m4bzmczN+9+dBOKH+5RSWuF9OQ1l78JR3JCIeJ0AKEZTNHHw5L9yh7FanYXljoV9nIsT
 QLfXxclfYRUdbvlJx/no323+xstInoHGl+IQYfLZFbOGXOLR0aWI08Rzs3KXZ/684ElZwGrxb
 sop2HCIvr5YEEUJaLgLlMS/xBonR4XDGMrGU7DJ/9mMtazx4huR0483oUavWDUHAhrw+nHNEi
 GcCbQskHXaVsrHmHcQw17or4+ynLQwZIaWyZnQDiELBQhpdjNNcEwAfvdC69pEyXQ3TMSe6gV
 RC7Lf5K5VNJAV/dyjwN8vnbpGFw6TVcp2EGVX6nZBaj37C+/TOdX1ZUhIQCAlwQQurHkuOX1n
 H2uiKPHX0/r9rsQJ8SdmavxX9bi8mfJBe5fz3VHNaO6nmpJaS2iRKcll2IMhrOxv6oX54UrGV
 1YBZoDSyTN1w0V4sSRP0G4afQ/p8NseuwgdywgYxW/sPgvDHGJy9dgQu6ykercXFg/F/R9rTl
 vSfWsGMx3BxHlGW7jEZe87qZndf26hdeo/q+4ZwBu+KOnYAObii27H157eRVKWCfAb/+Ojqrp
 MuVFUBfTVIIw4f75cVGPvdztfRjJ/krF36HmuumX+ipRPN8R1ekfsSWwpbv/8ygXc3E0p5I3P
 hjxraB0brq0/3gucAqvF0tT/e6gCp73zTjJSKpZOCOVWfbqBErYM4kE/b1f1ByqVD8hVgvuGr
 1tszEulUhpjsxQH7BNAD8sYBUav+qBAnt35awmrJ1cvbhatQMvzHligOFua0AhgP+X6Smlqy5
 njGGIN0W0JrqpriFrMHvdO7j0A/QwlM3gZin1tz0zuBUN8/rrIwrSY1Kw1RD30cjQ++7QZhrg
 6DZBAnuR6zafLlK6wywqarRs9gH6MvkkInzUQYCm5RBCepy9sxQUZff6cvDSa+tJCk1jcBjxR
 EKbIa4ODvha71IEQVhRccRdL1vRVCIsigVL4L/zTxkkCNy4slK7infl6IbUg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_125647_990907_62EB2C46 
X-CRM114-Status: GOOD (  19.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
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

[add more recipients]

Am 14.10.19 um 21:25 schrieb Daniel Wagner:
> On Mon, Oct 14, 2019 at 05:30:04PM +0100, Russell King - ARM Linux admin wrote:
>> On Mon, Oct 14, 2019 at 04:06:04PM +0200, Daniel Wagner wrote:
>>> Hi,
>>>
>>> I've trying to boot a RPi 3 Model B+ in 64 bit mode. While I can get
>>> my configuratin booting with v5.2.20, the current kernel v5.3.6 hangs
>>> when initializing the eth interface.
>>>
>>> Is this a know issue? Some configuration issues?
>> I don't see any successfully probed ethernet devices in the boot log, so
>> I've no idea which of the multitude of ethernet drivers to look at.  I
>> thought maybe I could look at the DT, but I've no idea where
>> "arm/bcm2837-rpi-3-b-plus.dts" is located, included by
>> arch/arm64/boot/dts/broadcom/bcm2837-rpi-3-b-plus.dts.
> Sorry about being so terse. I thought, the RPi devices are well known. My bad.
> Anyway, the kernel reports that is the lan78xx driver.
>
> ls -1 /sys/class/net/ | grep -v lo | xargs -n1 -I{} bash -c 'echo -n {} :" " ; basename `readlink -f /sys/class/net/{}/device/driver`'
> eth0 : lan78xx
>
>> The oops is because the PHY state machine has been started, but there
>> is no phydev->adjust_link set.  Can't say much more than that without
>> knowing what the driver is doing.
> This was a good tip! After a few printks I figured out what is happening.
>
> phy_connect_direct()
>    phy_attach_direct()
>      workqueue
>        phy_check_link_status()
>          phy_link_change
>
>
> Moving the phy_prepare_link() up in phy_connect_direct() ensures that
> phydev->adjust_link is set when the phy_check_link_status() is called.
>
> diff --git a/drivers/net/phy/phy_device.c
> b/drivers/net/phy/phy_device.c index 9d2bbb13293e..2a61812bcb0d 100644
> --- a/drivers/net/phy/phy_device.c +++ b/drivers/net/phy/phy_device.c
> @@ -951,11 +951,12 @@ int phy_connect_direct(struct net_device *dev,
> struct phy_device *phydev, if (!dev) return -EINVAL;
>
> +       phy_prepare_link(phydev, handler);
> +
>         rc = phy_attach_direct(dev, phydev, phydev->dev_flags, interface);
>         if (rc)
>                 return rc;
>
> -       phy_prepare_link(phydev, handler);
>         if (phy_interrupt_is_valid(phydev))
>                 phy_request_interrupt(phydev);
>
> _______________________________________________
> linux-rpi-kernel mailing list
> linux-rpi-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
