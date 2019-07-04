Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46CDE5F88A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 14:50:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2BTd7G1tmEFLTE8vuuCyfWnJpOT1lo3u5fYJ6/S4eQ4=; b=KROlRUm2ppEKaV
	ETTRnYpIURQmHiyRHvcA/wxdQ2ucfsL3996jz3iybdIhCqNBMsg5LNZoRtk1j+nEw3pNC8/pVx0Je
	KOMUp/LvWMYTcTX1Gvi5E3y6sQHmKM3Ho5ISrUcaUpqEBpc1pyIo5z0kL4yhsTiAXsZ0JlSOc/bfH
	mUhKkmQQf4j5BkuAWBmK1uDh6SPmqAU5wpXZSDK7Thp94CNjKf0p5QHXDFY+OJOecWftHtwpk+j1y
	7QPALBZ+f33+FvUxbSahnQijH+9rjF8wDgYIinU4L4ep4SXML3aDEyPRuw3UzdGD5uhT1kCZopa1o
	imeGVOxy0B2SUrctJYnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj1BW-0003gP-SP; Thu, 04 Jul 2019 12:49:58 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj1BK-0003g3-B8
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 12:49:47 +0000
Received: by mail-wm1-x344.google.com with SMTP id s15so6051820wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 05:49:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pJR9Nbd+EOvZUGtVQfqXOkJPh6MJRl4K59V5gxu19nc=;
 b=pW28AYFsfz6lnQajSXfkgm0Hxur+z4zyo2+Mn98yniclwqQG8ecE+mzYQficvwPFQX
 CwaUtZA2yFftv6MUGI+P39gNRBhdcckVT6Z0SvAtY1DX2pnwSaoHEly7RoIVzrucF8G6
 QkNbFnvmuH8BK7WWkIuBgCbD3BytI6VZUw6ERP+uTPion1cNRcbhgGFAWdYp0RPt4EtJ
 M6uwQDJR9jYJanmQM8MXRDn0xqlApbLdnoCFWaJYCctFnhciK/AIsqBU+gRA1PhQpR1C
 M+emjXF3OofspwDRs4fsa/6DEY898+4AgcxTrYHV6MOPqtDDritljBieEejXK1CY6+2f
 kIRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pJR9Nbd+EOvZUGtVQfqXOkJPh6MJRl4K59V5gxu19nc=;
 b=RA9rT0gyocFWV1S7SHUKSDGY7miiIXR9N29itfYwpKVhVf81btelByrzEaDtb4qTjR
 v3/aukKmefoCNCHCOZyWCdLv+Ha43aTMof0S1J52F81A+9n5v7QuQdH5f1DBUxBr3ctV
 3kPwz/sEf0MD7uL4J2ErtxK5GzjDQ/86DTR2g5bSDVLaHIaJlfGQm445xKPksXjCXNv0
 Tar97FZwLnFt3zT/OnvxjVNxiVKb2WUhmx4LlcWJlwtrGCeG1fig06CEBjr5q5ye/z/w
 o7UIHXMfAeDTwT7RDBkGgJTqtvbtpi83hQTs2ESrnphoez1DG64EE+cwErZrCvoJqiNW
 fxTQ==
X-Gm-Message-State: APjAAAW2yfY4i9Hu6HACJ2GgHaI7WI6r5n3SPFwdqaXGFlKv7oyw/gEf
 BhBN8cwkiystOuMSEAhLhXKWzg==
X-Google-Smtp-Source: APXvYqxkaYPEcpkgDFk9Q6mfIv5r2R6ZColj0lHQ9LOI2sMRzVJDlcVu4dSz0xDEM7lLB6xOpEFGdQ==
X-Received: by 2002:a1c:18d:: with SMTP id 135mr12614483wmb.171.1562244584926; 
 Thu, 04 Jul 2019 05:49:44 -0700 (PDT)
Received: from apalos (athedsl-428434.home.otenet.gr. [79.131.225.144])
 by smtp.gmail.com with ESMTPSA id s11sm2387689wrr.59.2019.07.04.05.49.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 04 Jul 2019 05:49:44 -0700 (PDT)
Date: Thu, 4 Jul 2019 15:49:41 +0300
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Message-ID: <20190704124941.GA9617@apalos>
References: <cover.1562149883.git.joabreu@synopsys.com>
 <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
 <20190704120018.4523a119@carbon> <20190704103057.GA29734@apalos>
 <CAK8P3a3GC6f-xHG7MqZRLhY66Ui4HQVi=4WXR703wqfMNY6A5A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a3GC6f-xHG7MqZRLhY66Ui4HQVi=4WXR703wqfMNY6A5A@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_054946_446105_B9836CFE 
X-CRM114-Status: GOOD (  17.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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

On Thu, Jul 04, 2019 at 02:14:28PM +0200, Arnd Bergmann wrote:
> On Thu, Jul 4, 2019 at 12:31 PM Ilias Apalodimas
> <ilias.apalodimas@linaro.org> wrote:
> > > On Wed,  3 Jul 2019 12:37:50 +0200
> > > Jose Abreu <Jose.Abreu@synopsys.com> wrote:
> 
> > 1. page pool allocs packet. The API doesn't sync but i *think* you don't have to
> > explicitly since the CPU won't touch that buffer until the NAPI handler kicks
> > in. On the napi handler you need to dma_sync_single_for_cpu() and process the
> > packet.
> 
> > So bvottom line i *think* we can skip the dma_sync_single_for_device() on the
> > initial allocation *only*. If am terribly wrong please let me know :)
> 
> I think you have to do a sync_single_for_device /somewhere/ before the
> buffer is given to the device. On a non-cache-coherent machine with
> a write-back cache, there may be dirty cache lines that get written back
> after the device DMA's data into it (e.g. from a previous memset
> from before the buffer got freed), so you absolutely need to flush any
> dirty cache lines on it first.
Ok my bad here i forgot to add "when coherency is there", since the driver
i had in mind runs on such a device (i think this is configurable though so i'll
add the sync explicitly to make sure we won't break any configurations).

In general you are right, thanks for the explanation!
> You may also need to invalidate the cache lines in the following
> sync_single_for_cpu() to eliminate clean cache lines with stale data
> that got there when speculatively reading between the cache-invalidate
> and the DMA.
> 
>        Arnd


Thanks!
/Ilias

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
