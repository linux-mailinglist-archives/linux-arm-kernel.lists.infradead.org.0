Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A668019F7B6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 16:14:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LXnj5KSpldMCrPgQVGoqEefwP9u9uwO0VsroASrjR/4=; b=cePT8r+QgxEVg/UXhNvFMjxQt
	hCUVkrKTloMFFtk31WCxMX0N5ViQVVs+3MgZo97Epvv/ItritIN8Z9T5JLO3o6BnWo672k/jUEBNw
	OtodGFXMGCVxuqM6Lo+4zuVCHxilp349xHgTDDzKJ9dtlYLJNcLv03cbLgefFCBs6OdqNHiszlp0y
	nsTxEloA44IOd7oBzptfagHOolx9cHP2Xm6/x1o8qcYUAZ+k3T06WHaYQnhZ1ifnHZWVEgWgSgjNy
	Yn7DnJlDHNwakNVBURd1bDg5Scaci8LxypYzdgYEt8ySdRq6KTJ9KByK+it1Mm9Y3O7c8Kjd6U8Ym
	0JcRLYRmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLSVy-000523-0w; Mon, 06 Apr 2020 14:14:14 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLSVr-00050Z-2b
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 14:14:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586182447; x=1617718447;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=VxBfFZSMnzPlZNHz2TtxxRNY5T+Ta8nxtKmyydIYbJ8=;
 b=W7J0N68+jzV0NVi/cfRHpNimOWfTibYcS8PLM3ydzmBxRGC+Y9glXnpb
 rbxLW6hJeJNcl6swqRU+Vm71d4PCEZfgvqSfZGlH+djbKMAZeqMA83ctI
 kKX83WsdXPjISX+tBm9AqgHSllOGyENtb6iAu7FSFFZjUDDKlEQAoj3Ug
 uiCTpPOfbi/se/eDyyMuFwd2/U1IIyZOEvBvcBnN+z5Kufq4iLbjGnb66
 BL//wqZfBO/IrxGkE2T0X4++4yN3xdD99wvRkasM4Tn2b3cEwVp/BkATu
 YVYflihNA9/ifbFBte4mhbhjGPGQKXcLZN2LaZzsn7CnyCw9eF+IfTzSe A==;
IronPort-SDR: 3dhHBhElSxHQC59mGMY0HVh7OBNkgad/SlfGf8LOeUnqPpr8jm+FFOjg8EX/1MI5BisywgXgYc
 pdPi4XsnSPa3UOej5f/VB5P14Sv9FOvnpQ6byLPegzF5YxnjLX3CwErHzBFsaCBJk1PRz6kL03
 l4Kgs29BkGfq6w4xZ+OapMJJDSJHi1IFkVcvlpIEymygXGyUROheYBIq8bgUuu4pNxuXib6TRp
 9AF9NC1IutFhGz1I5nyb0CDM41BulqXLEWvVxc6Jg/cDzE82ULYI7cOdKTuwQHC7swyYNfoTZd
 Ejc=
X-IronPort-AV: E=Sophos;i="5.72,351,1580799600"; d="scan'208";a="71546329"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Apr 2020 07:13:59 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 6 Apr 2020 07:13:57 -0700
Received: from [10.205.29.84] (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Mon, 6 Apr 2020 07:14:05 -0700
Subject: Re: [PATCH] video: fbdev: don't print error message on
 platform_get_irq() failure
To: Tang Bin <tangbin@cmss.chinamobile.com>, <b.zolnierkie@samsung.com>,
 <alexandre.belloni@bootlin.com>, <ludovic.desroches@microchip.com>,
 <linux-fbdev@vger.kernel.org>, <dri-devel@lists.freedesktop.org>
References: <20200406053450.8380-1-tangbin@cmss.chinamobile.com>
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Organization: microchip
Message-ID: <d6c8f07c-a57e-45ef-429a-d627ba7d7ce0@microchip.com>
Date: Mon, 6 Apr 2020 16:13:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200406053450.8380-1-tangbin@cmss.chinamobile.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_071407_125085_B01BA833 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/04/2020 at 07:34, Tang Bin wrote:
> The platform_get_irq() can print error message,so remove the redundant
> dev_err() here.
> 
> Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>

Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> ---
>   drivers/video/fbdev/atmel_lcdfb.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/video/fbdev/atmel_lcdfb.c b/drivers/video/fbdev/atmel_lcdfb.c
> index d567f5d56..1e2521925 100644
> --- a/drivers/video/fbdev/atmel_lcdfb.c
> +++ b/drivers/video/fbdev/atmel_lcdfb.c
> @@ -1114,7 +1114,6 @@ static int __init atmel_lcdfb_probe(struct platform_device *pdev)
> 
>          sinfo->irq_base = platform_get_irq(pdev, 0);
>          if (sinfo->irq_base < 0) {
> -               dev_err(dev, "unable to get irq\n");
>                  ret = sinfo->irq_base;
>                  goto stop_clk;
>          }
> --
> 2.20.1.windows.1
> 
> 
> 


-- 
Nicolas Ferre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
