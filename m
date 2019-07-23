Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19AAC72212
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 00:15:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nAmUiGah2ojW4TgNcZNYg+Vx4zp+wZ6111GsXVIZ7aw=; b=ek+rgelrSTpTe6
	ueQ/QcbJzXeDPBnTUmiJxu8wvc8VqwEQX5fMG8HhlbnH2HLsdX+eOjdfU9TCy2PVndpNi5r2fdKQF
	yaINhc0eju7+lZTrIDa3uEwg12RkAIWqOqUQBCm8QUZiGEnfyAqPZyojqy0I03rSbdq25AA20uzzf
	O8tAWSaMD+UYa1x5OQA2r5N5YqhsJvcDHDSF5LfMSO4V8LdhSFe1MPQo9Pf1FgrOX0uJnMITDWwT0
	u7Whz4CDRXtObeELoxfbQ2m7/1ZPFwD9hYPQVrOoKiW4TxaIucFEwp09n71OII6HZMm+Gx4av1Icc
	D3xQ8xPdAVdRMjwBXlOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq34I-0005CI-FF; Tue, 23 Jul 2019 22:15:34 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq345-0005B7-3j
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 22:15:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vwqo7H6YhKNQEsdd96YtT9SeFPMHVkL/1g7qNRKdBw4=; b=IhaCs6EenhTI37MWCSwW2Gjr1y
 tExyfP8xg4OHFTjHc2PNlWLPV/mJdfU3ajt/+Sv37A2Z1fcuirQlpDosRjaXb3LGSTGw26cv/pOiN
 UgbgYyZmh5YM2a7RDUDU8/Fb4Su8rWBTl7yAVaj6rex/3ZCzoqr60MxMaVExW60chLM0=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hq342-0003io-Vg; Wed, 24 Jul 2019 00:15:18 +0200
Date: Wed, 24 Jul 2019 00:15:18 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Oliver Hartkopp <socketcan@hartkopp.net>
Subject: Re: TS-219 RTC issue with Debian Buster
Message-ID: <20190723221518.GB13517@lunn.ch>
References: <99a8e2cc-61a2-3b43-0d72-6f001cffe572@hartkopp.net>
 <20190723161212.GA8095@lunn.ch>
 <8d771e5c-9df4-779c-5814-c8b62c309f82@hartkopp.net>
 <6ab1b4e0-3211-7cd4-306d-4b0077ed5e8e@hartkopp.net>
 <5180dbff-1c84-a0ec-6268-b438831a0a44@hartkopp.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5180dbff-1c84-a0ec-6268-b438831a0a44@hartkopp.net>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_151521_308293_71DF37AE 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: tbm@cyrius.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 08:30:45PM +0200, Oliver Hartkopp wrote:
> Sorry for answering myself again ..
> 
> After installing the 4.9.0-4-marvell kernel (from old stable Stretch) on my
> Debian Buster system it works like before:
> 
> [    1.101214] mousedev: PS/2 mouse device common for all mice
> [    2.123021] rtc-mv f1010300.rtc: internal RTC not ticking
> [    2.128592] i2c /dev entries driver
> [    2.133933] random: fast init done
> [    2.137746] rtc-s35390a 0-0030: rtc core: registered rtc-s35390a as rtc0
> [    2.145186] ledtrig-cpu: registered to indicate activity on CPUs
> [    2.151518] NET: Registered protocol family 17
> [    2.156398] registered taskstats version 1
> [    2.160561] zswap: loaded using pool lzo/zbud
> [    2.165913] rtc-s35390a 0-0030: setting system clock to 2019-07-23
> 18:16:18 UTC (1563905778)
> [    2.175514] Freeing unused kernel memory: 296K

So your system has two RTC drivers loading. First rtc-mv tries to
load, but it finds the RTC is not ticking. This often happens with
Kirkwood. Some vendors decided not to use the internal RTC. But the
default device tree has it enabled, so the driver loads. When it pokes
the hardware it discovers the clock is stopped and so the driver fails
the problem.

Later the i2c RTC loads, which does work.

So one step is to change the DT to disable the internal RTC.
You can add:
                rtc@10300 {
                        status = "disabled";
                };

	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
