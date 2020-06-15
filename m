Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B951F8EF7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 09:01:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zmcPLJpcXf8ocms4sQgttjqi4mg4luthZw1RD3BplIA=; b=bHiXQmqHw0lQx4
	uEl6BD/yIXIFK3bWCJOo56+SmU35e1QPyod0gy6EwhaWmzcqj3LT28U/dy8jBINeSBjKWS8Gg3Wll
	ory89gGyyaiva2Z4JZR41wJlpV4O2WXmz2bGjyE4xyvkEq9S7eXDRGKSgDaAahCEHLMJrLOCwWQrY
	1vvXoUkDvXOnZD3cVxa3TTgtSAuRdbtRpxuC6zjRTsRnESM9N33pW0gnD2KEZ7RRczj7Q/StC6HCO
	x8u81+BT0OpoOzC2aH6SJFmziNFHv3OIETGcYCXqSbkppgBf3IvOCgvQ+azehBSgdTZviilULOTPt
	lnlsw68d+WjPrKrEXLsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkj7a-0004wU-27; Mon, 15 Jun 2020 07:01:30 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkj7N-0004vs-4i
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 07:01:18 +0000
Received: by mail-wm1-f68.google.com with SMTP id r15so13610090wmh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 00:01:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=d+1OnnysUnKg4jMyBhqBvZrm+ah/+8kX402EPutOz1A=;
 b=X7M+FkranZwTR7jqI+Q9AS/8hPuvioEAUYiic9Zb4M967/w3a553dluCoZrq4H8TZY
 lWp4VWABeCRdTQGcoqymc1WOmg4Jt2zNLFGlpHg1Sye/rIWQovbNXvWRflzS/Jd7p8Up
 WimsSCjoTspHNvy1E1k9uuoGmAf14OyIS533i8wy3sl7BnQjCgsFPDkUikMeI5Kn7ilZ
 KeJG+ET1PyUt16RqtbsnJVJxaMKRuDValeih7/GIVVOeeACw8a1e2nfVww7vR7a9Wt5T
 wQ2dlTLRPu8F0+/dF5UqgWPXYcanISOBsf5pnWG+YJhyOR2+OTgyauChTtSfPsaUjfDB
 L5JA==
X-Gm-Message-State: AOAM532y341iRSPDvZy9ZYFVsjPqKTGI3ucnCIKjkWgdXnllHGz0r97u
 Ol5jYMiVsCbZeEowrJduHxM=
X-Google-Smtp-Source: ABdhPJyTeU+ed7tcTTzbrEUnEFBdJrmWBvV3QvLccvfrTwEv7TiwWhG5hsiP8890W2HDdEmMKLZVYA==
X-Received: by 2002:a1c:9acf:: with SMTP id
 c198mr11474242wme.172.1592204475584; 
 Mon, 15 Jun 2020 00:01:15 -0700 (PDT)
Received: from kozik-lap ([194.230.155.184])
 by smtp.googlemail.com with ESMTPSA id v27sm25361523wrv.81.2020.06.15.00.01.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 15 Jun 2020 00:01:14 -0700 (PDT)
Date: Mon, 15 Jun 2020 09:01:12 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jonathan Bakker <xc-racer2@live.ca>
Subject: Re: [PATCH 0/5] ARM: dts: s5pv210: Improvements for Aries boards
Message-ID: <20200615070112.GA23304@kozik-lap>
References: <BN6PR04MB0660787FD651F80CD0C22C2BA39E0@BN6PR04MB0660.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BN6PR04MB0660787FD651F80CD0C22C2BA39E0@BN6PR04MB0660.namprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_000117_191164_BF526990 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 13, 2020 at 11:44:22AM -0700, Jonathan Bakker wrote:
> A couple of new drivers have now been added, so we can add support for
> them in the device tree for Aries.  These are the accelerometer (bma023)
> and the light/proximity sensor (gp2a).
> 
> Additionally, the fuelgauge definition was wrong as there is no interrupt
> support on the galaxys.  The bluetooth definition also had some issues
> with it.
> 
> There is one change to the common s5pv210 dtsi and that is that the gph3
> bank was missing the interrupt-controller property.
> 
> Jonathan Bakker (5):
>   ARM: dts: s5pv210: Add interrupt-controller property to gph3
>   ARM: dts: s5pv210: Correct fuelgauge definition on Aries
>   ARM: dts: s5pv210: Add support for GP2A light sensor on Aries
>   ARM: dts: s5pv210: Add BMA023 accelerometer support to Aries

Thanks, applied entire set.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
