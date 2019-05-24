Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 114072A0A6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 23:49:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:In-Reply-To:
	MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uXUS0S51x5iNPGLPtiWjs11vl/JDyfbuR2atNS15SkU=; b=rYhdya9KPOgAGEuu+2MRm4eAZ
	GunEmZiL7+v+3PfAw1+xanrVLtu4SJB9b6eXm3JTv4uAQUvQ+McFmQGganvf5QJQqLNlq9RGF8/xQ
	shUKVVTUhKOilC6OUmEGkDBK000LDmsnBwADiO38a5MquJeFR1+jrU0mT90m9uTEqjcFcI7OD24N8
	E0mihMytKLQqnJejwZIJGbI/cGA5sUIDDelmkmoP73paKmxcFBZCbBP1WVpHv1OL+l5Xe7EMJ0Ec2
	r6Ryn1XSQe4rqE/EuCJ5NQuB6n89V7Zq6ObHNiZRBZes95LtLDL6MW4CrvFD6ONcaweUfgUw/7/Fn
	+muoLjnsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUI43-0000Ge-Os; Fri, 24 May 2019 21:49:23 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUI3w-0000G9-J4
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 21:49:18 +0000
Received: by mail-lf1-x133.google.com with SMTP id m15so7545248lfh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 14:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language;
 bh=5RZEgcWxtjLzTQt4Sjotg0HjEBp2rH1aWvGkw6lbHAA=;
 b=UyKRuoYWEY3B/NaU/LF55YdCJWmSkzfdiMiGXer3EnvLiG70H9LpFep9ZZXBGw/qo2
 umUbBQI2tCJt1Yt5esXopJ9plvwoIqAnWBoI0Ho9sS3iSCfY9KLFXhREC5WZmYwJGVD4
 2Gd3uk8eOKjDJG+g2u4VHeV+xpQs+JNT3SIz2yVEgvvgEnuzdt5ziEXDP+C557Rae4RQ
 kt56DS7WilfPjg+3kO33w8hoLSvn+rjjzgHAXNlinQVpmf649f5YnfcizQR16Y93INcM
 1Z1uCVmp+iwJJEmZN+J7+xwXmkiRcLLI70yUrNlyu/93SzrJN9fUVWCgS5qvJJ+t3Ajh
 K+gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=5RZEgcWxtjLzTQt4Sjotg0HjEBp2rH1aWvGkw6lbHAA=;
 b=V10hIO74E6U6mMAmocvqO1VqEJe4W/cUZZUU7/Feto/mOzCGMfiaSzICPbuv3YuikB
 v1xWOCXKJuQ+Pj7kEW9gsVq5/tiFnms0v6AMU4MZsCmclT0scbjnnqcRelxlrGF02k/9
 12ti8v7/Tbpd/OPskUUrbr4NXTKFyu+V+m53UMUvNekieCk8+vUWAh4zhXqjJdcgG0kD
 IuWbI+FF/Lc2pF9DbrcpJyjgFbAsD3s1GSREssO4EZSwFwW7GKH61yXB0N2VjFwM8HU5
 9QqSp2gVqxy078gnrGuUnWsIP7ChuXC+TbtGm1sDUsmQBRPOXGIFMbRApodLLbSschba
 fzHQ==
X-Gm-Message-State: APjAAAUI7j6ekSWJajWmxP+bOTqajxVgftt3RY7dCNBN6j73nvAuAhEz
 Iz9e6CWUsvN7kNzaJvO9aPY=
X-Google-Smtp-Source: APXvYqzQWSut3SUKyle7EToIRzBD80zXRDAWRI+RZTEpHXoehh6cX5C0mNGekwjkzi7UNA70rkCQLw==
X-Received: by 2002:a19:f60f:: with SMTP id x15mr1211201lfe.61.1558734554099; 
 Fri, 24 May 2019 14:49:14 -0700 (PDT)
Received: from [192.168.1.17] (bkq212.neoplus.adsl.tpnet.pl. [83.28.184.212])
 by smtp.gmail.com with ESMTPSA id
 v12sm721291ljv.49.2019.05.24.14.49.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 14:49:13 -0700 (PDT)
Subject: Re: Droid 4 backlight support
To: Pavel Machek <pavel@ucw.cz>, linux-leds@vger.kernel.org,
 linux-kernel@vger.kernel.org, dmurphy@ti.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-omap@vger.kernel.org, tony@atomide.com, sre@kernel.org,
 nekit1000@gmail.com, mpartap@gmx.net, merlijn@wizzup.org
References: <20190523220047.GA15523@amd>
From: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Message-ID: <9285721b-8060-df59-7cdb-9cdd00b843ca@gmail.com>
Date: Fri, 24 May 2019 23:49:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190523220047.GA15523@amd>
Content-Type: multipart/mixed; boundary="------------CA1046244CA7FB683BBA048E"
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_144916_633664_80BDD07C 
X-CRM114-Status: GOOD (  18.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:133 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jacek.anaszewski[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a multi-part message in MIME format.
--------------CA1046244CA7FB683BBA048E
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 5/24/19 12:00 AM, Pavel Machek wrote:
> Hi!
> 
> Good news .. we have driver for backlight in mainline, AFAICT.
> 
> Bad news .. it is called "lm3532::backlight" or something like that. I
> guess we should switch to ":backlight" or something? It is quite
> important to do that before someone starts to use the ABI...
> 
> And now... we have the driver, but it is not connected to the
> backlight subsystem. I guess we could make the LED "default on" for
> now... but if there's better plan, let me know.

backlight trigger is added to fb_notifier_list
defined in drivers/video/fbdev/core/fb_notify.c.
Backlight subsystem is registered on the same notifications
in drivers/video/backlight.backlight.c.

So they are somehow related.

Regarding the LED class device name - when I tried to come up
with a description for each standardized LED function I realized
that in case of many functions it would be indeed very useful
to have devicename. For backlight LED it would be "associated
frame buffer device node name, e.g. fb0".

Attached is what I came up with, and I was going to send to the
list officially with the v5 of LED naming patch set.

-- 
Best regards,
Jacek Anaszewski

--------------CA1046244CA7FB683BBA048E
Content-Type: text/plain; charset=UTF-8;
 name="led-functions.txt"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="led-functions.txt"

This file presents standardized LED functions and their meaning.

Each LED function is described using below template:

- LED function name
    NDEV : <function meaning when LED devicename section is absent>
    DEV  : <function meaning when LED devicename section is present>
    DEVICENAME : <expected LED devicename for DEV case>
    TRIGGER: <matching LED trigger>

/* LED functions with corresponding trigger support */

- activity
    NDEV : system activity
    DEV  : n/a
    TRIGGER : "activity"

- backlight
    NDEV : n/a
    DEV  : backlight of a frame buffer device
    DEVICENAME : associated frame buffer device, e.g. fb0
    TRIGGER: "backlight"

- capslock
    NDEV : n/a
    DEV  : keyboard capslock state related to the particular input device
    DEVICENAME : associated input device, e.g. input1
    TRIGGER : "kbd-capslock"

- disk
    NDEV : rw activity on any disk in the system
    DEV  : rw activity on particular disk
    DEVICENAME : associated disk, e.g.: hda, sdb
    TRIGGER : "disk-activity", applies only to NDEV case

- disk-read
    NDEV : read activity on any disk in the system
    DEV  : read activity on particular disk
    DEVICENAME : associted disk, e.g.: hda, sdb
    TRIGGER : "disk-read", applies only to NDEV case

- disk-write
    NDEV : write activity on any disk in the system
    DEV  : write activity on particular disk
    DEVICENAME : associated disk, .e.g" hda, sdb
    TRIGGER : "disk-write", applies only to NDEV case

- flash
    NDEV : flash LED (if there is single available on the platform)
    DEV  : flash LED related to the particular video device
    DEVICENAME : associated video device, e.g. v4l2-subdev3
    TRIGGER : "flash"; this LED can be also controlled by v4l2-flash framework

- flash-front
    NDEV : n/a
    DEV  : front flash LED related to the particular video device
    DEVICENAME : associated video device, e.g. v4l2-subdev3
    TRIGGER : "flash"; this LED can be also controlled by v4l2-flash framework

- flash-rear
    NDEV : n/a
    DEV  : rear flash LED related to the particular video device
    DEVICENAME : associated video device, e.g. v4l2-subdev3
    TRIGGER : "flash"; this LED can be also controlled by v4l2-flash framework

- heartbeat
    NDEV : cpu load average expressed as heartbeat-fashion blink frequency
    DEV  : n/a
    TRIGGER : "heartbeat"

- lan
    NDEV : n/a
    DEV  : network traffic on selected network device
    DEVICENAME : associated phy, e.g. phy1
    TRIGGER : "netdev"

- micmute
    NDEV : platfrom microphone input mute state
    DEV  : mute state of a microphone belonging to the particular device
    DEVICENAME : associated audio device
    TRIGGER : "audio-micmute"

- mtd
    NDEV : rw actvity on any mtd device in the system
    DEV  : rw actvity on particular mtd device
    DEVICENAME : associated mtd device, e.g mtdN
    TRIGGER : "mtd"

- mute
    NDEV : platform audio output mute state
    DEV  : mute state of particular audio device output
    DEVICENAME : associated audio device
    TRIGGER : "audio-mute"

- numlock
    NDEV : n/a
    DEV  : keyboard numlock state related to the particular input device
    DEVICENAME : associated input device, e.g. input1
    TRIGGER : "kbd-numlock"

- panic
    NDEV : signals kernel panic
    DEV  : n/a
    TRIGGER : "panic"

- scrolllock
    NDEV : n/a
    DEV  : keyboard scrollock state related to the particular input device
    DEVICENAME : associated input device, e.g. input1
    TRIGGER : "kbd-scrolllock"

- torch
    NDEV : torch LED (if there is single available on the platform)
    DEV  : torch LED related to the particular video device
    DEVICENAME : associated video device, e.g. video1, v4l2-subdev3
    TRIGGER : "torch"; this LED can be also controlled by v4l2-flash framework

- usb
    NDEV : activity on any USB port
    DEV  : activity on a particular USB port
    DEVICENAME: associated USB device identifier
    TRIGGER : "usbport"

/* LED functions without corresponding trigger support */

- alarm
    NDEV : system wide alarm
    DEV  : n/a

- bluetooth
    NDEV : activity on platform bluetooth adapter
    DEV  : activity on bluetooth adapter related to the particular device
    DEVICENAME : associated device

- boot
    NDEV : when lit indicates system boot
    DEV  : n/a

- charging
    NDEV : battery charging status
    DEV  : n/a

- debug
    NDEV : signals if device runs in debug mode
    DEV  : n/a

- disk-err
    NDEV : failure on any disk in the system
    DEV  : failure on particular disk
    DEVICENAME : associted disk, e.g.: hda, sdb

- fault
    NDEV : general system fault
    DEV  : fault on particular system device
    DEVICENAME : related device name

- indicator
    NDEV : signals if platform camera sensor is active
    DEV  : signals if camera sensor related to the particular video device is active
    DEVICENAME : associated video device, e.g.: v4l2-subdev3

- kbd_backlight	- keyboard backlight
    NDEV : n/a
    DEV  : backlight state related to the particular input device
    DEVICENAME : associated input device, e.g. input1

- mail
    NDEV : signals a new massage in mailbox
    DEV  : n/a

- programming
    NDEV : platform firmware update is in progress
    DEV  : n/a

- power
    NDEV : power plug presence indicator
    DEV  : n/a

- rx
    NDEV : n/a
    DEV  : activity on rx line of serial port related to the particular tty device
    DEVICENAME: associated tty device, e.g.: tty1, ttyUSB2

- sd
    NDEV : n/a
    DEV  : activity on sd card related to the particular device
    DEVICENAME: associated disk, e.g. sdb

- sleep
    NDEV : signals any variant of system hibernation or suspend state
    DEV  : n/a

- standby
    NDEV : device standby status
    DEV  : n/a

- status
    NDEV : system wide status LED
    DEV  : n/a

- system
    NDEV : system is fully operating
    DEV  : n/a

- tx
    NDEV : n/a
    DEV  : activity on tx line of serial port related to the particular tty device
    DEVICENAME: associated tty device, e.g.: tty1, ttyUSB2

- wan
    NDEV : activity on any WAN device
    DEV  : activity on a particular WAN device
    DEVICENAME: associated WAN device identifier

- wlan
    NDEV : activity on any wlan device
    DEV  : activity on a particular wlan device
    DEVICENAME: associated wlan device identifier

- wps
    NDEV : n/a
    DEV  : wps functionality activation state related to the particular device
    DEVICENAME : associated device name

--------------CA1046244CA7FB683BBA048E
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--------------CA1046244CA7FB683BBA048E--

