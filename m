Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C18A1B1C3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 10:17:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lc5cXTei73EAQSk+sG58zIqHOx1DQprd6iWCQAwB+FU=; b=QZ/ptQYztzxJog
	oL76Dmyf8rAxLKMrDH1Fp8We2HynKFH4hLZ0ZeahglALrMF6nzjPY7YAm7OW+x6p434AHadeV6y7L
	us+3rHKwBG2WW3WrVgBVgIddiAQpqqsct/N2Mpbio5MnRZYEJZbC6JwglakgOncyLgphzVZxF/Fcv
	6QmnZE5a1yIbCmDfegQNSqXKZIENGVxWBDveOf7H/FCTHF9+Cv/5N/jDRyurkgZk1dO/5ksKKyjwL
	qSPkqsYHkPy3WtSZSvaAfv8hYpHjxoLeReXnCEeWmvuTMtp14qWEmIzNnDsA/Ye1tdetM5T8SjPHZ
	6AzkyNXVud7Zfx5nvOWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ696-00051n-1p; Mon, 13 May 2019 08:17:16 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ68y-00050V-Ew
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 08:17:09 +0000
Received: by mail-lj1-x244.google.com with SMTP id 188so10064786ljf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 01:17:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3idWCwzUMnpA5VwTBF4KebKh5MTaU++zMsYGKtLyqjw=;
 b=sRhqNGMIwjVpO8J652GT4JjZrgW/qp/nzAoi8tq2rczD9C1DkcSMFU2SX6TQTYROQ6
 ZhAM2lraAFVTVBJIanaoEnUKXxhiYU+qTwP9Tc1F+eV/k/aGPbePTHTMKl7f8htIwgZg
 fzMR3AOhKh/Vl2AQlyn9uCZFoqJAxY1CaV3HepkeKVTu3zkLm8c8QviB5vegR2/rJCQt
 4OlwD7z+OoXmN1yx31b9u/i4esjyjmhrWZY+44T8eSg4d/9CUUMCOyOfciKTChSRuayC
 V8CJo9FLsQ2buuOKoaihpqDjgk2QfVCh9H1O7RGIZ2wG5hF7+7bc6ltXnlyolwU0kQA2
 05ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3idWCwzUMnpA5VwTBF4KebKh5MTaU++zMsYGKtLyqjw=;
 b=r9oWItkik69W9Uy++vB2dYIpWmdLYuWNgfy5ilFzKDzl+CAjOHDbxjT5wUyYwNEBYv
 poRIC5EPPZ4Fi6RC80FnFa8H6KP2exyJXuksefEAPPZ7VNmwbdiGPRvGK8hEnUZjF8XX
 Va75slX9m9o/weRX4y/Bf/9ed4iVp8Dw0b4Yoc5sdNXcS8p1fG3gsvI7EasKkjzpLwol
 ICBargFxFKneERx4SgzsUjjK3qIfXj36tDlOFm7WJFAHu1hE8A2jQi3Dm4OrTmXq3pt9
 u5JxwOhaoxnRKFzENL2Ad/TRelDiqq44+XRnEtuJwfeWUC5jLnQ6J6/+Q80PFGqLxplx
 +Khg==
X-Gm-Message-State: APjAAAXW3lCF0WCu4iz8CGkQUzddEpv0e7/KrIQwOVsOIPVG//Uf/Zny
 LjndIuy2UEQ+PklZ/1KXm91MesgzUJ5FtzWN8M6lWg==
X-Google-Smtp-Source: APXvYqxRXHHDn2LeaDGJnCVAP9EZXgovgWlUydeeOk9urC/7nL35rUMNFlPTknI8zMkcX/2DBziWyJKmsDIQO1uxGYo=
X-Received: by 2002:a2e:9a4f:: with SMTP id k15mr8204365ljj.159.1557735424426; 
 Mon, 13 May 2019 01:17:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190513073429.12023-1-lee.jones@linaro.org>
In-Reply-To: <20190513073429.12023-1-lee.jones@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 May 2019 10:16:53 +0200
Message-ID: <CACRpkdZHcrhjQ7VQQU004agf4P6AT194eMaama54H-7L9BDstQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] pinctrl: stmfx: Fix 'warn: unsigned <VAR> is never
 less than zero'
To: Lee Jones <lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_011708_499314_7F76E84E 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Amelie Delaunay <amelie.delaunay@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 9:34 AM Lee Jones <lee.jones@linaro.org> wrote:

> smatch warnings:
> drivers/pinctrl/pinctrl-stmfx.c:225 stmfx_pinconf_get() warn: unsigned 'dir' is never less than zero.
> drivers/pinctrl/pinctrl-stmfx.c:228 stmfx_pinconf_get() warn: unsigned 'type' is never less than zero.
> drivers/pinctrl/pinctrl-stmfx.c:231 stmfx_pinconf_get() warn: unsigned 'pupd' is never less than zero.
>
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Lee Jones <lee.jones@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
