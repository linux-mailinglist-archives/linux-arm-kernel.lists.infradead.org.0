Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A61421EFC25
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 17:06:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/d9PtacY7qF6zTw1NjiEEyUlkkvAT9ApXcXyBOUgZY=; b=H9j/9fIlN3UdpM
	3TI8cZqxh+1rdJjVbjmHRiVOIzIs0nHmJswT2xyz8YTWvN7wyQ5NtO3povaEg5ER4WLmXJJRY6B5T
	5xePiInlmJLery66pCzpRp5prsJo116xPW6tB7JJjKC7XTo1wwPzUdXeBk5/o4ZzlEKzAhxmnglqk
	B+4LKHe5nFIaTfDjItooG+saoYxFFMWRzD1+syve+WP4JoHwMrFI2rQ/Hud7SjkjzaZPzHyyjFSOI
	7WWN1UU3q3Jh/QMjf1dZ0LOsHKGzkkxWoF6OYfAVSJBSrYbrZVXHJbS1XLT+Kdi3VBy/G+HVr+Iwc
	OthPIWdl8tw++oaGDVHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhDuv-0003gW-3J; Fri, 05 Jun 2020 15:05:57 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhDuo-0003fU-2p
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 15:05:51 +0000
Received: by mail-pj1-x1042.google.com with SMTP id ne5so224787pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 08:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zl3uXlckh/ILLSJmP4ICOMWaZeDZ9A0z1FTiwzLjSyw=;
 b=FhMZXa0pqbczzolzAxUWZ6l/cPlMoh4ca88ZnP72F5OYEn3zDPmaVkLsEhS4wZ+pb0
 OpUlPrw60Tua/44wX2E7hmR3oq/UIlBkX6MCzdidGL3xYk4Tk8eeCL6xZHOKj9vNCrAg
 guhsG/zT5eSHPtpXuIhpIMM6uloPsYE3bXwLAHewQdvx6qHVnWyuxAWjQ1fz3ckzVPDS
 5pUVso6Z2RoHxEz39lci25KPw6abx1Zkuq+KXgPKXiTANRvNBOou8K8pTFA0bYezdf9z
 TzKSMnbwvC/WXnzd6T9MMZ40cgzcmMVsVtAsAsviiHakm4fgNulNY9awZsOEFrTAdlAl
 USFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=zl3uXlckh/ILLSJmP4ICOMWaZeDZ9A0z1FTiwzLjSyw=;
 b=fSrudNsBIAUiEU4mpLguDravObQiUWSn2ugLIwNMVkOC+721KHh2a8YCQ5ub35cLTt
 cxbFmlSG9ecZHdaa8mO7v6wnTh96L4A+0fDB/CoC5QRu0b7HNjtpUYpM/yZkG9CNu4a5
 1ZI3A6jW0rEkjOlWTY0l/x18C6DvnJqy+Ivu0bFPRllEBypBfoTFMWIbogixoetWBbRh
 lolGbSevUF78/XOiOrcc7OsFC+310RBFIwy6kf37Sma5djg05QmqKBOq9BBZCa+vYanO
 aWJn9KBxTK3sBRFaiYEUxTEG5U6MpVrJtxMc9staR80GhVDueRRszbgrJnZfeneW39yP
 3/9Q==
X-Gm-Message-State: AOAM533nN516XxJDD1fu45mTYnTl/oQoVMivu1u3/XjSKYl5EXABJNMp
 oE1FHOEXp4DFtZgaM5JybAg=
X-Google-Smtp-Source: ABdhPJyEI1zMv/msQyU+Ei4KhuaGEwq9i+HpH2+fhygN3bHJuK30LAKFw+2tG0snVq8JEO8lyyXIig==
X-Received: by 2002:a17:90a:20c2:: with SMTP id
 f60mr3704149pjg.29.1591369548704; 
 Fri, 05 Jun 2020 08:05:48 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id 5sm3155367pfc.143.2020.06.05.08.05.43
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 05 Jun 2020 08:05:44 -0700 (PDT)
Date: Fri, 5 Jun 2020 08:05:42 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH v4 04/11] watchdog: add support for sl28cpld watchdog
Message-ID: <20200605150542.GA254229@roeck-us.net>
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-5-michael@walle.cc>
 <CAHp75VdeD6zDc--R4NPHsiqQerzfNGwUikLN+WHMiZZVsQ8QSA@mail.gmail.com>
 <8f042c2442852c29519c381833f3d289@walle.cc>
 <CAHp75VfY0BD4CFu6Thx1wE-U0Zt1q8uTOLxkWTMdFk0MBuhYFQ@mail.gmail.com>
 <871a4990-5b94-3a17-01d4-74998375f08b@roeck-us.net>
 <20200605140911.GO2428291@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200605140911.GO2428291@smile.fi.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_080550_145516_0E6EB95E 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-pwm@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 linux-watchdog@vger.kernel.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-hwmon@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Michael Walle <michael@walle.cc>,
 Mark Brown <broonie@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 05, 2020 at 05:09:11PM +0300, Andy Shevchenko wrote:
> On Fri, Jun 05, 2020 at 06:52:00AM -0700, Guenter Roeck wrote:
> > On 6/5/20 3:50 AM, Andy Shevchenko wrote:
> > > On Fri, Jun 5, 2020 at 1:24 PM Michael Walle <michael@walle.cc> wrote:
> > >> Am 2020-06-05 10:14, schrieb Andy Shevchenko:
> > >>> On Fri, Jun 5, 2020 at 12:14 AM Michael Walle <michael@walle.cc> wrote:
> 
> ...
> 
> > >>>> +static bool nowayout = WATCHDOG_NOWAYOUT;
> > >>>> +module_param(nowayout, bool, 0);
> > >>>> +MODULE_PARM_DESC(nowayout, "Watchdog cannot be stopped once started
> > >>>> (default="
> > >>>> +                               __MODULE_STRING(WATCHDOG_NOWAYOUT)
> > >>>> ")");
> > >>>> +
> > >>>> +static int timeout;
> > >>>> +module_param(timeout, int, 0);
> > >>>> +MODULE_PARM_DESC(timeout, "Initial watchdog timeout in seconds");
> > >>>
> > >>> Guenter ACKed this, but I'm wondering why we still need module
> > >>> parameters...
> > >>
> > >> How would a user change the nowayout or the timeout? For the latter
> > >> there is
> > >> a device tree entry, but thats not easy changable by the user.
> > > 
> > > Yes, it's more question to VIm and Guenter than to you.
> > > 
> > 
> > Has support for providing module parameters with the kernel command line
> > been discontinued/deprecated, or did it run out of favor ? Sorry if I
> > missed that.
> 
> Latter according to Greg KH. One of the (plenty) examples [1].
> 
> [1]: https://www.mail-archive.com/driverdev-devel@linuxdriverproject.org/msg96495.html
> 
What is the suggested replacement ?

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
