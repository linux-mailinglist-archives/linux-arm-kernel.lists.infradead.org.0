Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 253BC113857
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 00:46:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JzvmC/G5+H8TXXlcFhG3e9P1vJ4+0nMZzU6bTjkK0gA=; b=P1n43z0mKsm0sB
	iy/rDofqNUdG+tA6xgpR/I+MJerq4BCMEZayBZv4OEUafXCl6c8PDOokUrCcZCvReYkmu3ak3qYKX
	pNd5PKUGTN4tCIj3BLYpUxe3LTfQ/CC7QWzJT1LLB8SEgjIn56E873CDJvgrl5luk/COXKqfwEE2+
	UszuqGsPi8U5kkEvVPMi4Ficw+SWfex/Op/gHADMdGvGatB+gF2knOkeuFVzVxJYslaQPLwnf5S3T
	XBtw7rgfRsbxedlkcNYY8pWueI3qbmpC9LPv43+8Ewn4pA9KGpFWrR6pLXtuV96JD95pJ3lZao/Ac
	clksRTZbh8wCGcqyKgNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iceLZ-0007c0-Qo; Wed, 04 Dec 2019 23:46:17 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iceLQ-0007bG-KD
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 23:46:09 +0000
Received: by mail-lf1-x142.google.com with SMTP id f15so132729lfl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 15:46:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1oLuXTqP88AIJllnfUv70RaPKExVa3V8VYnwKFzXr90=;
 b=uQsVwqfRLCAJ44cXxreDwyi2t/pF9+6ktyX482qqhirs8nOUetXz3CJa6gX0d+StLI
 4hrMtR2KUPZJw5V9yHYkuSxlHVrR0NcTxV66wok3kLyVEuiOdQ+87ZkDHjo1SaVe3qUt
 ExxMY9tZrB37RkXAXo4+S8vuXV0/TIiZ+XYFCBFZcfDXc3VafGj58nQzO9kGCJoKepaQ
 45rWBnslFVJvwRITTvab0lm9wGC+o0gvis1jyeSwupr14EAS+0r5nhMkr0FKXIXS8wql
 EzUis/tSIFpQC3T4HIAyyWycETuiTV5ec3iLux8doePS9L+H9xv35IDJsOa4ul4uNfwO
 BGxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1oLuXTqP88AIJllnfUv70RaPKExVa3V8VYnwKFzXr90=;
 b=SfCjqeN2sHE0vcaDkIglDbEGZCAdpohshCOQ9TglN9i4Xd7e9lcfgA72kHYTBYIwHV
 Dj0+z9l9lH0Y9uYoTrQiU9CCaHrVr0HrzOGoz/mXo4CIx09jmabaO0pY+0f/XuF6ASSO
 LdQnhiqiD2Ai9RrqyVKGMFJEvm1orb3cr/Ay18/xCX7dxPZIVG5lcC12m5MYa44vvWEp
 yCSD3mYPxGYNqKd5gY5BPpZVjDi+x8HNZt3qerDjZ0GRs2ZYj5Dx4GMKgIIb76UCKpC1
 9ykeTTRH9HMz7s3tcucGWdaMidPXeW6XrNuVT2y7JSe8fCNHG//H1MjwlamACaPEIYIB
 DuGQ==
X-Gm-Message-State: APjAAAXD9Zrf1xo6GturSH8c4aBtgwyMXYRiqP83UpQ0yNb3JexTazE0
 GFof1Uwp5rxCK1RK5j1touwco/eB1QLtnV92oRKQdg==
X-Google-Smtp-Source: APXvYqyqVwBh7QLOCMY5WcVcMFSXciWG0BZOqFwPI5/16XD9DuCX7jpZucNx06M4rxkCfx9c/Kf2nRnArTuT/U4S8QM=
X-Received: by 2002:ac2:5b86:: with SMTP id o6mr3552742lfn.44.1575503163840;
 Wed, 04 Dec 2019 15:46:03 -0800 (PST)
MIME-Version: 1.0
References: <20191204110219.GV25745@shell.armlinux.org.uk>
 <fb88206c-a094-df37-04af-71a1174fb0f6@gmail.com>
In-Reply-To: <fb88206c-a094-df37-04af-71a1174fb0f6@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 5 Dec 2019 00:45:51 +0100
Message-ID: <CACRpkdZzzaaDM_Y8-Zf8AQrmfcVd+i0Uk0vYccnizG73cjEooA@mail.gmail.com>
Subject: Re: "leds: gpio: Use generic support for composing LED names" breaks
 gpio debugfs
To: Jacek Anaszewski <jacek.anaszewski@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_154608_675716_D399424C 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux LED Subsystem <linux-leds@vger.kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Pavel Machek <pavel@ucw.cz>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 4, 2019 at 9:52 PM Jacek Anaszewski
<jacek.anaszewski@gmail.com> wrote:

> It seem that the only proper solution would be introducing a new
> pre_register_cdev(const char *name) op to the LED core, that would allow
> drivers to come up with their implementation thereof. In this particular
> case leds-gpio driver would need to put there gpiod initialization.

I don't know the particulars but if it helps you can at any point
call:
int gpiod_set_consumer_name(struct gpio_desc *desc, const char *name);

For any successfully obtained descriptor, to set the consumer name,
i.e. the text appearing in debugfs and the GPIO character device.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
