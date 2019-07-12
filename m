Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E586746D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 19:39:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fOTWpCaiY+dMCTo0IZ/GFi9073y+iui0ZcoQcWHzlis=; b=rhMugX9whXm/Zk
	oy/j2jcCVq1QXSDDTduVVZArgtQ17pYqy6KV8sTLtpAkQNyREeiCRocmo5WcQ0qbIjlPQoUsSihDy
	8VyT9p+Rh1Gd7P2mtckeix9YEqJ0WDvi0aw/Ge2emQWdoBw0pKtGlRRPxZoVRn1K/J6HotwbcoKW6
	vglvd/MvcwJSKjMPG79YFhtzTCVkUlDP4X7+B49m9dgSSMJQte2Xis569lS//VSw8GggtyC0C6rkF
	cKiuEHGP15Lc6bXgUcsn/lq8LFlQEEG1ltdKAi9yFgcDlAy7TjTYyo129q5zcwYE4QwhM1auPDfMX
	8UYQbfd/lbDp5lXRDe1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlzW6-0002lK-6Y; Fri, 12 Jul 2019 17:39:30 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlzVt-0002ku-0P
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 17:39:18 +0000
Received: by mail-wm1-x343.google.com with SMTP id v15so9667876wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 10:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HVK6msgsGJnoGkWkZSEGcmqkYH7ZezIUmPb0VYKKhC8=;
 b=YDMKme+uIxGp66/wwY/EplhFxPQr/t4DYX0MgTS1iwGFTUYTuH9IPIIscAa4Y49DFn
 xs0xsYa9MiPtOazvV5Vm55mtSLN1n1uXfZHOm251IXGXvrFDVmjrrF703hHkppChUuCb
 ut47oyWLOt2h14yHSXbvy8TzgciLeMaX/Bnk/LbXupP4A1wNo9Gc77v3R8ezvmBGCyNA
 QRs2Ga7xhLQAMb0e5YdR51V5U1HoRMh8sI1cFbBCCrPq/lWBVZOWLNaqBaXme1cycf6j
 9hlY0J6oNMqbZGRrV647Did2RmJ6mfaWNK5eag+9rq5OkBQN6EHm/2fA0ZiOnmCv9o2X
 BjdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HVK6msgsGJnoGkWkZSEGcmqkYH7ZezIUmPb0VYKKhC8=;
 b=YvEJmYiBMxYoUDGfWzwkIHMG8bH8W+EZLLnA/vO7SZVqwzgsSyaQ1DTzpl3y0cvciv
 i2PSZYUCvolzgFPEJwSZDUf7u14L3O2dZgoEoAM9HOfCLuZ7NQwRbMUrZMbxiwoXVLAh
 tVexi8V7upPm8NGEGJLqnC80bOUbsZl0d1LmWxKsrfSa/h0E+Z+F/pa4+wZGKgtHcVA9
 KyeymEWp8EsduPTaYb8JuMtmY32CstOqW9fbI48mnGx8eMIpC5UemUfDAsW6VZERMjeF
 pAuwLpm0ihLVvBu7jSNl36qUPU5xjkmnfQ/fGDhMbs4dGZ0j/+CM0tNMEWblX0mg3X9u
 ZoEA==
X-Gm-Message-State: APjAAAVAFAK3YdThJVuZyvHUAyJHgV9I0ipWrKUgPBLv5MQ8EJq/eKmi
 z48hS8r4AyUfdVNMJMR5a6E=
X-Google-Smtp-Source: APXvYqyI3efZEXBVC3rLAHfRJtLgBtlDWsCsQ2i98qK4Rh68IgPXHBx/4Z1VX0O6Ypffde530ZrROw==
X-Received: by 2002:a1c:6a0e:: with SMTP id f14mr11253843wmc.154.1562953154626; 
 Fri, 12 Jul 2019 10:39:14 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id c3sm9887021wrx.19.2019.07.12.10.39.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 12 Jul 2019 10:39:13 -0700 (PDT)
Date: Fri, 12 Jul 2019 10:39:12 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] dma: ste_dma40: fix unneeded variable warning
Message-ID: <20190712173912.GA127917@archlinux-threadripper>
References: <20190712091357.744515-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712091357.744515-1-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_103917_052135_C3E7E782 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Vinod Koul <vkoul@kernel.org>,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 11:13:30AM +0200, Arnd Bergmann wrote:
> clang-9 points out that there are two variables that depending on the
> configuration may only be used in an ARRAY_SIZE() expression but not
> referenced:
> 
> drivers/dma/ste_dma40.c:145:12: error: variable 'd40_backup_regs' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
> static u32 d40_backup_regs[] = {
>            ^
> drivers/dma/ste_dma40.c:214:12: error: variable 'd40_backup_regs_chan' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
> static u32 d40_backup_regs_chan[] = {
> 
> Mark these __maybe_unused to shut up the warning.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Might be worth mentioning that this warning will only appear when
CONFIG_PM is unset (they are both used in d40_save_restore_registers).

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
