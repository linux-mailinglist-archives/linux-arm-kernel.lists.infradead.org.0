Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 485A01E0D98
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 13:46:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q68Y8MFLMz0ItoUfyeejA0rr+f18GpUGeon0sKwu3f8=; b=H3m9MVllEfW4Se
	5UM3K65FLKjYSF9/iZk7yDFT2eoiYpQHKqR8bjDxGEiMmp3n+6a0Gl830/xWFOoLuDNLW6frALqWb
	J1JfGFPkOb9b7RQfPc20XIka7Vr4jl1P2JwB+MMUpv0BfaVIsJNktKgp6G1EmSVWDWrdXTaJIeswI
	OMuEXMtuYRpOwUUmSWzs5AzJY4xKULShBJJ2Mkh5OMVShfo0QBI6+vI00oper2u/yBxPAeSh5dVlp
	KlenaUA01gLaL3Dv0l3p/frJ6jgIPR2eSEa9CJD/yyek266iGMpfAN9O2U1xJyXtRh7YmvAqXMYDY
	j+85j//6vVQkZSb3gLPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdBYQ-0004tD-Kl; Mon, 25 May 2020 11:46:02 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdBY6-0004hv-IO
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 11:45:44 +0000
Received: by mail-lj1-x243.google.com with SMTP id z18so20379655lji.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 04:45:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bWYfxIAWJy3heGwDbod2HfNErYY2yOdF0+bL0dgrzOk=;
 b=ZGX/K/ApUSKg8rZuZKsuLGDrw3GNIs+G+ygQ5FYxc+f7sdmr6BxHPxN0JBA4xJ4kZX
 fsO+UZPl02rsYbv0Us+s2H+Mg1QHvlXzLhlMSbef8ICm8jdk7PRAc9Zj2ZRZhAJPbd7R
 V2VUKRCs5dKzZKNG1N/cRFLVjTWhH0cxM4jqyhNOXgmpc1BF1R3B6KCHUsLzwvy+o0j+
 sMKKS6i6LBRgYYrDOZpwXc18rqSl3VzFKa/qXE1p6fmvRTbr7DZcN9l+usBvUFUEB2rx
 omrSIACxU0AMJLlSA8O+9sQxDj/yJ/aD2UF6vHu1pteXHE1gO4igJpa6y7K7i5OSXpNU
 fPoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bWYfxIAWJy3heGwDbod2HfNErYY2yOdF0+bL0dgrzOk=;
 b=gjNMY0c1+veHwB+nFlUwEbxsYeYVZ/kKSxRD9bk+teZwuAWHmWmOtvn+yspO+dIpIA
 7akcc6UJzu595kB5ySX/cL8oufVehF6SS0LLsEJhSnXurjqggEvEx9YQ04fwh2Y70Ahy
 OY1H5ykdVxz79+O1+/whk/00xB8WxY+oupsRVJHyTbcTL/9GydjZmuJjK7m2MWJGXJrb
 GgDjTdZDAiT3/CJs2Ks63elcaklRHj2wV8W6x7IZKF9eidjyhfPvX+DiE4MKRder2cNm
 ZMLkzfvfIzKeiHtCYmeWzbq9WhnW7fk81OOnFG4gnn/g15GIyxYjtEowe3cPuc3PJ+ct
 CLqQ==
X-Gm-Message-State: AOAM531gy2n7SY/J6IyZqUxFLk54iNHhVq6XInNY5OihqxhTk3HgcXrM
 f3NUOMea+6CvK3CdD56jCFgXo0YOlUA3zisLPW3cmlkiQr8=
X-Google-Smtp-Source: ABdhPJw8cSdCakQSy2dqjj6yyyZN64NworOexXRkNzpRiGe3QJZW72eboLCSuHgq9tN2jx02+4qrZc6d73S0DPYFHwg=
X-Received: by 2002:a2e:8703:: with SMTP id m3mr14359579lji.286.1590407140649; 
 Mon, 25 May 2020 04:45:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200523170859.50003-1-sudeep.holla@arm.com>
 <20200523170859.50003-4-sudeep.holla@arm.com>
In-Reply-To: <20200523170859.50003-4-sudeep.holla@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 25 May 2020 13:45:29 +0200
Message-ID: <CACRpkdadgix8LTvKY41NM5mjVa+YUXkwVcurYn6PnCLTZBnfEg@mail.gmail.com>
Subject: Re: [PATCH 3/8] soc: integrator: Switch to use DEVICE_ATTR_RO()
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_044542_761818_78C8CD42 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arnd Bergmann <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 23, 2020 at 7:09 PM Sudeep Holla <sudeep.holla@arm.com> wrote:

> Move device attributes to DEVICE_ATTR_RO() as that would make things
> a lot more "obvious" what is happening over the existing __ATTR usage.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
