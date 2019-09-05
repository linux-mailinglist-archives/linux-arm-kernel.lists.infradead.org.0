Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23744AAEB9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 00:50:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eQnFkr7vFClHCIVMY8oSq+fVCOIa6Tk5yc0i+0nXgOs=; b=gPNUjQjJckIOTm
	ztChCN7Tsf53YNNp2cUXrTCCvb6EOKWPHSvt730FgR7Z64edRqSIXdFvvzya0Pttqiw50DUQdGvZB
	JHLjyk0Wm+1wMdpZr544LcEqveN4+sZGRHyY+SwDcdxS8HXeIJWQwUEq4AtI6C2uuAJejp9T8Z8sa
	5q6oqifawc4OP43lEvPQm5ookS7eFErB49PHzccBQYT+Nt+3W6nUM2oI2WlXEvz2jK/8pDd4KOzIy
	v8Pnt06Ukz8T0rt1n8psCU/DuCnX1EIz4x2t145zY85OTkZqMrnFSGzz8nZmGWAZhs+QrdIXDxNHq
	Yt6SBpBY/nA45O0S96Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i60aA-0000Er-FR; Thu, 05 Sep 2019 22:50:26 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i60Zw-0000D6-LE
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 22:50:14 +0000
Received: by mail-qt1-x841.google.com with SMTP id v11so4818929qto.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 15:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Mt9CnpWDYE9AuIn/hMdu40hiJSofbzdMOkAcHsCIv0A=;
 b=Vydhvi9xtxhqe5HoBNZPhdiSWovcw1HFQTA8soQuoeVMc6pIcQ5l37oQ3SalYjcgjm
 TrbR2gyQ0J8Z5UPkHYElYPnXXieZeIn8ra2Lk7QRG5pG5hbOY9DVaX9uLAGALyg85Txg
 Es6trlS030XfryZ7vU/40X/oGNBbzuCH/ebqU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Mt9CnpWDYE9AuIn/hMdu40hiJSofbzdMOkAcHsCIv0A=;
 b=hgrszxIwtkUPYrdnAW0P6bEAmrd012OJpqZIftIFZ151uZAyrfqfrkKdMDSbePMEze
 cFqUA0AadiAzMH2YElEbXP87N172bvQ1UK5ympT2ZGi3+P9yrV1+rWTj/NecQOVGNKBB
 3uB9ENqJgj2pVIqIj/tfuDn546MZa8rU2YQlnhx1D5UjWoy71Gd8cXORUCTFy9lrR/hx
 8yv0w5rPN3L+HZpi5fGAZmv25gebBI/rtPLWi9ian63A+7S/spgSW0NBABUBk7k/4Oea
 lThfsKL1zPJ0oLss3GYvBvbfne4EpBOo/jzZ/ojnYL093ajLcyUp6NswQJ7l++DK7kaR
 Ibww==
X-Gm-Message-State: APjAAAWoWIJgjgq1ozqkT3GTHAtf8BPl0b9baD8VBLFykppU4m9E6laA
 JHKDY1SR+X4zcvz4g5HJJdhZipYf1/6eha+zbSaEPQ==
X-Google-Smtp-Source: APXvYqx+KZU9zIaMUMZ+jLWYnGv8HnZ+gqwV0E2600/1VRfMon8nX6vFFavjV+luTwMIWxrqVykRIXpwOLTFiFRi94I=
X-Received: by 2002:ac8:434e:: with SMTP id a14mr6318575qtn.278.1567723810989; 
 Thu, 05 Sep 2019 15:50:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190830074103.16671-1-bibby.hsieh@mediatek.com>
 <20190830074103.16671-2-bibby.hsieh@mediatek.com>
In-Reply-To: <20190830074103.16671-2-bibby.hsieh@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 6 Sep 2019 06:49:59 +0800
Message-ID: <CANMq1KDUR2cFrQC0NdfvLD=0QDiYoyOTGMf3RWyg5PPSURhGMQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm/mediatek: Support CMDQ interface in ddp component
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_155012_726477_8D42D063 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Yongqiang Niu <yongqiang.niu@mediatek.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, lkml <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, Tomasz Figa <tfiga@chromium.org>,
 YT Shen <yt.shen@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, Guenter Roeck <groeck@chromium.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 3:41 PM Bibby Hsieh <bibby.hsieh@mediatek.com> wrote:
>
> The CMDQ (Command Queue) in MT8183 is used to help
> update all relevant display controller registers
> with critical time limation.
> This patch add cmdq interface in ddp_comp interface,
> let all ddp_comp interface can support cpu/cmdq function
> at the same time.
>
> Signed-off-by: YT Shen <yt.shen@mediatek.com>
> Signed-off-by: CK Hu <ck.hu@mediatek.com>
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> --- [snip]
>  static void mtk_gamma_set(struct mtk_ddp_comp *comp,
> -                         struct drm_crtc_state *state)
> +                         struct drm_crtc_state *state,
> +                         struct cmdq_pkt *cmdq_pkt)
>  {
> -       unsigned int i, reg;
> +       unsigned int i;
>         struct drm_color_lut *lut;
>         void __iomem *lut_base;
>         u32 word;
>
>         if (state->gamma_lut) {
> -               reg = readl(comp->regs + DISP_GAMMA_CFG);
> -               reg = reg | GAMMA_LUT_EN;
> -               writel(reg, comp->regs + DISP_GAMMA_CFG);
> +               mtk_ddp_write_mask(cmdq_pkt, GAMMA_LUT_EN, comp,
> +                                  DISP_GAMMA_CFG, GAMMA_LUT_EN);
>                 lut_base = comp->regs + DISP_GAMMA_LUT;
>                 lut = (struct drm_color_lut *)state->gamma_lut->data;
>                 for (i = 0; i < MTK_LUT_SIZE; i++) {
>                         word = (((lut[i].red >> 6) & LUT_10BIT_MASK) << 20) +
>                                 (((lut[i].green >> 6) & LUT_10BIT_MASK) << 10) +
>                                 ((lut[i].blue >> 6) & LUT_10BIT_MASK);
> -                       writel(word, (lut_base + i * 4));
> +                       mtk_ddp_write(cmdq_pkt, word, comp,
> +                                     (unsigned int)(lut_base + i * 4));

Guenter pointed out that this looks quite wrong. We should have:
unsigned int lut_base;
lut_base = DISP_GAMMA_LUT;
mtk_ddp_write(cmdq_pkt, word, comp, lut_base + i * 4);

Or more simply:
mtk_ddp_write(cmdq_pkt, word, comp, DISP_GAMMA_LUT + i * 4);

>                 }
>         }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
