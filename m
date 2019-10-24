Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A00E3D92
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 22:50:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x0TvdQ7MqRuYDLCLoEoArVjqrAxFKTIw5IWZB049owc=; b=JTA+OzikUEP/Se
	zp2FCPXB323yJQsWyAn5UdWeNwsZk3XEFPuGYN6tC+xjeNYxWBeaF3oPOkXbh63+CoKGmfLEDa6qU
	6dyzTMN7MNdc4t8rmSm0aMYNUlAw6q0A8s9xKabBygrlC/EAtd5r7oW+UQKp6IGx9BEwZ98Dm8WCJ
	7Vo701lmUOet30+Mo6NlSl2RCsgylq8OsPGLxrc7iQac9Lt1dcOqUzJhe7MGO8cR+dbM7WS2rsyF8
	6KME46hilsFqCxoYpYMkcNzNLveQyP+UAU+fkrksGG/z1O2HhMeTdbHMgQ2YcEHn5J9KJ/mwMrRKa
	WmYsqabQeR/JAe1nMm8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNk3s-0001Qy-GY; Thu, 24 Oct 2019 20:50:24 +0000
Received: from smtp10.smtpout.orange.fr ([80.12.242.132]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNk3c-0000Tj-3r
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 20:50:10 +0000
Received: from belgarion ([90.76.41.223]) by mwinf5d87 with ME
 id HYps210044otT8A03Ypz5w; Thu, 24 Oct 2019 22:50:03 +0200
X-ME-Helo: belgarion
X-ME-Auth: amFyem1pay5yb2JlcnRAb3JhbmdlLmZy
X-ME-Date: Thu, 24 Oct 2019 22:50:03 +0200
X-ME-IP: 90.76.41.223
From: Robert Jarzmik <robert.jarzmik@free.fr>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 00/46] ARM: pxa: towards multiplatform support
References: <20191018154052.1276506-1-arnd@arndb.de>
 <87v9slg9k5.fsf@belgarion.home>
 <CAK8P3a1JDtHsOW=iaxEycbJ4TBkR9MHUyDMeJnwxCtb=tefnBQ@mail.gmail.com>
 <CAK8P3a0376Anmoc8VWXcEBg+z2B+1vcxJoywYYROBQNxpVmZuA@mail.gmail.com>
 <87r239f2g8.fsf@belgarion.home>
X-URL: http://belgarath.falguerolles.org/
Date: Thu, 24 Oct 2019 22:49:51 +0200
In-Reply-To: <87r239f2g8.fsf@belgarion.home> (Robert Jarzmik's message of
 "Sat, 19 Oct 2019 12:35:03 +0200")
Message-ID: <87eez1rhqo.fsf@belgarion.home>
User-Agent: Gnus/5.130008 (Ma Gnus v0.8) Emacs/26 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_135008_481368_059E9416 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.132 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.132 listed in wl.mailspike.net]
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robert.jarzmik[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rtc@vger.kernel.org,
 Linux Fbdev development list <linux-fbdev@vger.kernel.org>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, USB list <linux-usb@vger.kernel.org>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, IDE-ML <linux-ide@vger.kernel.org>,
 linux-mtd <linux-mtd@lists.infradead.org>, Daniel Mack <daniel@zonque.org>,
 linux-leds@vger.kernel.org,
 "open list:HID CORE LAYER" <linux-input@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Robert Jarzmik <robert.jarzmik@free.fr> writes:

>>> I've now pushed it to
>>>
>>> git://git.kernel.org:/pub/scm/linux/kernel/git/arnd/playground.git
>>> pxa-multiplatform
>>
>> Sorry for the duplication, I had some problems with email configuration
>> so my reply got rejected, let's see if it goes through this time.
> I have it now, thanks, I'll test and review as soon as I can.
>
> Cheers.

Ok Arnd, I have a preliminary test report.

I tested only the pxa27x (mioa701), which happens to have a lot of drivers, and
only the platform_data flavor (ie. no device-tree test yet). Apart a panic in
the regulator framework (which is a known issue [1]), your version seems
equivalent so far in terms of runtime to Linux 5.4-rc3).

The sound and RTC seem broken, but not by you ...

I'll continue the test onwards for pxa3xx and pxa2xx when I'll gather a bit of
time, and try to review as well the mach-pxa part.

Cheers.

-- 
Robert

[1] https://lore.kernel.org/patchwork/patch/1130436/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
