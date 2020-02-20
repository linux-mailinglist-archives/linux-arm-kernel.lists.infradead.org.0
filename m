Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB371665DA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 19:10:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EkbHZ35YjqVLaShTCxCJAFwRtrvkdPlHSJzJ3anh7/0=; b=HKsn9Rim819cSj
	tQUfB1gBhliQXCjYtvLY8c4+kNgEkSJN/1IengLQXf0vrPDBwoOoNe6SvO29NGFCqQOgtEPC7RzUH
	o1xD/qOz8DmTcbOr/I/UTVO6Np1VmbaF5uLM737Y1uQzZ/jrBbBbQ+TXciJVp/GjD2Wn8CKZA4rm6
	9lCN6SGDZzC8VwUY93kXew2qSKcGCm7IcjX72ctmepf17Gmj6mIMc49j9O2A2vbtZywZYYWvuzG7Z
	xb/zkhWt71l4g2FGuq0cUGUTF1Yap0N6tLi2dE0BFiX+5wBTqzXOaWETpHE/4u+z8yZSNMWV+NWuc
	oJFpyYNMT9Db2+hAkbHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4qGv-0006av-UE; Thu, 20 Feb 2020 18:10:01 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4qGj-0006YD-0v
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 18:09:52 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 4460815AC0C26;
 Thu, 20 Feb 2020 10:09:39 -0800 (PST)
Date: Thu, 20 Feb 2020 10:09:38 -0800 (PST)
Message-Id: <20200220.100938.2134816727649118049.davem@davemloft.net>
To: ilias.apalodimas@linaro.org
Subject: Re: [PATCH net-next v5] net: page_pool: API cleanup and comments
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200220074155.765234-1-ilias.apalodimas@linaro.org>
References: <20200220074155.765234-1-ilias.apalodimas@linaro.org>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 20 Feb 2020 10:09:40 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_100949_078381_4EFC4A74 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: joabreu@synopsys.com, kuba@kernel.org, alexandre.torgue@st.com,
 daniel@iogearbox.net, netdev@vger.kernel.org, toke@redhat.com,
 john.fastabend@gmail.com, ast@kernel.org, linux-kernel@vger.kernel.org,
 jaswinder.singh@linaro.org, jonathan.lemon@gmail.com,
 linux-arm-kernel@lists.infradead.org, thomas.petazzoni@bootlin.com,
 brouer@redhat.com, peppe.cavallaro@st.com, bpf@vger.kernel.org,
 lorenzo@kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 mcoquelin.stm32@gmail.com, hawk@kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
Date: Thu, 20 Feb 2020 09:41:55 +0200

> Functions starting with __ usually indicate those which are exported,
> but should not be called directly. Update some of those declared in the
> API and make it more readable.
> =

> page_pool_unmap_page() and page_pool_release_page() were doing
> exactly the same thing calling __page_pool_clean_page().  Let's
> rename __page_pool_clean_page() to page_pool_release_page() and
> export it in order to show up on perf logs and get rid of
> page_pool_unmap_page().
> =

> Finally rename __page_pool_put_page() to page_pool_put_page() since we
> can now directly call it from drivers and rename the existing
> page_pool_put_page() to page_pool_put_full_page() since they do the same
> thing but the latter is trying to sync the full DMA area.
> =

> This patch also updates netsec, mvneta and stmmac drivers which use
> those functions.
> =

> Suggested-by: Jonathan Lemon <jonathan.lemon@gmail.com>
> Acked-by: Toke H=F8iland-J=F8rgensen <toke@redhat.com>
> Acked-by: Jesper Dangaard Brouer <brouer@redhat.com>
> Signed-off-by: Ilias Apalodimas <ilias.apalodimas@linaro.org>

Applied, thanks Ilias.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
