Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E161665E1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 19:11:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s+PkKxcppN2aO5F2UAvOkhbPDeipC2N7YzyXH2Z/D1Q=; b=UJ5RqKe2mEKMEx
	aLIquYS/DTKvC70I2d+U49miCZWA0lcJ3X1H+SQE7hQlM7UNJJmGjmEkKxqxUXNHWlTDu4T7f8xaY
	AiwFC4lHlccAzMdvkeVxhL85zvtBuXyc7KFnzA7iiul32USFeuEIy8kM8wql4E4kA/CprbeBbLut3
	iBaCCXc27qyeyQb+XK/fIrkqnTjYxrLYZOiH2HfCovQuhWumOhkGsvYpvSq2UI6cNPR6JpfWHy/yx
	VDV6V/OslzA8BUK4ic/tWr07E6SyXwhxjdEQCx8LpFVB+MdABrygolBKm+WSvA+GkgBSNqPgzX9He
	wLLFCbwXgPDgpt6SiU0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4qI4-000861-Cc; Thu, 20 Feb 2020 18:11:12 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4qHu-00085g-Hv
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 18:11:03 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 2F3A715AC0C32;
 Thu, 20 Feb 2020 10:11:02 -0800 (PST)
Date: Thu, 20 Feb 2020 10:11:01 -0800 (PST)
Message-Id: <20200220.101101.1993510182065744262.davem@davemloft.net>
To: esben@geanix.com
Subject: Re: [PATCH net 2/4] net: ll_temac: Add more error handling of
 dma_map_single() calls
From: David Miller <davem@davemloft.net>
In-Reply-To: <87v9o18xqd.fsf@geanix.com>
References: <65907810dd82de3fcaad9869f328ab32800c67ea.1582108989.git.esben@geanix.com>
 <20200219.105954.1568022053134111448.davem@davemloft.net>
 <87v9o18xqd.fsf@geanix.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 20 Feb 2020 10:11:02 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_101102_592650_D26ADF81 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
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
Cc: andrew@lunn.ch, netdev@vger.kernel.org, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, ynezz@true.cz,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Esben Haabendal <esben@geanix.com>
Date: Thu, 20 Feb 2020 09:32:58 +0100

> David Miller <davem@davemloft.net> writes:
> 
>> From: Esben Haabendal <esben@geanix.com>
>> Date: Wed, 19 Feb 2020 11:54:00 +0100
>>
>>> @@ -863,12 +865,13 @@ temac_start_xmit(struct sk_buff *skb, struct net_device *ndev)
>>>  	skb_dma_addr = dma_map_single(ndev->dev.parent, skb->data,
>>>  				      skb_headlen(skb), DMA_TO_DEVICE);
>>>  	cur_p->len = cpu_to_be32(skb_headlen(skb));
>>> +	if (WARN_ON_ONCE(dma_mapping_error(ndev->dev.parent, skb_dma_addr)))
>>> +		return NETDEV_TX_BUSY;
>>
>> The appropriate behavior in this situation is to drop the packet and return
>> NETDEV_TX_OK.
> 
> Ok, and I guess the same goes for the error handling of dma_map_single()
> of one of the fragments later in same function.

Yes.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
