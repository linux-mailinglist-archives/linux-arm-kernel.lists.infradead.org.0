Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE0C165941
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 09:33:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UtdLT7jdx9R5NJEJoT6R6LH7VUYYc2Kri5laJu1/5T0=; b=LBrurvz3rTEZ0m
	gKT5rZBwR7WuxyalS8eCOea2vc2ATQ0/EmJBYdhCtg4YCifL2DLAPwSdQNZajIqJFb4Rrmgh7j0TO
	95oCgLfkF9FfXovkUw/stZeeENl1gT98uF4ShjfRNazdndYC6MoPO/FPbsh1vlHm9LofCONxWZdEi
	z0kiM+5w+KCd8ChAg0WxNwyGPX0OW3xbUrWa93xXpsR7ASyBW1YDW9EtMm3tsrCBGoNb3tmRjl3X/
	ODf3jqiKRsxu3JTNseASG8r8M8H0l5hPv3ELHH5pVRXwdaGWqcARmXIKmLALvPeeEAJHw/mGTADp7
	Fs4KVV8S8vDVYEOxldag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4hGl-0006WZ-AB; Thu, 20 Feb 2020 08:33:15 +0000
Received: from first.geanix.com ([116.203.34.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4hGZ-0006Vj-5w
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 08:33:04 +0000
Received: from localhost (unknown [193.163.1.7])
 by first.geanix.com (Postfix) with ESMTPSA id 6FDECABE2F;
 Thu, 20 Feb 2020 08:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
 t=1582187579; bh=7fJH91fFHjiUXtmwG2jBMWpcDq/boOo9eUL36++h+i8=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To;
 b=DfB4M8VqU8kTqcfghs5TeBFdORfpRU2MDPkS4nqrSVC+bK9H/MDeqQCulS33Xia+7
 MOWvLr3lrd1qYlx9j0HYK23jj3Amgql5uoTKeXJmtgFPScxp8ESrVrPWG2dCo6BPmF
 5r9SYM2A2lp58eeDqi9klcaLempfjO2NA34g6wcn6KZxPCZ9Llis8ycRNmfFxNctPj
 VMKf8Nmm5ZaKCcBGOel6f+ZoIUXrEFpS+NwJl4XOFh1jHtnF7X8lPzZssLPPVUVeAG
 CRJdqmHokbuMIaT8EBYFQ+Ov+jAHFg9SuOQPWzoFR/JN25DmNE0o1lzlEP0gAfEQFK
 7Ty11hZcZZxiA==
From: Esben Haabendal <esben@geanix.com>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH net 2/4] net: ll_temac: Add more error handling of
 dma_map_single() calls
References: <cover.1582108989.git.esben@geanix.com>
 <65907810dd82de3fcaad9869f328ab32800c67ea.1582108989.git.esben@geanix.com>
 <20200219.105954.1568022053134111448.davem@davemloft.net>
Date: Thu, 20 Feb 2020 09:32:58 +0100
In-Reply-To: <20200219.105954.1568022053134111448.davem@davemloft.net> (David
 Miller's message of "Wed, 19 Feb 2020 10:59:54 -0800 (PST)")
Message-ID: <87v9o18xqd.fsf@geanix.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=4.0 tests=BAYES_00,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,UNPARSEABLE_RELAY,URIBL_BLOCKED
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on 05ff821c8cf1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_003303_420822_9CBA607A 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

David Miller <davem@davemloft.net> writes:

> From: Esben Haabendal <esben@geanix.com>
> Date: Wed, 19 Feb 2020 11:54:00 +0100
>
>> @@ -863,12 +865,13 @@ temac_start_xmit(struct sk_buff *skb, struct net_device *ndev)
>>  	skb_dma_addr = dma_map_single(ndev->dev.parent, skb->data,
>>  				      skb_headlen(skb), DMA_TO_DEVICE);
>>  	cur_p->len = cpu_to_be32(skb_headlen(skb));
>> +	if (WARN_ON_ONCE(dma_mapping_error(ndev->dev.parent, skb_dma_addr)))
>> +		return NETDEV_TX_BUSY;
>
> The appropriate behavior in this situation is to drop the packet and return
> NETDEV_TX_OK.

Ok, and I guess the same goes for the error handling of dma_map_single()
of one of the fragments later in same function.

/Esben

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
