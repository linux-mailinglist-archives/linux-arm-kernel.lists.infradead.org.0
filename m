Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 380CFCE10C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 13:59:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bsipxatH0q6Si2EXRM2odsvEK9sXjXIPVHTQw0PC9CE=; b=bRWu644QLdlSCu
	d6iBHEjk6WQMkwG0bttqEeCPmRfP5t+tvt5f2+fr/Du5hI5YBESuxXR8++Xerw7kvyPGE3zvF0QBH
	catgTTVCw1wkusJrgfU/e5u5jpsTgYNZG4X2hvzIq5iww6O/jjH4531BHN8lQ/K7rZy8oZsEU4ezz
	oD+cQfdbmEiexG0Hja9z8wl0ZfCjleAifc5AB+7hZW5D0niPjwRgSPMtLssC/fgRgggXheLFSDtez
	MD8rKZmiG1h40qlQ5X+RftQrfdXb/j0RjN0Xn5DhqtalrPTCLZ3jhwuoQfmc+6KuMDVMfTH+caOIY
	Wq0KOnPg5mx/sCaMXL9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHRfE-0000ka-1c; Mon, 07 Oct 2019 11:58:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHRf3-0000ji-5R
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 11:58:46 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 86EB8206C0;
 Mon,  7 Oct 2019 11:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570449524;
 bh=GzSOhDMJlVu7OkhBW0yc3aY0l4AKWtm9aeth+tDDsbw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=reGfga5iHUnq499Iq95gCUW5qoDjH6oOPCpvTembWtg0OQ3dbvFUfEzPKLSZbxDxU
 5kZkULEjku0e4MIrdWCH12tZb9Fyw8imyQ/WF0l6eFZB3GJFHr+Keb3UCNHv9i2Nzi
 Xk/Jg4TP9bW4GoqCDl/4fStZjaqTr56gU/MQILvM=
Date: Mon, 7 Oct 2019 19:58:24 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Markus Elfring <Markus.Elfring@web.de>, Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ARM: zx: Use devm_platform_ioremap_resource() in
 zx296702_pd_probe()
Message-ID: <20191007115822.GH7150@dragon>
References: <30b6c588-6c4b-c8ff-6414-a3fc53867bfe@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <30b6c588-6c4b-c8ff-6414-a3fc53867bfe@web.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_045845_219827_FA8268A0 
X-CRM114-Status: GOOD (  17.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, kernel-janitors@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, Russell King <linux@armlinux.org.uk>,
 Himanshu Jha <himanshujha199640@gmail.com>, Jun Nie <jun.nie@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 07:57:05AM +0200, Markus Elfring wrote:
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Wed, 18 Sep 2019 07:40:26 +0200
> 
> Simplify this function implementation by using a known wrapper function.
> 
> This issue was detected by using the Coccinelle software.
> 
> Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>

Acked-by: Shawn Guo <shawnguo@kernel.org>

@Arnd, can you please help apply it to arm-soc tree?

Shawn

> ---
>  arch/arm/mach-zx/zx296702-pm-domain.c | 10 +---------
>  1 file changed, 1 insertion(+), 9 deletions(-)
> 
> diff --git a/arch/arm/mach-zx/zx296702-pm-domain.c b/arch/arm/mach-zx/zx296702-pm-domain.c
> index 7a08bf9dd792..ba4f556b7a13 100644
> --- a/arch/arm/mach-zx/zx296702-pm-domain.c
> +++ b/arch/arm/mach-zx/zx296702-pm-domain.c
> @@ -152,7 +152,6 @@ static struct generic_pm_domain *zx296702_pm_domains[] = {
>  static int zx296702_pd_probe(struct platform_device *pdev)
>  {
>  	struct genpd_onecell_data *genpd_data;
> -	struct resource *res;
>  	int i;
> 
>  	genpd_data = devm_kzalloc(&pdev->dev, sizeof(*genpd_data), GFP_KERNEL);
> @@ -161,14 +160,7 @@ static int zx296702_pd_probe(struct platform_device *pdev)
> 
>  	genpd_data->domains = zx296702_pm_domains;
>  	genpd_data->num_domains = ARRAY_SIZE(zx296702_pm_domains);
> -
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	if (!res) {
> -		dev_err(&pdev->dev, "no memory resource defined\n");
> -		return -ENODEV;
> -	}
> -
> -	pcubase = devm_ioremap_resource(&pdev->dev, res);
> +	pcubase = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(pcubase)) {
>  		dev_err(&pdev->dev, "ioremap fail.\n");
>  		return -EIO;
> --
> 2.23.0
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
