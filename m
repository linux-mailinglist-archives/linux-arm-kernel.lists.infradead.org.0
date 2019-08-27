Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DD89F4C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 23:11:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zHoxTR9j1cU+ATfE8ecDOy9mGa7ejz2zRMVWWQMmmnU=; b=KUKICJ76XOna76cklsYkIQMFM
	yNoi2JT+uV9hKJTSAA0yXpUvB5uYXvVb7rG+dMlMoCQG2dIHTc6bNBDyRQ5cpUcKuCdCfEPkBGZz/
	I0tEoH+SUeseP+g5Se/IhleXuxHQrHQVH6uZrvYOyHoLuRl/tq7Yk1xzNVpPLvKG6vpp03vsjOrOL
	x1Gw0aIAj66GvIFhhlR7ttSFYGLBPVEX1iszv700n0rJSR8A68xe8oEJSLQrDVEpsBkT1f20v/OYI
	8zNy89pbG0DA9cDuOzluMyiHsPssn7RJprOiINaoTX+X2e7R9nNxysazhiDlc+qQoQ0pECa754xSD
	zRi/4RRrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ik4-0005a7-BY; Tue, 27 Aug 2019 21:11:04 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2ijq-0005Zh-Pe
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 21:10:52 +0000
Received: by mail-pf1-x444.google.com with SMTP id i30so191208pfk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 14:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=jpomdVGA5p42umi8ubetJR56dC18fC/oAubbOu5Ilsk=;
 b=HJgdekOb2c8f3gRbcDRpDs+Zps9PfGWBN0q5BSa5IWsYs7UZzQmy/1kzHlZGnLWypG
 hWL8mwrqa+wNOxLTGPakFK7jHz9TkN/ioDOg3TA0Iec6/138y09IySwjKSnRIQGqHyaU
 drM/0Bfphi2hYMWGltcph1ovE1eVAutqoWQHE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=jpomdVGA5p42umi8ubetJR56dC18fC/oAubbOu5Ilsk=;
 b=s+l7buEvlZt9jw06JlZkyStLxqLrwR33KnNCwDPF2iVmttINpjqrpmGdEY2iN70mX+
 zDKLcI/E+cOEynUTkQXhIia7VtiZpPezKexzJD1j4wD1m4TSz8x89pIIAZEypuPVjIPn
 XIll2CzGBL4TpjEOF9tBsLF6/d6Q0Tc7cx6NJq9PrnvJG2lKj+7nVRKaqwQYe/4Kir+A
 FB/6WbWj+01Fcy7Hd+ewprAUU+aQ9+uFNcX/wVTMlgYoVeRKWtMxBCNT18Z4g8ytQYs6
 yohRxFafTgJCls2WfWPH4y321Kr+pf+Q47iXtjU9GOwcVLwWCVjo1+ZVNeVboSilvQ87
 8ymQ==
X-Gm-Message-State: APjAAAVoAQARcu+glXz1Z5iYxn5SdFXstnyhoaRuHUBKwirhj3x75TxR
 wq79tlfa5E/ERywao++mWf61klmjQRaHF00ozujgPk0NjfVroaw7w5HbDOEylnjX8L1B1Qf66gJ
 9SqWqxYjfnTPg4OsYvwoOLmgm8b4Dg0+D2vn8NWlHFkCmSjUyLkbWBrk1Ucib6k2sAhMCUN3bu9
 RikHVqkOpbvTiLXmzWwxQ=
X-Google-Smtp-Source: APXvYqzT2kvVrSL+W5x9nHvalWE8UntFAd6GPW9EiqI9/PPoYTtDOeGyI7rRTJ1KlgCTVSH3vfWTZQ==
X-Received: by 2002:a65:6547:: with SMTP id a7mr385824pgw.65.1566940249162;
 Tue, 27 Aug 2019 14:10:49 -0700 (PDT)
Received: from [10.136.13.65] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id a128sm223417pfb.185.2019.08.27.14.10.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 27 Aug 2019 14:10:48 -0700 (PDT)
Subject: Re: [PATCH 3/3] i2c: bcm2835: Add full name of devicetree node to
 adapter name
To: Stefan Wahren <wahrenst@gmx.net>, Wolfram Sang <wsa@the-dreams.de>,
 Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
References: <1566925456-5928-1-git-send-email-wahrenst@gmx.net>
 <1566925456-5928-4-git-send-email-wahrenst@gmx.net>
From: Scott Branden <scott.branden@broadcom.com>
Message-ID: <1c42daa2-f7f7-baac-2d44-f9d86848d331@broadcom.com>
Date: Tue, 27 Aug 2019 14:10:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1566925456-5928-4-git-send-email-wahrenst@gmx.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_141050_842855_B10746F7 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019-08-27 10:04 a.m., Stefan Wahren wrote:
> Inspired by Lori Hikichi's patch for iproc, this adds the full name of
> the devicetree node to the adapter name. With the introduction of
> BCM2711 it's very difficult to distinguish between the multiple instances.
>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Scott Branden <scott.branden@broadcom.com>
> =2D--
>   drivers/i2c/busses/i2c-bcm2835.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/i2c/busses/i2c-bcm2835.c b/drivers/i2c/busses/i2c-bcm=
> 2835.c
> index ab5502f..e01b2b5 100644
> =2D-- a/drivers/i2c/busses/i2c-bcm2835.c
> +++ b/drivers/i2c/busses/i2c-bcm2835.c
> @@ -472,7 +472,8 @@ static int bcm2835_i2c_probe(struct platform_device *p=
> dev)
>   	i2c_set_adapdata(adap, i2c_dev);
>   	adap->owner =3D THIS_MODULE;
>   	adap->class =3D I2C_CLASS_DEPRECATED;
> -	strlcpy(adap->name, "bcm2835 I2C adapter", sizeof(adap->name));
> +	snprintf(adap->name, sizeof(adap->name), "bcm2835 (%s)",
> +		 of_node_full_name(pdev->dev.of_node));
>   	adap->algo =3D &bcm2835_i2c_algo;
>   	adap->dev.parent =3D &pdev->dev;
>   	adap->dev.of_node =3D pdev->dev.of_node;
> =2D-
> 2.7.4
>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
