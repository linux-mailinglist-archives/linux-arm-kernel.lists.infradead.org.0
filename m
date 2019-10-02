Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2645C8D26
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 17:44:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0L3jTdVnFjuQRy23/V6iXnz/XvWa2GqfLdApTsAD5CY=; b=kiN/Sw6jO7oF2R
	yZBpPSoJG3ndRtcv3/lsW4GmP5EYiq8oFPT2tqymIw1chx7JZOuwWhNkyb1jDE7xN0TrXJ9QutCvQ
	ewdZg0PEPaMSUqh/ARC8RXMITATWwf0Y3X7kyBHbkCvKRqLt3sZb0EK3qWNb+d6NK5qxAR2PbjFS+
	mkiHy+ZRKoxbmyFGQRju7leWkzjST/3OKPqP7SsusKP1Z4CS3uyx6PpCuw9zg9aGlHuaqsnnPPpX9
	Ls3GSpUL9cKQS1cFuAdr+T+YQHNQaJX/hImPEa6Rnn7kDvLd1xNnitUmLOVihh/eHE7uWXvK3e/Bl
	GKYsqXOaufTmZfSd69Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFgnM-0007Jd-PP; Wed, 02 Oct 2019 15:44:04 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFgnG-0007JC-3y
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 15:43:59 +0000
Received: by mail-wm1-f65.google.com with SMTP id f22so7503788wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 08:43:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BgInN1Nm5Xz9lxIBW18bkLobu6WVKomQUn49FzyIe5s=;
 b=WvBcdMgz5m7rzW3CaWKReR8hqTTmOYMDhaylUuYLeOfVdeQuuvG5c4kIE8YTwTO1qu
 ayGsHbUX2ohbvaJb7rRj+gMMfKjFr84BwAgyFfzIGiGqkghm6DSMqskLdvegkP0k1PG+
 pZhq/hbK8WJWtw1wozywzkNKrGm0ykKvScsCWLWT6gr2P1KdigbhT799nIs6WwQJnt/V
 W4RkOC0ldckjjJM/fB50tLI4SWkfYvXETINWCc/vudvPzSauxYYieyqhual/n+1NSBIl
 4jRT7/z7dDd0gDKBU275uBGhuOaMs4E0IghcyLJX9+eC0t/7c7wH5tGj4Fo87oWEtsfN
 RA4A==
X-Gm-Message-State: APjAAAVXUizswXSa5YGX1bflHseYzxBbcrB8dee0dVh2Q80uZPbfJh/2
 kifVfsL+j4QxY/izpXv2rlUkzS5J
X-Google-Smtp-Source: APXvYqxw0nGRH6noCVgxK0QDW2pmYmb+ZnY8s23aA0YUQ7g9MzImAf7r7D1S79iqPtTz5v7BkfUwaA==
X-Received: by 2002:a1c:2144:: with SMTP id h65mr3615911wmh.114.1570031036574; 
 Wed, 02 Oct 2019 08:43:56 -0700 (PDT)
Received: from kozik-lap ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id z5sm2033823wrs.54.2019.10.02.08.43.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 02 Oct 2019 08:43:55 -0700 (PDT)
Date: Wed, 2 Oct 2019 17:43:53 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH v3 1/2] ARM: dts: exynos: Add support ARM architected
 timers on Exynos5
Message-ID: <20191002154353.GA3469@kozik-lap>
References: <20190828121005.29368-1-m.szyprowski@samsung.com>
 <CGME20190828121012eucas1p10bac7ebb742d968bca251f21dd3aad11@eucas1p1.samsung.com>
 <20190828121005.29368-2-m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828121005.29368-2-m.szyprowski@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_084358_158752_8B37A8A2 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Chanwoo Choi <cw00.choi@samsung.com>, linux-samsung-soc@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 02:10:04PM +0200, Marek Szyprowski wrote:
> All CortexA7/A15 based Exynos5 SoCs have ARM architected timers, so enable
> support for them directly in the base dtsi. None of the known firmware
> properly configures CNTFRQ arch timer register, so force clock frequency
> to 24MHz, which is the only configuration supported by the remaining
> clock drivers so far.
> 
> Stock firmware for Peach Pit and Pi Chromebooks also doesn't reset
> properly other arch timer registers, so add respective properties
> indicating that. Other Exynos5-based boards behaves correctly in this area,
> what finally allows to enable support for KVM-based virtualization.
> 
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
> ---
>  arch/arm/boot/dts/exynos5420-peach-pit.dts | 4 ++++
>  arch/arm/boot/dts/exynos54xx.dtsi          | 9 +++++++++
>  arch/arm/boot/dts/exynos5800-peach-pi.dts  | 4 ++++

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
