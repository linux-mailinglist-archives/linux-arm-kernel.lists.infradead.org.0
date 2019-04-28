Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AACE3B6AD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:32:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EIFn6zYrLHp4uNo3tAnbmrWFx6r6Le8t0mfqHwI9Exk=; b=BqVwzQUOD1uIBj
	U4OUg2xmGULWNnunBljVjSgqF2ofMD9c8yl+lQm9a2lJGPR8E0JthtHsI+JtpWK/2HsoEMQWAtmzd
	se4DSkWSEgTwY4utxxnoqO5F7lFjx3wW64HQ/oYx9cQITksbj9p6Du1gJtsF1eSw9bVJ1Im3lwx7E
	/qYd9IS3CXDRhnKfqjosHIqdZnc76jPhfz45PZg+R0mYT04/yLowMY2W46FXzd/pJHXFli8QpV3al
	/Z+7fti2+LwlpcJyjPghn7KjArQXSEfxna9nRBFJBE5RuQiH0gubrsiWaLuLhRGbHcofG/WYqzbsX
	GJAKUYskYbvZqROoEDSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqTH-0005Fy-Cn; Sun, 28 Apr 2019 20:32:23 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqJ4-0002Zn-DP
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:22:13 +0000
Received: by mail-lj1-x242.google.com with SMTP id c6so957949lji.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:21:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DEHiCta3bLJo4M8xBModK5JIQr/fGdj3t6NwgsqeMf0=;
 b=TKfSyV7lVGj6D9AFuI4jwWSg/5Slfg7J4ZpgE5XgEnP/VrdNb6ix487kmR41/z/tCT
 AW+loIW0k15VpBUP3jvFoL2jCDViq6bDqwEAXfadxVm+Xu7YGhJUQobrmd3kn4tm3wNE
 DmILq85iKfi0FvMIuE2YIBJZgcqZbicDrT4UH5YdbO8l6XCp1czsV9FheKVUL3VV8Lll
 OY2eqpTfvL0lBy3rBVNIMGxEwbdoov9dM8plNx/xaPquXfPP8y6yXkM3fo0ip4uArPep
 ZGTF8dWpqDvgfhm7RfbZ/zNhvGsqlBuHqeo05oF7Dw9+FlrNoMhGddHUxunI7MUim34E
 wAvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DEHiCta3bLJo4M8xBModK5JIQr/fGdj3t6NwgsqeMf0=;
 b=Qk2CeXWykso0Se2gVtO5XsropJ2TNl459dB/OV/WukM3woDH0FN7vA4xCZTmz14J1v
 m5nJd5bpFXKZMuxIJv2wgEBE0z3frpeUlOo/Ni2iFkkzbNTzjvSwsEu8P/YF1bkZaawk
 /NqOHylJorfX0xipSh8YCTIzCoNUXCF7SaZAx9PeWYK2VUfBqZrA6QLGoiu/zWQooUAh
 daj8i1+ARxbW3lXR8P5ikgyq5XfpLxFsf8yC6mhLMlZWTmS/m0tT1obCU8vUFrzZvnE0
 +e2KO7lM4mFb7ZORuGDYTfCVbwHUtmqdDqkCdiPEIRDqNSUw5v5wr3rSCeTq0rNPjdlV
 UoJw==
X-Gm-Message-State: APjAAAUgF8gONrRNf5+XyjxqK8UiwJ5QwX+Y/2Kt8rtxeKdzR1u0SmPm
 zXM5ZQuXTo4I5YJnuDYhgITfmw==
X-Google-Smtp-Source: APXvYqwCKPj8/27tfETDQsUqqwZHSOpOZFxhY/2s2IVsOttlOtRhepjfrnMcaDzeaDSlkpWoeSnj3Q==
X-Received: by 2002:a2e:9f53:: with SMTP id v19mr8700539ljk.0.1556482908751;
 Sun, 28 Apr 2019 13:21:48 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id v141sm6903148lfa.52.2019.04.28.13.21.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:21:47 -0700 (PDT)
Date: Sun, 28 Apr 2019 13:02:19 -0700
From: Olof Johansson <olof@lixom.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] ARM: dts: gemini: Indent DIR-685 partition table
Message-ID: <20190428200219.aphlhlzyxxtyngzh@localhost>
References: <20190427095451.5170-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190427095451.5170-1-linus.walleij@linaro.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_132150_882687_402421A6 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 27, 2019 at 11:54:51AM +0200, Linus Walleij wrote:
> It is discouraged to have OF partitions as subnodes directly
> under the device, create a "partitions" subnode and put the
> partitions inside it.
> 
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> Hi Arm SoC folks:
> Please apply this directly for v5.2 on the appropriate DTS
> branch. I do not plan any more Gemini DTS changes for this
> kernel cycle so a single patch is simplest.

Applied, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
