Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFDEAC2C16
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 04:54:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6w9ZLnqA8EZZ+Y7YlKYU4PzmuoXNlpteB8Hgis7QfMU=; b=Xoy4B2HgpCmo/t
	ugXS/4soBbWKOFUEv/FdUEv0p3lS9AN+VX4qnMb9GH+CfoExM3Cppar0a/WijD+JJKIp6QDI6yF++
	6J63v+ciHxcdYQhFjaoSfeaU07gDK22kX6OehGF9iQviGsFl5RVxB9jmxjHPF+JbVfrojmxlVPoty
	fJyrqM9TKeQoMH3aZJnWsjZOY+LQpIX+o7amaJS4CSOvWzwyJpwX1QqKlTeWb9EhEtSicv3jrEGkf
	GL5++b8xC+PNNm3M7CcB25Yo6BLyxxgsmhaPyk46EKP7hTwnMmm49AsFQVmphmuLrt5+Q9I7/XtOe
	+KK2w37W+iuD7XLOFTLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF8JC-0001yV-86; Tue, 01 Oct 2019 02:54:38 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF8J3-0001y8-FJ
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 02:54:30 +0000
Received: by mail-pf1-x443.google.com with SMTP id q21so6838106pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 19:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=sxdXfiuNl2yFvJ36iDY38onydEuHSgA4zj8cf4BOews=;
 b=WvJzPJQ4MYk59SYfnZ7pFb5nQLIKzWCZoHIr570P6ZkrSfBi7YIQrtO7bVjG7iOzK9
 BBbTlJV9h1dsHl2dsEOZ5l8jcawQ2ktzMNogtNU14kUrJzxKKo1LwA/GIdcTJTVuZH3Z
 W1IGGYIzyyvMOXGW96LgoUgv6hP24vuuiOOKAn6+j+vR1vD5ydjA2/wa3pbRoTwrQp2S
 1YlEodj+7RI5QCpw1uaOyLAqkTlKggU21qOrC0oIJuGOvgmupfh7tMG1Qr1adBaUHCp7
 Cd0cpGr98ddYeeFpPl5nWq2/y4JPiYdMXoGR/7hfinHVKJ4wPcJQx1kuhQ8srAqHKIyj
 WZow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sxdXfiuNl2yFvJ36iDY38onydEuHSgA4zj8cf4BOews=;
 b=QprLTWAJF3Zq6+Ll4up7O6BRTEEws7FYpiFQ4/eshiGtpPV4Yt4RPoHIELGx+WR/R5
 rmxFXgdoNjL8PcV0hqZDH+BzrLixyvGXd1OoAoP8uaCpeb60N3xLAMHlc2NEEkNRt3Xq
 XBDxmMTGByqo3nryQ+gTkUElOmUr6NE2MsAzVFyIbtFc6kmz3eNKTGc3jW8pwUJmP89i
 vFhlpA//O2al2ntwTamUxHO84wAnliqGXSndkSLO5jd3+XVZSCAhx6Fq/rMZWXz3nbGZ
 Vi796GixkXvTzlcPe7v50Tx5Qnnl2EQgIVfvIEYYqflrAQ4XJTtAs41bTE0aKje00rO2
 ZCrg==
X-Gm-Message-State: APjAAAXYhrcaM0qKF0YTrhRqnwn9K/sjO/JswQ5I22YyWCFwusX0/Ea7
 4oXZxBTzU2pI4xLw34PBtPk=
X-Google-Smtp-Source: APXvYqziA8ujixxzDMRL/C5XU0l8zVQ8tUDosVuZXzauorvclA9c5mKPQjTamNyOJXRQJ+YAD+lh/Q==
X-Received: by 2002:a62:4dc5:: with SMTP id a188mr234181pfb.250.1569898468601; 
 Mon, 30 Sep 2019 19:54:28 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 d76sm18347397pga.80.2019.09.30.19.54.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Sep 2019 19:54:28 -0700 (PDT)
Subject: Re: Problem sharing interrupts between gpioa and uart0 on Broadcom
 Hurricane 2 (iProc)
To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "rayagonda.kokatanur@broadcom.com" <rayagonda.kokatanur@broadcom.com>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "li.jin@broadcom.com" <li.jin@broadcom.com>,
 "sbranden@broadcom.com" <sbranden@broadcom.com>,
 "rjui@broadcom.com" <rjui@broadcom.com>
References: <32c3d1dfe61a656e3250438d887e5ba91bd880d0.camel@alliedtelesis.co.nz>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <d72a965a-e4e1-ba5d-cd62-b31939e75e44@gmail.com>
Date: Mon, 30 Sep 2019 19:54:28 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <32c3d1dfe61a656e3250438d887e5ba91bd880d0.camel@alliedtelesis.co.nz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_195429_516480_B663836D 
X-CRM114-Status: GOOD (  21.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 9/30/2019 7:33 PM, Chris Packham wrote:
> Hi,
> 
> We have a platform using the BCM53344 integrated switch/CPU. This is
> part of the Hurricane 2 (technically Wolfhound) family of devices.
> 
> Currently we're using pieces of Broadcom's "iProc" SDK based on an out
> of date kernel and we'd very much like to be running as close to
> upstream as possible. The fact that the Ubiquiti UniFi Switch 8 is
> upstream gives me some hope.

FYI, I could not get enough information from the iProc SDK to port (or
not) the clock driver, so if nothing else, that is an area that may
require immediate work (though sometimes fixed-clocks would do just fine).

> 
> My current problem is the fact that the uart0 interrupt is shared with
> the Chip Common A gpio block. When I have and interrupt node on the
> gpio in the device tree I get an init exit at startup. If I remove the
> interrupt node the system will boot (except I don't get cascaded
> interrupts from the GPIOs).
> 
> Looking at the pinctrl-nsp-gpio.c it looks as though I might be able to
> make this work if I can convince the gpio code to return IRQ_HANDLED or
> IRQ_NONE but I'm struggling against the fact that the pinctrl-iproc-
> gpio.c defers it's interrupt handing to the gpio core.

Not sure I follow you here, what part is being handed to gpiolib? The
top interrupt handler under nsp_gpio_irq_handler() will try to do
exactly as you described. In fact, there are other iProc designs where
"gpio-a" and another interrupt, arch/arm/boot/dts/bcm-nsp.dtsi is one
such example and I never had problems with that part of NSP.

> 
> Is there any way I can get the gpio core to deal with the shared
> interrupt?
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
