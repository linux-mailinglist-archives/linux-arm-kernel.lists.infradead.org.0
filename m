Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F117CE49
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:27:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FtT9Fimyz6yCYCNVK8mDYrrwxMVASNh241StsBf6VcQ=; b=lcnpJT5xdXpTCE
	9079vcJt2Q7rbiV0UIs1w3dh64lMPPcuKObPpOqF7AbpnX8t9wGF+Huaj1TK4Z3NPr/2fqD+VHcUF
	+NdPrNKfp6B031S+4HMAq7T+GSoqcRhLm8IxA8Do1nx/yf2xzlAI2C//nov+VUvwBU5ljlbZtluW8
	mdY/iPTbeZ/4rtuuGGeVwsadsh7MmCZH22buthVPbP9nfF9LNjF5ybzXx6RqLewQBPm3B8eWdttV0
	2yBTgwDRS9OQLKTxaqLXYa9a7pjORmG5TJ8PHMHdTcdRc/DIa5Xnzac3QPmenRr8U4AWuIdemv1R4
	BaDvASCA4iTjQ1rpeQOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsvBe-0001lb-Bf; Wed, 31 Jul 2019 20:27:02 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsvBV-0001kU-SY
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 20:26:56 +0000
Received: by mail-qt1-f193.google.com with SMTP id h21so67814213qtn.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 13:26:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Nexwj/gyEdfGcFhtgJkuEvqAxLsbVQicvOBgvCJpGfM=;
 b=B1/O7ercJnU75q9WuPtCETsN9N2PPZCMPzuXEPG3/OK+tkYpDSG1ABFrRqRIEJHB/a
 qxjxcoUQabpVqmyxZ5Z7QC+qu9qnruQKYV84jBu6MIw5ZthliGHHfg5+//J7My+NqkXG
 wqDhq2j3lmEcn+HJRdoYJ4FauWWhmSxJ9ADm2pXwhbYxB/BlwObJ2Xa0w3ht3LHqIcxw
 2BT/2NGJGYbgLX5StDjOIGto05MyNiAeVqtiCCULwcOXOXkDdyMhlTFWYJIaRDT39xXi
 HWwLF2k8gnKSHjzCZ58MS5NNNwE+bXV5hU7EQW9K3+uD3AM3NmWfi4YnLC2yQLr+uwPs
 cC9w==
X-Gm-Message-State: APjAAAWjOkvMF+KvfaD8HrKkSo5cKKBRYFn/xDlhHDNd+DAEU/y6FlQN
 9DYm5Cd4oGn8czqq3dPpsQZtFXlvcZ6klY3MIFU=
X-Google-Smtp-Source: APXvYqxrQwILyzcU6or5m1F0P2T2g+2d1hVZgeveWHo/LNI028WFf469HVX7i9p/CxTB96w3vHftaMn2P+OT3OV3MzY=
X-Received: by 2002:aed:33a4:: with SMTP id v33mr84957899qtd.18.1564604812113; 
 Wed, 31 Jul 2019 13:26:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190731195713.3150463-1-arnd@arndb.de>
 <20190731195713.3150463-4-arnd@arndb.de>
 <20190731202343.GA14817@roeck-us.net>
In-Reply-To: <20190731202343.GA14817@roeck-us.net>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 31 Jul 2019 22:26:35 +0200
Message-ID: <CAK8P3a2=gqeCMtdzdqg4d1n6v1-cdaHObeUoVXeB+=Okwd1rqA@mail.gmail.com>
Subject: Re: [PATCH 03/14] watchdog: pnx4008_wdt: allow compile-testing
To: Guenter Roeck <linux@roeck-us.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_132654_906078_EB388F0B 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jason Cooper <jason@lakedaemon.net>, "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Gregory Clement <gregory.clement@bootlin.com>,
 USB list <linux-usb@vger.kernel.org>, Russell King <linux@armlinux.org.uk>,
 Vladimir Zapolskiy <vz@mleia.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, soc@kernel.org,
 Networking <netdev@vger.kernel.org>, Alan Stern <stern@rowland.harvard.edu>,
 linux-serial@vger.kernel.org, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 10:23 PM Guenter Roeck <linux@roeck-us.net> wrote:
>
> On Wed, Jul 31, 2019 at 09:56:45PM +0200, Arnd Bergmann wrote:
> > The only thing that prevents building this driver on other
> > platforms is the mach/hardware.h include, which is not actually
> > used here at all, so remove the line and allow CONFIG_COMPILE_TEST.
> >
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> Reviewed-by: Guenter Roeck <linux@roeck-us.net>
>
> What is the plan for this patch ? Push through watchdog
> or through your branch ?

I would prefer my branch so I can apply the final patch without waiting
for another release. Not in a hurry though, so if some other maintainer
wants to take the respective driver patch through their tree instead of the
arm-soc one, I'll just wait anyway.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
