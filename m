Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3876D19826C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 19:33:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYTNA6gy+LSj1p5vZ2fP3zhiw/R19WbJoa7kk9mjkjI=; b=lvN5Gw62Zuz3GJ
	MtUYjINHkH6CY7on1+ehm7ZhdgAMhwpQ3hK7lGSMUkr4GgzxQUu4/oQBmchKjYctcbfPKyM3uB5xH
	7hOtLA7gpGcH1jrOYrBnyFGwJTwq06UYIW68xZ9CN0bj3MJhFi25p3nBUJybwQnLRlyv7Y9gS764L
	B5EVqQXF0GkcKZTenVcz+8OdL6yu6REqtFgrTv97KXvJasXMj2T8G1R0vR4OTcncKvh9d/VJDWWbX
	BgehA2TjQYeQmnq1tSmbXDa+fmq+YVHV0YXC9KCf8BejYQqtctOrdzV4n4hq8wUsPlfgBM9uRGm6E
	NQCYbc3ffLCwcWtXeFQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIyHo-0000TL-JR; Mon, 30 Mar 2020 17:33:20 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIyHg-0000Sq-Cg
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 17:33:13 +0000
Received: by mail-wr1-x443.google.com with SMTP id d5so22780025wrn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 10:33:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=WL4uSfgqnRqNiEwa4Jbu09mlOBbq2UlsDWTsUnT3Ij8=;
 b=hlju+egK8JkjHnLTzKQOudBFrhlVAKZebr/I5Wopx8BOr7YhguyEo/raqIgEUaw95/
 nF8lzwMtqauHIZoUEEvNRXM8FmFv0YrTpnchkhPgkpBVD1ELVDvHaxUJAO7dlOs5AwZC
 FMXwGuEm5rE4zcnr9AFnBsSPFthKIHBUgAbiTbELWkfTfu0YoGLdp2tFiBEhfZEpaSfP
 dTbmdwtAVNyV+Bv8I8M8pY+pUFb6IRdaw70XL9ZwEGlr8dBcpTgjpeVm/Hjl7wxpuZWS
 VfsarTN5I1jVhtX35bJS4+xSjwGc6tf2aOc1UH0y783Rmet1aXZuZ4on0nr6DRjyEkDQ
 Jnvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=WL4uSfgqnRqNiEwa4Jbu09mlOBbq2UlsDWTsUnT3Ij8=;
 b=cwBvuH83PpnuKbeRz2SmlmkZSnZKlv5cL6lW/d4XZwoqpXhdkEz/AAd9g8ALPoo1GX
 glysPrirt8hLTabrngPTF/VoYYWo4JqknjOICsUWT6DMiJz3b2wSayxajS3EjFNiwYlk
 4kFAqgF0ySPtUV+XwQJrYybqNhqQ5EDOdEf0H7EIA8l3lnxDkRNGEo8+9D6i30E5WKDA
 OLmLP0PgwEV8JEBrg809cz+9//zbcYJvWLPbzOm0U75EvFrfGG/TyjYS/BiipIF7cp7L
 xLSRrYGEvJne/wYS/cVKNSe7YqheUkbHrykVrQP7Pri9ujLJHrSw/tD97hf+poavRyTu
 mLgQ==
X-Gm-Message-State: ANhLgQ2M7R2p5uBtEBu/b5h6U+o9MchE61zJmktApB+WwXmD37I8pwRT
 mraTBH4HjVhnrlaJXKkikhE=
X-Google-Smtp-Source: ADFU+vvEf+Uobddq8H6dPQE69QZ1nDX3PY9qv5NQJk6c5B1YmdX7jJH7sCeBYa33Lm3iTnBR9eYVnA==
X-Received: by 2002:adf:e403:: with SMTP id g3mr15218812wrm.333.1585589590287; 
 Mon, 30 Mar 2020 10:33:10 -0700 (PDT)
Received: from [10.230.3.19] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id r5sm308704wmr.15.2020.03.30.10.33.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Mar 2020 10:33:09 -0700 (PDT)
Subject: Re: [PATCH v2] ARM: imx: allow to disable board specific PHY fixups
To: Oleksij Rempel <o.rempel@pengutronix.de>, Andrew Lunn <andrew@lunn.ch>
References: <20200329110457.4113-1-o.rempel@pengutronix.de>
 <20200329150854.GA31812@lunn.ch>
 <20200330052611.2bgu7x4nmimf7pru@pengutronix.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <40209d08-4acb-75c5-1766-6d39bb826ff9@gmail.com>
Date: Mon, 30 Mar 2020 10:33:03 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200330052611.2bgu7x4nmimf7pru@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_103312_434649_DD76B226 
X-CRM114-Status: GOOD (  25.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: netdev@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-imx@nxp.com, kernel@pengutronix.de, David Jander <david@protonic.nl>,
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 3/29/2020 10:26 PM, Oleksij Rempel wrote:
> Hi Andrew,
> 
> On Sun, Mar 29, 2020 at 05:08:54PM +0200, Andrew Lunn wrote:
>> On Sun, Mar 29, 2020 at 01:04:57PM +0200, Oleksij Rempel wrote:
>>
>> Hi Oleksij
>>
>>> +config DEPRECATED_PHY_FIXUPS
>>> +	bool "Enable deprecated PHY fixups"
>>> +	default y
>>> +	---help---
>>> +	  In the early days it was common practice to configure PHYs by adding a
>>> +	  phy_register_fixup*() in the machine code. This practice turned out to
>>> +	  be potentially dangerous, because:
>>> +	  - it affects all PHYs in the system
>>> +	  - these register changes are usually not preserved during PHY reset
>>> +	    or suspend/resume cycle.
>>> +	  - it complicates debugging, since these configuration changes were not
>>> +	    done by the actual PHY driver.
>>> +	  This option allows to disable all fixups which are identified as
>>> +	  potentially harmful and give the developers a chance to implement the
>>> +	  proper configuration via the device tree (e.g.: phy-mode) and/or the
>>> +	  related PHY drivers.
>>
>> This appears to be an IMX only problem. Everybody else seems to of got
>> this right. There is no need to bother everybody with this new
>> option. Please put this in arch/arm/mach-mxs/Kconfig and have IMX in
>> the name.
> 
> Actually, all fixups seems to do wring thing:
> arch/arm/mach-davinci/board-dm644x-evm.c:915:		phy_register_fixup_for_uid(LXT971_PHY_ID, LXT971_PHY_MASK,
> 
> Increased MII drive strength. Should be probably enabled by the PHY
> driver.
> 
> arch/arm/mach-imx/mach-imx6q.c:167:		phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK,
> arch/arm/mach-imx/mach-imx6q.c:169:		phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK,
> arch/arm/mach-imx/mach-imx6q.c:171:		phy_register_fixup_for_uid(PHY_ID_AR8031, 0xffffffef,
> arch/arm/mach-imx/mach-imx6q.c:173:		phy_register_fixup_for_uid(PHY_ID_AR8035, 0xffffffef,
> arch/arm/mach-imx/mach-imx6sx.c:40:		phy_register_fixup_for_uid(PHY_ID_AR8031, 0xffffffff,
> arch/arm/mach-imx/mach-imx6ul.c:47:		phy_register_fixup_for_uid(PHY_ID_KSZ8081, MICREL_PHY_ID_MASK,
> arch/arm/mach-imx/mach-imx7d.c:54:		phy_register_fixup_for_uid(PHY_ID_AR8031, 0xffffffff,
> arch/arm/mach-imx/mach-imx7d.c:56:		phy_register_fixup_for_uid(PHY_ID_BCM54220, 0xffffffff,
> arch/arm/mach-mxs/mach-mxs.c:262:		phy_register_fixup_for_uid(PHY_ID_KSZ8051, MICREL_PHY_ID_MASK,
> 
> Fix in some random manner PHY specific errata, enable clock output and
> configure the clock skew.
> 
> arch/arm/mach-orion5x/dns323-setup.c:645:		phy_register_fixup_for_uid(MARVELL_PHY_ID_88E1118,
> 
> Enable LED. Should be done in DT if supported.
> 
> arch/powerpc/platforms/85xx/mpc85xx_mds.c:305:		phy_register_fixup_for_id(phy_id, mpc8568_fixup_125_clock);
> arch/powerpc/platforms/85xx/mpc85xx_mds.c:306:		phy_register_fixup_for_id(phy_id, mpc8568_mds_phy_fixups);
> arch/powerpc/platforms/85xx/mpc85xx_mds.c:311:		phy_register_fixup_for_id(phy_id, mpc8568_mds_phy_fixups);
> 
> Fix in some random manner PHY specific errata, enable clock output and
> configure the clock skew.
> 
> drivers/net/ethernet/dnet.c:818:	err = phy_register_fixup_for_uid(0x01410cc0, 0xfffffff0,
> 
> Enable LED. Should be done in DT if supported.
> 
> drivers/net/usb/lan78xx.c:2071:		ret = phy_register_fixup_for_uid(PHY_KSZ9031RNX, 0xfffffff0,
> drivers/net/usb/lan78xx.c:2078:		ret = phy_register_fixup_for_uid(PHY_LAN8835, 0xfffffff0,
> 
> enable clock output and configure the clock skew.
> 
> As we can see, all of used fixups seem to be wrong. For example micrel
> PHY errata should be fixed in one place for all devices. Not only for
> some iMX6 SoC. I used this option for iMX, because i can test it.

"wrong" is a bit general without really trying to understand the history
of where this came from. Historically, those platforms were not DT
enabled for a while (except PPC) and there was no way to pass platform
specific to the PHY driver so the only way to key off specific
board/platform desired behavior was to register a PHY fixup.

There are also various configuration which are really policies (as in
policy vs. mechanism separation) for the board such as configuring LEDs
in a certain way etc. Very quickly you start putting more of that policy
into DT which is just frowned upon, unless there is a good abstraction
model whereby an Ethernet Device Tree node can also be a LED provider.

> 
>> There is no need to bother everybody with this new
>> option. Please put this in arch/arm/mach-mxs/Kconfig and have IMX in
>> the name.
> 
> A lot of work is needed to fix all of them. I just do not have enough
> time to do it.
> 
>> Having said that, i'm not sure this is the best solution. You cannot
>> build one kernel which runs on all machines.  Did you consider some
>> sort of DT property to disable these fixup? What other ideas did you
>> have before deciding on this solution?
> 
> As soon as all PHY driver support all needed bits used in this fixups,
> we can use drivers on top of fixups. Since changes made by fixups will
> be overwritten by PHY drivers any way. The Kconfig option is needed only for
> developers who has enough resource to investigate this issues and
> mainline needed changes.

We all know this is not going to happen, if people cared so much about
fixing such a problem, it would have been solved by now. If you do care
about IMX though, then please work on removing the fixups, but do not
introduce yet another config that you are guaranteed is going to be
turned on by default, thus creating another test matrix with no real value.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
