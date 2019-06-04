Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB503547B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 01:41:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J9TkM01qUt8BnBBswH6CM5JbEyLRvccvo50XVcZhDD0=; b=i2nKTm9sJzbabE
	bj8asafzbOKwlo1Z410yodO3fMyPTEvLZygyK8xerwY7xVIzWKKp6SraqzuG4/Uyh5VtXj3/t16bd
	Z5iZSQzwSTkpImzGq8fCbZ52JxHUyGXNeQzlISL2eo1rPeSGVXlX74SJ6airi5vUkHL/lLqJCyDeT
	8jxOywIahiPvPMLjNEop6dG0jnGbIjxUwqwFdIGDwkpd4RYDbYzKhisnthqHV7yTO/bNiDmil6wpI
	qfldO5RwFIfLWrBep3qnTAgpCJrv4D0zTLCQdexDOm4aywnHruoEnPeTyX1EfwvVZXWPymwKRDCfJ
	XDa56oBBohuY0ElDjFtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYJ3L-0000Vu-5t; Tue, 04 Jun 2019 23:41:15 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYJ3D-0000Uv-IA
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 23:41:09 +0000
Received: by mail-pl1-x643.google.com with SMTP id bh12so2885369plb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 16:41:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PEW0YI52v17ROAEu88+lgWes0aNQUTZHMT31ckUQV0Y=;
 b=k97nBHkWVfd4b6neMJHJ1ikRwOa0Dnrb283GaiQ9vr42eeTi4Bzx6eCgd+XwXVRSHQ
 +onY9F03ZXXkt961UHeohcEMV+3oVQjVMP8xX5A5k2iFczJ8DXypJQjgkI6Y0qM4JS/K
 X6xlrAgYcrnXayME8/5i7jtCSAS9PDoDxUXeIuPik6D3MpMv/zhxeVc2gd9oChlT0ywk
 WLa+Ici1IoaTqRUddVaU+Bo3ZPhwVoZEoTDhExOOelm9e4OIM3C7JYQ+uXAByKwZJAdQ
 j8E891XgJw6IGm1muVCiqTp+SlMuul/l0INLSkvimO8nHpLf8Va+JU3vk4R98MYNb2xr
 CbWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PEW0YI52v17ROAEu88+lgWes0aNQUTZHMT31ckUQV0Y=;
 b=HuxsoNmC8aGidqXFEbxavv7eYvpJyQ0O6xl0aWL0UHi995K8Wcbs9AsDWA+yaAUzDY
 iAlRg8Ixz2HEYRyGAq0fDMiBTAe0zpJurmyUojN7xSUF000NsEC02hhoTz/wJpdI7nI3
 aecNt2JwXlXyqbiiBMMrpDZitrIAU85vi3OiArb8kVn7dIyX1//0gV3slmotF4SL9RJ8
 wrQqWQrbq1PHUT3ZO2heHT6+dfqd4xW74lX4XpVxP9LSKjRQpDYRodI1AbyO5F07QJwv
 pN0MwmsWKAKO92Zq1RHbQC5xhmMvFN4ogqdadK2AbXLc9dY/oTZw692r7XtSSKZtz4Xt
 3zHw==
X-Gm-Message-State: APjAAAWycno55+KgSAyIZHeuhhWexEthHePQbPEUlQk9wu3Hjfo46HQa
 VNq+MB+ijCL9BdpLDkRR0Am8zw==
X-Google-Smtp-Source: APXvYqwB9Rs6qdMKX9gf7PQIrUTJvFAVQlDRxbVsBIYlA6lXkdsejqKkUUFki/Do31p/eXmdrr7tew==
X-Received: by 2002:a17:902:d916:: with SMTP id
 c22mr14264492plz.195.1559691666284; 
 Tue, 04 Jun 2019 16:41:06 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id a9sm17192793pgw.72.2019.06.04.16.41.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 04 Jun 2019 16:41:05 -0700 (PDT)
Date: Tue, 4 Jun 2019 16:41:03 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Will Deacon <will.deacon@arm.com>, Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] iommu: io-pgtable: Support non-coherent page tables
Message-ID: <20190604234103.GH4814@minitux>
References: <20190515233234.22990-1-bjorn.andersson@linaro.org>
 <CAFp+6iEMQd1uAWdkLysYWt0et8eRojoivG6+e78y0DU+4=H+_g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFp+6iEMQd1uAWdkLysYWt0et8eRojoivG6+e78y0DU+4=H+_g@mail.gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_164107_608016_5AD73FF8 
X-CRM114-Status: GOOD (  18.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Vivek Gautam <vgautam@qti.qualcomm.com>,
 open list <linux-kernel@vger.kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Vivek Gautam <vivek.gautam@codeaurora.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 15 May 23:47 PDT 2019, Vivek Gautam wrote:

> On Thu, May 16, 2019 at 5:03 AM Bjorn Andersson
> <bjorn.andersson@linaro.org> wrote:
> >
> > Describe the memory related to page table walks as non-cachable for iommu
> > instances that are not DMA coherent.
> >
> > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > ---
> >  drivers/iommu/io-pgtable-arm.c | 12 +++++++++---
> >  1 file changed, 9 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
> > index 4e21efbc4459..68ff22ffd2cb 100644
> > --- a/drivers/iommu/io-pgtable-arm.c
> > +++ b/drivers/iommu/io-pgtable-arm.c
> > @@ -803,9 +803,15 @@ arm_64_lpae_alloc_pgtable_s1(struct io_pgtable_cfg *cfg, void *cookie)
> >                 return NULL;
> >
> >         /* TCR */
> > -       reg = (ARM_LPAE_TCR_SH_IS << ARM_LPAE_TCR_SH0_SHIFT) |
> > -             (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_IRGN0_SHIFT) |
> > -             (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_ORGN0_SHIFT);
> > +       if (cfg->quirks & IO_PGTABLE_QUIRK_NO_DMA) {
> > +               reg = (ARM_LPAE_TCR_SH_IS << ARM_LPAE_TCR_SH0_SHIFT) |
> > +                     (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_IRGN0_SHIFT) |
> > +                     (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_ORGN0_SHIFT);
> > +       } else {
> > +               reg = (ARM_LPAE_TCR_SH_IS << ARM_LPAE_TCR_SH0_SHIFT) |
> > +                     (ARM_LPAE_TCR_RGN_NC << ARM_LPAE_TCR_IRGN0_SHIFT) |
> > +                     (ARM_LPAE_TCR_RGN_NC << ARM_LPAE_TCR_ORGN0_SHIFT);
> > +       }
> 
> This looks okay to me based on the discussion that we had on a similar
> patch that I
> posted. So,
> Reviewed-by: Vivek Gautam <vivek.gautam@codeaurora.org>
> 
> [1] https://lore.kernel.org/patchwork/patch/1032939/
> 

Will, Robin, any input on this patch?

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
