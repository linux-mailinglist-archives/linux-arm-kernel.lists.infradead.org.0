Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D61FB44ED
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 02:41:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wDxj7EsvbELROZGVGXfIJD7aZfCFIoJ8I0F6glgNHk8=; b=tFSBKu/E7OUG+c
	qm0zda7NleoDm4pipwf7kbNNk9No9u55WYm+y0vtv4DzmasH8EldvI5yuH54nNp40jGYkhbfiLhcB
	mEoAexnXGd7695XIXoLulZPcMuI62EJcBkp4t3GGdyTLYAQo3SxX7Qhr5YJuktAneSAjNVzpHtsy4
	fNeatzqRPdqA5hxNk9QtYHTxyDJTlcfICtA4zIMdHsdWa7C/DH0XqJJWDI9Td6QOVK7r/DZRxDOVp
	Xp7RPtXpzB830vtOlIS7yaSnfAHXTQz5maIzL9DOzjKqou+IpPpi+/CHd83C0A2sy2CbYZS8LA+3C
	c+mkhXGhDD61ABENJtKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA1Yn-0005Zv-Dk; Tue, 17 Sep 2019 00:41:37 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA1Ya-0005Yr-1k
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 00:41:25 +0000
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 3659060002;
 Tue, 17 Sep 2019 00:41:14 +0000 (UTC)
Date: Tue, 17 Sep 2019 02:41:13 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 0/6] ARM, arm64: Remove arm_pm_restart()
Message-ID: <20190917004113.GC21254@piout.net>
References: <20170130110512.6943-1-thierry.reding@gmail.com>
 <20190914152544.GA17499@roeck-us.net>
 <CAK8P3a3G_9EeK-Xp7ZeA0EN7WNzrL7AxoQcNZ8z-oe5NsTYW6g@mail.gmail.com>
 <056ccf5c-6c6c-090b-6ca1-ab666021db48@roeck-us.net>
 <20190916134920.GA18267@ulmo> <20190916154336.GA6628@roeck-us.net>
 <20190916155031.GE7488@ulmo>
 <CAK8P3a1EZi5apOm90B6YW2GzFXsirz5wk-D66daR20oj_TLXNg@mail.gmail.com>
 <20190916202809.GA42800@mithrandir>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190916202809.GA42800@mithrandir>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_174124_242696_F38EFBC6 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Guenter Roeck <linux@roeck-us.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Arnd Bergmann <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Thierry,

On 16/09/2019 22:28:09+0200, Thierry Reding wrote:
> > > Yeah, I can just send the pull request for the 6 patches after -rc1.
> > 
> > Ok, sounds good. I'm also happy to take the remaining patches
> > in that branch, for the other architectures.
> 
> All of the patches beyond the 6 in this set rely on the system reset and
> power "framework". I don't think there was broad concensus on that idea
> yet. If you think it's worth another try I'm happy to send the patches
> out again.
> 

Could you consider converting the RTC drivers too? The ones used for
poweroff are:

drivers/rtc/rtc-ds1685.c
drivers/rtc/rtc-jz4740.c
drivers/rtc/rtc-omap.c

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
