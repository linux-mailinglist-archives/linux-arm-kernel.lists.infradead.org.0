Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 579287E320
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 21:12:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=asDDzxpmt9qHZs3cLm8r9HEsqgObrLxk76nLGjyJ+FM=; b=nfk0ZKVkua38uv
	7hhtJA2d2L6SG8lgD8qMIoG6srX2su40B3wbS/dDNisicB9TYS5UZVM61DiX+qqFVbiskCU7sPY7c
	4woeeu4F73qLC6INjhClxe63HdeHdYWhb4qBQT0gHZOz56zU95UWBXDON5lFhZ92cMAzn87gDylSr
	dtVwwdAMnknYvQMFxYYjviI/rAFMyigi77aPhWhaQ/fGMYolhYukeTXnFosDuxxw+2Lbpnx1KGs7L
	2/Q22Mdhj7vc09uIf8yJZN3Ns3nSg6RV6lmMjj3zU7nvbYf3NymONW4bcLR2FtEPepSFRp2dgo/CZ
	FDeV76HtcQlyXrbnigiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htGVG-0003kl-Nc; Thu, 01 Aug 2019 19:12:42 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htGVA-0003jr-2M
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 19:12:37 +0000
Received: by mail-pl1-x642.google.com with SMTP id ay6so32666038plb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 12:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=u3M46kJjAPF4b1mqVIN/QqF1xk0nbqKlZydzEhZoL6s=;
 b=Iu1CH4ToXYW90mTOdeHkqHqps0H4/Jt6nXnjawYRwpFRpCQ3R+FOjlvAHtsf0q+cca
 g/GwPjYINrkuM0M27UfcxGN0Hpzq1z+zbIQRr9A8cLNBE6045TW8YO5B1jv+3zrSM+AI
 RwmR2ijMX/YKSlorl4qZN6W9VRTC6OW7Mk6NYDrjpVniQ6cLad/+XzqpNwinuFtcNb6o
 GTdsYR1aNvUhF9KHd0BLzgdnZis8Y+VjfG/T5HxcorMnvqNAW8q864HiIsdjCkh4XWvu
 mGmSsJd4vy/0+OKrbqrS2lRjhwOvHCzqJiDH6nI0GAHQ2FHm8Lic/V7jrb83izS6/2/D
 KuMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=u3M46kJjAPF4b1mqVIN/QqF1xk0nbqKlZydzEhZoL6s=;
 b=dVP7QSSIoPK1mQH9+ekOcQktSB0+Bsz4blSnyY/LZWp0UyQtmkbNgAKSwR3uwOPUqG
 wTzopnok7AxJRR++o53nYYCrBc4sb1bFBI2wB7+90mYz1XbqgclbhY/7HjNRlPoynAPC
 a/z/KSvq8kXPHivfC3HBy0MUwh1EsXLmBRUFucCxGFbRt4/gbefRbHi1WZYQ90GFcjbh
 mC0auDhyQYuy/HTkVDMX94YjhdvtkS3MoTXIuoChdS2hnvY7R2Jcq2V2tweXhqjAP34c
 2sF1iEvB0JM4EA6z5g68Xzv7HlDYRSfYrSbfnooxGQfjP3Vg3nLxQeLGEOalaq9aVbvQ
 aEqA==
X-Gm-Message-State: APjAAAVE98HXdElHvAn2jwPyUepAf59A/NzrnB4DaCUURNRtI+rhOGlD
 WZKcfCcrDew1Fp5VXqohEA2o3A==
X-Google-Smtp-Source: APXvYqyXQfNjDuCkBrlF9sH4WaQpLYB6kh01jQJmr+SAa0EdEbp3B9CGOkSzrUP/hpK0bXspTKw35A==
X-Received: by 2002:a17:902:d90a:: with SMTP id
 c10mr124505738plz.208.1564686753720; 
 Thu, 01 Aug 2019 12:12:33 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id q4sm5434151pjq.27.2019.08.01.12.12.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 12:12:33 -0700 (PDT)
Date: Thu, 1 Aug 2019 12:14:03 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Fabien Dessenne <fabien.dessenne@st.com>
Subject: Re: [PATCH 0/6] hwspinlock: allow sharing of hwspinlocks
Message-ID: <20190801191403.GA7234@tuxbook-pro>
References: <1552492237-28810-1-git-send-email-fabien.dessenne@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1552492237-28810-1-git-send-email-fabien.dessenne@st.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_121236_142304_0AA0E77E 
X-CRM114-Status: GOOD (  20.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Mark Rutland <mark.rutland@arm.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Jonathan Corbet <corbet@lwn.net>,
 linux-doc@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 13 Mar 08:50 PDT 2019, Fabien Dessenne wrote:

> The current implementation does not allow two different devices to use
> a common hwspinlock. This patch set proposes to have, as an option, some
> hwspinlocks shared between several users.
> 
> Below is an example that explain the need for this:
> 	exti: interrupt-controller@5000d000 {
> 		compatible = "st,stm32mp1-exti", "syscon";
> 		interrupt-controller;
> 		#interrupt-cells = <2>;
> 		reg = <0x5000d000 0x400>;
> 		hwlocks = <&hsem 1>;
> 	};
> The two drivers (stm32mp1-exti and syscon) refer to the same hwlock.
> With the current hwspinlock implementation, only the first driver succeeds
> in requesting (hwspin_lock_request_specific) the hwlock. The second request
> fails.
> 
> 
> The proposed approach does not modify the API, but extends the DT 'hwlocks'
> property with a second optional parameter (the first one identifies an
> hwlock) that specifies whether an hwlock is requested for exclusive usage
> (current behavior) or can be shared between several users.
> Examples:
> 	hwlocks = <&hsem 8>;	Ref to hwlock #8 for exclusive usage
> 	hwlocks = <&hsem 8 0>;	Ref to hwlock #8 for exclusive (0) usage
> 	hwlocks = <&hsem 8 1>;	Ref to hwlock #8 for shared (1) usage
> 
> As a constraint, the #hwlock-cells value must be 1 or 2.
> In the current implementation, this can have theorically any value but:
> - all of the exisiting drivers use the same value : 1.
> - the framework supports only one value : 1 (see implementation of
>   of_hwspin_lock_simple_xlate())
> Hence, it shall not be a problem to restrict this value to 1 or 2 since
> it won't break any driver.
> 

Hi Fabien,

Your series looks good, but it makes me wonder why the hardware locks
should be an exclusive resource.

How about just making all (specific) locks shared?

Regards,
Bjorn

> Fabien Dessenne (6):
>   dt-bindings: hwlock: add support of shared locks
>   hwspinlock: allow sharing of hwspinlocks
>   dt-bindings: hwlock: update STM32 #hwlock-cells value
>   ARM: dts: stm32: Add hwspinlock node for stm32mp157 SoC
>   ARM: dts: stm32: Add hwlock for irqchip on stm32mp157
>   ARM: dts: stm32: hwlocks for GPIO for stm32mp157
> 
>  .../devicetree/bindings/hwlock/hwlock.txt          | 27 +++++--
>  .../bindings/hwlock/st,stm32-hwspinlock.txt        |  6 +-
>  Documentation/hwspinlock.txt                       | 10 ++-
>  arch/arm/boot/dts/stm32mp157-pinctrl.dtsi          |  2 +
>  arch/arm/boot/dts/stm32mp157c.dtsi                 | 10 +++
>  drivers/hwspinlock/hwspinlock_core.c               | 82 +++++++++++++++++-----
>  drivers/hwspinlock/hwspinlock_internal.h           |  2 +
>  7 files changed, 108 insertions(+), 31 deletions(-)
> 
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
