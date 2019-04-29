Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D58CDFE3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 11:53:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GhJZE4G1cE4woeE2AxAWzQ37qZ1ohOcokTGUbco75z4=; b=X2Ry8Tmoq+fgTI
	B4VO9WFcC5QgtQs7WPHlwmWNYjF8/nqseE1NaiksgI9KHD0OuABF8CIWs9SWCtZolXv8svaeJEGkb
	KdndCBVMFw/E4nKYNfIzy3zs7kAWUX4KkQhIGH2arSCbiwyRxQd+K+EqnvCEvVsKCoAH06yiPJNke
	1mq7UIBO/2R/sgYYrZwLzTtjLxougyP9ltc1AJzwKvMp89775ZYasy7cJqOBR3airkIV6jXfrUfWk
	X9z3ed7MwEvVBJeUX1bZTrgBi7aL/MFnH1/ruWC2pKlfVplb4visSBuuHUahfgknZazaTgtvHtqyv
	4BlAaEDlZfYIqY0wCLXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL2yb-0007Do-L7; Mon, 29 Apr 2019 09:53:33 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL2yT-0007DH-6g
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 09:53:27 +0000
Received: by mail-pg1-x541.google.com with SMTP id 85so4911294pgc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 02:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=c+0MXpZEek4P+VCfEH1xx9Ru4uabXwTDh/y+GUG7DhQ=;
 b=jtSNtzktrkH7xfB30YOoP4C+YhI+nR0BqlrWf1DAPXsYgcDHgsyx1CBmT5s2AaiyIc
 yCATqRCaak+MtuRfbNxbXiip4l/aHxh69nizYBndpaW4ggbIA46mGFkhJ83bfa9p2w0I
 JwQwHr7+RzbVg7ZLAKJ70bfAvNXcyKZYjHqbEw5kmP/anEDdl2X4w57N9o+SfQ7eIQAz
 xrJkUJH12bI7y+SelMwJ37P4qaTDbA+YZ0X2KX/NwKUtapF+TIWr+VpcZd7gtxrg2HS2
 x5Bdw76XQrR/5RnQau1jD3YvMCGBYe41L5A+08fur9LN/TQvt4xHCejoOu+98RUVe1/j
 eyQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=c+0MXpZEek4P+VCfEH1xx9Ru4uabXwTDh/y+GUG7DhQ=;
 b=Na5z7wMXkSbDDowIyjLzT5xjEn2mSJgU7P5UebAonjWIYcpOQMuEec6+zNEE76Z4vy
 fKIQMWFZbXZJYIFUkeLxK8dddCGngyXB1shd6ySfSJtnB/k3vgwjhW0ojiqefRcsz18h
 cAOuyjFiO/Sz7Vp9JdJAM2J1W64tpS5OOJCazuSjQklzj8zN4Q8J88JYQ6Kaywhm9iby
 +KxgYDKksPrQydVh0wnsnyTHyddAYAA4+tQTcL1Qs+vJfecZqGM230BWqOOLc2RA2HyM
 USlffZaA85gt0o+trC/O9QoA3T2soTRqBikZ6mDq5Fi6PK4Ca1ZddRp80dZk+uD+Ec/t
 uGTw==
X-Gm-Message-State: APjAAAUKxORVEUD7WaskSwL6l97An+ltuLWEAHOYI3N3JXzNUxhNxRWR
 2Q/qdYpKTzmx+Z+M/tLx+3Lj7g==
X-Google-Smtp-Source: APXvYqxDqNTUAsQbPtgk+kVimoeL8h4ytSY5Oyrs0qJiWDcUQKBAF1tB6BP0WKarza1ht/h+HbJHlA==
X-Received: by 2002:a63:da51:: with SMTP id l17mr16291377pgj.115.1556531604046; 
 Mon, 29 Apr 2019 02:53:24 -0700 (PDT)
Received: from localhost ([122.166.139.136])
 by smtp.gmail.com with ESMTPSA id z127sm8195540pfb.53.2019.04.29.02.53.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 02:53:22 -0700 (PDT)
Date: Mon, 29 Apr 2019 15:23:21 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH 2/2] cpufreq: armada-37xx: fix frequency calculation for
 opp
Message-ID: <20190429095321.ah5taomlznghsxu5@vireshk-i7>
References: <20190308164710.10597-1-gregory.clement@bootlin.com>
 <20190308164710.10597-3-gregory.clement@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190308164710.10597-3-gregory.clement@bootlin.com>
User-Agent: NeoMutt/20180323-120-3dd1ac
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_025326_612462_EFBF8EDB 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Andrew Lunn <andrew@lunn.ch>, Vincent Guittot <vincent.guittot@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>,
 Christian Neubert <christian.neubert.86@gmail.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>, linux-pm@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, stable@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?utf-8?Q?Miqu=C3=A8l?= Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08-03-19, 17:47, Gregory CLEMENT wrote:
> The frequency calculation was based on the current(max) frequency of the
> CPU. However for low frequency, the value used was already the parent
> frequency divided by a factor of 2.
> 
> Instead of using this frequency, this fix directly get the frequency from
> the parent clock.
> 
> Fixes: 92ce45fb875d ("cpufreq: Add DVFS support for Armada 37xx")
> Cc: <stable@vger.kernel.org>
> Reported-by: Christian Neubert <christian.neubert.86@gmail.com>
> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
> ---
>  drivers/cpufreq/armada-37xx-cpufreq.c | 22 +++++++++++++++++++---
>  1 file changed, 19 insertions(+), 3 deletions(-)

Applied this one.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
