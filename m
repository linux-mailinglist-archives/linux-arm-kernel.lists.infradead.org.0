Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBD8FE4E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 19:01:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iKwTMSQQB4PS1Semh8tzjAOmDbv7FzmrJOvxFXjAsZU=; b=NafZshMz/6Ddd1
	ppbHXR++W7CCwWd5t9OaqWcseq+Wmd4oIj67uOgpwqcUOIu66keDt8pDATzUsIrLsIXEHnYXsJnjv
	5SkveLeDPv66ymvPEq9By/qe8ddCmF7eUd/9x1Qj60xc47RrlIf771m6GejamD5zQPh6ns+v2yT8z
	RtqLYRzoLUJfW0/WBKJ4BGZ+uTa0SO/5v4s8zerAAPvS5AB+YpNT7iTlEtqWqUU4jqlptGLh1HfSx
	2rBRyAWRBNF+K+AZsGcu/kfC2x0FLaolw6RX130dceZAMkDjOXRmMvURK4JmCHswPBvgxt+uYSzU7
	4dQWg9449i8s73lomBWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLW7t-0002s8-ND; Tue, 30 Apr 2019 17:01:05 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLW7m-0002rT-GF
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 17:00:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BtznMGJClosN3hpxBR1MF0LMvYBaVQU8HSmMwTGaRr8=; b=KYUTkcy/1PFlnjOIw1wgJDFgis
 +s7lU7WwA1BKBZnFKsf6TQXYzMjApzfvg8MOeNMi2Fdw2f3CMud2ay+5Kz661eyP8fZlMWBfq7Hz1
 NiVYYpz92RERpcrLdZRxFAV1yFxmodOhN9oMn24m3Za211N7pVMCXcWbiVyo/hKb6ddU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hLW7e-0001xJ-Ul; Tue, 30 Apr 2019 19:00:50 +0200
Date: Tue, 30 Apr 2019 19:00:50 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Esben Haabendal <esben@geanix.com>
Subject: Re: [PATCH v3 08/12] net: ll_temac: Fix iommu/swiotlb leak
Message-ID: <20190430170050.GD30817@lunn.ch>
References: <20190429083422.4356-1-esben@geanix.com>
 <20190430071759.2481-1-esben@geanix.com>
 <20190430071759.2481-9-esben@geanix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430071759.2481-9-esben@geanix.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_100058_708754_C8AD81B4 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: netdev@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 Yang Wei <yang.wei9@zte.com.cn>, Luis Chamberlain <mcgrof@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 09:17:55AM +0200, Esben Haabendal wrote:
> Unmap the actual buffer length, not the amount of data received, avoiding
> resource exhaustion of swiotlb (seen on x86_64 platform).
> 
> Signed-off-by: Esben Haabendal <esben@geanix.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
