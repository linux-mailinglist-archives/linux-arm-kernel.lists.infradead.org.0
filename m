Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D94C3590D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 10:55:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k8IpILwwPggLyUE50qRyGsX6YZruB1g+ZgqC897/N+A=; b=OmEB5uhaL1DCwn
	RNsxdz+iugLMU3DwNat47N8SY5tkau2opoXIqUt2376lxFNAkyVqC05u4BB7fZwMKg2W8B9KrPVlK
	cNMvI6P1/jDZmF+nKD+oKks10JqWoAm3nYcMw72y6IQCPdG0IU4QA+6CMhr2ui2gHt6sNi+ARDEtY
	d84HUwUAhS43e+7zVBDHEvtQWERfvMKXXqLStAyE2p/J1InPp+IuJZcJlyUgLx1332lH+wwMmZcm1
	dyLzUVIVRhl++ooJ5ZDL7b3jhsXpmnlV49xT1uHH+/LQ9c3Pm1yqjXkU3HptOB4/ywcgohbuUmu6+
	nLoSdK2PFy42bihW7Qeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYRhs-0002jc-1x; Wed, 05 Jun 2019 08:55:40 +0000
Received: from mail-lj1-f196.google.com ([209.85.208.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYRhk-0002jI-Ho
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 08:55:33 +0000
Received: by mail-lj1-f196.google.com with SMTP id m23so592559lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 01:55:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0U6eDBY+p278g6sAhkapnBhYYyaYO1FDxf1FQX6wdaE=;
 b=EU3T6Ivu964mbze5/rbUcqjmCoFqRIMo8M9G/W/9wmgQ0XWcb2pE5jzQa7OLUc77w/
 GzWR63YlVB4FHhwfSJNdaRGNadIwh4UdXYo/pku/5HzdM31HjmaT34A8ZM7oFTWiL9ok
 4nT/wZ2Kr7YMvnEkJp9gnNrFrHjZSQeauUxiso3IZdq3GggKLlkeNXrW3yZmw1qLEthq
 5vxuqfOW5rAPxQU59aR7cPGKGGnurCbTOcNNqEjDhesSo7ytknNdQFPgO70U2McTSJlE
 Mp8tjuOAq37sR6/pQY6vyjxb52A5fnaURla9KXd3AqCRgpG3eIDDLbCyU0nASYd8Exf3
 mpPA==
X-Gm-Message-State: APjAAAXvsXbgunrsrEetcpntucwkre1hm18fFPc49Gtjclweth20RzeM
 G6NQSAfnY5sirW9+QofZSHs=
X-Google-Smtp-Source: APXvYqzvONsFYRciDKTx+Wt06noIZ5QHPF4uWQkaEhVru+K0f055PuFxcQ4dCitfAPD5HYEsSY0jVg==
X-Received: by 2002:a2e:2c17:: with SMTP id s23mr3271471ljs.214.1559724930581; 
 Wed, 05 Jun 2019 01:55:30 -0700 (PDT)
Received: from xi.terra (c-74bee655.07-184-6d6c6d4.bbcust.telenor.se.
 [85.230.190.116])
 by smtp.gmail.com with ESMTPSA id x29sm4070530lfg.58.2019.06.05.01.55.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 01:55:29 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.91)
 (envelope-from <johan@kernel.org>)
 id 1hYRhf-0006Sd-3c; Wed, 05 Jun 2019 10:55:27 +0200
Date: Wed, 5 Jun 2019 10:55:27 +0200
From: Johan Hovold <johan@kernel.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 2/8] i2c: i2c-qcom-geni: Signify successful driver probe
Message-ID: <20190605085527.GE29637@localhost>
References: <20190604104455.8877-1-lee.jones@linaro.org>
 <20190604104455.8877-2-lee.jones@linaro.org>
 <20190605062020.GL22737@tuxbook-pro> <20190605071625.GK4797@dell>
 <20190605075656.GC29637@localhost> <20190605082047.GM4797@dell>
 <20190605083353.GD29637@localhost> <20190605084921.GQ4797@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605084921.GQ4797@dell>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_015532_586622_17BB16C4 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jhovold[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.6 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-arm-kernel@lists.infradead.org, balbi@kernel.org,
 david.brown@linaro.org, gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 linux-usb@vger.kernel.org, Johan Hovold <johan@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, wsa+renesas@sang-engineering.com,
 alokc@codeaurora.org, kramasub@codeaurora.org, linux-i2c@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 andy.gross@linaro.org, jlhugo@gmail.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 09:49:21AM +0100, Lee Jones wrote:
> On Wed, 05 Jun 2019, Johan Hovold wrote:
> 
> > On Wed, Jun 05, 2019 at 09:20:47AM +0100, Lee Jones wrote:
> > > On Wed, 05 Jun 2019, Johan Hovold wrote:
 
> > > > There are plenty of options for debugging already ranging from adding a
> > > > temporary dev_info() to the probe function in question to using dynamic
> > > > debugging to have driver core log every successful probe.
> > > 
> > > This is what I ended up doing.  It was time consuming to parse though
> > > a log of that size when you have no paging or keyboard.
> > 
> > With the right command-line option to enable dynamic debugging you get
> > one line per successful probe, just like you wanted. Or are you now
> > saying that one-line per device is too much after all? ;)
> 
> Which command line option are you pertaining to?

To enable dynamic debugging in driver core you could use something like

	CONFIG_CMDLINE="dyndbg=\"func really_probe =p\""

That gives you two printouts per successful probe, for example:

	bus: 'usb-serial': really_probe: probing driver edgeport_ti_1 with device ttyUSB0
	bus: 'usb-serial': really_probe: bound device ttyUSB0 to driver edgeport_ti_1

Or you can of course just change the corresponding pr_debug to pr_info
while debugging.

Johan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
