Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E44B05F71B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 13:11:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iam8B1z91Qp3WXuZaophq8UYuUi5ey6iNL0X0RfTRUg=; b=PTA1LMa0JLNyeb
	WwG7McVSqqDZaY3tru/ttx0pPrjfGRMSb26kz3789BxadOlu0CCLOFdwmEbvj4hLrocrNxmevU3Ai
	mOFlRLqLYzjx+itlkfGMf5fLxh+aORCEHsf7kiK1eCUtmtqkM9fUt2D+bD38QZf/RL3gMr3t3QH1F
	0YX7JKTkmmW9O8yhBHiubArn6pwUVTGGq7H6uOWmrJpQeUnyeUmmG4u0t1M873fFVBR/6nBfepbTz
	l2dnhDmBB3S9ivCpLpsC+YtpXT20n/f856fWBwskYIk2MQTsG5vkwGkNfhYiWcJryBj6IThtoSJWV
	/u+pSIkkIY7XL9ZqniNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hizeB-0004a6-JM; Thu, 04 Jul 2019 11:11:27 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hizdz-0004Zk-59
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 11:11:16 +0000
Received: by mail-wr1-x442.google.com with SMTP id n9so6217011wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 04:11:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=l8xOwRoeewzebcQAt1yKxsHLrRV9J9YjppTfdC6bYO4=;
 b=AcU/Og0Im9zeCUoAjQfz6t1TPM7Mfh0ysWoMMrnoAxopui+jfwRP+8ITrmS17IrY1C
 KEs0UE42QQXFtM3Plib24n04BsaZx7YpdSdT+lXwkDmW5UXo5AVmjENp8T4Yk5L4W3qL
 ya3qtdkWWGhERgwew7vMxaZiQ0oib0yFn8XnrueuwqH8INdv94RXEj/zk8dU3Gtn4O0A
 6EwHajqBOaWPjJJmtSLrm8PZE5Ma9nIUkyig0AkkUrnFH46TF6oLK4F+36SuPCPJzrid
 vsMqp3WqEkNc7NWqF0JoS9TZcj/Wt9C7JFdlMtv8VS6Ms36Kj4I2IsGthBfqv69AJ3yx
 KAhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=l8xOwRoeewzebcQAt1yKxsHLrRV9J9YjppTfdC6bYO4=;
 b=uGxuVify4Px53OTaNsrnMK1JzTXZQq+rnNAxxPwRuiEZmeMPo7pg4cdoogKaqQp46t
 hYgA8t6Hcs3N1phFWAwzUlpWN/Kxlg7UlRgOiQJiG8AyFjjlkfYg/eE4NAa3DIq57i+B
 joTAJiJ9tks14u1z3lphFGZdPDl0NWofFXsZBn9zr9zwIIVyh624oK0eGLz/e0m0BhoA
 rRo0eAnXCNPxE7uHGpexL1ySRF/S5SCTr8Uxd4Kh4CCxmbEyXEmaHnKYLJ7gRa5d5P6k
 BFJLo+S7GwYKs2Pn7cp2Yb9oproOb4tfOOzKoNbSkRuo3/mdeiAmlOLS7hO0Jfn852mQ
 Qt+A==
X-Gm-Message-State: APjAAAUNwwwLLKobgNObojn8xMHPUASR1HR7/6K+f6ae06zmWaT+wh1W
 XZQVpLMIc7dhB7Xk2Ks4mXcZlA==
X-Google-Smtp-Source: APXvYqwc3n6Z1DTK4DI0irtOTjnyQp+cY9JrkG89Fk1+0XQ7A/1JudehcvBrF5/bUdDdbNSumzT99A==
X-Received: by 2002:adf:dfc4:: with SMTP id q4mr32763692wrn.54.1562238673665; 
 Thu, 04 Jul 2019 04:11:13 -0700 (PDT)
Received: from apalos (athedsl-428434.home.otenet.gr. [79.131.225.144])
 by smtp.gmail.com with ESMTPSA id r4sm4942586wrv.34.2019.07.04.04.11.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 04 Jul 2019 04:11:12 -0700 (PDT)
Date: Thu, 4 Jul 2019 14:11:09 +0300
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Message-ID: <20190704111109.GA12011@apalos>
References: <cover.1562149883.git.joabreu@synopsys.com>
 <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
 <20190704120018.4523a119@carbon>
 <BN8PR12MB3266BC5322AADFAC49D9BAFAD3FA0@BN8PR12MB3266.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BN8PR12MB3266BC5322AADFAC49D9BAFAD3FA0@BN8PR12MB3266.namprd12.prod.outlook.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_041115_215277_234AC4C0 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Jesper Dangaard Brouer <brouer@redhat.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 04, 2019 at 10:13:37AM +0000, Jose Abreu wrote:
> From: Jesper Dangaard Brouer <brouer@redhat.com>
> 
> > The page_pool DMA mapping cannot be "kept" when page traveling into the
> > network stack attached to an SKB.  (Ilias and I have a long term plan[1]
> > to allow this, but you cannot do it ATM).
> 
> The reason I recycle the page is this previous call to:
> 
> 	skb_copy_to_linear_data()
> 
> So, technically, I'm syncing to CPU the page(s) and then memcpy to a 
> previously allocated SKB ... So it's safe to just recycle the mapping I 
> think.
> 
> Its kind of using bounce buffers and I do see performance gain in this 
> (I think the reason is because my setup uses swiotlb for DMA mapping).

Maybe. Have you tested this on big/small packets?
Can you do a test with 64b/128b and 1024b for example?
The memcpy might be cheap for the small sized packets (and cheaper than the dma
map/unmap)

> 
> Anyway, I'm open to some suggestions on how to improve this ...
> 
> > Also remember that the page_pool requires you driver to do the DMA-sync
> > operation.  I see a dma_sync_single_for_cpu(), but I didn't see a
> > dma_sync_single_for_device() (well, I noticed one getting removed).
> > (For some HW Ilias tells me that the dma_sync_single_for_device can be
> > elided, so maybe this can still be correct for you).
> 
> My HW just needs descriptors refilled which are in different coherent 
> region so I don't see any reason for dma_sync_single_for_device() ...
I am abit overloaded at the moment. I'll try to have a look at this and get back
to you

Cheers
/Ilias

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
