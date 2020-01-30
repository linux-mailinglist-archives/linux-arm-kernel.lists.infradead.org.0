Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F041B14E50A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 22:46:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q4ffgAGVjmZ6egY07xB2llks3loNPqgm8fqmKX/U6Ws=; b=o8hi0r3tv9m53F
	EaSHI6Fdupb+gIb47peggunt0gR2W+Ug1Je/VBAOoDpeQHOWb3RJLmNi0f7cfzIIStVxS1m6Zb0oR
	JLuPXsisnxwENbAC6iuxzKjIIsawaZ2RdkS6/JFgktihTA96UVHINwQx6Nix6ORgmI5tmxNfceGuV
	b+90nsQnEUnFGRQsRHLm69WVM2ehDUhbtL+0nHoGZAbVu/fkYim2Ra0hSWztvntGjdJSW9fOwgb85
	GXLRH0PNno68kF1EoVYhfFJsbTubtmQ2CL52AonNdBrv+oke7bI48kU/OrwD60I5v1+Nr5RsAL9QG
	+x0DeCW9ZGRcdx4Xvz+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixHdS-0000ao-Ba; Thu, 30 Jan 2020 21:46:02 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixHdI-0000Zw-HD
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 21:45:54 +0000
Received: by mail-wr1-x443.google.com with SMTP id y17so6040439wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Jan 2020 13:45:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=wHp3wY6EbskwLtVSraRT0zmeUswYzI0IaeiJ+sQlEAY=;
 b=UBsol0OI94UvcceGUkGGbg9BPk2SYryPULvUtgtT4LJCuK4zNC5sSNi6sKSGdrkZiE
 F1/tT9KaZ8qhWdKzt+292Vb2ml+Bp+TUyJ5wHx7YXTnjBTGUP7kbQn15vaZ9D5hqnWGM
 TIA4a/rT9KIoI+1OurqPl48V7XMRmS3MT+LLGbwplNUk+cKQnsJRdtxTEkXUNgTLKnW+
 0FgxgWfLutvvQPK51TTe7I1hqKwJ7mzK59Or65fdJm89QpG17aBl7ToFeX9+WZBwll/p
 cj16GjSv9ZZB8GgGKQfHoz/kF1+xgZgT2hm+MOERxI/DNTeDrSl5l1izCqNQtDbFAPB6
 mN0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wHp3wY6EbskwLtVSraRT0zmeUswYzI0IaeiJ+sQlEAY=;
 b=nQ8jWZvM44F8U6H3P0kBoUxDRh6SjH5z0uTOM6u+9oStACSa7sSPbtCRdqP2lp2yJ1
 bgkrUBDyQ8+gY9hIIXyXBwsc2N+xctDS/HIGgECNH8hwxe9LBv2thvLW/FKaMOPIBHA7
 AC9JB7VnPrGhoQchHmi5+onxtApv30t5QPK1fsR/aGRxM94y1UUEpWJXVGrFYomL0RTT
 jyaCz2c1KmZPEmoodBjbJLv2VQGDf7ehRCoxmK1mEikrM1wn0hxMQrYZnLv6qTbqb2Qq
 wzWgfuOQY8gQ39nXNgUc89K2U5Y3bsyevW2Mgm+6QUminfp1HABCpUfMTaaDAWXobvbC
 kmgA==
X-Gm-Message-State: APjAAAXY3A7vFBWNOZxrMqt+Ma2R8b5u7zhz8Jsd1druNau0nt6gwPYT
 oC7LZL/a/kUYq6GIjhT4VyI=
X-Google-Smtp-Source: APXvYqzARgdfdA9GrP/iZ3VHGJvyoNKKns7gvUBGHXL/oYoPanZqPLggoX3TmU6Y86PDjyJuCy5AwA==
X-Received: by 2002:adf:dfc2:: with SMTP id q2mr8112298wrn.251.1580420745935; 
 Thu, 30 Jan 2020 13:45:45 -0800 (PST)
Received: from ?IPv6:2003:ea:8f29:6000:4039:5a2f:e01:48bf?
 (p200300EA8F29600040395A2F0E0148BF.dip0.t-ipconnect.de.
 [2003:ea:8f29:6000:4039:5a2f:e01:48bf])
 by smtp.googlemail.com with ESMTPSA id d204sm7941097wmd.30.2020.01.30.13.45.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Jan 2020 13:45:45 -0800 (PST)
Subject: Re: [PATCH net] net: thunderx: workaround BGX TX Underflow issue
To: Robert Jones <rjones@gateworks.com>, Sunil Goutham
 <sgoutham@marvell.com>, Robert Richter <rrichter@marvell.com>,
 David Miller <davem@davemloft.net>
References: <20200129223609.9327-1-rjones@gateworks.com>
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <dfb2fb4c-4147-dcd2-7c60-1c3653e1092f@gmail.com>
Date: Thu, 30 Jan 2020 22:45:38 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200129223609.9327-1-rjones@gateworks.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_134552_573636_78C511AC 
X-CRM114-Status: GOOD (  22.89  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [hkallweit1[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hkallweit1[at]gmail.com]
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
Cc: netdev@vger.kernel.org, Tim Harvey <tharvey@gateworks.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29.01.2020 23:36, Robert Jones wrote:
> From: Tim Harvey <tharvey@gateworks.com>
> 
> While it is not yet understood why a TX underflow can easily occur
> for SGMII interfaces resulting in a TX wedge. It has been found that
> disabling/re-enabling the LMAC resolves the issue.
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> Reviewed-by: Robert Jones <rjones@gateworks.com>
> ---
>  drivers/net/ethernet/cavium/thunder/thunder_bgx.c | 54 +++++++++++++++++++++++
>  drivers/net/ethernet/cavium/thunder/thunder_bgx.h |  9 ++++
>  2 files changed, 63 insertions(+)
> 
> diff --git a/drivers/net/ethernet/cavium/thunder/thunder_bgx.c b/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
> index c4f6ec0..078ecea 100644
> --- a/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
> +++ b/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
> @@ -74,6 +74,7 @@ struct bgx {
>  	struct pci_dev		*pdev;
>  	bool                    is_dlm;
>  	bool                    is_rgx;
> +	char			irq_name[7];

Why do you store the name? It's used in probe() only.

>  };
> 
>  static struct bgx *bgx_vnic[MAX_BGX_THUNDER];
> @@ -1535,6 +1536,53 @@ static int bgx_init_phy(struct bgx *bgx)
>  	return bgx_init_of_phy(bgx);
>  }
> 
> +static irqreturn_t bgx_intr_handler(int irq, void *data)
> +{
> +	struct bgx *bgx = (struct bgx *)data;
> +	struct device *dev = &bgx->pdev->dev;
> +	u64 status, val;
> +	int lmac;
> +
> +	for (lmac = 0; lmac < bgx->lmac_count; lmac++) {
> +		status = bgx_reg_read(bgx, lmac, BGX_GMP_GMI_TXX_INT);
> +		if (status & GMI_TXX_INT_UNDFLW) {
> +			dev_err(dev, "BGX%d lmac%d UNDFLW\n", bgx->bgx_id,

Using pci_err() would make your life a lttle easier.

> +				lmac);
> +			val = bgx_reg_read(bgx, lmac, BGX_CMRX_CFG);
> +			val &= ~CMR_EN;
> +			bgx_reg_write(bgx, lmac, BGX_CMRX_CFG, val);
> +			val |= CMR_EN;
> +			bgx_reg_write(bgx, lmac, BGX_CMRX_CFG, val);
> +		}
> +		/* clear interrupts */
> +		bgx_reg_write(bgx, lmac, BGX_GMP_GMI_TXX_INT, status);
> +	}
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static int bgx_register_intr(struct pci_dev *pdev)
> +{
> +	struct bgx *bgx = pci_get_drvdata(pdev);
> +	struct device *dev = &pdev->dev;
> +	int num_vec, ret;
> +
> +	/* Enable MSI-X */
> +	num_vec = pci_msix_vec_count(pdev);
> +	ret = pci_alloc_irq_vectors(pdev, num_vec, num_vec, PCI_IRQ_MSIX);

Why do you want to enforce using MSI-X? Any interrupt type should be
fine for you, so let the system decide and use PCI_IRQ_ALL_TYPES.
And why do you need more than one vector if all you're interested in
is tx underflow events?

> +	if (ret < 0) {
> +		dev_err(dev, "Req for #%d msix vectors failed\n", num_vec);
> +		return 1;
> +	}
> +	sprintf(bgx->irq_name, "BGX%d", bgx->bgx_id);
> +	ret = request_irq(pci_irq_vector(pdev, GMPX_GMI_TX_INT),
> +		bgx_intr_handler, 0, bgx->irq_name, bgx);

Here using pci_request_irq() would make your life easier.
This function also allows to dynamically create the irq name.

> +	if (ret)
> +		return 1;
> +
> +	return 0;
> +}
> +
>  static int bgx_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  {
>  	int err;
> @@ -1604,6 +1652,8 @@ static int bgx_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> 
>  	bgx_init_hw(bgx);
> 
> +	bgx_register_intr(pdev);
> +
>  	/* Enable all LMACs */
>  	for (lmac = 0; lmac < bgx->lmac_count; lmac++) {
>  		err = bgx_lmac_enable(bgx, lmac);
> @@ -1614,6 +1664,10 @@ static int bgx_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  				bgx_lmac_disable(bgx, --lmac);
>  			goto err_enable;
>  		}
> +
> +		/* enable TX FIFO Underflow interrupt */
> +		bgx_reg_modify(bgx, lmac, BGX_GMP_GMI_TXX_INT_ENA_W1S,
> +			       GMI_TXX_INT_UNDFLW);

If allocating an interrupt fails then you most likely don't want to do this.
And do you need this interrupt if the interface is down? If not then you
could think about moving this to the ndo_open() callback.
And the chip interrupt should be masked if not needed any longer.
Else you risk spurious interrupts e.g. after driver unload.

>  	}
> 
>  	return 0;
> diff --git a/drivers/net/ethernet/cavium/thunder/thunder_bgx.h b/drivers/net/ethernet/cavium/thunder/thunder_bgx.h
> index 2588870..cdea493 100644
> --- a/drivers/net/ethernet/cavium/thunder/thunder_bgx.h
> +++ b/drivers/net/ethernet/cavium/thunder/thunder_bgx.h
> @@ -180,6 +180,15 @@
>  #define BGX_GMP_GMI_TXX_BURST		0x38228
>  #define BGX_GMP_GMI_TXX_MIN_PKT		0x38240
>  #define BGX_GMP_GMI_TXX_SGMII_CTL	0x38300
> +#define BGX_GMP_GMI_TXX_INT		0x38500
> +#define BGX_GMP_GMI_TXX_INT_W1S		0x38508
> +#define BGX_GMP_GMI_TXX_INT_ENA_W1C	0x38510
> +#define BGX_GMP_GMI_TXX_INT_ENA_W1S	0x38518
> +#define  GMI_TXX_INT_PTP_LOST			BIT_ULL(4)
> +#define  GMI_TXX_INT_LATE_COL			BIT_ULL(3)
> +#define  GMI_TXX_INT_XSDEF			BIT_ULL(2)
> +#define  GMI_TXX_INT_XSCOL			BIT_ULL(1)
> +#define  GMI_TXX_INT_UNDFLW			BIT_ULL(0)
> 
>  #define BGX_MSIX_VEC_0_29_ADDR		0x400000 /* +(0..29) << 4 */
>  #define BGX_MSIX_VEC_0_29_CTL		0x400008
> --
> 2.9.2
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
