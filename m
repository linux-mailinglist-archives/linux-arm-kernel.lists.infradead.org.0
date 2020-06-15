Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBCE1F9E0F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 19:05:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RwE1YGS2gaj00FE9QmXoreRzSCWURr4SNniPu7XPsi8=; b=RSNoFuAwZ3BBgu
	8jmgLyaQMQSgFSJaNnNEzGFv1/8Msc0qFYt9KMepOu6tANqIKp+3l3+97aAVeCWHmrEXsMWLkoTls
	/ZAgUNT98gCT2pqEYbdgT7YSaKLQUtK/VWgTgttMmfyAM2yn65prRSO9AkQKRmIIKwaaYeV7z5Pne
	RpMh15dGRBRYFL41yNcHagwQDGMgGzIe3V4ZVY9s00BDX0dhq1RfSSHXzRGMmdMBKr0Yhyfdh/i0v
	oQXcQfyUgSqx5hzHBvOf4RagC36wD+HboIjIzEdAgL6CeVdT8qdaOG/WXVspR9+V0Su/aDiZJpVdf
	C+AOSRGknp/fD1w4YtNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jksXs-0000bZ-QY; Mon, 15 Jun 2020 17:05:17 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jksXU-0000bC-Q3; Mon, 15 Jun 2020 17:04:54 +0000
Received: by mail-pf1-x444.google.com with SMTP id j1so8081879pfe.4;
 Mon, 15 Jun 2020 10:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=3ZukZRysDpxL7fluIxKkVz5UMBr+FzAndpusseTc58o=;
 b=RRk08ULTO8k9lQEnZPvMHzTmLcBYiBUfQqYtqU0+OXYULw/mQHXm1p+4jWfh6uWqVy
 XvGa5nV6UfH+8LUhazVxdugNTG+Ig2BKwdEqEvDlKp+/ZHCJfu0qmZmKLctYTHF8/5I0
 tKl+o71fVnw8sKFXKi9LBaLsLQAg0VW4fo4fxA/NEzSICTJ4lUJMEz4jPFxoW95ow25E
 evL5iC/gZi8hQ4RGxXqVBGGjY2giAMgQDXVSMfBkvIxaNpr9exnTy8EX3ZWjTPetND+S
 hghLTzEoONyP3+ZOXHPAA3tt2Kh3xb7m1gs8QFmgOGiEwnmMN1RG6Yle7Zih94TlqQXH
 gxLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3ZukZRysDpxL7fluIxKkVz5UMBr+FzAndpusseTc58o=;
 b=bwErms6HWyNY2sAiSY1OsR03uMe8h6GpADJ9fUE68CglGSBDMDmgeombRoMP6CkqIE
 1AVmwu4OIV02HrV0GYfl0Nh3+FBs8TskQjKrG97n1NEEsTJzY+pgjwCrX4OAwwbDRfz2
 Vx6O/9g9A1UJ70aN741E3tYHVJswHT7no8/YlRJblf2Mk7xv5jF5vyPrPS3IABBF/jtl
 hEFIz7yDGQcfNIMFZ3tcOP98gWKrTVzM1lw9vVRvTWstPMv6q4VmjoqvOG41wj+8qogU
 lARzOXmUKxt63PnGeE4p/BW/jgHYYivSfk0frc47Wg0DnhFBH58liS1km2APhDm8XhHk
 qJkw==
X-Gm-Message-State: AOAM532cNiz1E/Uh0mjpFO2HYp09JaUAIDbjJQCyZeZnwkaOYgLrnerf
 l9D25q1nQB2m0ElclXRvYdg=
X-Google-Smtp-Source: ABdhPJxkrT/eEFR2lr5RpODPo3zO/3YcXLxATPx3PWI7oA17rPMi1gELvyI+TosRvIfdlRhWVQPn9g==
X-Received: by 2002:a63:c407:: with SMTP id h7mr21679517pgd.174.1592240691842; 
 Mon, 15 Jun 2020 10:04:51 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id b23sm12254427pgs.33.2020.06.15.10.04.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 15 Jun 2020 10:04:51 -0700 (PDT)
Subject: Re: [PATCH v2] spi: bcm2835: Enable shared interrupt support
To: Mark Brown <broonie@kernel.org>
References: <20200604212819.715-1-f.fainelli@gmail.com>
 <142d48ae-2725-1368-3e11-658449662371@arm.com>
 <20200605132037.GF5413@sirena.org.uk>
 <2e371a32-fb52-03a2-82e4-5733d9f139cc@arm.com>
 <06342e88-e130-ad7a-9f97-94f09156f868@arm.com>
 <d3fe8b56-83ef-8ef0-bb05-11c7cb2419f8@gmail.com>
 <a6f158e3-af51-01d9-331c-4bc8b6847abb@arm.com>
 <20200608112840.GC4593@sirena.org.uk>
 <bb9dbf11-9e33-df60-f5ae-f7fdfe8458b4@gmail.com>
 <20200615170031.GA4447@sirena.org.uk>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <692bc94e-d574-e07a-d834-c0d569e87bba@gmail.com>
Date: Mon, 15 Jun 2020 10:04:46 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200615170031.GA4447@sirena.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_100452_870692_499F94CA 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, lukas@wunner.de,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Martin Sperl <kernel@martin.sperl.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/15/2020 10:00 AM, Mark Brown wrote:
> On Mon, Jun 15, 2020 at 09:34:58AM -0700, Florian Fainelli wrote:
> 
>> OK, so this has been dropped for spi/for-next right? How do we move from
>> there?
> 
> Well, I actually have it queued up for applying so unless I pull it
> before my scripts get that far through the stuff I queued over the merge
> window it'll go in (I dropped it due to it not being a bugfix).  If it
> were me I'd go with the two instruction hit from checking the flag TBH
> but otherwise I guess __always_inline should work for compilers that
> misoptimize.  None of this is getting in the way of the framework so if
> everyone involved in the driver is happy to spend time optimising it
> and dealing with the fragility then it's fine by me.

OK, how about I send you an increment patch (would a fixup be okay?)
that adds __always_inline since we know from this thread that some
compilers may mis-optimize the function inlining?
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
