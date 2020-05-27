Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA37A1E4A5B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:36:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sq8lTW1x+PDh0F2VP0NNg9OBPLaWbeUGqBoKPp/aUB8=; b=QY0Yp0ppFG644V
	WK+lY9c5pmdSQErfPF11xo2kSX/1zDWSnRxblX7wcxFmpUCxMaKThewgx3l5deATKmsXgMe78Zh/z
	3zj0edFo4Qmtj6a3EibKnErwwwAAvHZHewQMin24uDkgfixJqrBvE3Blky/NatNop3Q4W6wXOJzgX
	yC1MlFPC+8efSDHHAMMg+Terl86ZVOoCHrHwG3rmjDQTbzZ+nwoUiHjFCvJBqIyxNl3ywJmyMBr2p
	z0hhoYjPnAndsgMjHpZjj4sKIxxK8ZGujfTZ+gXzzUjPtvjgFk4QRzciSgy2a0qnebCeUW7RkYAuj
	jq3AGr0I4VMSrI7nNYnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdz2I-0006Tu-Md; Wed, 27 May 2020 16:36:10 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyOK-0004Er-IF; Wed, 27 May 2020 15:54:54 +0000
Received: by mail-pl1-x642.google.com with SMTP id m7so10281311plt.5;
 Wed, 27 May 2020 08:54:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=nkIhbxtFT/sWyLG+CNPMvzFZfh5YwCelX3IPeKtDVng=;
 b=PAMb3Gighhz0cCKhjZLQ89rDfM+umkVZTkpYgFwBdzZ9PIGR1KNuJfANRSBsICHGU1
 9GFY4+NhktZozymnBZgQaGPkn8QdPxDOXGhFk13RvLQfW7JVN2KYbsdVXfBT1OinJLIp
 zrRy0l+YVDGcMRQy8Ldm4ZecscejFQHzikG3HLWm++8UC3ai8KnWZCyKH6z7T/HA1xRI
 Wp+WUBUbWpR2kBaZ0JpFXShORG+eXejQ1vCRS83kPuIkPDQqhhjsTVcFK0GFU7CbfTMs
 dACufN3iOpLHsbWp1FGFQTUumq0BZHbJAIhG4FZ5GeQo+es6H96EK3UqJhZ/+Te+5OLe
 Y23A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=nkIhbxtFT/sWyLG+CNPMvzFZfh5YwCelX3IPeKtDVng=;
 b=JAEhq6OwdEVRH3LtcwGd7voD0W3QZCA6KG4xc+mzfGRcBXUgjzGdbxc85inywLRCZd
 40jZ9Cbx2aTXiczp0ds0NQ50+MuAEG7CtIfGbuvU09BW0Tou6yeyAeL71KIBzEyjecw4
 9vvIBKBEuae9qwBd7fyfyfPRK6T+uADY653sWzWrHT4KjBLdj44EzBbHyw7CxUQH10cJ
 q9f0wjH2fPo5y3qjS5JwP1egKaO6+qR/R9nvVArTyQqoFM1mnVOR1f8PJ7nvtzxe4SG4
 CdiNc1rWeWGKmA1KagjH7a5tp6q/8ywkYiZPVJMKigGh9pBHZiSgfU1UHAKrF1XwxyGF
 jcsQ==
X-Gm-Message-State: AOAM5326ZGpJgz7RNhGqOH/t3eQSm92dfeJHspl9K5ZCJnSq8AvQ5E3X
 rn7J92orMcGAWTrbdxhqNogrl0q602A=
X-Google-Smtp-Source: ABdhPJxjWquEPV+JeRdzbhyTylh3GgQILPCaziRrufi5RFxgpIErfBy/fC56S/kQiDi7y42BfuoXZQ==
X-Received: by 2002:a17:902:9882:: with SMTP id
 s2mr6368400plp.184.1590594891507; 
 Wed, 27 May 2020 08:54:51 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id q44sm3286859pja.2.2020.05.27.08.54.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 08:54:50 -0700 (PDT)
Date: Wed, 27 May 2020 08:54:47 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Subject: Re: [PATCH] net: ethernet: mtk-star-emac: fix error path in RX
 handling
Message-ID: <20200527155447.GA568403@ubuntu-s3-xlarge-x86>
References: <20200527092404.3567-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200527092404.3567-1-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085452_713059_49544BA6 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
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
Cc: Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 11:24:04AM +0200, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> 
> The dma_addr field in desc_data must not be overwritten until after the
> new skb is mapped. Currently we do replace it with uninitialized value
> in error path. This change fixes it by moving the assignment before the
> label to which we jump after mapping or allocation errors.
> 
> Fixes: 8c7bd5a454ff ("net: ethernet: mtk-star-emac: new driver")
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Tested-by: Nathan Chancellor <natechancellor@gmail.com> # build

> ---
>  drivers/net/ethernet/mediatek/mtk_star_emac.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/mediatek/mtk_star_emac.c b/drivers/net/ethernet/mediatek/mtk_star_emac.c
> index b74349cede28..72bb624a6a68 100644
> --- a/drivers/net/ethernet/mediatek/mtk_star_emac.c
> +++ b/drivers/net/ethernet/mediatek/mtk_star_emac.c
> @@ -1308,6 +1308,8 @@ static int mtk_star_receive_packet(struct mtk_star_priv *priv)
>  		goto push_new_skb;
>  	}
>  
> +	desc_data.dma_addr = new_dma_addr;
> +
>  	/* We can't fail anymore at this point: it's safe to unmap the skb. */
>  	mtk_star_dma_unmap_rx(priv, &desc_data);
>  
> @@ -1318,7 +1320,6 @@ static int mtk_star_receive_packet(struct mtk_star_priv *priv)
>  	netif_receive_skb(desc_data.skb);
>  
>  push_new_skb:
> -	desc_data.dma_addr = new_dma_addr;
>  	desc_data.len = skb_tailroom(new_skb);
>  	desc_data.skb = new_skb;
>  
> -- 
> 2.25.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
