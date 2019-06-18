Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9186498D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 08:19:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BtGo7EYqNAI+9BVAqsdrDh2GlG0tkkpzqJXEpdJygs0=; b=KMpc+0c6FIN63z
	6ZWqFLNhU1Vff3Q692MohtTZWQtuXY995NUvXiy4G4w+qIXJuVOtVGFVTg8FxGrClIqHlW7bz0n/F
	XRQ6LlAPqsXK7OHFpsRMENW21YvfxywP5V8JVnH/ECK7DH27SRVb+3O5hG5A+eEVQ/GxPDVt3YsBT
	Oc+UQW9XLscqbNSssfe+PQf1LcbF6dvMkJ0i51lv8VrhswTuJFfNm9/BA6oeSa2Kjs41I7mYSVKH9
	P3ESQjZz5bEHS6jzF/z/OvFL9WB1CMMPeCop3C2a13ppGfmDKiV+I4P9emPqc2Y9g3JYKxqY/mQQL
	AZKpJ2L2bwVXPK9Wu7/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd7T5-0002JB-Uk; Tue, 18 Jun 2019 06:19:43 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd7Sm-0002Gr-UC
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 06:19:27 +0000
Received: by mail-wr1-x443.google.com with SMTP id p13so12478191wru.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 23:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2qhMEjTGxN0dhDss7cc7zfKbD1VT4IQism6fVgX1NpE=;
 b=dvsdqA01/pZ+815FjjW8tFL5UWf7khLLQ82Ejhqn6TxNO1tCDktEgPtkMa4HNv7OLR
 1U39nh2EFsrtSmlNZcgDcq/9sa+nGn3SUOMpDbfIAp95GzajjL3XI+3GbjB5ULFzEoSH
 IwACWh8kuOmwu5jEKWjMzofeGDXqP9safEXyJXu8ve2REW9BQaUclrQL8parNOK0OQjD
 B3wkQTkyxFJk8UmfoMVdfQg+Tn/UTwLgckw83gJpr19cDBf/Gz90iGpXy7nsEYrqDA2m
 eZwEj4HpXDoxWiOrmV6yaBfhp8pBtJeFO0hOjxV5cmt7gkv5WG1rUgP3mWcFMvMsVNL0
 dfKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2qhMEjTGxN0dhDss7cc7zfKbD1VT4IQism6fVgX1NpE=;
 b=NqnPn8fEGP6hxqpI8srxRaMczbQBJ7/ZCn9gzJ8gBOonTIDkgFfqGOXl6YXtajJWfs
 99bcFwtjAhi+z90RUa/uReqVpC43tjVsAT7yJ758fgwmhpavMXN/oTttY7q4CfY8ta3U
 UN5zs3rod2NUobaAiTyJ42uaZbo0BLolHUUbEjkvpw7n9AOrV8IboGg9eDLFEn/qfcpw
 qqumCFKpw9qBWSmubL7M2YrgGZ/O/ikB/6ujQ2KRVrbjGWvugegtJglvSmX/4L/u+e/o
 TF6OuDyKOTy92K5YXDfQWAMykc0prtqs4OT/UusLvfex7mIJzN0fRDuBfyWqp0CeXaKl
 h5Lw==
X-Gm-Message-State: APjAAAX2W1MTIJeUXbDTBfVhs+7dufNPtuQ0mzEhJ5u4Wf8M53k/6w/2
 NEILwmja8zYmkNip4e9BCQCF+Ssp4fppFBIcDTNW2w==
X-Google-Smtp-Source: APXvYqyc9odfP5kl53sVaAJSFZ9kxou4Lg+4NAUEX3RWJa1eraarQrRn5NVyE6c41JtA+QlG76Va2MCtJMEgh2C9gYE=
X-Received: by 2002:a5d:4b43:: with SMTP id w3mr14892373wrs.166.1560838760111; 
 Mon, 17 Jun 2019 23:19:20 -0700 (PDT)
MIME-Version: 1.0
References: <1560169080-27134-1-git-send-email-yong.wu@mediatek.com>
 <1560169080-27134-15-git-send-email-yong.wu@mediatek.com>
In-Reply-To: <1560169080-27134-15-git-send-email-yong.wu@mediatek.com>
From: Tomasz Figa <tfiga@google.com>
Date: Tue, 18 Jun 2019 15:19:07 +0900
Message-ID: <CAAFQd5A5GUn1Zq1xF2_2V0MReNPd5bra2F=nquvodSAZUua5AQ@mail.gmail.com>
Subject: Re: [PATCH v7 14/21] iommu/mediatek: Add mmu1 support
To: Yong Wu <yong.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_231925_004938_6A0ED6A9 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream <srv_heupstream@mediatek.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Evan Green <evgreen@chromium.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 =?UTF-8?B?WWluZ2pvZSBDaGVuICjpmbPoi7HmtLIp?= <yingjoe.chen@mediatek.com>,
 anan.sun@mediatek.com, Robin Murphy <robin.murphy@arm.com>,
 Matthias Kaehlcke <mka@chromium.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 9:21 PM Yong Wu <yong.wu@mediatek.com> wrote:
>
> Normally the M4U HW connect EMI with smi. the diagram is like below:
>               EMI
>                |
>               M4U
>                |
>             smi-common
>                |
>        -----------------
>        |    |    |     |    ...
>     larb0 larb1  larb2 larb3
>
> Actually there are 2 mmu cells in the M4U HW, like this diagram:
>
>               EMI
>            ---------
>             |     |
>            mmu0  mmu1     <- M4U
>             |     |
>            ---------
>                |
>             smi-common
>                |
>        -----------------
>        |    |    |     |    ...
>     larb0 larb1  larb2 larb3
>
> This patch add support for mmu1. In order to get better performance,
> we could adjust some larbs go to mmu1 while the others still go to
> mmu0. This is controlled by a SMI COMMON register SMI_BUS_SEL(0x220).
>
> mt2712, mt8173 and mt8183 M4U HW all have 2 mmu cells. the default
> value of that register is 0 which means all the larbs go to mmu0
> defaultly.
>
> This is a preparing patch for adjusting SMI_BUS_SEL for mt8183.
>
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> Reviewed-by: Evan Green <evgreen@chromium.org>
> ---
>  drivers/iommu/mtk_iommu.c | 46 +++++++++++++++++++++++++++++-----------------
>  1 file changed, 29 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> index 3a14301..ec4ce74 100644
> --- a/drivers/iommu/mtk_iommu.c
> +++ b/drivers/iommu/mtk_iommu.c
> @@ -72,26 +72,32 @@
>  #define F_INT_CLR_BIT                          BIT(12)
>
>  #define REG_MMU_INT_MAIN_CONTROL               0x124
> -#define F_INT_TRANSLATION_FAULT                        BIT(0)
> -#define F_INT_MAIN_MULTI_HIT_FAULT             BIT(1)
> -#define F_INT_INVALID_PA_FAULT                 BIT(2)
> -#define F_INT_ENTRY_REPLACEMENT_FAULT          BIT(3)
> -#define F_INT_TLB_MISS_FAULT                   BIT(4)
> -#define F_INT_MISS_TRANSACTION_FIFO_FAULT      BIT(5)
> -#define F_INT_PRETETCH_TRANSATION_FIFO_FAULT   BIT(6)
> +                                               /* mmu0 | mmu1 */
> +#define F_INT_TRANSLATION_FAULT                        (BIT(0) | BIT(7))
> +#define F_INT_MAIN_MULTI_HIT_FAULT             (BIT(1) | BIT(8))
> +#define F_INT_INVALID_PA_FAULT                 (BIT(2) | BIT(9))
> +#define F_INT_ENTRY_REPLACEMENT_FAULT          (BIT(3) | BIT(10))
> +#define F_INT_TLB_MISS_FAULT                   (BIT(4) | BIT(11))
> +#define F_INT_MISS_TRANSACTION_FIFO_FAULT      (BIT(5) | BIT(12))
> +#define F_INT_PRETETCH_TRANSATION_FIFO_FAULT   (BIT(6) | BIT(13))

If there are two IOMMUs, shouldn't we have two driver instances handle
them, instead of making the driver combine them two internally?

And, what is even more important from security point of view actually,
have two separate page tables (aka IOMMU groups) for them?

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
