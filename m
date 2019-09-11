Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E769AF97D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 11:51:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J8a0175dt5HP5FVy1DpUvApE+CuynX57pe8dNaTTETw=; b=VOvcBtiQ3L/yVZ
	T4yNoPW0HUPWTdtFwc4qciTKjt/PXGdMppStDl7H0Z6FF7k/tfoYt9MHBk4fIz9NYUiVI9o9VREe/
	7epepB7smaOXrIb/zt/6lGK5UJFcoBnygmE254NsuylL4oUGVolJ6yrp9IID7RNhd0PZo5Jzkmldn
	iZVn49nEPLVXvwR9UWeFRts6Pewlqnovdf2e69yrLuUCz/ifxtpc1QkySnxrIc9pgL1i+EWJdbawv
	7YVPsz0NhVbfyElAbyhTva0+RS7pj1/wJowXTqPLQdtI4WB1pmu+vrUWlb3CMYgBEwvTm64fgNqQE
	mr9rKnAh5DXP0EwmqeXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7zHN-000480-8I; Wed, 11 Sep 2019 09:51:13 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7z9a-0003FT-Gj
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 09:43:11 +0000
Received: by mail-lf1-x142.google.com with SMTP id c195so1033237lfg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 02:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n0eGU7EwYvV44i/yZMlYO2mgsRqBSzpFil4+yiEnP3M=;
 b=jcbRuqnqmVkgtZ98MPCNgpOW1Z6kmUSw8xfMYAW37/xJ62Qt3QsQ/voTaoFkiTXyDP
 w1Q6d7XhKj2eklW4V5AoidRHlrApe860OCk56LBhG/GrCi+4h+4CGPvYYXbc21mT2Qmb
 n8/oZluaIZNJqeg71T5o1EhMoB+m0tTvFGbJeLBixpk1B0OvuwGsdc44VhKJIB54ydLM
 +rJ1kHOtRpY3wWwCnkSYJO6TzxUPRlzQadSIu3Q0h8wveQneMW03LB1cnaSuhiyk35Up
 nJFTKiaBIgKKwiKSXI8tF9Js1bVU4DuCKFCf6MOBC8EWum5/LM9CClP0N5EetYarRvQn
 HOcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n0eGU7EwYvV44i/yZMlYO2mgsRqBSzpFil4+yiEnP3M=;
 b=FGE6UDzHjx23TEhpOl3v8yC8gg18H5uidkDG1TZxHYNyeinle+dFEwXhgVceLNju+S
 IEX6Pvx24VAGwQa3hjaEc+89gb9gKGl9BwwTEkeRsC9OzVcU2Wkj4QosLvs+5h95umyN
 VAm9My07PrxQMaYqwC2Qe3gHHau1LKiEDh7uHm3Ncgh9iLniHYXvuBwrZiw4sYi+EQ+D
 hfgX3bMRRm1SKYBdDetbtawdcTf8U/G3bUQEEGAI85NoGqtCdupAYoSlmTzyIEoXRdjW
 +kJJO6kZCaUqn9xBACY/e1lOrABqaHxYkNOnJsrH/0edV4ShBWZ+LxS5esP+rrmg/cDe
 Y+DA==
X-Gm-Message-State: APjAAAVIaRnQb5HwNQE+rkvdj/irRhQ2gDR6DSovumk2RSZp3FBHpu2f
 5ABlrtCH7vnzRNRh5HFDFD8x3jcurot3Jqha0Fu2+bd5vvLasQ==
X-Google-Smtp-Source: APXvYqx4fsV/WTIRSXhN20GDJfDooCB6DWGgBVXCN0nS2mCnPbakVJ5rn36/YEesW30QiVEAg3CUEQ+P0NTYpRFt3xA=
X-Received: by 2002:ac2:51a7:: with SMTP id f7mr1200184lfk.152.1568194988428; 
 Wed, 11 Sep 2019 02:43:08 -0700 (PDT)
MIME-Version: 1.0
References: <1567054348-19685-1-git-send-email-srinath.mannam@broadcom.com>
 <1567054348-19685-3-git-send-email-srinath.mannam@broadcom.com>
In-Reply-To: <1567054348-19685-3-git-send-email-srinath.mannam@broadcom.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 11 Sep 2019 10:42:57 +0100
Message-ID: <CACRpkdYyHMHknkrH_Gm45tgwv6dgjFxdoeg+Hj_KBWWyQqV1og@mail.gmail.com>
Subject: Re: [PATCH 2/2] gpio: iproc-gpio: Handle interrupts for multiple
 instances
To: Srinath Mannam <srinath.mannam@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_024310_684876_B7B20C34 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Scott Branden <sbranden@broadcom.com>,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 Ray Jui <rjui@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 5:52 AM Srinath Mannam
<srinath.mannam@broadcom.com> wrote:

> From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
>
> When multiple instance of iproc-gpio chips are present, a fix up
> message[1] is printed during the probe of second and later instances.
>
> This issue is because driver sharing same irq_chip data structure
> among multiple instances of driver.
>
> Fix this by allocating irq_chip data structure per instance of
> iproc-gpio.
>
> [1] fix up message addressed by this patch
> [  7.862208] gpio gpiochip2: (689d0000.gpio): detected irqchip that
>    is shared with multiple gpiochips: please fix the driver.
>
> Fixes: 616043d58a89 ("pinctrl: Rename gpio driver from cygnus to iproc")
> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>

Patch applied, I had to rewrite it a bit to fit the new code that
set up the irqchip when adding the gpio_chip, please check that
the result works.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
