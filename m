Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C94245F7C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 14:15:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x9OBfyIEQpiv2q/jjRR5C8aX0pEscsnM39Tts7bXets=; b=uqCi7e33R1Xbet
	8UqPPGHSiNllyQG4On3b/O9qlA/5WVpKUL60mfOv/iak0pVWGi63fCsMft1u7uvtfsIRKixeINd2u
	zAi4asRiji2+PH+NkhRegrdqgrRwHIhrQ06JN/Byixu9uRZMpNBaeiGb9bd1GFWu321nDWMMIWxGl
	ftS7LUOhPKthKichTtbq94mAyP8UBCoLRe9egt4BLYJ7G4P1zLm+QAVe/ho3XbEhEdxtx/ft/FDHm
	9saJT45f//bhInq8UlfzF/b0XheBGojK/ryvc5L1gI2F8AjIyksTKdEF0rrNPFhlCa68Heae15iXS
	GXUeMnTVZclaP4nZ3UkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj0dp-0000ip-Hi; Thu, 04 Jul 2019 12:15:09 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj0dY-0000hZ-Ur
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 12:14:54 +0000
Received: by mail-qk1-f193.google.com with SMTP id s145so1805782qke.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 05:14:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9cNGGl+FLilA8PMo/2823HsEW5aV7LEQGtBmo7DnFEc=;
 b=Vp59D7fvN+X3qHm0CV6bsbCXGZeKQO4r4DQLTvaZHU/hUGd6h1NYSvZrPVN8aeKWXL
 QJe1xa81ndPqZ6tZPnTvH9vzIXj0MP4NhGQ0vzxU0rnG3iaKZCgaUGp/4whQOqrD0HRS
 aRkz713Th3JKkQc2dUVBRicxaiPpojWhNdVIq3BrO3jVmqUEjkBg/FlGJbSzJP4oya0+
 /Nxx6JcOgdPuupvkbySra+Y6NO0+zT0oD7BonCUAJbSgeWWjQ9FwpC2zO4Dhj3IOe5GN
 vsCTamfpCOP9Y/eJbZZzV7sg2aDNYki1j3OajULeW3J3WLdgcP1n5APMsnSjRLWvsiIu
 WBPA==
X-Gm-Message-State: APjAAAWY5Lpc7c0wNaoOontg1iJgz12yFUh8YJs4S1d5hDyLI9TYLIj6
 Y+MLkdj3f8dCuLNt8nDOS4kceClPeMzNiRV6wg4=
X-Google-Smtp-Source: APXvYqzvpIz9J26dzCUH95aoNaSNG7JvaLf06oXPM82JIyYSrVI156uv/dpYNT0OS7IMkbIycWc7OMw2LwtS3sy2tBc=
X-Received: by 2002:a37:76c5:: with SMTP id
 r188mr34670161qkc.394.1562242486886; 
 Thu, 04 Jul 2019 05:14:46 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1562149883.git.joabreu@synopsys.com>
 <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
 <20190704120018.4523a119@carbon> <20190704103057.GA29734@apalos>
In-Reply-To: <20190704103057.GA29734@apalos>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 4 Jul 2019 14:14:28 +0200
Message-ID: <CAK8P3a3GC6f-xHG7MqZRLhY66Ui4HQVi=4WXR703wqfMNY6A5A@mail.gmail.com>
Subject: Re: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
To: Ilias Apalodimas <ilias.apalodimas@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_051452_996388_D40FA54A 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Networking <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com, Chen-Yu Tsai <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Jesper Dangaard Brouer <brouer@redhat.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 4, 2019 at 12:31 PM Ilias Apalodimas
<ilias.apalodimas@linaro.org> wrote:
> > On Wed,  3 Jul 2019 12:37:50 +0200
> > Jose Abreu <Jose.Abreu@synopsys.com> wrote:

> 1. page pool allocs packet. The API doesn't sync but i *think* you don't have to
> explicitly since the CPU won't touch that buffer until the NAPI handler kicks
> in. On the napi handler you need to dma_sync_single_for_cpu() and process the
> packet.

> So bvottom line i *think* we can skip the dma_sync_single_for_device() on the
> initial allocation *only*. If am terribly wrong please let me know :)

I think you have to do a sync_single_for_device /somewhere/ before the
buffer is given to the device. On a non-cache-coherent machine with
a write-back cache, there may be dirty cache lines that get written back
after the device DMA's data into it (e.g. from a previous memset
from before the buffer got freed), so you absolutely need to flush any
dirty cache lines on it first.
You may also need to invalidate the cache lines in the following
sync_single_for_cpu() to eliminate clean cache lines with stale data
that got there when speculatively reading between the cache-invalidate
and the DMA.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
