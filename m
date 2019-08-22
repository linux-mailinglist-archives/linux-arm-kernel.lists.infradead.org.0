Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A54996C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 16:35:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NgK/28Sl7Xla3jJGsya8i1ZlIbYMmbAaCCAvPB9B2r0=; b=OOVcMuZDGYCKLI
	aRN7Dh/v0Bk1fimATKM7NGrrYILHA3Voj3tb7ODi7NK0fvklLNEKw2wqjbtP/8bUjOePuUkayggfQ
	G7rlir1+VPuj+7WUh5Ayl+fPN9UcnKwuy/qAYelDBhnRY64OSXp90ixEdpX+IP2jpdAjM9bZhZIDT
	MddZwsMTKo+Xla7id5vqPOq5/klMWc4KaLYZ/kK3FhI9vjBSysbav80kmz0gVwHmbMeCvqHCn9Sp1
	ZnxiyjBVZ7cS1n++uRFhjtVyEph3PiQKtVmKUm7nXOvHdmi0QjaNH52nEYTRcYHiON8sOdDn6ih4z
	ndjCUsEhGCU4EeEYh3ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0oBG-0008Ga-AX; Thu, 22 Aug 2019 14:35:14 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0oAw-00088Q-Op
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 14:34:57 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 615BD2BC513CB4D2D3BC;
 Thu, 22 Aug 2019 22:34:43 +0800 (CST)
Received: from [127.0.0.1] (10.133.213.239) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0;
 Thu, 22 Aug 2019 22:34:38 +0800
Subject: Re: [PATCH -next] ASoC: sun4i-i2s: Use PTR_ERR_OR_ZERO in
 sun4i_i2s_init_regmap_fields()
To: Maxime Ripard <mripard@kernel.org>
References: <20190822065252.74028-1-yuehaibing@huawei.com>
 <20190822141826.is6nizjpdgvhd7ra@flea>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <5b15becf-b79b-ae5d-91e2-6521ded50946@huawei.com>
Date: Thu, 22 Aug 2019 22:34:37 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20190822141826.is6nizjpdgvhd7ra@flea>
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_073455_014005_E63FF208 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Marcus Cooper <codekipper@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/8/22 22:18, Maxime Ripard wrote:
> Hi,
> 
> On Thu, Aug 22, 2019 at 06:52:52AM +0000, YueHaibing wrote:
>> Use PTR_ERR_OR_ZERO rather than if(IS_ERR(...)) + PTR_ERR
>>
>> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
>> ---
>>  sound/soc/sunxi/sun4i-i2s.c | 5 +----
>>  1 file changed, 1 insertion(+), 4 deletions(-)
>>
>> diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
>> index 9e691baee1e8..2071c54265f3 100644
>> --- a/sound/soc/sunxi/sun4i-i2s.c
>> +++ b/sound/soc/sunxi/sun4i-i2s.c
>> @@ -1095,10 +1095,7 @@ static int sun4i_i2s_init_regmap_fields(struct device *dev,
>>  	i2s->field_fmt_sr =
>>  			devm_regmap_field_alloc(dev, i2s->regmap,
>>  						i2s->variant->field_fmt_sr);
>> -	if (IS_ERR(i2s->field_fmt_sr))
>> -		return PTR_ERR(i2s->field_fmt_sr);
>> -
>> -	return 0;
>> +	return PTR_ERR_OR_ZERO(i2s->field_fmt_sr);
> 
> I'm not really convinced that this more readable or more maintainable
> though. Is there a reason for this other than we can do it?

No special reason, just suggested by scripts/coccinelle/api/ptr_ret.cocci

> 
> Maxie
> 
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
