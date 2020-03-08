Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96DA317D2D3
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 10:17:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0M2j4r0/uPs4TTJJCunhx2Lb9jbXtoGwpKmI4bTRbso=; b=kfD1ByrdKb6fs0
	Vp09rXEWHw9muLP5jXUguDTVgtlH+Rx3wUqkReboKKg4IvwSMl+Zrf05C/q+7hEASpWeRMs2V3LBc
	mmVbWOKxxaUxxRGGXW38bX9qaPD55JqfuWyrMtZYO0KbxbRDVQWvAXLb62/r21Slf/FhXCYWBFhuC
	iV9Q5+u9h4yFZdPUf8iGL1CSlTiZN12dITlj1suaZ1CTjx+s/BvA7h4Q3GeRu/pDVOQh/AhyE8NSN
	tKhFRnRDCOYzEYu1bVlSPHJB2g6Od3u23SsACmq/63bw0tNcgzQIXFGmpGAONgLONuovC1Y/sVx4R
	2HCZzBP5vL0OJVPErJsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAs3q-0003Ng-FF; Sun, 08 Mar 2020 09:17:26 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAs3g-0003MG-R6; Sun, 08 Mar 2020 09:17:18 +0000
X-Originating-IP: 37.167.192.10
Received: from localhost (unknown [37.167.192.10])
 (Authenticated sender: repk@triplefau.lt)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id E877F1C0004;
 Sun,  8 Mar 2020 09:16:50 +0000 (UTC)
Date: Sun, 8 Mar 2020 10:25:36 +0100
From: Remi Pommarel <repk@triplefau.lt>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH] net: stmmac: dwmac1000: Disable ACS if enhanced descs
 are not used
Message-ID: <20200308092536.GQ2248@voidbox>
References: <20200306193036.18414-1-repk@triplefau.lt>
 <BYAPR12MB326999F850BD9BDD037D87CAD3E00@BYAPR12MB3269.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR12MB326999F850BD9BDD037D87CAD3E00@BYAPR12MB3269.namprd12.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_011717_014925_AB7AEBE8 
X-CRM114-Status: UNSURE (   7.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Mar 07, 2020 at 05:34:28PM +0000, Jose Abreu wrote:
> From: Remi Pommarel <repk@triplefau.lt>
> Date: Mar/06/2020, 19:30:36 (UTC+00:00)
> 
> >  	void __iomem *ioaddr = hw->pcsr;
> > +	struct stmmac_priv *priv = netdev_priv(dev);
> >  	u32 value = readl(ioaddr + GMAC_CONTROL);
> >  	int mtu = dev->mtu;
> 
> Please use reverse Christmas tree order and also provide a Fixes tag.

Done in v2.

Thanks,
-- 
Remi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
