Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C846164D23
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 18:57:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1OUReQwSC9/6sy0uI7NShYsXQcWA+hfyjZgw5hRrToA=; b=tbeOmxENtoO2Bf8ua30qAoA4QX
	zHgOsEqWdhobFEE14GXi219Dvd7ZxWjN7mNqz5CKQfbt2ZBELaNh2eMCXGo6GkZBis8xPwBFqS1kp
	dkXgzmDrJm6nwRUlgdoqCm41ZKTPJqa+iZqvbYdohnrMUVDdi/thGL2dj1xk+mpbESQxhSi352vbo
	7OY6st5tUmKRqi2Efx995GA4p/Z1NWjNj9V0h4G7d9GUxmqu0bs8TPEagqYiSD1UFLGCAVZMszHPb
	qLljFz4rKVew9muYpKbNTjUZ4DqeNPm33mF+kNYJG1qjR2SX+aue28QIdu0t7TfqIK5g5SOmnNy6+
	mAU3T+Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4TbR-0004Ea-E6; Wed, 19 Feb 2020 17:57:41 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4TbG-0004D0-Bo
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 17:57:32 +0000
Received: by mail-wm1-x342.google.com with SMTP id a9so1661261wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 09:57:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=KHboEJQ4V7KnKKRwo21hWQi19tJ6wvBUxs3FLeRZPmM=;
 b=NubdAZU+sSIbz0BV0mDakLLuTLcEqspzE4Up1DQtkWIpdW1mpgNM1v8RJ8ZZuhKvJi
 MWbF+35NEjHnzip03/uJuENbfIAdHWuamF8c69nFYf8zV/oVGHqSUZ630Fswm4XC1dXz
 5YvgY7LY2WqHCTIKhYcdwQ+R6HX4cffTVm3cfpYzg4Eu5XyaxWurXKwAMWFatKDl7RdO
 PwF98nY3P7BdedA9YhLoKZf9L8cjS/aJl3c0DkPJ45wMIxscmqwbW4Gqu5RHDGZJzlOH
 3ErQZHlJgoTkUGCUcLd9fsGwG4X59w8oZIXhFIykIQMVOmotCRQ/36uQA3DJfB4uT2nw
 EGiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=KHboEJQ4V7KnKKRwo21hWQi19tJ6wvBUxs3FLeRZPmM=;
 b=EFX3konwznEDj1EZAPeH9cLxhLa1QpN47rYLcy8Fe90/mxMX6j6tVSH5r7FmiWv68u
 ic4tnkivx+fCRWBXTAA9EIsV4neqTPc6J1cY+Ly2mI8rnEiHZR9g6gWkeJErOEToJgGJ
 MLzYU4/JWUe3r0N6SkdERSLQaz/f3Vg9OnqvWuYFP27b1zi01MHqtweYnnyBtKitV8av
 9lFFvZrPCwTEVaH7MHK6a3RCfH2cvz6ye7wyqaqDammgvBuhUuXKKGPOtenFtlbIUjQD
 99xsENvBjOduKDEqZD2QFqLJwbaJ6n6tpETpD+HATPJk39/2Gsm8B4bz3tXUPTDbDxL9
 IDhg==
X-Gm-Message-State: APjAAAWdPdhMAET7rIx5TzhCFJPcUA445sMm741PAwbSHHBEO/uacUcl
 Z5e+h+TJDM+VW3Qhv9RqgqO0lw==
X-Google-Smtp-Source: APXvYqzbs/Rr0atG2jUBRF7oE+i6F0iHSH+QTqV8GivqqqY0OmLGz1cSkAVCbjhN3skyuX9vVMLI2A==
X-Received: by 2002:a05:600c:2207:: with SMTP id
 z7mr10879867wml.167.1582135048910; 
 Wed, 19 Feb 2020 09:57:28 -0800 (PST)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.gmail.com with ESMTPSA id f8sm771899wru.12.2020.02.19.09.57.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 09:57:28 -0800 (PST)
References: <20200219084928.28707-1-narmstrong@baylibre.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 0/2] clk: meson: g12a: add support for the SPICC SCLK
 Source clocks
In-reply-to: <20200219084928.28707-1-narmstrong@baylibre.com>
Date: Wed, 19 Feb 2020 18:57:27 +0100
Message-ID: <1jy2sywjco.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_095730_399031_0AF34EAC 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Wed 19 Feb 2020 at 09:49, Neil Armstrong <narmstrong@baylibre.com> wrote:

> Like on the AXG SoCs, the SPICC controllers can make use of an external clock
> source instead of it's internal divider over xtal to provide a better SCLK
> clock frequency.
>
> This serie adds the new clock IDs and the associated clocks in the g12a driver.
>
> Neil Armstrong (2):
>   dt-bindings: clk: g12a-clkc: add SPICC SCLK Source clock IDs
>   clk: meson: g12a: add support for the SPICC SCLK Source clocks
>
>  drivers/clk/meson/g12a.c              | 129 ++++++++++++++++++++++++++
>  drivers/clk/meson/g12a.h              |   6 +-
>  include/dt-bindings/clock/g12a-clkc.h |   2 +
>  3 files changed, 136 insertions(+), 1 deletion(-)

Applied. Thx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
