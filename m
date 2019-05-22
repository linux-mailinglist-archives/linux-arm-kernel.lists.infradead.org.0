Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1559725E6F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 09:04:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wO23sBJ1nWKXrLQw4fqpHXoecpSOOmPpUDLUT6Ykpsk=; b=ZR5rfztzhayHf2
	UyQ6pK7QNZSz3LXqjPiGZwwqvDddHUP8gw8UZsBQcRNtbsqUziVYYNOMOMQmY00lkD90JFExiRHW/
	bc74tkcLtTb4LERNlHM1bXCuKr1uLLDGEmQc9YRoamEJiKQfEljUfVR/kgw+rlZy8Pi+FCcUGUL2q
	HOugY54ZAa4qFTYRfs02OBY3an+x/+8ZQGDPpZoFvKy/qEp7c1PzvF259Yx9smyj9jm0n6y0wlg4Y
	aYrs+rB2vgtMKqH8nnSdpmJMV3Uf6ZEJq6+78ljxTHKz5knx6zPx19rG+KgXJ1r/igQjzflgmwSpw
	X3NzqGy2OY2317lQrpAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTLI4-0007l0-MN; Wed, 22 May 2019 07:03:56 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLHw-0007kB-Kr
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 07:03:50 +0000
Received: by mail-wm1-x341.google.com with SMTP id c77so965732wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 00:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=XyUExAoRIQds+qaoHz71XnnFutNbjVISu9zM0HA1E0Q=;
 b=j0btQvTz6E4xGvDiw4VXPhX7YQ6nOsdnHrZV5hlXZT8LnvPguOHY0A6C6F68DbXgsT
 1UZhr3USWTP4RQO8tV7nSgQ0Qc/kY39lSydBLYpOCjwSlv5H2+Qi+g4BDAUAi1x932SM
 XbR8r4HMZKgdKZkDlupKGCxhxW1rD4dXaEQ6iqD0mXyurCQXabhgh0ecB185tLLTyvGw
 00ni7naU2QWh99Fh2Gk0f5LqnEZFfHe1QNv72nxj0WOtZPhF4fQ5r/AdkP6LtJWKmFEt
 P6nUcthiKbsZTEfR1UkN/tMrHpjj8QCaXHmVrJ7NwfZBxou9cKvUqGxVz2GKzq3jfusk
 ZCJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XyUExAoRIQds+qaoHz71XnnFutNbjVISu9zM0HA1E0Q=;
 b=ELG8KoFdM47tck4S2oy5+dvCRmusY7BDkD4EFVUDNr1O8edHGPuVakpLsLDbuJ4kZ8
 PGb0dqtcSWb7F44ZeGN30DX/Fb+h4W3vtSqy2DR3/tgnIvSd8yNlb3hP4ZPFjNC1043z
 DLQtx83c2ERuZWjd8bE/0N4LTbMbxW5Uv3VIgZNxMDVsVlQU/E8oDN/NNeYhq8286oRT
 xyoqXsoTm6zK5hrV41/Ib31E4HT/QAReRcrT2wXwWw8RbPQRCUoyWwDnLoTfPjm+PsyE
 Ed+iGQBQangbv34B+ZFK0CJyokzSJ0ZR9MId3ZMtoM/hRxuBKHtjQONebVGTtdvCzdZP
 BSIg==
X-Gm-Message-State: APjAAAU1gcOs1yTzeB+3c0ZlrdD3mwwJb8CSNklm0Jw2EHdes0qGM+za
 SKdAJwg/djrGIasP9GL2pPrB7w==
X-Google-Smtp-Source: APXvYqyI/8BkHq8u9vd6mhfC6UOZUI4KUX4YD1XbWpr2TILi4b1BFlR3W0pVD27X22wwcaFNwPfa+w==
X-Received: by 2002:a1c:4107:: with SMTP id o7mr6321092wma.122.1558508625472; 
 Wed, 22 May 2019 00:03:45 -0700 (PDT)
Received: from apalos (ppp-94-66-229-5.home.otenet.gr. [94.66.229.5])
 by smtp.gmail.com with ESMTPSA id p8sm15598396wro.0.2019.05.22.00.03.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 00:03:44 -0700 (PDT)
Date: Wed, 22 May 2019 10:03:41 +0300
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH] clk: mvebu: armada-37xx-periph: Fix initialization for
 cpu clocks
Message-ID: <20190522070341.GA32613@apalos>
References: <20190314121541.GB19385@apalos>
 <CAC5LXJcCs4nr-qFOWzUJpUBAJ9ngG-cgeTCVCFBKFc1SPzHMuQ@mail.gmail.com>
 <20190314134428.GA24768@apalos> <874l85v8p6.fsf@FE-laptop>
 <20190318112844.GA1708@apalos> <87h8c0s955.fsf@FE-laptop>
 <20190318122113.GA4834@apalos>
 <20190424093015.rcr5auamfccxf6ei@vireshk-i7>
 <20190425123303.GA12659@apalos>
 <20190520112042.mpamnabxpwciih5m@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520112042.mpamnabxpwciih5m@vireshk-i7>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_000348_749556_D4FDA114 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Antoine Tenart <antoine.tenart@bootlin.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Gregory CLEMENT <gregory.clement@bootlin.com>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@codeaurora.org>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Mike Turquette <mturquette@baylibre.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?iso-8859-1?Q?Miqu=E8l?= Raynal <miquel.raynal@bootlin.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Viresh, Gregory
On Mon, May 20, 2019 at 04:50:42PM +0530, Viresh Kumar wrote:
> On 25-04-19, 15:33, Ilias Apalodimas wrote:
> > Hi Viresh,
> > 
> > > > > Also, during this week-end, Christian suggested that the issue might
> > > > > come from the AVS support.
> > > > > 
> > > > > Could you disable it and check you still have the issue?
> > > > > 
> > > > > For this, you just have to remove the avs node in
> > > > > arch/arm64/boot/dts/marvell/armada-37xx.dtsi and rebuild the dtb.
> > > > Sure. You'll have to wait for a week though. Currently on a trip. I'll run that
> > > >  once i return
> > > 
> > > @Ilias: Can you please try this now and confirm to Gregory ?
> > I am more overloaded than usual and totally forgot about this. Apologies.
> > I'll try finding some time and do this.
> 
> Ping Ilias.
Sorry for the huge delay. 
Applying this patch and removing tha 'avs' node from
arch/arm64/boot/dts/marvell/armada-37xx.dtsi seems to work.
Changing between governors does not freeze the board any more. I haven't checked
the actual impact on the CPU speed but the values on 
/sys/devices/system/cpu/cpufreq/policy0/scaling_governor are correct

Cheers
/Ilias

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
