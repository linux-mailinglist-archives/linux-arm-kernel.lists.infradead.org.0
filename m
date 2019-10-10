Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA09D215D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 09:08:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mzGA+0Y34Xtm6lfVEDEZqsUbj7rwIPiQzf/wHf6Nm58=; b=cDjgjw0uHrrtpd
	3idYCFn2pXJiDKIs/X5c9m0SS3BiPCqnMdLcVZKeDHccSmT3woj3fHMAIZ57uaAaQoo0Ow2Z3vIzc
	6gKQfhrIOZOTReWKfJDUJ7JwyYHYn95DcW5VwqxLH5O3KPCXexCR4jNzH76UKtVn7bv0zl+Ppa0Li
	qEQ6nQ3xunR5Ch10rEmLA+/whpv+iewJnhgkUjQ3ePZiLyFZcLqycJKtRNyU90kWu8NTzf3J2JWkd
	4o0vQj8Ex8zShbmq++kmXyf1Nn70rQLdsRECCKliPg0gNf5XC6Ml/DD2vrHpYioy2h9J7h9MEfKvg
	detHRVPR9BCYGUtXuPTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iISYE-00081C-6L; Thu, 10 Oct 2019 07:07:54 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iISY4-00080O-G7; Thu, 10 Oct 2019 07:07:48 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2a.mailbox.org (Postfix) with ESMTPS id E9C2BA39BF;
 Thu, 10 Oct 2019 09:07:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mailbox.org; h=
 content-type:content-type:content-transfer-encoding:mime-version
 :references:in-reply-to:message-id:date:date:subject:subject
 :from:from:received; s=mail20150812; t=1570691255; bh=qtVeTLRbBe
 26U1OQjCON8/pEtKrsW3vc60rQbDWzF+E=; b=G1HPELi2LZJv6oCg4v18nkAytH
 W+jy+/CJEqHg3ekHNNSnKjPyLu2Dc30ugQEWd5Nelj9bs5o0kAX/ty/YA6pvazg7
 l/VKwb1Td7qZqBK/NjG6l73mgrg99k3SOrsS7LxTjc8bi4Fv970ANd7xM14dML2I
 pwNifh9J4JqWZFCkxRWOaKAW0AuOxTimXCGMGlpLUa2emh6XGP1ByGaCGHZQrlpq
 ARrB6xTrAUwiFYTztjmoL/3jW3wirlSsBzRTMxrYNxE4MdqKPH4QMtjpMyTA8rIL
 xxS9UmUWaUbfcwAplNQxHCFuTUlu3o6JrbVHiQdiiN7yPvHsB+quSn6gxL7A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org;
 s=mail20150812; t=1570691256;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Zhn3q5nsgiRVkwwWOxv7smEUbI7j7vJ/K26dTBn8bx0=;
 b=umPFSm/5o458SA7f8HtkFII4KW14fZeelrGoO/mMNzF89yL2Ukys/O5lgR5y7IS9qWlVO1
 AvWAVUTNeN4uzAJuUGTAFZEGLDs4QN/vbLqnvkfzYtIvj59GIjYYbtCLAyxMZb15EjQSIS
 5A/HO0wOkWSrQEjv6RbDl55ZwzROVVstUKffvLcOu/oYDHVkquQ1LEo/QwUPjcon+ZWVNz
 QHWWS3C4aYv/hd/WRnWh4cuTjv5HarAUvzbqaI1azKoP9BfS9ZpRYb0nPoGRw3ErRbqU0B
 bBTIugpfWBk0LhiclBLZLnQr8NpB3JMOb1ZhzjZOq7qmDWM1EyEhczG54+0GiQ==
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id KEmneR8j36iB; Thu, 10 Oct 2019 09:07:35 +0200 (CEST)
From: Alexander Stein <alexander.stein@mailbox.org>
To: Navid Emamdoost <navid.emamdoost@gmail.com>
Subject: Re: [PATCH] clk: bcm2835: Fix memory leak in bcm2835_register_pll
Date: Thu, 10 Oct 2019 09:07:31 +0200
Message-ID: <1693637.czecojBbq0@ws-140106>
In-Reply-To: <20191010013101.5364-1-navid.emamdoost@gmail.com>
References: <20191010013101.5364-1-navid.emamdoost@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_000745_555806_D7299861 
X-CRM114-Status: GOOD (  18.28  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Matthias Brugger <mbrugger@suse.com>, Stephen Boyd <sboyd@kernel.org>,
 Ray Jui <rjui@broadcom.com>, Michael Turquette <mturquette@baylibre.com>,
 kjlu@umn.edu, linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 emamd001@umn.edu, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, smccaman@umn.edu,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-clk@vger.kernel.org,
 Max Filippov <jcmvbkbc@gmail.com>, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Thursday, October 10, 2019, 3:30:58 AM CEST Navid Emamdoost wrote:
> In the implementation of bcm2835_register_pll(), the allocated memory
> for pll should be released if devm_clk_hw_register() fails.
> 
> Fixes: b19f009d4510 ("clk: bcm2835: Migrate to clk_hw based registration and OF APIs")
> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
> ---
>  drivers/clk/bcm/clk-bcm2835.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
> index 802e488fd3c3..99549642110a 100644
> --- a/drivers/clk/bcm/clk-bcm2835.c
> +++ b/drivers/clk/bcm/clk-bcm2835.c
> @@ -1320,8 +1320,10 @@ static struct clk_hw *bcm2835_register_pll(struct bcm2835_cprman *cprman,
>  	pll->hw.init = &init;
>  
>  	ret = devm_clk_hw_register(cprman->dev, &pll->hw);
> -	if (ret)
> +	if (ret) {
> +		kfree(pll);
>  		return NULL;
> +	}
>  	return &pll->hw;
>  }

Eh, is pll freed at all, even in successful case? I failed to find a corresponding kfree().
The pointer itself is lost once the function returns.
The solution would rather be to use devm_kzalloc instead of kzalloc, like the other clocks
in e.g. bcm2835_register_pll()

Best regards,
Alexander




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
