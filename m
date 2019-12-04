Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E36A1129CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 12:02:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PsZ7Ev8AxluhHYSKVoIJYy4kNNJWFy6aSBmWGQzu4PE=; b=nmKl6Glg0nXraN
	FhDcXQWSUmXp0dEIQ7HhLChwucBgXtBwSLv7NlQpUkq7HoOepqq4+7DR4a/mXW5viMGCBa9Cke8Uw
	hxrHBONJOotVP1x/gtt1T2iM7fG8uRrL+po6H/BLNjTCOFV2IQNN+Zbc5HXFUDendFDy1VjIgBY13
	oGzykJwCMUqMgoO8fLtnlEGEKKfvfPpujoINNcJwvf7sMeM/VITPnZz8iHfXhEdg5y2Cg024JR1ot
	rQJDHTDKVM6pXR2vYyZV6FUfQ8vXZsKsjORr8QHvRQW4lvsIlo5zlcB2o0fRmN3ZVQM2svwi0j8VA
	BQMu0yROTlEZ31w55okw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icSQf-0001wq-Qa; Wed, 04 Dec 2019 11:02:45 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icSQV-0001vL-03
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 11:02:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:Content-Type:MIME-Version:
 Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FERLaxZUxyP72Jvm9tSRCjsYA68i6+0dGt84HtQCKYc=; b=tMB/Rov2jut9SYIQWR2KinbOy
 2s5FbXddNAOcEZDNnZVJ7bQT/Sw0ZiWWjZWYNQbzFU0vbKRWpK0Q3OSrXeBB3qT9iDHo4GUPuUOpd
 F6ELFzYkyoSgGBU2Xs6cBoRmoDMf0Rhw9ZBHu/vy9Bn6v6vk8ROEkVG4onNAgsDkUavi0NHKIxxG9
 THZJyCJFm7qwYomcwmaljlnhkGVr2q5A2e3dRrGVg9ECbA/xEMJiHWyiRpLF1dM00C+r5QcpSGCw5
 MvcytmyZkk6Eiot+0r2BrqsFEpwqG879jioPn6cOdkDQOgMSCFzbyCb3Tih0knyn6Sta54+xn4a3w
 O+r3gliXg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:48382)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1icSQI-00049b-HR; Wed, 04 Dec 2019 11:02:22 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1icSQF-00071j-NR; Wed, 04 Dec 2019 11:02:19 +0000
Date: Wed, 4 Dec 2019 11:02:19 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Pavel Machek <pavel@ucw.cz>
Subject: "leds: gpio: Use generic support for composing LED names" breaks
 gpio debugfs
Message-ID: <20191204110219.GV25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_030235_395351_B790C23D 
X-CRM114-Status: UNSURE (   7.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.5 PDS_BTC_ID             FP reduced Bitcoin ID
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
Cc: linux-leds@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Patch d7235f5feaa0 ("leds: gpio: Use generic support for composing LED
names") changed the way labels are used.

devm_fwnode_get_gpiod_from_child() is passed led.name, which used to be
set to the label or node name, resulting in /sys/kernel/debug/gpio
containing useful information.  For example:

 gpio-487 (                    |udpu:green:power    ) out lo
 gpio-488 (                    |udpu:red:power      ) out hi
 gpio-489 (                    |udpu:green:network  ) out hi
 gpio-490 (                    |udpu:red:network    ) out hi
 gpio-491 (                    |udpu:green:alarm    ) out hi
 gpio-492 (                    |udpu:red:alarm      ) out hi

After this commit, it now contains a rather less useful:

 gpio-487 (                    |?                   ) out hi ACTIVE LOW
 gpio-488 (                    |?                   ) out hi ACTIVE LOW
 gpio-489 (                    |?                   ) out hi ACTIVE LOW
 gpio-490 (                    |?                   ) out hi ACTIVE LOW
 gpio-491 (                    |?                   ) out hi ACTIVE LOW
 gpio-492 (                    |?                   ) out hi ACTIVE LOW

This is because led.name is now NULL prior to the call to
devm_fwnode_get_gpiod_from_child().

While this is not an API, it is useful for debugging, and given the
dynamic allocation of GPIOs to physical GPIOs, having the labels
present is an advantage.

Can this be fixed / old behaviour restored?

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
