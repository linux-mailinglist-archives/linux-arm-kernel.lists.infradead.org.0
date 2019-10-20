Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21851DDF22
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 17:26:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UweB76HFmhuNaG3Qn1Xyr3XsnFZ5ALw3wrUSn58HL3E=; b=eSB0B2sQFgW66R
	FIYgcxvNoI4RxF6WeQLsrlyAAADFgSokiU69vOcAjM8WWdPebPjf4tNjIwucXmKbDGnUZX64OPPbW
	VkKEEp7uP39lYyZ3Md8b9glMttH8DLe7UGJeFZv35cdpWfw4PNNAbZxvpzsRK1yXA3xDpizYwhHtN
	SXsBYrKIGHBIx48/GCuGdxpq7RhEA+p3G5uprleKmkq5tndquQhcS4it/J/KMqN2rQgFYGHEA9hOz
	qHtUef+QXp2K8610eVc8+aiggiSiTHzyKRd4BmOHiGZCWLFT6Wg8UT2L/qr9C1QIBwWuc6r1zBmLy
	KgnB9FHVdvkODrX/gkvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMD6X-0004Vh-8A; Sun, 20 Oct 2019 15:26:49 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMD6G-0004D8-WB
 for linux-arm-kernel@lists.infradead.org; Sun, 20 Oct 2019 15:26:34 +0000
Received: by mail-pg1-x542.google.com with SMTP id f14so6081975pgi.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 20 Oct 2019 08:26:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pABsGm/wMCxH90AX9FR3kDnSbIIdKlksDYYOMuJR3UM=;
 b=l3dIfT35FNsyilrzD12H/GM6NaoBomwigaHeRsiefY7c48bn+SzhgXJ5n4pgI/RWkT
 tT5Ilds8pOllSWIKdoeeu5kYTLu4o/0QY9yiHkTFzUJjX2+nazm52I0sdQsh98R8iAzS
 OOCavF36ylhvGeS6IZjADe2a/I4Oz/7lACz8c6fVXR74xrsyg8xnRA5k6gBMbUe0aITb
 vB3c3s+AX/ooT6GucfabbSLgNQBYuxsDGL+jKepLjy2QIPOUdepKXer//f4B4pRfmOXY
 2ChijdYt1sAqksFvBxOIddDJbmUIM4B3UmP+FbXgAKj3Vlqp7jHOSu5T7TwgvJMgqr1R
 oluQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pABsGm/wMCxH90AX9FR3kDnSbIIdKlksDYYOMuJR3UM=;
 b=i/f1qzjRdWdLjs3bNGepE8ES3Y/Rt6c4DqL4K5yvbJPhjOsccVl+q3sK8BAteSAvRq
 SVESgFmAXHFA1XhOHRGrAgZdhqSBegeYZ7WqjOKXGk6naSQ70gY6Su97rWAf8jgsE2Lr
 CTJHbrJg/HHDjXKA/ny7hUPEwqt6ePvduShGqBGBokkZMsuV8K6WU5v1UviroiMlyMGm
 PjLSm0XlAvyD+uuSmlYVtZinpGp7wiO/sV5eUkx79JdBE3eDsFmeOzKw/wddBcQxCjqs
 18R57nySYB5t2D3O2SbJFy8771BrfKK3B8ar2EpFYbp1uyk8EdnJUJ5JzMXxR9q4ue0s
 9pSQ==
X-Gm-Message-State: APjAAAWIB8WF8RrFdB+l5N00eMflu3oDynsxIAhLKOlwh/A8izjXMP9f
 Lf/hjzMxq6yXkdZvOOeFvm/4
X-Google-Smtp-Source: APXvYqz6lFf/t+2dK+E0DYAikE4NDPP1GnLHT18bKNaEQd3kNtSuINwDMT4/RL71Kq2y2oRCKOXGLw==
X-Received: by 2002:aa7:9467:: with SMTP id t7mr18002654pfq.172.1571585192102; 
 Sun, 20 Oct 2019 08:26:32 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:619e:9471:81c6:faf1:b3a2:6750])
 by smtp.gmail.com with ESMTPSA id a8sm12107920pff.5.2019.10.20.08.26.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 20 Oct 2019 08:26:31 -0700 (PDT)
Date: Sun, 20 Oct 2019 20:56:24 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v5 1/8] clk: Zero init clk_init_data in helpers
Message-ID: <20191020152624.GB12864@Mani-XPS-13-9360>
References: <20190916161447.32715-1-manivannan.sadhasivam@linaro.org>
 <20190916161447.32715-2-manivannan.sadhasivam@linaro.org>
 <20190917203957.9F75C2054F@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917203957.9F75C2054F@mail.kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_082633_051348_6EDB40B0 
X-CRM114-Status: GOOD (  15.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, darren.tsao@bitmain.com, robh+dt@kernel.org,
 haitao.suo@bitmain.com, fisher.cheng@bitmain.com, alec.lin@bitmain.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 01:39:56PM -0700, Stephen Boyd wrote:
> Quoting Manivannan Sadhasivam (2019-09-16 09:14:40)
> > The clk_init_data struct needs to be initialized to zero for the new
> > parent_map implementation to work correctly. Otherwise, the member which
> > is available first will get processed.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  drivers/clk/clk-composite.c  | 2 +-
> >  drivers/clk/clk-divider.c    | 2 +-
> >  drivers/clk/clk-fixed-rate.c | 2 +-
> >  drivers/clk/clk-gate.c       | 2 +-
> >  drivers/clk/clk-mux.c        | 2 +-
> >  5 files changed, 5 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c
> > index b06038b8f658..4d579f9d20f6 100644
> > --- a/drivers/clk/clk-composite.c
> > +++ b/drivers/clk/clk-composite.c
> > @@ -208,7 +208,7 @@ struct clk_hw *clk_hw_register_composite(struct device *dev, const char *name,
> >                         unsigned long flags)
> >  {
> >         struct clk_hw *hw;
> > -       struct clk_init_data init;
> > +       struct clk_init_data init = { NULL };
> 
> I'd prefer { } because then we don't have to worry about ordering the
> struct to have a pointer vs. something else first.
>

okay. I thought having NULL would look more explicit!

Thanks,
Mani
 
> >         struct clk_composite *composite;
> >         struct clk_ops *clk_composite_ops;
> >         int ret;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
