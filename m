Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4931135B1B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 15:11:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YwnE8QfBon2w5WFqcTa/8G9LMXB7/4OijLS6UJLdqbc=; b=F66jXANyld4OkHW8uzEA7fQrR
	T7iNZRfmqzn5oVs/oGtzKlkED0fQTLBMqcBkEhC7hvRRs7xHUnsHJGWZoKEpCRM4LK95ccZ1JLBQK
	BYZU4orahDuyHKdUzLF0xtdmYqklXkWuy1mXVo8XDkIcLwsWEB/82SqX+Rl6Lr12LvOxG4sfOofBh
	AnQ+1eLzxUX8/mumDLWuGyTszFEy3AQb3skq7M5xijM1ipz0fx35pya+DU12D7ohMeaPjBrC771mx
	9rKSeLdLnmVU7wPKQxr3UfL0NUjsDTFOjWxa+eyKneHgQSlptuAg0IhuBZIUY/nFKKdxPFnTenmCn
	yWOnhSiHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYX5-0001Tm-Gp; Thu, 09 Jan 2020 14:11:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYWu-0001SO-2b; Thu, 09 Jan 2020 14:11:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0E0D31FB;
 Thu,  9 Jan 2020 06:11:19 -0800 (PST)
Received: from [10.1.27.38] (unknown [10.1.27.38])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0A9AE3F534;
 Thu,  9 Jan 2020 06:11:15 -0800 (PST)
Subject: Re: [PATCH v2 6/7, RFC] drm/panfrost: Add bifrost compatible string
To: Nicolas Boichat <drinkcat@chromium.org>, Rob Herring <robh+dt@kernel.org>
References: <20200108052337.65916-1-drinkcat@chromium.org>
 <20200108052337.65916-7-drinkcat@chromium.org>
From: Steven Price <steven.price@arm.com>
Message-ID: <44e095c1-7860-068f-567f-249c29cdca1f@arm.com>
Date: Thu, 9 Jan 2020 14:11:14 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200108052337.65916-7-drinkcat@chromium.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_061123_984768_A2461DCA 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08/01/2020 05:23, Nicolas Boichat wrote:
> For testing only, the driver doesn't really work yet, AFAICT.
> 
> Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>

It does work (at least on the Hikey960), we just don't have any public user space driver for it... ;)

Reviewed-by: Steven Price <steven.price@arm.com>

> ---
>   drivers/gpu/drm/panfrost/panfrost_drv.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/panfrost/panfrost_drv.c b/drivers/gpu/drm/panfrost/panfrost_drv.c
> index 48e3c4165247cea..f3a4d77266ba961 100644
> --- a/drivers/gpu/drm/panfrost/panfrost_drv.c
> +++ b/drivers/gpu/drm/panfrost/panfrost_drv.c
> @@ -591,6 +591,7 @@ static const struct of_device_id dt_match[] = {
>   	{ .compatible = "arm,mali-t830" },
>   	{ .compatible = "arm,mali-t860" },
>   	{ .compatible = "arm,mali-t880" },
> +	{ .compatible = "arm,mali-bifrost" },
>   	{}
>   };
>   MODULE_DEVICE_TABLE(of, dt_match);
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
