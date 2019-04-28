Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D91D3B68C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:23:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pap03SiwSYQm8PcSoeIqpvS8paKm9o4zKzeCHnxZ09Y=; b=l0LNKmlLYXH8MV
	iaWkC2ADSyHRf8cbcDnc6TdMjLOscBYVttZAFcfOfBmbMs1mF3LuTrYDBBvja3c/8PD/1BWq9YzLI
	QzwBq8J8HxIdB2rIExj88EY6bolmDwSVI8+RhbbeCbypo29nV2nt/lPUAuCl0vpCdl5oOFWkd1Tn6
	hwg4C799IDwvmSWi9h0c+hRvyEUMV3wx0xgnwIYEqBF26g3yu+TEd6MXQjw0pqjlJy3U1XmE5LN6J
	hyvLatN0fQF9R1/gof+ERmtdYyAgoQ6eKezngXQ8mMjDv4X0ZLfOAM010phIvMwHOtKnuwlt5OYy/
	KtlrhaatBvH4QD05icvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqKM-0004Gs-5J; Sun, 28 Apr 2019 20:23:10 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqGv-0007mu-Ux
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:19:47 +0000
Received: by mail-lj1-x244.google.com with SMTP id f23so7518468ljc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kq2xjEbQ1pYHiLR/ruZJt9qeXnv7/W0rNTiT+/HUPmY=;
 b=QZ06p5rTCtmFHdlZr5MYULlBc9DM531lIylBYds9ngsItalb9TU+8gtCVKQaobCOCh
 aGWBsC/4UuZIoUAzWQxd8psYF1UhODtHFpR7tHIbxy7Sk+y9r1KFqjcEqBQWAkNBpYpU
 GUPtI4zhLSZ504hZ/BPWzW8E7rf2e0zv8P9SfUasKBumghF8oC8UaT6vPHQq8TlnkXQh
 vJd2gWSR+BDNZjts30INq/iw70QTyu8yppv1JH6MDpIyY7Hm0mmMljNb60AAEJzyijid
 2Sxb8OKQb9/a/CmSnYM3LM1zJ8gq8EWsgVbQEKfc1CiN45p0ggHyytROnZHZoovOdeaM
 Vgsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kq2xjEbQ1pYHiLR/ruZJt9qeXnv7/W0rNTiT+/HUPmY=;
 b=PYUkgmOKJYBBoiHfxqpMYEBgsjk6l2L0Vv+QKnQKa2mqnPOYNrUnDpxVFCbsXowQRa
 LmNU2M3j7twHUeXYzoTvfaSuRmpVLdi9Ir81C2IXlgWAZUXWnzbHo+AbJP3zvNtpge3A
 WJroV/KOJsLggXVqvjCpD6trP5FnLja/Kge8iTWdT1JF60SRrpq6vMfBfrAQNYhrmblq
 f/0/yy5/1imOoDYK8iEU2L2SH8E+Dd/GMoAb3fo2KAGPrxhwl79lx05Go7IBWBCwHFfN
 dkcL/5fm97kpMATaDdYP+GCAWPvSdtWWgqJYhhnYkfuz744I42wLoJY6SxQP8uNwIu8P
 4QEw==
X-Gm-Message-State: APjAAAU4J7Uypm+IXXFjL4u70akN8e946YFHrIYTmGJHqfb+dWkU0tyE
 jJDa9I2iTMjFY7ZiXLwkxyVcdQ==
X-Google-Smtp-Source: APXvYqyxXbrTVPAR3WJSdl+sUMC9IalmmNsmLSUgFzI6FiDgT/MpKWUCaQ2FXMYdGdGoBthH9EruAw==
X-Received: by 2002:a2e:91c2:: with SMTP id u2mr4717053ljg.50.1556482776371;
 Sun, 28 Apr 2019 13:19:36 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id k21sm6531016ljk.21.2019.04.28.13.19.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:19:35 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:35:18 -0700
From: Olof Johansson <olof@lixom.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [GIT PULL] Ux500 DTS changes for v5.2
Message-ID: <20190428193518.sleicykp4qgtuft6@localhost>
References: <CACRpkdaoHZ8NxDkz4QDK0h68y+3xrXaYxK6FcDLbsqREYfb7nA@mail.gmail.com>
 <CACRpkdYR9dy3KgUHL5mLfs6RfAyETJ3U3_FVZWOEdGzS6Z=ovg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdYR9dy3KgUHL5mLfs6RfAyETJ3U3_FVZWOEdGzS6Z=ovg@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_131938_464826_D94B730A 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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
Cc: arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 17, 2019 at 11:35:54PM +0200, Linus Walleij wrote:
> Hi ARM SoC folks,
> 
> since yesterday the main graphics bindings were approved and merged into
> the drm-misc-next branch, so I rebuilt this tag and included these changes
> as well, so we have 3D and graphics defined in the device tree for these
> platforms.
> 
> Please pull it in for v5.2!
> 
> Yours,
> Linus Walleij
> 
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-stericsson.git
> tags/ux500-dts-v5.2-armsoc
> 
> for you to fetch changes up to f4bdfcc29a8bf96fc385a8221348781dd5594128:
> 
>   ARM: dts: Ux500: Add MCDE and Samsung display (2019-04-17 23:18:47 +0200)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
