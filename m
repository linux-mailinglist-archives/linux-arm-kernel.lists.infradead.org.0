Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B405F79F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 14:05:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6GtHg6wxO0t9kvsxxGpRho58gEq3rMXEK51S+xorRkw=; b=shmQAKHhhAkKuw
	6cbmQGKjHkSpIFgc9sXk0VSYo5RdeuhTA7mLgNcD2m/ZLOT+D9PsOSGPcgrlYF1O+rzNn9jkhu8Mp
	j4P4qZP198g83eNceiCWGhF0hErV5bZ9XCM/iU/B+99XaLZuj9qrJ2f/gTJo5YnBBEqZpFIqm2PB6
	b520KlUzrrDtMpsY4myaEtBPAL7S6dMvNgo9pb8Ol1bbQBdYxQY23g5u3NXqyYRQnJesMK+QTEbZU
	pIfk8HX3qZ+Vo599duK4IPMAwbXME2BRmse5Fikp2nkZDlyh7o+Qa/VKosl3XfW6s+Hh0pvC7d1Da
	sNMRd3WSVvQmIPr5VY9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj0U0-0005UQ-PD; Thu, 04 Jul 2019 12:05:00 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj0Tn-0005Tu-OC
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 12:04:49 +0000
Received: by mail-wm1-x344.google.com with SMTP id w9so5143047wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 05:04:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=amr/MLN9cI5Ec8HWgSABL9rUXzQlcR+yO98qbl8sqQQ=;
 b=reCYBa/HDiyEd6CU/NQNeECZ0TGiSTj8f8SEw4WFvGQo59bH5871qj/oJ9PYzgM4GP
 zA95ZBUcbKacoYmCK12EVNylEKYfkwbrorMv9FA5F0SvbjQHxdo8QpW1OmqvBTDGYNak
 zkF4lXTMeJnHNJRfmUlhCwG7yFK7GzrKEx2gRXlMS6sgu712/cFTieIviLBBe/2wP+x6
 oBfEeXDD9MTQs5r9JnNseOOa9Q4u0PoebNFFoi4vfhDYpljevyDegYuh1dD1kWAYAmsL
 8tQjrV6Klmf/TwqngR513k5F/mMIIr1dUgGU4aw0KWGD5w7OQcLph+aEc3Tt0DgWYslh
 mZ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=amr/MLN9cI5Ec8HWgSABL9rUXzQlcR+yO98qbl8sqQQ=;
 b=tB2EJ7TwCKyzVjkWSEH+oIcM58ZToe0gOxjpFMXprShcWCuIQQSMvZ8EsB+oWihrIJ
 uFJy2i9+k6D8DTo4f/46CU6iLD2k+3JNjFZlDOPEdHA9ACscyluN4BA1aomYZRyVVrmf
 kqHagcee1PAgnJhiYYAJPnXhiklWC4sF5zVRfIGXwFr8lEkqxTpHJhBYCiLPhV9XbEeO
 KbIrtT4MBICgfGUaaDrc2xIL5pnIAFikubN5HB5YXhmbm/T8BlIwmfhEL4SX7LUTiog+
 Yi2ug41W63jU70KhI2oT4iPdh0r8QEB3UeJ3A8wNmkOyYaqeupZYKMVBHGEPm8uVlTBW
 aTmA==
X-Gm-Message-State: APjAAAXRk3DfHK1nEvj1C3jOe5blHuDdAgjq/oxGxD8BMVnyywih3Rpw
 87h4t8iP+5E6jYPmny5/3hucsg==
X-Google-Smtp-Source: APXvYqyT6y+9T+/VeJfNymSjJVbJMJkxGcTutUA49l/YNxwHZmt9KNlRem6wZWge7DDaiLLPkOPVCA==
X-Received: by 2002:a7b:ce95:: with SMTP id q21mr12611948wmj.65.1562241885365; 
 Thu, 04 Jul 2019 05:04:45 -0700 (PDT)
Received: from apalos (athedsl-428434.home.otenet.gr. [79.131.225.144])
 by smtp.gmail.com with ESMTPSA id z9sm7475960wrs.14.2019.07.04.05.04.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 04 Jul 2019 05:04:44 -0700 (PDT)
Date: Thu, 4 Jul 2019 15:04:41 +0300
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
To: Jesper Dangaard Brouer <brouer@redhat.com>
Subject: Re: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Message-ID: <20190704120441.GA6866@apalos>
References: <cover.1562149883.git.joabreu@synopsys.com>
 <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
 <20190704120018.4523a119@carbon>
 <BN8PR12MB3266BC5322AADFAC49D9BAFAD3FA0@BN8PR12MB3266.namprd12.prod.outlook.com>
 <20190704135414.0dd5df76@carbon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190704135414.0dd5df76@carbon>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_050447_794433_506A6E14 
X-CRM114-Status: GOOD (  28.25  )
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
 Maxime Ripard <maxime.ripard@bootlin.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jesper,

> On Thu, 4 Jul 2019 10:13:37 +0000
> Jose Abreu <Jose.Abreu@synopsys.com> wrote:
> > > The page_pool DMA mapping cannot be "kept" when page traveling into the
> > > network stack attached to an SKB.  (Ilias and I have a long term plan[1]
> > > to allow this, but you cannot do it ATM).  
> > 
> > The reason I recycle the page is this previous call to:
> > 
> > 	skb_copy_to_linear_data()
> > 
> > So, technically, I'm syncing to CPU the page(s) and then memcpy to a 
> > previously allocated SKB ... So it's safe to just recycle the mapping I 
> > think.
> 
> I didn't notice the skb_copy_to_linear_data(), will copy the entire
> frame, thus leaving the page unused and avail for recycle.

Yea this is essentially a 'copybreak' without the byte limitation that other
drivers usually impose (remember mvneta was doing this for all packets < 256b)

That's why i was concerned on what will happen on > 1000b frames and what the
memory pressure is going to be. 
The trade off here is copying vs mapping/unmapping.

> 
> Then it looks like you are doing the correct thing.  I will appreciate
> if you could add a comment above the call like:
> 
>    /* Data payload copied into SKB, page ready for recycle */
>    page_pool_recycle_direct(rx_q->page_pool, buf->page);
> 
> 
> > Its kind of using bounce buffers and I do see performance gain in this 
> > (I think the reason is because my setup uses swiotlb for DMA mapping).
> > 
> > Anyway, I'm open to some suggestions on how to improve this ...
> 
> I was surprised to see page_pool being used outside the surrounding XDP
> APIs (included/net/xdp.h).  For you use-case, where you "just" use
> page_pool as a driver-local fast recycle-allocator for RX-ring that
> keeps pages DMA mapped, it does make a lot of sense.  It simplifies the
> driver a fair amount:
> 
>   3 files changed, 63 insertions(+), 144 deletions(-)
> 
> Thanks for demonstrating a use-case for page_pool besides XDP, and for
> simplifying a driver with this.

Same here thanks Jose,

> 
> 
> > > Also remember that the page_pool requires you driver to do the
> > > DMA-sync operation.  I see a dma_sync_single_for_cpu(), but I
> > > didn't see a dma_sync_single_for_device() (well, I noticed one
> > > getting removed). (For some HW Ilias tells me that the
> > > dma_sync_single_for_device can be elided, so maybe this can still
> > > be correct for you).  
> > 
> > My HW just needs descriptors refilled which are in different coherent 
> > region so I don't see any reason for dma_sync_single_for_device() ...
> 
> For you use-case, given you are copying out the data, and not writing
> into it, then I don't think you need to do sync for device (before
> giving the device the page again for another RX-ring cycle).
> 
> The way I understand the danger: if writing to the DMA memory region,
> and not doing the DMA-sync for-device, then the HW/coherency-system can
> write-back the memory later.  Which creates a race with the DMA-device,
> if it is receiving a packet and is doing a write into same DMA memory
> region.  Someone correct me if I misunderstood this...

Similar understanding here

Cheers
/Ilias

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
