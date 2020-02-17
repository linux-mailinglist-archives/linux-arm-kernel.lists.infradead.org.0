Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E40160BDD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 08:46:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=omDaALg6XwzrtQHuEtWv2LdMEXJcphuIHdFOIKMrQ2I=; b=nIbWhw86wVXlvc
	2GCwvAswIpk+PSIylOjL+JzJEiM4r5Kyq6e26UzLk2SUNjpQerpjeXFgVf2i5Zyh8uaGMWGIQexuN
	Xffri6+1spvXT6qoI2IwIR1IIVm7VpEOcmO2dlP7A0avRaI4Ua225v5xzb15eMPj5LnAaa+qHbNyY
	WaNOlYxzn/SPDlTspq3Qt56rtOuKw2sPEww+HXPbv7iyHGTnqrreCkIxkZwFt5mDNpPtLzDEBLlmF
	oIA3tgHyfWIo/bWTedjVKffxFlbn46p+LX7y7ZhGmdRbqDkZ55NMF/GoPBpLasG+7AEXoHijXu7cQ
	4eyFrhmGqs5/OD7RbwXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3b6j-0006Yx-T8; Mon, 17 Feb 2020 07:46:21 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3b6b-0006Y7-CE
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 07:46:15 +0000
Received: by mail-wr1-x443.google.com with SMTP id m16so18327803wrx.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 23:46:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=5qkKrOlcFFXZzVNv9icrocjiIlH9It8BWZdzD0LWt0Q=;
 b=nVwzAvmsNR+X50r3nGA+fAKqm4lVqop6F9Orm0R72w9u0QJH/wgbx6ALhdUWwKdPfZ
 rjuB4z7AJVDPUWjpfqGwquqJcbU7zoyj4AzStg0E64CPVyz4YIt8MRHIZgFMGArJmNBk
 aC9N3DvtmoG6jepAu1+EVe98hhZeaZzKRyw6ZR8lzwLGqfrWlFPuCWhti3+3X3a77h9B
 eenMFaN1CGdlEX4vF4AOpDLedZ19hyXcCzg/t51WAp78AEzQ9hVjScoV8FQyHDq2n6RQ
 hiS6+bajefP3Bh83xlyQwTdl+wVKaRWxVTOeWPxtfSlpPvQlDDYreJWe+cRVIeIZpmoD
 e0eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=5qkKrOlcFFXZzVNv9icrocjiIlH9It8BWZdzD0LWt0Q=;
 b=f72RVwZ9xYt4ZqlNclz9/iYdxwqNGkrbxC9u2yBIzitMgcaEIILIC731Y+YqLBT0B9
 ZzztQnO3E1N3IfiyOhN7VbkPsecLZNswVs9Tf9h2NI7Tm6x3YlwXbL0O0lZx11k4b/L9
 02cw14IpaZobrgtduYLv2yvOOyCwzWexvvyV4oKeMmW3zFQQqm+KXZI2GWSyPXJVFjaT
 zrDG+2BXCfDA3vSv5eplgLuPdm3uq8kzWYhMeByPR9e4n5G6pwuRX/ULuQGBABJIFgbo
 37VEulnKnRC4kB0Wg94MChAwIFq/uwAr+Q702xOS+X0Fl3JMiITtlTGAC66eMabw8cPi
 CQqg==
X-Gm-Message-State: APjAAAXRBadaONC39ww56YNUR2PzNH6LwGDStSwq88hwalL5h/X9c2QG
 Tc63+hT1PHVejMdFiSTDMQI2bw==
X-Google-Smtp-Source: APXvYqxJK1DF6QQA+j344kfPjdKZ9FNScf9ZQaa/MQTmBHsoNElLwtb1YxsehCFRWbNrdn9YAQ7Brw==
X-Received: by 2002:a5d:4ed0:: with SMTP id s16mr20797979wrv.144.1581925571717; 
 Sun, 16 Feb 2020 23:46:11 -0800 (PST)
Received: from apalos.home (ppp-2-87-54-32.home.otenet.gr. [2.87.54.32])
 by smtp.gmail.com with ESMTPSA id f11sm18786744wml.3.2020.02.16.23.46.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Feb 2020 23:46:11 -0800 (PST)
Date: Mon, 17 Feb 2020 09:46:08 +0200
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
To: Jesper Dangaard Brouer <brouer@redhat.com>
Subject: Re: [PATCH net-next v2] net: page_pool: API cleanup and comments
Message-ID: <20200217074608.GA139819@apalos.home>
References: <20200217062850.133121-1-ilias.apalodimas@linaro.org>
 <20200217084133.1a67ae63@carbon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200217084133.1a67ae63@carbon>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_234613_453726_399BF806 
X-CRM114-Status: GOOD (  17.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Alexandre Torgue <alexandre.torgue@st.com>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, toke@redhat.com,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-kernel@vger.kernel.org, Jassi Brar <jaswinder.singh@linaro.org>,
 Jose Abreu <joabreu@synopsys.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, jonathan.lemon@gmail.com,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, bpf@vger.kernel.org,
 lorenzo@kernel.org, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org, Jesper Dangaard Brouer <hawk@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 08:41:33AM +0100, Jesper Dangaard Brouer wrote:
> On Mon, 17 Feb 2020 08:28:49 +0200
> Ilias Apalodimas <ilias.apalodimas@linaro.org> wrote:
> 
> > diff --git a/include/net/page_pool.h b/include/net/page_pool.h
> > index cfbed00ba7ee..7c1f23930035 100644
> > --- a/include/net/page_pool.h
> > +++ b/include/net/page_pool.h
> > @@ -162,39 +162,33 @@ static inline void page_pool_use_xdp_mem(struct page_pool *pool,
> >  }
> >  #endif
> >  
> > -/* Never call this directly, use helpers below */
> > -void __page_pool_put_page(struct page_pool *pool, struct page *page,
> > -			  unsigned int dma_sync_size, bool allow_direct);
> > +void page_pool_release_page(struct page_pool *pool, struct page *page);
> >  
> > -static inline void page_pool_put_page(struct page_pool *pool,
> > -				      struct page *page, bool allow_direct)
> > +/* If the page refcnt == 1, this will try to recycle the page.
> > + * if PP_FLAG_DMA_SYNC_DEV is set, it will try to sync the DMA area for
> > + * the configured size min(dma_sync_size, pool->max_len).
> > + * If the page refcnt != page will be returned
> 
> Is this last comment line fully formed?

Yes, but that dosen't mena it makes sense!
Maybe i should switch the last sentence to sometning like:
"If the page refcnt != 1, page will be returned to memory subsystem" ?

Thanks
/Ilias
> 
> 
> > + */
> > +void page_pool_put_page(struct page_pool *pool, struct page *page,
> > +			unsigned int dma_sync_size, bool allow_direct);
> > +
> > +/* Same as above but will try to sync the entire area pool->max_len */
> > +static inline void page_pool_put_full_page(struct page_pool *pool,
> > +					   struct page *page, bool allow_direct)
> 
> 
> 
> -- 
> Best regards,
>   Jesper Dangaard Brouer
>   MSc.CS, Principal Kernel Engineer at Red Hat
>   LinkedIn: http://www.linkedin.com/in/brouer
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
