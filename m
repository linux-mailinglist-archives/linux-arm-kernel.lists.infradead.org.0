Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D649B4F58
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 15:33:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v8VfuTbtt/rCch5Ac1/QQ5t2yNgn/7RPWioyTTrYegE=; b=Cpip1e0TyH2VmS
	7xTvAnBEEP9PEcfk56SVRc4Oi5glsz7UytRtl60uz6K0X7lyLBzFrSVGc/4MMve7VMoC37PKuCbfY
	X1ZDgWA+0voXU9n8Ym4t1aYnTG+3Wm23bljXVn4bzEbeQ9lQHN4SSQKcB4kzVmxnA7CcC54xFNZzw
	3tBBo+pY8D7JoL+5L7NM3x82mT5XHlucspo2AqWiOQuEoVuF1V6a1dONxM339akLtUDe83uLYLYyx
	GrLnlhsyzLmfeq4L7c1wEaAFQWrzgaic7NOxlT+3r8cXqkUOeHaUtp0cT1BmhwS5HU6XGCfGy2ZyA
	QR1Tm5HmK+T7McJkVVjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iADc1-0003dB-Lo; Tue, 17 Sep 2019 13:33:46 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iADbk-0003bP-Kf
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 13:33:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IaO3Rqk7+O5bRQtudJzKuCkFQ7NvStYQjWVNTuy11ok=; b=NEuy8P+HoAJBIWwI8fCTDHVYQ
 NPHj58j6BGnSqBZgOtpgXL70qrAN4ppgDLgubXrwKzjECCRLWAKLhTY9vtiow/Sgizb5iidbKV/mK
 7Gl477qAJhs96+3d1S10peMEACGtHY8wsLXWbcrEUxcaARirKec1M2/OCgeUIbacRaniNbiAIyv86
 6KoJrxOSNmiyac8ugXbnIUAQDjPXfBxHk3Ob8Bw8RUYcR7UJ0OixZbHTgEot+fjFz8IeePnZFiDlD
 SwpSh+wll6Fh0QTuo7/K8gAKdSQI3qjntcFYao6VmuAJeaWOKi1sXwc7DIi73Syb4XrY/LvxhIQrU
 H4CGHABHA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:33130)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iADba-00026a-IB; Tue, 17 Sep 2019 14:33:18 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iADbZ-0001Js-Ki; Tue, 17 Sep 2019 14:33:17 +0100
Date: Tue, 17 Sep 2019 14:33:17 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [REGRESSION] sdhci no longer detects SD cards on LX2160A
Message-ID: <20190917133317.GQ25745@shell.armlinux.org.uk>
References: <20190916171509.GG25745@shell.armlinux.org.uk>
 <b19a0640-5d71-a005-eb0f-c6840f181e5d@free.fr>
 <20190917081931.GI25745@shell.armlinux.org.uk>
 <20190917104200.GJ25745@shell.armlinux.org.uk>
 <20190917111631.GL25745@shell.armlinux.org.uk>
 <20190917114210.GM25745@shell.armlinux.org.uk>
 <20190917123326.GN25745@shell.armlinux.org.uk>
 <20190917130759.GO25745@shell.armlinux.org.uk>
 <CAOMZO5DXv8g5qTGdvobDdLWim+tW=vK4+K=P-VqJK23KERMhJw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5DXv8g5qTGdvobDdLWim+tW=vK4+K=P-VqJK23KERMhJw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_063328_686145_8583BF9A 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dann frazier <dann.frazier@canonical.com>,
 linux-mmc <linux-mmc@vger.kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Will Deacon <will.deacon@arm.com>, Nicolin Chen <nicoleotsuka@gmail.com>,
 Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 10:24:57AM -0300, Fabio Estevam wrote:
> Hi Russell,
> 
> On Tue, Sep 17, 2019 at 10:10 AM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> 
> > Will suggested reverting bd2e75633c80 ("dma-contiguous: use fallback
> > alloc_pages for single pages") which has been implicated in the same
> > problem here:
> >
> > https://www.spinics.net/lists/arm-kernel/msg750623.html
> 
> It seems that the final fix was:
> https://lore.kernel.org/patchwork/patch/1121600/
> 
> Does it work for you if we follow the same idea?
> 
> --- a/drivers/mmc/host/sdhci-of-esdhc.c
> +++ b/drivers/mmc/host/sdhci-of-esdhc.c
> @@ -1105,6 +1105,7 @@ static int sdhci_esdhc_probe(struct platform_device *pdev)
> 
>         esdhc_init(pdev, host);
> 
> +       sdhci_enable_v4_mode(host);
>         sdhci_get_of_property(pdev);
> 
>         pltfm_host = sdhci_priv(host);

That attempts to set bit 12 of the host control register 2 (0x3e).
The LX2160A documentation states that bit 28 of 0x3c (they're 32-bit
wide registers there) is "reserved".

So, you're asking for a documented reserved bit to be set...

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
