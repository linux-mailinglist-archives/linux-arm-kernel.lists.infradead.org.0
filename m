Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 206F5DCEDC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 21:00:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yC/Sxj3hRZfeM2lWp2lwlE00/DWuEKxgseI1usWq5sM=; b=EoNK6LwzCsYebhFCK2XviJWUv7
	Zt45mLfpKhH4NCsGAlB25n5qeVPvECyA8dXkNBKYnSblmmIVgMklah+ZTSMlvuuboTe/qsqmYMBGc
	I8MqwaI3EX2XcLZpBmcR+OngJkpEPAorAqst4V9zrt5GgLu8pZkhkdLyKnZLy7BBpYRilpeOr/HoC
	AXStlCTC1un9UANia+SjFQN/7s0F8ro8l4HXG+8OSOSdTyDsbvD06799SeBGfTsaFAESXey0CxYxC
	hBINuD7H2baLmAk0SNIXYz6bgZfFI5CENmxudTC8hMr3q3pXg7wd5nyFjHPcFi9l9roA/NJERT648
	ng/+l8tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLXTj-0003S8-1t; Fri, 18 Oct 2019 18:59:59 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLXTZ-0003RS-Cl
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 18:59:50 +0000
Received: by mail-wm1-x342.google.com with SMTP id r19so7217795wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 11:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tZnkkMS8Ppjf38TtJcQbsEMS2EZYYG5QiaTxSNSCmAU=;
 b=rrxq9qqc7DgaH0HdEaOBvv78Dadshyt0uH4Z2FokNryqzqMWRO9eBvltcFm378Xa++
 bwaJgv2+CmHnK4W62vOlGirt6vd3UCbbdZ17FAS7Tnxhlnwmn6t2YgwG2KXuUqv/xh8/
 JWMuZtrDA78BqXBQhp5njd+VT24TGBglgmNqUCNydzutvdXmW1FqwEczsgajwiwItPje
 1xuEjON5lFv9tDjd8ilU5/Gh8uJItE6kxL4/1KehGMCuhIroFz/aqjqNaQ0JB32vMbSq
 aSCqW3xJGB/xwuuw0EmLIAET75ep0kSOzGDGZS4YwKGHTymaRw5Pb2V3rjqLclTaIJi0
 RTUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tZnkkMS8Ppjf38TtJcQbsEMS2EZYYG5QiaTxSNSCmAU=;
 b=PCbf8pthAN3WIvFgvIg+EF2GpzdyKWacn4Z468IB3XNyizSDZkTxZ4N05FgHgcDHHk
 MtUTEdQqEWcS0UZKweT2CU0/1QvzQRfASMSPcCm6GCZjUF3yXvouHw4MIOmDB89tx31a
 OvtmTWiTFYy5cg817jVgpBYDLDhJj8Vq2vE9QyM4OTQsyiOsNufMYcpD+kPCIsGO8bIE
 r69QQxtkzOvPs/kwH1Cku1xhm8QlK5E7Uk8PhYTnxSe0P5lKgXmJ+5x9cf2kDiTOqj8P
 VlZfi7caxdQOhYLebKxKBU9Asfz5ezC+/H+syj6RTawPEoF2E2niMyD1dNM9rwsPc7w1
 C3OQ==
X-Gm-Message-State: APjAAAWyvqR2axL1Ug5L4K6WStP8qrMdzURFWISljaR51rvEXiXKSFez
 t/kbuZgGnWpAtczQJSIy7XpXNN1/
X-Google-Smtp-Source: APXvYqwOa7xYCv/z3IBAcMPtD7kUb+dbcqrunj0PNN8ffzwuvTxLzcPJEazdIN4Y+Utte6EaBlzaBg==
X-Received: by 2002:a1c:5609:: with SMTP id k9mr8690094wmb.103.1571425187005; 
 Fri, 18 Oct 2019 11:59:47 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a204sm8327224wmh.21.2019.10.18.11.59.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 11:59:45 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Anholt <eric@anholt.net>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, Pavel Machek <pavel@ucw.cz>
Subject: Re: [PATCH] ARM: dts: bcm2837-rpi-cm3: Avoid leds-gpio probing issue
Date: Fri, 18 Oct 2019 11:59:41 -0700
Message-Id: <20191018185941.14223-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <1570964003-20227-1-git-send-email-wahrenst@gmx.net>
References: <1570964003-20227-1-git-send-email-wahrenst@gmx.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_115949_453846_C674F6E4 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Dan Murphy <dmurphy@ti.com>,
 linux-leds@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 13 Oct 2019 12:53:23 +0200, Stefan Wahren <wahrenst@gmx.net> wrote:
> bcm2835-rpi.dtsi defines the behavior of the ACT LED, which is available
> on all Raspberry Pi boards. But there is no driver for this particual
> GPIO on CM3 in mainline yet, so this node was left incomplete without
> the actual GPIO definition. Since commit 025bf37725f1 ("gpio: Fix return
> value mismatch of function gpiod_get_from_of_node()") this causing probe
> issues of the leds-gpio driver for users of the CM3 dtsi file.
> 
>   leds-gpio: probe of leds failed with error -2
> 
> Until we have the necessary GPIO driver hide the ACT node for CM3
> to avoid this.
> 
> Reported-by: Fredrik Yhlen <fredrik.yhlen@endian.se>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> Fixes: a54fe8a6cf66 ("ARM: dts: add Raspberry Pi Compute Module 3 and IO board")
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> ---

Applied to devicetree/fixes, thanks!
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
