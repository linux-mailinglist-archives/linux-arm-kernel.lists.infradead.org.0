Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9FD49F127
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 19:06:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vyhsz2leP0aIx96ez+QmV10zaD6+pWNK3Zl5NT24wv4=; b=LmIhdQp83tBBJb
	+JGs9DfsFkIX4xwXBrvv7sRfm7tTiCV8w/WH1QBfr0xOyQo7rZRafKoXpSi9BXk/byoEV376vmKEO
	zgv0cdlNtkAHlQ4FLN2p1Q37nvtPIFjQ7caRZnsfD2zaxR/Hvli4avVUIICQ9DVGNj0QUN+CoxjYC
	Mlzt/dyPkDdXj3Jwr36zT5XNcE2E8kJ9YXP5V2ZKROv1Y3FpeZDqqMINPOfJS8mz3gZ6eV96LvGN/
	pcDmd/htweV1tuIdCJa1iO9nE0l4+9sAWI6N3bm0MXGhPmEHsOIJiUYLX+9IXnPJlk3yqS83Za/wL
	wvUvXI0QdtdvzXMCldXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2evE-0000gh-Ip; Tue, 27 Aug 2019 17:06:20 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2eu5-0006iS-WF
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 17:05:13 +0000
Received: by mail-ot1-f67.google.com with SMTP id e12so19357248otp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 10:05:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+gB1Kla9RO8vfObOwL3Zz+I0DqxA21AD90CmgmUfSMU=;
 b=HAUXtPwU5GHtwO65JsHKpjFvz9ZnWYlBkZ7g8jJZJ5pot1WdbBYtNQKBbOngyBW7vS
 arEUM4HxJpFt11JKHKyJGemUWc+9q0bH0hKjiiBLWoE5OTm7nQH7uYDSaKYelEUBP+kb
 qhtFSf4BQlJTMZstIDCpYXWKjpPsiHcxxGgASihB95uBFraGsL7Qio8dyCFsHbg3I0ug
 QbxwkiW/uHOZ8YkaBNLdKH73xLfWeuBoHNCQogNI6kfy1T3qLzzCx5b39ai9g8RV8A2H
 6X/dLWy8OT+rvJrh5Hipn88fl74O0ZcjWtoewQqan7y028MaHuNeF6b05gmnAJ6/ek5G
 375A==
X-Gm-Message-State: APjAAAWMlckwk3r2SsnKerBY912YALFFHwH0cs22h8ZN9sOOqJB+FfX+
 aiCXfRP4YaX4X+NAnja9eg==
X-Google-Smtp-Source: APXvYqzHBNcmJDDpan/WxDf0ZvA9bvKRVFpjTGeXe4nK7SEkveYLa6EsV/XHxkTBjZz4pnXQa5wvNQ==
X-Received: by 2002:a9d:7d12:: with SMTP id v18mr13007924otn.342.1566925508616; 
 Tue, 27 Aug 2019 10:05:08 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 20sm5617048oth.43.2019.08.27.10.05.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 10:05:08 -0700 (PDT)
Date: Tue, 27 Aug 2019 12:05:07 -0500
From: Rob Herring <robh@kernel.org>
To: Dong Aisheng <aisheng.dong@nxp.com>
Subject: Re: [PATCH V4 02/11] dt-bindings: clock: imx-lpcg: add support to
 parse clocks from device tree
Message-ID: <20190827170507.GA16423@bogus>
References: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
 <1566299605-15641-3-git-send-email-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566299605-15641-3-git-send-email-aisheng.dong@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_100510_061833_819C4CA4 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, devicetree@vger.kernel.org,
 sboyd@kernel.org, mturquette@baylibre.com, linux-imx@nxp.com,
 kernel@pengutronix.de, fabio.estevam@nxp.com, shawnguo@kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 20 Aug 2019 07:13:16 -0400, Dong Aisheng wrote:
> MX8QM and MX8QXP LPCG Clocks are mostly the same except they may reside
> in different subsystems across CPUs and also vary a bit on the availability.
> 
> Same as SCU clock, we want to move the clock definition into device tree
> which can fully decouple the dependency of Clock ID definition from device
> tree and make us be able to write a fully generic lpcg clock driver.
> 
> And we can also use the existence of clock nodes in device tree to address
> the device and clock availability differences across different SoCs.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <kernel@pengutronix.de>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
> ChangeLog:
> v3->v4:
>  * change bit-offset property to clock-indices
>  * use constant macro to define clock indinces
>  * drop hw-autogate property which is still not used by drivers
> v2->v3:
>  * no changes
> v1->v2:
>  * Update example
>  * Add power domain property
> ---
>  .../devicetree/bindings/clock/imx8qxp-lpcg.txt     | 36 ++++++++++++++++++----
>  include/dt-bindings/clock/imx8-lpcg.h              | 14 +++++++++
>  2 files changed, 44 insertions(+), 6 deletions(-)
>  create mode 100644 include/dt-bindings/clock/imx8-lpcg.h
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
