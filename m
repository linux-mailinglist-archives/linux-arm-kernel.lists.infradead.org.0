Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A35C1BA6D3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 16:46:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a8JKzf/iehwwBQs+6NPghb0ZkEPtteW5pR7JL4DRhs4=; b=mGgpBEkN27ipsH
	LPYSuMGJIOrUJWgd2RrYZtmkaFvYjnz/1LnOjyfrYdFnF9z1RIUnLIEQx2uuC8OxpSsShZPA+YMW7
	OhlxmTZlByhVgBMbcUyXFvy0tm1WHcoR1qTuNm4fwHdXv/kV7vLMOIJMxFf5nRMZR9/0X/dHjjYf1
	pTG53nJo/W1tbfz7pUuPeCh+MreP7agg332tf4A7s/zkF/Dht0ZFLpZq7UeJVRjw0gbBXJ9bqQ9hH
	QsK4aeyu8x73EG8Dt+yDC7sOqUSDHh9fXkUrE1kF0nw3W4PzeOBPD0QB58XWZJFThXIVi4QN/VKRc
	DBpYGeve0ZQcnFQwtM4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT51E-00046F-I1; Mon, 27 Apr 2020 14:46:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT513-00044j-5V; Mon, 27 Apr 2020 14:45:50 +0000
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
 [209.85.208.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6B47220728;
 Mon, 27 Apr 2020 14:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587998748;
 bh=hzyH6N5EnDxhPKQQ5UvUR/8HV/kEX+gyqgaSd5fYiJM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=a4HIWd9Qbyw7ELAfzbc7ggl1+0Nc3Xu00nmH0hlJk/DLP4Cs5Z6yM+hcMt0Nqk10z
 HStRqb76tx7vxWgQ88hK9ixXDfH9VNt4fIMsLVQ9HT60o5QNA8yP0b6QlFWDOJo+94
 HodFiwyK0j8+v/OLPGEvGRcFcpOvAVTJz/mtj868=
Received: by mail-lj1-f173.google.com with SMTP id b2so17830728ljp.4;
 Mon, 27 Apr 2020 07:45:48 -0700 (PDT)
X-Gm-Message-State: AGi0PuaU+lmMjznwJqcNSBUAwFdBNwurfC6vQX7uizRgXRq5k10Gq4cv
 3T5WaXkbac0wGmB36GedYf/+NBsnXYA4FgnMRSo=
X-Google-Smtp-Source: APiQypIYAxuucnWJ+KLeLiZ/eZeN9zwsLRkWbBppV3NYP8NhxpBQLXs9ImaV6BNcc6lA42ZvRxZZcB46DK7wq1k5/iI=
X-Received: by 2002:a2e:2a82:: with SMTP id
 q124mr15173172ljq.155.1587998746563; 
 Mon, 27 Apr 2020 07:45:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200427073132.29997-3-wens@kernel.org>
 <684132b8-4a84-8295-474b-38ccb992bba7@gmail.com>
 <CAGb2v66Piu5_2bdqvWV3eEn2Se_y1MNKWvvYBv_J7DA-8jBhbQ@mail.gmail.com>
 <65d15254-08da-895c-1a0c-ef6ce231b620@gmail.com>
 <CAGb2v65fGYguNoksq5Dyx3HTKeYg+U82TiQSL+NO8AUcQJQj5w@mail.gmail.com>
 <74a984fc-ce57-211b-936c-2d77e2e642bb@gmail.com>
 <a81840d3-813b-51b5-767c-e0d9d270200e@gmail.com>
In-Reply-To: <a81840d3-813b-51b5-767c-e0d9d270200e@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 27 Apr 2020 22:45:34 +0800
X-Gmail-Original-Message-ID: <CAGb2v65Gtm88MJTTw_MxB0sc8m5=EVzom7zw2Ro_UJgqjOQKkA@mail.gmail.com>
Message-ID: <CAGb2v65Gtm88MJTTw_MxB0sc8m5=EVzom7zw2Ro_UJgqjOQKkA@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: rk3399-roc-pc: Fix MMC
 numbering for LED triggers
To: Johan Jonker <jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_074549_233871_01C1CF8D 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree <devicetree@vger.kernel.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Pavel Machek <pavel@ucw.cz>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, jacek.anaszewski@gmail.com,
 linux-leds@vger.kernel.org, Chen-Yu Tsai <wens@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, dmurphy@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 10:12 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Hi,
>
> >> So for fixing up the LED node names, we'd probably want the following:
> >>
> >>     diy_led: led-0
> >>     yellow_led: led-1
> >>     work_led: led-2
>
> Change proposal for led nodes to comply with preexisting dts.
> Does this work?
>
> diy_led: led_0: led-0
> yellow_led: led_1: led-1
> work_led: led_2: led-2
>
>
> blue: led_0: led-0
>
> A check does not give any warnings.
>
> make -k ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/leds/leds-gpio.yaml

IMO the led_N labels are kind of useless... they don't convey the
information needed to identify the device.

A reader seeing

    &led_0 {
        linux,default_triggger = "activity";
    };

in some device tree (overlay) has no idea what this snippet is supposed
to do. The person has to go back to the base dts / dtsi file to figure
that out.

But seriously, you should start a separate thread to discuss this issue.

ChenYu

> >
> > That doesn't look pretty either.
> > Would like to hear the maintainers view on how to handle other cases
> > without 'led' like for example 'blue' for mk808.
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
