Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B9B7160C69
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 09:09:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cHiEhgD+6q7oaWlWPTFzHv/bHXMhNoRJtH6J7xpqlt4=; b=qDz7cGOwtg5kod
	hChWmY9+PPdKCfR3ncnFIu1xdrH6gBp8ulNF6h6PvI3B0Y5Wis5KGqK26Sub747IL9H2R9NWGaCaY
	vacI5SUlEO4Zt1Mn7+fcMZCOCkB7n22+eEg3BTMEvoa17CvcXQP8EVMxRI0O/a2JCYS1Am9P+nxjN
	ubin5S61ZcgaFEkdNlhZNvt1MW2hB1//laObJ0Uw94NLxIiBQ8RvY0o/HYAkaH3WrmnBU+pMed1M8
	b10+hHYTGMbYX8RRr31ZgRcKoor/TGwy7R3BN25zL8ZJLqq2zsPH48h2+sjTvuOivuz/ewEOsObTr
	uktrtiYFVDbFVMhNJtZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3bSl-0000a7-Ev; Mon, 17 Feb 2020 08:09:07 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3bSX-0000ZO-IR
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 08:08:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581926931;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EtqkCjqdRXLuRh9VlLNSDW1ljo1S6L5c70FnhGzTNhM=;
 b=OnZsI0bblNvbolzL7YFuQHX1bVDzFfhZLCjoJMhn2h04wBrc8aizDZRisYJbAnhTU2uBut
 jss2u6/QrCseAPirZzvKyJfsmZ1ltLSmuhZI8Mmt0CGg5DZKSrFvDhfbKYdSefJGDEagFe
 ujAyTeo7WPSO65GJq5qgyKF/ucBkg4M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-152-9Nx8pL2hOKaLfoXLO9UU9Q-1; Mon, 17 Feb 2020 03:08:48 -0500
X-MC-Unique: 9Nx8pL2hOKaLfoXLO9UU9Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 562D0107ACC4;
 Mon, 17 Feb 2020 08:08:45 +0000 (UTC)
Received: from carbon (ovpn-200-41.brq.redhat.com [10.40.200.41])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6396C1001B09;
 Mon, 17 Feb 2020 08:08:33 +0000 (UTC)
Date: Mon, 17 Feb 2020 09:08:31 +0100
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: Ilias Apalodimas <ilias.apalodimas@linaro.org>
Subject: Re: [PATCH net-next v2] net: page_pool: API cleanup and comments
Message-ID: <20200217090831.56de425e@carbon>
In-Reply-To: <20200217074608.GA139819@apalos.home>
References: <20200217062850.133121-1-ilias.apalodimas@linaro.org>
 <20200217084133.1a67ae63@carbon>
 <20200217074608.GA139819@apalos.home>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_000853_685426_55CD8143 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Alexandre Torgue <alexandre.torgue@st.com>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, toke@redhat.com,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-kernel@vger.kernel.org, brouer@redhat.com,
 Jassi Brar <jaswinder.singh@linaro.org>, Jose Abreu <joabreu@synopsys.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, jonathan.lemon@gmail.com,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, bpf@vger.kernel.org,
 lorenzo@kernel.org, "David S.
 Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Jesper Dangaard Brouer <hawk@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 17 Feb 2020 09:46:08 +0200
Ilias Apalodimas <ilias.apalodimas@linaro.org> wrote:

> On Mon, Feb 17, 2020 at 08:41:33AM +0100, Jesper Dangaard Brouer wrote:
> > On Mon, 17 Feb 2020 08:28:49 +0200
> > Ilias Apalodimas <ilias.apalodimas@linaro.org> wrote:
> >   
> > > diff --git a/include/net/page_pool.h b/include/net/page_pool.h
> > > index cfbed00ba7ee..7c1f23930035 100644
> > > --- a/include/net/page_pool.h
> > > +++ b/include/net/page_pool.h
> > > @@ -162,39 +162,33 @@ static inline void page_pool_use_xdp_mem(struct page_pool *pool,
> > >  }
> > >  #endif
> > >  
> > > -/* Never call this directly, use helpers below */
> > > -void __page_pool_put_page(struct page_pool *pool, struct page *page,
> > > -			  unsigned int dma_sync_size, bool allow_direct);
> > > +void page_pool_release_page(struct page_pool *pool, struct page *page);
> > >  
> > > -static inline void page_pool_put_page(struct page_pool *pool,
> > > -				      struct page *page, bool allow_direct)
> > > +/* If the page refcnt == 1, this will try to recycle the page.
> > > + * if PP_FLAG_DMA_SYNC_DEV is set, it will try to sync the DMA area for
> > > + * the configured size min(dma_sync_size, pool->max_len).
> > > + * If the page refcnt != page will be returned  
> > 
> > Is this last comment line fully formed?  
> 
> Yes, but that dosen't mena it makes sense!
> Maybe i should switch the last sentence to sometning like:
> "If the page refcnt != 1, page will be returned to memory subsystem" ?

Yes, that sounds better.

-- 
Best regards,
  Jesper Dangaard Brouer
  MSc.CS, Principal Kernel Engineer at Red Hat
  LinkedIn: http://www.linkedin.com/in/brouer


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
