Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76563121AB6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 21:14:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vNZ+4GGFuVrtMOJ2D710EzDfFQApMFoAG33fYd4J70g=; b=ZRanWmybjS9iou
	frQFO+rm5fE89ocGLiBD2PCSj23RiQ6loTn9oAlbHzSP0GCVAAR37c5a1Dgdx1bcKYuC/w9uOFkvZ
	uh/hSiOHzPBulx20Md0lKKlOonzuP3G0RdNBZiBuEeC+OnfWb3If/uRA9OzcXQCAKHozdqU7M50dv
	MOu4ZITmC6ZxF7DK13mJXFz6+Oho5Q3aP7YxblP+y8bVscxLbOL1lj+plqchwu1uQ+X3H50SZ7Q4w
	Efuin7maV31QrKcgaUWqtQYNhpW8oChOhwP3qpAghTDRG4WwG/MSR90Amj35dgKIgHIyGdHrj6xJF
	W1SBi1RkAs3hw9xK1m5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igwlB-0007lD-Ly; Mon, 16 Dec 2019 20:14:29 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igwl1-0007kk-FA
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 20:14:20 +0000
Received: by mail-lf1-x143.google.com with SMTP id b15so5222976lfc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 12:14:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=SBA8qsH74joROaQ7qUDtcV487nsBL4T4WgclmBa0Frc=;
 b=ku4jjLQyhZhXcIGu4nZIjg8rbK20un3MtB+TCOZXShMDtjr2HGOaRu9he7uOTF7Cih
 T3brX3yh+ceFv1ntlhNGLP08m0V9P/WctQ31kCqVPwTi11yHvWDB5zIM2L5gdtJU0t6C
 toL5piqJBqXKVfkIh8mA39aWi5VXl3mGdfXtivjFonFdjVGqYWA8jh0Vc6d9QCyAkARu
 JsEfg1+SXICLbj/4yY8AtlA1Ik7ZG/HN0JzGkdvM1S4w9ncr2eYD6CVNrpouMnS8Sv2w
 5TLiAlvSGrxO3NlzrooXpjw9JCEb10909JKvwfctiyJBYaKdJw18ww6wndKPu+6NMY0+
 zznQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=SBA8qsH74joROaQ7qUDtcV487nsBL4T4WgclmBa0Frc=;
 b=cA27DIOJctydD+FAwhlsfHoSJ1xTc0yqNjGSSQKLYLM2awqnv+KzYQTb5l65iJuRP7
 7cX4iP/M61Lins9XsKE11T336AeoDMNERkDjWcSS0WS1sXrT7Jly+OhbMayXnW6phvgq
 DA/nTlpzl3wABEnBem7cr8UJ7tG6/7zMFRZgaY6OjYwRqb/yPKd1WQlKs4DOwKVax3ib
 3fYuLAASEEVB0bvxmAT0bONji/b2x4ACiYRy/cxKO5UkJKhTcltMGpTpsCACWF7uJ43C
 sdSDtmKY6343obH1DYwFZvr0jduhswE93HjvOakRe/zevl73TXTz0SXi+J4hSXt+aAig
 lptw==
X-Gm-Message-State: APjAAAU5OcchR1Ux1fdJPiJ/LEb9FTYB3x5p2oYZj2KxPgI1CQPxXIuh
 GNolgjpkcf43TAbvaViORTswcw==
X-Google-Smtp-Source: APXvYqxKjc/fsBTpIng96/mIdsynKS0oePdJPNDLm9lKBC2UNlCq0QkEhG6AghBZJ/xPXJHMxWvS4w==
X-Received: by 2002:ac2:5635:: with SMTP id b21mr512845lff.127.1576527257085; 
 Mon, 16 Dec 2019 12:14:17 -0800 (PST)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id 192sm9615625lfh.28.2019.12.16.12.14.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 12:14:16 -0800 (PST)
Date: Mon, 16 Dec 2019 12:14:04 -0800
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net-next 3/4] net: stmmac: Let TX and RX interrupts be
 independently enabled/disabled
Message-ID: <20191216121404.43966b89@cakuba.netronome.com>
In-Reply-To: <BN8PR12MB3266288303A6CA6C3CAA5E6CD3510@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <cover.1576007149.git.Jose.Abreu@synopsys.com>
 <04c000a3e0356e8bfb63e07490d8de8e081a2afe.1576007149.git.Jose.Abreu@synopsys.com>
 <20191214123623.1aeb4966@cakuba.netronome.com>
 <BN8PR12MB3266288303A6CA6C3CAA5E6CD3510@BN8PR12MB3266.namprd12.prod.outlook.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_121419_533659_92CA0B81 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 16 Dec 2019 09:18:50 +0000, Jose Abreu wrote:
> > > @@ -3759,24 +3777,18 @@ static int stmmac_napi_poll_tx(struct napi_struct *napi, int budget)
> > >  	struct stmmac_channel *ch =
> > >  		container_of(napi, struct stmmac_channel, tx_napi);
> > >  	struct stmmac_priv *priv = ch->priv_data;
> > > -	struct stmmac_tx_queue *tx_q;
> > >  	u32 chan = ch->index;
> > >  	int work_done;
> > >  
> > >  	priv->xstats.napi_poll++;
> > >  
> > > -	work_done = stmmac_tx_clean(priv, DMA_TX_SIZE, chan);
> > > -	work_done = min(work_done, budget);
> > > -
> > > -	if (work_done < budget)
> > > -		napi_complete_done(napi, work_done);
> > > +	work_done = stmmac_tx_clean(priv, budget, chan);
> > > +	if (work_done < budget && napi_complete_done(napi, work_done)) {  
> > 
> > Not really related to this patch, but this looks a little suspicious. 
> > I think the TX completions should all be processed regardless of the
> > budget. The budget is for RX.  
> 
> Well but this is a TX NAPI ... Shouldn't it be limited to prevent CPU 
> starvation ?

It is a bit confusing, but at least netpoll expects the TX completions
to be processed with zero budget. Check out poll_one_napi().

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
