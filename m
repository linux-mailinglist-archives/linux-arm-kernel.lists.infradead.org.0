Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5130029AEC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 17:22:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ENsqNcMEEi1Zq3UOkimyijl0bdzKg7YC/oMkDebIhBI=; b=EZrK6x2+4YiZIv
	KxBhA6shSfvIO0n/Z0q/1E1meYNWfpcP4xZkHYjW4SzTNKBMmiELsvIjufsRMIOoCLCqebO9wP2My
	JK3/6XDBAB5bZMm8fhYewH+3CjjNSZKRroKeKGCqeItIGsE5x3vp/FJTdcvK5W1t3ubQpyiOQq0N1
	WdfHo8sIu9kgPmKOtFc8nBblYCJSRQtwNpiiWGBQ5wOIvmiwK2AMLu2jQK2QGAkd+b+VWIjpGj9HT
	aQiS1McvSzs1yJu7VulPNB2Rib5HTFGjiF6E6WUQZNPU+opTLvPjUAwdZck3Evo2VG35788QmGw7G
	9nIuKf4WSm3qeWCF0gjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUC1d-0002M5-GI; Fri, 24 May 2019 15:22:29 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUC1X-0002LT-4B
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 15:22:24 +0000
Received: by mail-lf1-x142.google.com with SMTP id f1so7441596lfl.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 08:22:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QyF3o58FFX1H1q5j3kdiPxjWQwX8mwAfxQ1M8ShVyoI=;
 b=R2nXicON9l8j67j7PadKSRB4aV4W8j0X8VrwwypSh5dc/jQT2y5uUN8rZSpBv12B+g
 WI80lgH2mR8r7dRtZOOv2HePNQnSEUDtSG39KhmqNSiNiNkYA4OzyUBagAy3bsf7YDqU
 WpU+CA4s+vDA1kVZj7mmPnOOihogo5bRT1jbpXir6J/KOpZ27oTLsUSdfYAaozpPatwA
 1sRNLToQWgrSwoDi8cex+LE58QAxSyaW4ykyLPlSzUgydnGj2DgGMBXKvmwm1baKM5dv
 u848+Lu1/GSCycSO+lRYhXvlzCIviyFwen68e8/QHujHkVUwZLTw5Y6Vk3wuTMC3KND0
 JKZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QyF3o58FFX1H1q5j3kdiPxjWQwX8mwAfxQ1M8ShVyoI=;
 b=iKnBejSK1HZ6PbY2o0SUBypF8GDw+1I4YjLVDFuijWff6mq1KQJZeYhXpe+I7CCEc3
 DKlW2DA/8U7XLZACDFn74okTX99Wbo33t0E2zr92kZapcbNmalQySA0osqDkGiMIH/R4
 e2lgj4uedA1+wLrThXrL7bhGJAwDyeUi2F0ANSV8Q+o6eyg7+iesgPE+sNKSyKHIUeEM
 QMkNvn8ukXRaz6TIWkeHL2opmtZu5Zi4l1rM59qwbcKu0/NzBgUwWy9QtzwQRletwzHA
 4v5xSybdMslVx4Qk5zeQ8/7w2HRh4OyNEWOTMtb3k9uj0XTgF/KUGoXfepGg/vl6DrFf
 9fWA==
X-Gm-Message-State: APjAAAX9rR6AeZybLfbgqkdDnVuNc0WK5ehdJDLQS0TrUUPJJFJuan7d
 oPkwwctOas1RMyqI7OwNqAQ6NmRUDE1anK+tVeBi2w==
X-Google-Smtp-Source: APXvYqwmvwWHGvypE/OcPxIOvNOsboOsJx8yQtKE+WMD3B1aEcSgE8sirRO4jcp62+tgDg3VjDVnaACWJ1dbGLlT+EY=
X-Received: by 2002:a19:f60f:: with SMTP id x15mr351461lfe.61.1558711341073;
 Fri, 24 May 2019 08:22:21 -0700 (PDT)
MIME-Version: 1.0
References: <1557474183-19719-1-git-send-email-alexandre.torgue@st.com>
 <CACRpkdZ4P=PSCu86p48nBPeVk-h5T0Ytc1CYV3XZGd4fLuJLGw@mail.gmail.com>
 <ae00fd9c-d25e-c401-4d21-d526a63538f2@st.com>
In-Reply-To: <ae00fd9c-d25e-c401-4d21-d526a63538f2@st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 24 May 2019 17:22:09 +0200
Message-ID: <CACRpkdbJKAGyeBU1tX77-wSYzGXDBqRYR1gQyzOZ_XT4RGFbsw@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: stm32: add lock mechanism for irqmux selection
To: Alexandre Torgue <alexandre.torgue@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_082223_184534_85E63695 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Lina Iyer <ilina@codeaurora.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 2:27 PM Alexandre Torgue
<alexandre.torgue@st.com> wrote:
> On 5/24/19 1:26 PM, Linus Walleij wrote:

> > Patch applied, can't say I fully understand it but you know what
> > you're doing!
>
> Thanks :). Do you need a better explanation ?

What I need to understand for hierarchical interrupt controllers
on GPIO is what I can pull into the gpio library. I am working
to extract some code from drivers/gpio/gpio-ixp4xx.c
to make generic simple hierarchical domain support available,
and Lina is working on generalizing some stuff.

But these complex domain operations in the STM32 seem
to be some special beast.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
