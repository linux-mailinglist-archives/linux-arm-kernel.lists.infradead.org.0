Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A4E201F25
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 02:20:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UpZQw3N410VcCsgZlhkjCSYVOQ6GfvC0eb/7Wdib3pU=; b=IkDBC+iVIDGIY2
	2/mC0s797XhNGyNZ2Mei/30D9qCFcw6W41dt8ahrV3lKNkGiFkaWywFDCvFBkE3Hb759sVYuV1E0l
	mWEf4eK1m1oN86b0zFlUHboOPbn/+Iu5JBvBoPo+yNyrsTCSXQ2jI4PgPyqKSndcmdulPer1zYW66
	S9xZuf65JixY3xbczNBZbin93MGwsMH9y4IgGeLIp7bZNq4f5l6AFSxmqfAQSmAWUdwchzkkCVp8f
	UH+x0QELTMx97C56+seryXyCbuNvA8sDsOJ22LC96B4qtZj8kMzhoSQyznrLmWYsEI/Yvm0PDsk6z
	WlQnSMhznS1mkpJZrDOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmRFU-0005XT-Rs; Sat, 20 Jun 2020 00:20:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmRFB-0005Wh-QF; Sat, 20 Jun 2020 00:20:27 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 656C620675;
 Sat, 20 Jun 2020 00:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592612425;
 bh=p2V3pz6MGRWn+0XE8T3Abgd/qOk9UrSIMqV3HJOzcHE=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=tb4hQvTQgnv1PwqTflBrGghh7DlllJmBiKvHdtPCgRrzVnn5XUHb+W0L8MHGbHGhy
 QHicwJlitGJXjpYYv5vjGeziH+cfrH7F5zwg8fHinHIlMopQWOgP4QhDePZNTPpIoY
 c0efbkpD5BOJEwEK038fzTJZ7JpoPbQ2kyQXPrgk=
MIME-Version: 1.0
In-Reply-To: <159261103077.62212.7410836804489183937@swboyd.mtv.corp.google.com>
References: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
 <159255945796.62212.5838238989498858379@swboyd.mtv.corp.google.com>
 <bdc91c1b015d2f02bd0ea90ae81a122123c62b38.camel@suse.de>
 <159261103077.62212.7410836804489183937@swboyd.mtv.corp.google.com>
Subject: Re: [PATCH v5 00/27] clk: bcm: rpi: Add support for BCM2711 firmware
 clocks
From: Stephen Boyd <sboyd@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Date: Fri, 19 Jun 2020 17:20:24 -0700
Message-ID: <159261242477.62212.2251732478648139482@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_172025_905123_B3F08CF9 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Mike Turquette <mturquette@baylibre.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Stephen Boyd (2020-06-19 16:57:10)
> Quoting Nicolas Saenz Julienne (2020-06-19 02:44:54)
> > On Fri, 2020-06-19 at 02:37 -0700, Stephen Boyd wrote:
> > > Quoting Maxime Ripard (2020-06-15 01:40:40)
> > > > Hi,
> > > > 
> > > > Since the whole DRM/HDMI support began to grow fairly big, I've chosen
> > > > to split away the two discussions between the firmware clocks and the
> > > > HDMI support.
> > > > 
> > > > Let me know what you think,
> > > > Maxime
> > > 
> > > Do you want this to go through clk tree? Or looking for acks/review
> > > tags?
> > > 
> > 
> > FWIW I don't mind taking the device tree changes trough the RPi soc tree.
> > 
> 
> Sounds good.
> 

Just to clarify, that is just the dts patch? Or the binding patches too?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
