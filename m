Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 129193582A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 09:57:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iltWMvEHRXuUxLKSEBmNM3i61/hnUG+cwntYhlBi17U=; b=ZH1NvKC6PkrbcD
	5nZBOvZ/340ehGtIxJbzLSBu66mHwC/Vx7QScofdqNxN1/WzMENgXMntJLkCZUMeMJuE+1eBal2Ry
	Q/cxWG9IGUAm7Lw7EfEAFea1T6RCtkvDXdsigNaMIBfm2O6Chc9Jq5Mne4bD6k6F6rg0JenU1tCEM
	cu8Uu4wK7Rr6gSzDigtBceuOJI+yK4PAFRQrU+y3LiWd1HmFJxWoRUU8oyfX01s5KvBmFfv6HK7IY
	0D65727wW62nTEg523Qk0iMOD7VnVvAW/Fiut4N/Jp9shmtIcF+zVSc2p1WdV8HJ/bzM76JsAM13q
	/iULIZI6IjmVjrTtdwtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYQnO-00056y-AA; Wed, 05 Jun 2019 07:57:18 +0000
Received: from mail-lf1-f65.google.com ([209.85.167.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYQn8-0004zQ-FK
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 07:57:04 +0000
Received: by mail-lf1-f65.google.com with SMTP id y198so7882172lfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 00:57:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BIGkKcYfLrKZMcNofxFte/MwlnM+iUUU8rGg0Es0KCI=;
 b=rqYNtw2aGKc3+9OD5UmQa78jlsNjSC3nf79VrW61Hw3I1jPe4yez7rWIypkqXezm8Z
 4SPehEcYoWLdq2G+ln9yQhlr35fEvWd7AqdX5+3blE08QunkXjTtA1cUEr/jSTuojfBj
 URvQJn8K0+lxROXWn5U7rxXH0O6wf0bWVxRDenEZUlpFdGFdSh8Xcm7q6erP+8NdJYc4
 yIQhqgVDMDkyc7mAIbuAGq5WTHO7A7g94zoCPRUURj5zqYJhMotClKPwnkDo9soFMYU7
 6CpzEwDQ6pMJtaiii6hVwDHdQLWexcv2Dq3bf3Mp3GuGCPmtomm9e5Oi/O10hk6vMpbo
 pDSg==
X-Gm-Message-State: APjAAAVRVYNtF7ZjD6qvptpJMWocgePzr3tCVg4yIfW/Q9dZhXYicR/F
 xImkhgnTQyhFzUio79+OF71McUB2hPw=
X-Google-Smtp-Source: APXvYqyJTHFtU2ZPnYiQSPpENJAgbw8I3+7lh4a0s29uA2IVhDFXd/5pYXop0LCfMkGc18+7XLWDyw==
X-Received: by 2002:a19:6a01:: with SMTP id u1mr17636778lfu.141.1559721419930; 
 Wed, 05 Jun 2019 00:56:59 -0700 (PDT)
Received: from xi.terra (c-74bee655.07-184-6d6c6d4.bbcust.telenor.se.
 [85.230.190.116])
 by smtp.gmail.com with ESMTPSA id t22sm4189527lje.58.2019.06.05.00.56.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 00:56:59 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.91)
 (envelope-from <johan@kernel.org>)
 id 1hYQn2-00063e-Gt; Wed, 05 Jun 2019 09:56:57 +0200
Date: Wed, 5 Jun 2019 09:56:56 +0200
From: Johan Hovold <johan@kernel.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 2/8] i2c: i2c-qcom-geni: Signify successful driver probe
Message-ID: <20190605075656.GC29637@localhost>
References: <20190604104455.8877-1-lee.jones@linaro.org>
 <20190604104455.8877-2-lee.jones@linaro.org>
 <20190605062020.GL22737@tuxbook-pro> <20190605071625.GK4797@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605071625.GK4797@dell>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_005702_507574_200EBD49 
X-CRM114-Status: GOOD (  23.02  )
X-Spam-Score: -0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jhovold[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.6 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.65 listed in wl.mailspike.net]
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
Cc: balbi@kernel.org, david.brown@linaro.org, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 wsa+renesas@sang-engineering.com, alokc@codeaurora.org,
 kramasub@codeaurora.org, linux-i2c@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, andy.gross@linaro.org, jlhugo@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 08:16:25AM +0100, Lee Jones wrote:
> On Tue, 04 Jun 2019, Bjorn Andersson wrote:
> 
> > On Tue 04 Jun 03:44 PDT 2019, Lee Jones wrote:
> > 
> > > The Qualcomm Geni I2C driver currently probes silently which can be
> > > confusing when debugging potential issues.  Add a low level (INFO)
> > > print when each I2C controller is successfully initially set-up.
> > > 
> > > Signed-off-by: Lee Jones <lee.jones@linaro.org>
> > > ---
> > >  drivers/i2c/busses/i2c-qcom-geni.c | 2 ++
> > >  1 file changed, 2 insertions(+)
> > > 
> > > diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
> > > index 0fa93b448e8d..e27466d77767 100644
> > > --- a/drivers/i2c/busses/i2c-qcom-geni.c
> > > +++ b/drivers/i2c/busses/i2c-qcom-geni.c
> > > @@ -598,6 +598,8 @@ static int geni_i2c_probe(struct platform_device *pdev)
> > >  		return ret;
> > >  	}
> > >  
> > > +	dev_info(&pdev->dev, "Geni-I2C adaptor successfully added\n");
> > > +
> > 
> > I would prefer that we do not add such prints, as it would be to accept
> > the downstream behaviour of spamming the log to the point where no one
> > will ever look through it.
> 
> We should be able to find a middle ground.  Spamming the log with all
> sorts of device specific information/debug is obviously not
> constructive, but a single liner to advertise that an important
> device/controller has been successfully initialised is more helpful
> than it is hinderous.
> 
> This print was added due to the silent initialisation costing me
> several hours of debugging ACPI device/driver code (albeit learning a
> lot about ACPI as I go) just to find out that it was already doing the
> right thing - just very quietly.

No, we don't add noise like this to the logs just because it may be
useful while debugging. Even one-liners add up.

There are plenty of options for debugging already ranging from adding a
temporary dev_info() to the probe function in question to using dynamic
debugging to have driver core log every successful probe.

And in this case you say the driver was in fact already bound; that can
easily be verified through sysfs too in case things aren't behaving the
way you expect.

Johan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
