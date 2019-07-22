Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2666970665
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 19:07:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jg04jRVCUsU9Kez07QAZxU3FURQwnJcTHdrvWxihS+g=; b=GxnYiie09QnG1Z
	mc4MtdC/bTdQ0jOIjtTltcmIftk2sISeiH+reBBK8ODUoJyfvo4H8FxqTdClX9ZCBKSI8VgzjdBom
	IANAJFOjbrr5rS1Q54vakCf6D2aZ8Ush2rR9xySeIkkxPt+9LDX8qieA0prUiqKiFsxTX686aTGPH
	gqhpb2Q5BMTKdeKD5EgEwlYbyztAM4L/536jhFfG8Hixmqg8ah42DjCnf4AYcPq5NXXY40oGZiGjs
	qAz2muFYV79B8KTUmJOkHkeE7IDAm1rtIDGblGYMTZ1hTKVwAZid1xtOz+TQ6D4TzCRwgzM49es+b
	c8dyg5fQKxWzbxUQgykQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpbms-0002Hl-1j; Mon, 22 Jul 2019 17:07:46 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpbmW-0002HJ-2D
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 17:07:25 +0000
Received: by mail-io1-f65.google.com with SMTP id k8so75604868iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 10:07:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0TKHVmpYowYp+z8r1gzs39hyeM5llWsZFOmeR/oEPIw=;
 b=NtRcsKbJ+gBwJGy2Bo9b/4U1gdsJWLnW3V6dSAVBd2ynr8RvGaAg/h46zs18vfTZa7
 WHyna/M9LJUnktKx+RHFF0i0EJHxbtnHV/QuHtpxK+bEL0zB2J7LrD//2xzUdmu6rcD6
 zKBWlxEYfIVz9XVlTwbeotxjqAHdwzEKVgiKvmZcBE/WRXSn/d7MNjK9AXxOt2mtiXn1
 gzei3725VTevD35AiVuDSuFnI2KGPTYzQrs0aGhwRMP68Dhggd2HD8hHFbNJFE1n19OF
 YK/Rwzq1EWZpqaYqnklCQUxQfeOj7wbHH1pwMlnP5f5HGqO2LVu3ZYUMv8rrcx91NGzL
 pIqw==
X-Gm-Message-State: APjAAAXEo7SccNwKgQG+qPAPfYESyR4VCI8l5a9o1ycXL8z9MDkeYKD5
 8d4gjTmhQZh1kW6GuhHJ9g==
X-Google-Smtp-Source: APXvYqywlOe9Bln+H5VDBcuJ2G9N9BSSNYkN/W6yLk3BvElGQtwQj/aF4fSQmFJDY/Yn5HQE6kkASg==
X-Received: by 2002:a02:9991:: with SMTP id a17mr46589517jal.1.1563815242458; 
 Mon, 22 Jul 2019 10:07:22 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id e22sm30446659iob.66.2019.07.22.10.07.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 10:07:21 -0700 (PDT)
Date: Mon, 22 Jul 2019 11:07:21 -0600
From: Rob Herring <robh@kernel.org>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v4 5/8] clk: sunxi-ng: v3s: add Allwinner V3 support
Message-ID: <20190722170721.GA6216@bogus>
References: <20190713034634.44585-1-icenowy@aosc.io>
 <20190713034634.44585-6-icenowy@aosc.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190713034634.44585-6-icenowy@aosc.io>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_100724_105715_DC3E653D 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
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
Cc: devicetree@vger.kernel.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 13 Jul 2019 11:46:31 +0800, Icenowy Zheng wrote:
> Allwinner V3 has the same main die with V3s, but with more pins wired.
> There's a I2S bus on V3 that is not available on V3s.
> 
> Add the V3-only peripheral's clocks and reset to the V3s CCU driver,
> bound to a new V3 compatible string. The driver name is not changed
> because it's part of the device tree binding (the header file name).
> 
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> ---
> Changes in v4:
> - Add the missing MMC2 clock slices.
> 
> No changes in v3/v2.
> 
>  drivers/clk/sunxi-ng/ccu-sun8i-v3s.c      | 228 +++++++++++++++++++++-
>  drivers/clk/sunxi-ng/ccu-sun8i-v3s.h      |   2 +-
>  include/dt-bindings/clock/sun8i-v3s-ccu.h |   4 +
>  include/dt-bindings/reset/sun8i-v3s-ccu.h |   3 +
>  4 files changed, 234 insertions(+), 3 deletions(-)
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
