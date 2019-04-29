Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F39EC71
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 00:06:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0KqPWmlunMSkV0+qCOA8lonry98N9PdhTXivcPF9Zqs=; b=l8QT242nAAoSKq
	JtbdQ2r8Mcynn3n8Q+S2AO3xNM1t/mmI8cmXLQkmGO3AmC8l5TDslJUWRQtn/ngyZO3/0nXDAxHo2
	5wfJUgRkwwMQHlvkXm5iiK0nyu006gv+OQA4tVha8tzKOss1BicSWKNvrlIsAOw8cnEOWsSE9pdBY
	O6/wHHCzx4WTZIpmw+cbFe9iVm+KBnxZmJj0HqHeys63x4Ktinv1yahCvxJ2GaITuVLMDYTwq/8FR
	0JRK+3FjipwquxP/jOtHGpe1x1ol9734XAQAJpqtotcmcQLMwFmwXhyWrsgBk/fSU9PJLUQWOykgS
	KEAAqtXXV76TCApHg0Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLEQ4-0005x9-9E; Mon, 29 Apr 2019 22:06:40 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLEPx-0005wb-G1
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 22:06:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CDkCYbBrMqsa0J2dGF7qat95dbAVM0+F+tk4bLYplek=; b=h5hYMGMCjtscuGrEym+sefVT0T
 oVIvFVAdxF1s1igVBA+j9FCpaxdJTEufYRyHMF2uuO8dRPWmcDK7J2dG3taU9DR1YVTIkEDJEXAMW
 Hy7SVCDqm10poJH6BmQALi7nL4yC9fmqxbsYPZyu85n31QsSjmLyiTmGM0YQ2lqmNV+M=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hLEPW-0007Io-Qb; Tue, 30 Apr 2019 00:06:06 +0200
Date: Tue, 30 Apr 2019 00:06:06 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Esben Haabendal <esben@geanix.com>
Subject: Re: [PATCH 03/12] net: ll_temac: Fix support for 64-bit platforms
Message-ID: <20190429220606.GL12333@lunn.ch>
References: <20190426073231.4008-1-esben@geanix.com>
 <20190429083422.4356-1-esben@geanix.com>
 <20190429083422.4356-4-esben@geanix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190429083422.4356-4-esben@geanix.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_150633_681782_2848A3C5 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Mon, Apr 29, 2019 at 10:34:13AM +0200, Esben Haabendal wrote:
> The use of buffer descriptor APP4 field (32-bit) for storing skb pointer
> obviously does not work on 64-bit platforms.
> As APP3 is also unused, we can use that to store the other half of 64-bit
> pointer values.
> 
> Contrary to what is hinted at in commit message of commit 15bfe05c8d63
> ("net: ethernet: xilinx: Mark XILINX_LL_TEMAC broken on 64-bit")
> there are no other pointers stored in cdmac_bd.
> 
> Signed-off-by: Esben Haabendal <esben@geanix.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
