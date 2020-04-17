Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A941AE687
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 22:10:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P8gDSFZCH+FuEuZT3ruJ681e+ndYiDQpaeEvo4SgJto=; b=HGJGWRFTtQh7pX
	uK8u2gMfiau2Bt3zVF8DfI4YNfu6Noc3Zf8/y2NFhf2A9Crg4KuTpMn5dboiCWRMH2zEd3/sYaSKa
	9rI7OFS7Vck1s0W3roXEWLq9xlJMTnjXvGtO0sz5POPdVLofITFJ6ZR+8/QZwPM+94jD25kt4ulJp
	CKZ7QnqeB1LyrLpQ+oqptUWlrqqbGqJVuDDiYzY02O+e/WXEvvD9vk6QwHO6EOQYVwyJbIRev+az8
	m5SrKxpIdq3PV0KriOrPuBf8Lo1e/rQFFL1j2drBHw9afex9etAaS67HNXHx/Fsh7+YLcreXLCCgb
	5O6FVNQpYOEGFdkSqNMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPXJl-0002Qk-9r; Fri, 17 Apr 2020 20:10:29 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPXJV-0002Pq-Re
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 20:10:16 +0000
Received: by mail-lj1-x241.google.com with SMTP id l19so801536lje.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 13:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Nn6G8tOQDnhZCGYyqE58VkBwJRY/Jdvi62QL2IbYz3A=;
 b=NXNZ+W4Ro39UanrkLkeev1kwQhCojeyeO7cmeaA/B2+Fvjht8CfmC9aNSp78fuOzsa
 c5d3Oz8ry+WH9gqAa7xiZfgjlSS33ys/wiqM6ZfZLHe9yZgOmLMWpTCefYmaVXBNTqFG
 Dzu1k5cK3ErFXC8dW48gQrS6VBivsufqlWvaL21b3YquvG8S2mCHneh9HkviuFfhQztO
 wSHSz0CSkGEXNNBVs+35pvrT1j99TbalBy89M2RB4ZhesKOwYJcSREA8UBOXoUVOAEfu
 sU1p843GDbUynMth6isTHlMW2691kOrOA0/y2Q5SuovIdjxkk8cr98jwwms3Dxm4dfLO
 TzqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Nn6G8tOQDnhZCGYyqE58VkBwJRY/Jdvi62QL2IbYz3A=;
 b=JFKBYo5U9D09XY9FDGJqIx5hBO9MAl5OrPHXPzdvRuSxXicEjtmZHqrlM7NIGLRsKo
 hFjHY8GXRVNgscxW8Pd3HKqbthbLArRMZ2kqKrT36MJxVMTA3tGne54BqMCIG+20OJX4
 yxHCQgNsEApNVJn8IxAY2NmXuv406aJvuQC4UhJYYWIyJ3MscbWhDdbXSLqj/xQQCaXi
 beGATtiJncEpsZ9MyQ9EEaIZyYbtcphZy4wea4BqjgEACFXc5cA3o0wULvO7lkuWehiz
 k+f3j+6vWHubD1tU9nnHPeDo4bAs/ZoX99TP6cg1uZlRa/iRcbIz6aBc2IqfEmOrnbTt
 whpQ==
X-Gm-Message-State: AGi0PuYVUkhNcYqu23l8TQ8QTl0ctgNgFJzWcX9xFob76wFwbwc59pVl
 QLck6I2nrRpq0sSdwEnjCt6YGt4pfCDuvlEArrYb+yc4
X-Google-Smtp-Source: APiQypLmo6iLs0Vo2SZfZMAO1FiAm922yRX8/1hFzV5YcdLsR9PLK3r8zfYrnEhDB4UeQEH1/if/YU25XDJlQ10GWJk=
X-Received: by 2002:a05:651c:32e:: with SMTP id
 b14mr3143246ljp.277.1587154210420; 
 Fri, 17 Apr 2020 13:10:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200409013947.12667-1-robh@kernel.org>
 <20200409013947.12667-2-robh@kernel.org>
In-Reply-To: <20200409013947.12667-2-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 17 Apr 2020 22:09:59 +0200
Message-ID: <CACRpkdbTO+fdW9EqEJQ=BUki-c4Nn6uUaD_TPf4Y2DyxM2TEsw@mail.gmail.com>
Subject: Re: [PATCH 1/3] drm: pl111: Fix module autoloading
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_131014_425942_744BC6AD 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Eric Anholt <eric@anholt.net>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 9, 2020 at 3:39 AM Rob Herring <robh@kernel.org> wrote:

> Add a missing MODULE_DEVICE_TABLE entry to fix module autoloading.
>
> Cc: Eric Anholt <eric@anholt.net>
> Cc: dri-devel@lists.freedesktop.org
> Signed-off-by: Rob Herring <robh@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
