Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA91D48EB9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 21:27:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fugn4/wkfY2qYlpUSe8cxTu+p7vhfsTWqrN8zZYCyzk=; b=p0W7PcjLyFHD/Z
	fQMNXQXzRNQoxXM/8JMCN7N+ApORcn5zQmLqVcWHzYTMqdM3W1WS1FeXaZDDsOE78nNU1MbRahGaL
	9G64k3iy1bwjknxBCwlOH00QifMhooejfw1rPigoMRUrI1NlDweCv0YbXSi2IS5iiAze+lbxLYhFb
	ras6/SVVfoNOhC9/dmwQBH+kqE/BFXnmSAC2yZTtupT4V1CmPcJ9P2/vmvrBpfkOvhapkz8Fz8guU
	4ZBSbU0TmKeDUPttJsCdeBOtv1dPFlgtaDmXLSCOdgLvCnBPwYHfFHPaLqaKUYL+0rQ3atqC48DMV
	LNmLF5hj2Fsv2EftHH2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcxI8-0002Zy-Ji; Mon, 17 Jun 2019 19:27:44 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcxHv-0002RL-SV
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 19:27:33 +0000
Received: by mail-io1-xd42.google.com with SMTP id u13so23983433iop.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 12:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d9Oc7ZhRD3F3wXh7rQZIFZBIqOJRb70vgbqk6ZylyKs=;
 b=jLrmxlt5HekviTDg4h9uqSmRgH3b0TRYfXS0MLnsFWdqKx4w7TePcVbPdyGajBZ5T7
 E0/MgkfLKKRFYdi4U/7cMNAC/5BD62ZV7jZDA3ZIlvdPLYG+lUq17VnbFRFmKcxBuijW
 b98VN0Hvx3L/bguKSJU68ZIk28pnHD1YfpnuGcqvMJVT80TFJybKvwSDGmg/WTMGyb5E
 MJajgGG46mMfU5JzBy1BUM19j9gCBKCe7x7XgYhEzhlzBEn1hybyqb59cTV/qpUDXiVo
 QB+ZGIrZuE5tY8P3wtvgueICm2JuGumEi96mvV4Ojoc6WIJs30xltebpiZh+JwiyMFDM
 ySEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d9Oc7ZhRD3F3wXh7rQZIFZBIqOJRb70vgbqk6ZylyKs=;
 b=MxqY9NmDkos1iVMWeQ+f3+nnCB8sBFi0Lq4eHc+QZ1x+VUzGag1QdGUSXTEDovUdUz
 5YkzEWDVm1n+0Rh+KpIBvil0YTwpB6PoidDUvO4rKH3frGmtRKYexYLWFUuNWl5GQdwL
 IJWOe1bKfhQPhfY1ZVJHc3hq7WvsRIDnsYiqTk5fbZnkuS2bK4eVEsR9jWb4V6ieOsej
 JICzaR/zzL81WvjSZa1Py+2aFoOyIkuVs7YFLMDBfAppKXVsuR8yf1cxam3CNYmKprmM
 w78aIEFYthBKaIdC0FXz527C4zlApnbPiCY4jrLwZZ5poqYCnlEA1cc/Wv1FKrQ2Unmd
 TvbQ==
X-Gm-Message-State: APjAAAXyaZTb19LW7stnUhxms9nIITUcH7d/BzC+xI4fBLQQv68M4J7W
 kV7ciR8XIUJeYD6uu7mctrubkkVNlkIWsm+PEBuSgA==
X-Google-Smtp-Source: APXvYqwqAHJMpEIe+s+0XLSNvUalfFg//jHiamKU+Pa2/iD933a4OCsuMlXY4LBxYgwVV/deZOGHC6idGCgYYa5QioY=
X-Received: by 2002:a5d:9613:: with SMTP id w19mr10341810iol.140.1560799650660; 
 Mon, 17 Jun 2019 12:27:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190613065815.GF16334@mwanda>
In-Reply-To: <20190613065815.GF16334@mwanda>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Mon, 17 Jun 2019 13:27:19 -0600
Message-ID: <CANLsYkxnze-aJXwr6ogR_AjcXefjufgOnwgqnX0vVtkzkzAsVw@mail.gmail.com>
Subject: Re: [PATCH] coresight: potential uninitialized variable in probe()
To: Dan Carpenter <dan.carpenter@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_122731_940378_458A5EFB 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 kernel-janitors@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 13 Jun 2019 at 00:59, Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> The "drvdata->atclk" clock is optional, but if it gets set to an error
> pointer then we're accidentally return an uninitialized variable instead
> of success.
>
> Fixes: 78e6427b4e7b ("coresight: funnel: Support static funnel")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/hwtracing/coresight/coresight-funnel.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
> index 5867fcb4503b..fa97cb9ab4f9 100644
> --- a/drivers/hwtracing/coresight/coresight-funnel.c
> +++ b/drivers/hwtracing/coresight/coresight-funnel.c
> @@ -244,6 +244,7 @@ static int funnel_probe(struct device *dev, struct resource *res)
>         }
>
>         pm_runtime_put(dev);
> +       ret = 0;

Applied - thanks.

>
>  out_disable_clk:
>         if (ret && !IS_ERR_OR_NULL(drvdata->atclk))
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
