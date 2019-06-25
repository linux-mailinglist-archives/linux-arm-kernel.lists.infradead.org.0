Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D071558C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 22:27:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=37Prw3uiy9Tw2nq717oSj9edLqthFK5+IZJvenp1zc8=; b=IPQy27q5gqgtlW
	tIFca/5OrDky8Gr8cZBtVzshSks7rvvivpOakw+cYtDtRRFvbJjY97ddt0LL0ptf0zJn6XtgP1i6k
	eDZKDAzChDQyN2mU/LY2CmDdsF2ykVgUTVj+fbEpmHK2uasSvpYu4xMs615EPmP6uqIpIVwCs2oUQ
	l0dZZKsrYLuCEys8/Z/3BKzJPDaj+CZYa27zWY/aWifvI96sUfTa83A7MXC3n50B7eJAzr4sQSkXL
	S6DdR5qmatWv7E88pGl+jG/S/ujX4yLz4wTd1K7eMZOZ8xKXjMfpdV1CD2CcQUjk0Yy16FieECQzs
	CeyB5jw12BwzhqF6Shkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfs2E-00020C-LU; Tue, 25 Jun 2019 20:27:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfs1v-0001yB-8L; Tue, 25 Jun 2019 20:27:04 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B9A9B208CB;
 Tue, 25 Jun 2019 20:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561494422;
 bh=4DjDMXCFMiEPojnFZTh8l0f8w6EVPLy4ezbvE1XggGw=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=HGnMUm36tBd89ZCYMpakSYGFEW5Ra8p8ujQXGTZBj7wplR2/DDy55cLSCmDONvdHY
 zvRbTWOTcuq+e3106aW7m2laV8C4uUGsBk5uzvJeZKwhWPPPmBSq+savdLyIs9SkPO
 50vQuTR/sLQeXqmcCO0A4QBjA4XFwhvT87/QcdKc=
MIME-Version: 1.0
In-Reply-To: <20190620150013.13462-6-narmstrong@baylibre.com>
References: <20190620150013.13462-1-narmstrong@baylibre.com>
 <20190620150013.13462-6-narmstrong@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, jbrunet@baylibre.com,
 khilman@baylibre.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [RFC/RFT 05/14] soc: amlogic: meson-clk-measure: protect measure
 with a mutex
User-Agent: alot/0.8.1
Date: Tue, 25 Jun 2019 13:27:01 -0700
Message-Id: <20190625202702.B9A9B208CB@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_132703_314974_09C18E43 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 martin.blumenstingl@googlemail.com, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Neil Armstrong (2019-06-20 08:00:04)
> In order to protect clock measuring when multiple process asks for
> a mesure, protect the main measure function with mutexes.
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  drivers/soc/amlogic/meson-clk-measure.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/soc/amlogic/meson-clk-measure.c b/drivers/soc/amlogic/meson-clk-measure.c
> index 19d4cbc93a17..c470e24f1dfa 100644
> --- a/drivers/soc/amlogic/meson-clk-measure.c
> +++ b/drivers/soc/amlogic/meson-clk-measure.c
> @@ -11,6 +11,8 @@
>  #include <linux/debugfs.h>
>  #include <linux/regmap.h>
>  
> +static DEFINE_MUTEX(measure_lock);
> +
>  #define MSR_CLK_DUTY           0x0
>  #define MSR_CLK_REG0           0x4
>  #define MSR_CLK_REG1           0x8
> @@ -360,6 +362,10 @@ static int meson_measure_id(struct meson_msr_id *clk_msr_id,
>         unsigned int val;
>         int ret;
>  
> +       ret = mutex_lock_interruptible(&measure_lock);

Why interruptible?

> +       if (ret)
> +               return ret;
> +
>         regmap_write(priv->regmap, MSR_CLK_REG0, 0);
>  
>         /* Set measurement duration */

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
