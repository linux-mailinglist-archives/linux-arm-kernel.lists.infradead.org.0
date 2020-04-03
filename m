Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9854E19D7B8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 15:37:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rZ0Qr/GlOLyLur2VlRRoYlIfpn/ulod3mqla9bLsWd4=; b=B8/PMF7FPT3rqK
	wxgEZiJAT6hYSK2JEUsJO1IxzuAXbnZyhvFlp/J0mSLQGotMC4nSct3T8X/xfIfNAQG/Hhz4u+AXt
	zD+bPdcOvXZcT6mjCFTf+XED/CmTJwYJuZDnsYg0jCN2Xm9c6ngVmjnC84czC31uyi5TVJhK/zWx7
	gllHuxe8ZkaAlx9W/ZNv3Xtk5ua9mb8N9gd/sJyn4+MimY5cQR1z7DiLmAcxAg2zfmiQUh2vnXTFs
	RXUvc4vv3T3J045QoCOHK5Fsa54F89GDQ6xfJ4PSVYEbzv1rTMjHkdEbvmpQEHMh1DjoTZXcr53D8
	+RhIllt6zDQnvijvDjcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKMV6-0003no-SX; Fri, 03 Apr 2020 13:36:48 +0000
Received: from mail-yb1-f196.google.com ([209.85.219.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKMUz-0003nO-50
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 13:36:42 +0000
Received: by mail-yb1-f196.google.com with SMTP id e17so4251152ybq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 06:36:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l1XFoW1CdqWqDnln9s/MFzf+07ncPFrbjj53bimt6iA=;
 b=OLapXva92qoA4zAm3UVPcHka8z4bqz0ij5Ocpzjcjc/lraKTrNYemvTRjfH8G8WSq0
 9rXRuIZZzBNjMEJhAtJJb7KVSRvN9G6MST8vVxVtV1JzOzMmIYyUCF98Uq1WyY+QQbPA
 XOGOud2d/eBvjSx6dUKsk6sMh0J8/AQoYWQJCceErvSO+evr+T3gBQP5fjeI1aqQpXXs
 P2YOygBIwLF2MCYwlSFgwD+Ap3klHuYyd8v7y87XDY/El9PuXDqgJDrFO0E7e+eD+x5/
 Jia1URsZMZPauUCHMrublfVygug23G1L1mZawdLCkrq04ltsyBL96g1h3GyakoqqwEnX
 uTmw==
X-Gm-Message-State: AGi0PubUh4htRYzon0gNmAhg52PlvgNg41Sr5QXeirukAwVrqH6Uqor4
 5Gcv+N2dTILKKkBtOFaoa0QBXIkjAcfBHmqenOw=
X-Google-Smtp-Source: APiQypKvW041oSol63Gq6mnIxoDINqtJ7TABuWSw3zE7IZFxtUPRl30sOyfCv0NPhXkCVc+cMFJbGTe8xusIF7Y0N+o=
X-Received: by 2002:a25:3d41:: with SMTP id k62mr13561452yba.460.1585920999643; 
 Fri, 03 Apr 2020 06:36:39 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1585917191.git.nicolas.ferre@microchip.com>
In-Reply-To: <cover.1585917191.git.nicolas.ferre@microchip.com>
From: Harini Katakam <harinik@xilinx.com>
Date: Fri, 3 Apr 2020 19:06:28 +0530
Message-ID: <CAFcVECLkPxN0nk=jr9AxJoV3i1jHBoY4s3yeodHDO2uOZspQPg@mail.gmail.com>
Subject: Re: [RFC PATCH 0/3] net: macb: Wake-on-Lan magic packet fixes
To: Nicolas Ferre <nicolas.ferre@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_063641_191452_77D5947E 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [harinikatakamlinux[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.196 listed in wl.mailspike.net]
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
Cc: Rafal Ozieblo <rafalo@cadence.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, sergio.prado@e-labworks.com,
 linux@armlinux.org.uk, antoine.tenart@bootlin.com, netdev@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>, Andrew Lunn <andrew@lunn.ch>,
 Harini Katakam <harini.katakam@xilinx.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

On Fri, Apr 3, 2020 at 6:45 PM <nicolas.ferre@microchip.com> wrote:
>
> From: Nicolas Ferre <nicolas.ferre@microchip.com>
>
> Hi,
> Here are some of my early patches in order to fix WoL magic-packet on the
> current macb driver.
> Addition of this feature to GEM types of IPs is yet to come. I would like to
> have your feedback on these little patches first so that I can continue
> investigating the addition of GEM WoL magic-packet.
>
> Harini, I know that you have patches for GEM in order to integrate WoL ARP
> mode [1]. I'll try to integrate some of your work but would need that this feature
> is better integrated in current code. For instance, the choice of "magic
> packet" or "ARP" should be done by ethtool options and DT properties. For
> matching with mainline users, MACB and GEM code must co-exist.

Agree. I'll try to test this series and get back to you next week.

> The use of dumb buffers for RX seems also fairly platform specific and we would
> need to think more about it.

I know that the IP versions from r1p10 have a mechanism to disable DMA queues
(bit 0 of the queue pointer register) which is cleaner. But for
earlier IP versions,
I remember discussing with Cadence and there is no way to keep RX
enabled for WOL
with RX DMA disabled. I'm afraid that means there should be a bare
minimum memory
region with a dummy descriptor if you do not want to process the
packets. That memory
should also be accessible while the rest of the system is powered
down. Please let me
know if you think of any other solution.

Regards,
Harini

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
