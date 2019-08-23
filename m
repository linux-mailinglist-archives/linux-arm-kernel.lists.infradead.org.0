Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C80D69B302
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 17:06:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rhvt/I7IzjhwaLceUdGqwr4+NiBZjtnclQFsapE2TPM=; b=o7iVyGQt/dMq3N
	Z4xPIPwQfsDx7aoqRUFwlXhI+kA6Vik5PUWWN2jlT78Fn1LWVhwPvUFXufTaaPRkaDnx5kiAFZGsh
	yo5UlZkfS/dVEoMHx3V//CtC6smIug2BIqE7C0ErRjDncu9MLMPCLut3yv/VBwGg+EXk4wVyKvsCo
	pvfFX605vXmqERTB9j5c4p2m1hinSdYbwHZCbQ6ywQeZZJaeTi+XkJWTKew0RCz0h/mnTfg2OYR2b
	6fKOlsHGslqY4H6aDepiDaI9DQXuZYS6N3T5xYCHjCGjhh9C0TcYxAMbdZTuESs93Pz5Tk2CymrwG
	uA5HhQa9iUQ8hNky/u7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1B9D-0001Rc-5n; Fri, 23 Aug 2019 15:06:39 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1B94-0001Pq-PR
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 15:06:32 +0000
Received: by mail-pf1-x444.google.com with SMTP id b24so6662911pfp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 08:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=br2IEBdfnW2qlqV7gg30Z/xwOIaLVKl9bGEeCZKa9NU=;
 b=siISpHlfibAjTzKXmzvMvdMERCB8h0biNAphsfX2uljz+Okx2iR9rML7xRX4aOLa45
 G2Hej+2b3/xvgrJGt6vMT5MM5nsOSJlENKdRtjHjvUJYWQAlFT+/8pulaatvnRMmo79z
 0vukJARO++UdwvA5MaHWvvNNJIPqDVj0WCKJPkAR+5MH3mym60HW3KXHiGIHzkv05VCZ
 0NxHuTPkQs6KXJ3UTB1TiigWz2Ng1xU/GS8zTf5yLSmcpn+KulnVCOObrJ61y9nmhV9L
 c4l+BHt6kJeYQPHrpEbAmDFvHFLQG3KJB8Tkyo6KKDqpKlSLiWT6xNYcDeeOa/3qsrCT
 BepQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=br2IEBdfnW2qlqV7gg30Z/xwOIaLVKl9bGEeCZKa9NU=;
 b=A3Xz4JUah38hQJ/lZCdqj/+YYkn6dg7uFWrc0NCbTd3coA548cvnnwIxN9F6J56xK9
 PE4eJvgBn75Xp0PVlNuFTQFifBKNnM/ROC8Z4A+1ufPDoEGE5oHMP3pEycfoGIHfR+Qg
 nWK1GlmboJKgoo87dhjaqJJ5iRWyfWSJ57WErvA9ixmy2sqIF8mBuObGMebPyw2vpuUF
 bt3lBzaaszAi8xPzbKgXeY1nFffmRsUu31/mmS3rRnnRsZLh4D+C6U96Ua1Z1X4R+jyw
 8WpHK2Z5Meeg1sNE3kRdQblBHqKNPD/NyAZvDzHoMr0zTkiWHEFfcGazHhqxESWk/XYO
 f21A==
X-Gm-Message-State: APjAAAX0RI6bWIkIQu49CLnNqt+bTQbaIYO1EjwhSKQ6BTsuPZiDLHPG
 6wAvJ8cyPwfcOk72Mx/9HUBCEW+pBRY=
X-Google-Smtp-Source: APXvYqzhBqSLYP5ApPK5mE0oG+RMyTUh1JqA9ZAmyyVrzxAloBECYA84RJ5XVFzKAvGUUyuOwLrT5w==
X-Received: by 2002:a17:90a:be07:: with SMTP id
 a7mr5731477pjs.88.1566572788803; 
 Fri, 23 Aug 2019 08:06:28 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:89d4:68d1:fc04:721])
 by smtp.gmail.com with ESMTPSA id fa14sm2699525pjb.12.2019.08.23.08.06.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 23 Aug 2019 08:06:27 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, ulf.hansson@linaro.org
Subject: Re: [PATCH 2/5] soc: amlogic: Add support for Everything-Else power
 domains controller
In-Reply-To: <0ac1cf30-1796-a549-e195-0f94c4a85993@baylibre.com>
References: <20190821114121.10430-1-narmstrong@baylibre.com>
 <20190821114121.10430-3-narmstrong@baylibre.com>
 <7hzhk25ct3.fsf@baylibre.com>
 <b6cfb770-76eb-00b1-e088-1a73b7978f33@baylibre.com>
 <7hzhk12b6m.fsf@baylibre.com>
 <0ac1cf30-1796-a549-e195-0f94c4a85993@baylibre.com>
Date: Fri, 23 Aug 2019 08:06:26 -0700
Message-ID: <7h36hr2a6l.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_080630_823794_2B789B0C 
X-CRM114-Status: GOOD (  18.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

[...]

>>> It's for legacy when VPU is initialized from vendor U-Boot, look at commit :
>>> 339cd0ea082287ea8e2b7e7159a5a33665a2cbe3 "soc: amlogic: meson-gx-pwrc-vpu: fix power-off when powered by bootloader"
>>>
>>>     In the case the VPU power domain has been powered on by the bootloader
>>>     and no driver are attached to this power domain, the genpd will power it
>>>     off after a certain amount of time, but the clocks hasn't been enabled
>>>     by the kernel itself and the power-off will trigger some faults.
>>>     This patch enable the clocks to have a coherent state for an eventual
>>>     poweroff and switches to the pm_domain_always_on_gov governor.
>> 
>> The key phrase there being "and no driver is attached".  Now that we
>> have a driver, it claims this domain so I don't think it will be
>> powered off:
>> 
>> # cat /sys/kernel/debug/pm_genpd/pm_genpd_summary 
>> domain                          status          slaves
>>     /device                                             runtime status
>> ----------------------------------------------------------------------
>> ETH                             on              
>>     /devices/platform/soc/ff3f0000.ethernet             unsupported
>> AUDIO                           off-0           
>> GE2D                            off-0           
>> PCI                             off-0           
>> USB                             on              
>>     /devices/platform/soc/ffe09000.usb                  active
>> NNA                             off-0           
>> VPU                             on              
>>     /devices/platform/soc/ff900000.vpu                  unsupported
>> 
>> In my tests with a framebuffer console (over HDMI), I don't see the
>> display being powered off.
>
> It's in the case where the driver is a module loaded by the post-initramfs
> system after the genpd timeout, or if the display driver is disabled.
>
> In the later I had some system failures when vendor u-boot enabled the
> display and genpd disabled the power domain later on.

OK, thanks for the explanation.  I get it now.

>> 
>>> I could set always-on governor only if the domain was already enabled,
>>> what do you think ?
>> 
>> I don't think that's necessary now that we have a driver.  We really
>> want to be able to power-down this domain when the display is not in
>> use, and if you use always_on, that will never happen.
>> 
>>> And seems I'm also missing the "This patch enable the clocks".
>> 
>> I'm not sure what patch you're referring to.
>
> It's also added in 339cd0ea082287ea8e2b7e7159a5a33665a2cbe3 "soc: amlogic: meson-gx-pwrc-vpu: fix power-off when powered by bootloader"
>
> I would like to keep the same behavior as meson-gx-pwrc-vpu, since it works fine
> and we debugged all the issues we got.

OK, that's fine with me.

We'll have to revist when we start using runtime PM enabled drviers and
want to power down the display IPs on idle, but that's fine to do later.

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
