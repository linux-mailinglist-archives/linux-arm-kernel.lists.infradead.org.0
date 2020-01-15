Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4252B13C18F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 13:47:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+7PUKDBYj1Kkb12FpYMItffUTJdE1IdbyzyRlnTKhak=; b=g7o60Pmbh+OpBO
	4xAs1+SofJT+ctrxRWEj/PIlZio52VLI9qro9KenrMUhcHFBiyUl3QIIKOoRP15O1lR9h5LcAbqPr
	Za8jZxbl5h+br1G8Ols1c07kWTTXt9KhDwd9bId3pxeU2SLz/UTb7hQHSr/aiwupg8WxLPmqamSPH
	AoS8Ly24ZDF23IIRnoLiXhKxihMdvGIAR+jdhRzz4D/gFqew33liXT+xyxOsoVjyT8Sk2bZ0nyn+o
	w9hONMZDesUrJ5xlyxlp9DhBXCi/xvLfT3YIZG1XC9fe8Zlgrq4mnbF6EZTnJjHDMoUv9SGXckUlH
	4u5Q7gWR6H8V7sl4BSzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iri4t-0002eD-5h; Wed, 15 Jan 2020 12:47:19 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iri4e-0002dM-Dq
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 12:47:08 +0000
Received: by mail-lj1-x244.google.com with SMTP id r19so18414070ljg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 04:47:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LKM41qfZK+I1YPOs3sE0ln+ytjb0AeE1CS75B4GClME=;
 b=gNMuhELwoO28aS9RrTIh/9249e1lPntBbdbAhxIt/a5SboIutP1c//C+mVDqR4q3Z6
 /pMkgdWk4sIKijEfs9JvArrTWEUpuvIMBbByausxTy30f0TEnOA3SY2E9UGpF71fPWs0
 vXtSTf9z1wONQDaLg03dtE9BQyn7/rBqnuAUWoy+1YpuFMnKLbokY+nXxC/aexy9WA8/
 HlzSf1FzshN7h3ZBGJctu3Z0b65JD05cTf8n9JlFEdl+Da3o9yKthGB6O/uWsWvpswo6
 EdjeFs8bpAwDrR6d8llwIytZHYhrCokCkbVLuXwYq60OKSkFZFHVIHr3zsX/YF1Lm910
 ZZDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LKM41qfZK+I1YPOs3sE0ln+ytjb0AeE1CS75B4GClME=;
 b=tlYJ6VdacHy0GMuHd4ghp3omnXHYWaAr4/+x22mVM3No86zDNQTv4a+rFAYQSaNRK9
 CLO7qb4zguH4Y7Sv/5kM70bcTzLTiozRFAxv+RwoHUX2TsIo+/AEyuq1jINS+AQF0PWO
 ujm9YTxng8VbAEq1+kU+TuiprLrBpp4mirSLIaXtkOLotFa9LPuV8DYQVjzTTQLUHjlj
 b/K9xwKft9C8K7cpWvivvBJVo8xNf0+9D7fsWJJHUxbQPTa3hDyrb6jfbU+SiFvK3pmA
 7wx/WfeTUXlVSfwQXGSfLsp6mF0I6oQtT/1xZIikO3Es8XWtzNGw3C0Ijl9xtlGEXzWg
 2Ixg==
X-Gm-Message-State: APjAAAWjpmAHfUKx5L2buGnyKfRGfnM/BQiKcksit1/YcgXGLNo5ZA0P
 W47PvKCK2C4ZWmNCxf7V1gqQ4Lgts10w/dYF0BxX6A==
X-Google-Smtp-Source: APXvYqxgC8+7LaK6QdmhvvjkFCM2K1oiJ6yj576t1oav2aAPfmEdhF224oj2nleQBgwhKi4di3PdkxDOsJLznvwlhHY=
X-Received: by 2002:a2e:918c:: with SMTP id f12mr1683852ljg.66.1579092422193; 
 Wed, 15 Jan 2020 04:47:02 -0800 (PST)
MIME-Version: 1.0
References: <20200110035524.23511-1-rayagonda.kokatanur@broadcom.com>
In-Reply-To: <20200110035524.23511-1-rayagonda.kokatanur@broadcom.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 15 Jan 2020 13:46:51 +0100
Message-ID: <CACRpkdZhEQ9-d+NSB0++EEbLs3RQxfRHVubuqB-SPv130YW-SQ@mail.gmail.com>
Subject: Re: [PATCH v1 1/1] pinctrl: iproc: Use platform_get_irq_optional() to
 avoid error message
To: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_044704_468222_48D947F0 
X-CRM114-Status: UNSURE (   9.73  )
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
Cc: Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 YueHaibing <yuehaibing@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Li Jin <li.jin@broadcom.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 4:55 AM Rayagonda Kokatanur
<rayagonda.kokatanur@broadcom.com> wrote:

> Use platform_get_irq_optional() instead of platform_get_irq() to avoid
> below error message during probe:
>
> [ 0.589121] iproc-gpio 66424800.gpio: IRQ index 0 not found
>
> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>

Patch applied with Chris' ACK.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
