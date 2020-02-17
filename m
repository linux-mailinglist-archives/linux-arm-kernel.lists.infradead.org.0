Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 105DE160BCE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 08:42:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/IQ2tUmnzFTb5Rz3tO4Ut6yzhJeyZIwTWrM0YwOfz4s=; b=qIBj49NUbeUoVI
	+9GgNOSxi4ZCZNnSAHnF7RtG5MFks2GM3Pe4sY1XZ2bKRGI6ShjCddxXmcQjChI+EZZZVfgBJLkyN
	/obhB9/cvqAOM1IgZLVwo3a2pJ/JAeVWSCdtqMecj456WK9/PDTYXeH67JBTNYMvBgajA8oLQMd/5
	lFHs6MDrrEti69g8uDlI2esJH5ZFWwsdonUcVbILY/2DxnBd24xTKmP4woPz9KckGOMdZbNRnaKJz
	voUacnu5UYhFLVPl9jIz6K0Svy7pw5m9akEh8Gy5W3NtNiN01+RPke+mYzsivHoGWgaPcOtRKlpY+
	fZfjlmVUIWdy7POhsURA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3b2x-0004Vk-E2; Mon, 17 Feb 2020 07:42:27 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3b2o-0004Vc-Sq
 for linux-arm-kernel@bombadil.infradead.org; Mon, 17 Feb 2020 07:42:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=hqMNovNPLBTkcDZOPcJd85GoyTDK28xkZ5YRxHDZcBM=; b=ie061spF1JdJmwzdGZphceeSIP
 xs23p8a4AxWOA7drUweshdqOm6j8bm2qZzM/SueJa4le0XIWNzOQCEwDTmENqgdLB1LMIQdacWqyl
 GeC2N4T7fnNVebt/IWJ+3p9m3A4YvSjmBuFKI3DSDge0PgVL/ZTgb6kJ337PgC3tcZtRts7z2y+mn
 YuKX7sKZ7JxoH92WxyZX2WgaRWEFGQGflO9y9hEZBDLXOJunppN3faA1CADSgXDH/K8skhc4W8Qbn
 T6lZsskiw8Rt7XFSPm1Z2Mp7Ga/y+VoGsHp2jGhFntil6tSV1rQ6bdFqyubbdPwI/Leanc/IL4tGE
 4UK9r11g==;
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3b2l-0005oH-OL
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 07:42:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581925313;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hqMNovNPLBTkcDZOPcJd85GoyTDK28xkZ5YRxHDZcBM=;
 b=ehZecdFbhkDmpuogn/fGY4Hn7cl2Mq+ft82DOojzr8RiU2EyV3LVGsa31VVQ2w/OnqcI7f
 ei9tOexGAoMJnjy5S8EXAokTScG1mr7MtqWPPmPYwdnatQCbHb+J3673J7H+kZE6FhXu8K
 LCLgl7kyKdVTrcKKjBRCOv7QIhBgjp8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-216-tvWotQ_rP52F4XbMwzS7ew-1; Mon, 17 Feb 2020 02:41:50 -0500
X-MC-Unique: tvWotQ_rP52F4XbMwzS7ew-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 94405800D53;
 Mon, 17 Feb 2020 07:41:47 +0000 (UTC)
Received: from carbon (ovpn-200-41.brq.redhat.com [10.40.200.41])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 299292CC39;
 Mon, 17 Feb 2020 07:41:35 +0000 (UTC)
Date: Mon, 17 Feb 2020 08:41:33 +0100
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: Ilias Apalodimas <ilias.apalodimas@linaro.org>
Subject: Re: [PATCH net-next v2] net: page_pool: API cleanup and comments
Message-ID: <20200217084133.1a67ae63@carbon>
In-Reply-To: <20200217062850.133121-1-ilias.apalodimas@linaro.org>
References: <20200217062850.133121-1-ilias.apalodimas@linaro.org>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 John Fastabend <john.fastabend@gmail.com>, brouer@redhat.com,
 Alexei Starovoitov <ast@kernel.org>, Jassi Brar <jaswinder.singh@linaro.org>,
 Jose Abreu <joabreu@synopsys.com>, linux-arm-kernel@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, jonathan.lemon@gmail.com,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, bpf@vger.kernel.org,
 lorenzo@kernel.org, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org, Jesper Dangaard Brouer <hawk@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 17 Feb 2020 08:28:49 +0200
Ilias Apalodimas <ilias.apalodimas@linaro.org> wrote:

> diff --git a/include/net/page_pool.h b/include/net/page_pool.h
> index cfbed00ba7ee..7c1f23930035 100644
> --- a/include/net/page_pool.h
> +++ b/include/net/page_pool.h
> @@ -162,39 +162,33 @@ static inline void page_pool_use_xdp_mem(struct page_pool *pool,
>  }
>  #endif
>  
> -/* Never call this directly, use helpers below */
> -void __page_pool_put_page(struct page_pool *pool, struct page *page,
> -			  unsigned int dma_sync_size, bool allow_direct);
> +void page_pool_release_page(struct page_pool *pool, struct page *page);
>  
> -static inline void page_pool_put_page(struct page_pool *pool,
> -				      struct page *page, bool allow_direct)
> +/* If the page refcnt == 1, this will try to recycle the page.
> + * if PP_FLAG_DMA_SYNC_DEV is set, it will try to sync the DMA area for
> + * the configured size min(dma_sync_size, pool->max_len).
> + * If the page refcnt != page will be returned

Is this last comment line fully formed?


> + */
> +void page_pool_put_page(struct page_pool *pool, struct page *page,
> +			unsigned int dma_sync_size, bool allow_direct);
> +
> +/* Same as above but will try to sync the entire area pool->max_len */
> +static inline void page_pool_put_full_page(struct page_pool *pool,
> +					   struct page *page, bool allow_direct)



-- 
Best regards,
  Jesper Dangaard Brouer
  MSc.CS, Principal Kernel Engineer at Red Hat
  LinkedIn: http://www.linkedin.com/in/brouer


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
