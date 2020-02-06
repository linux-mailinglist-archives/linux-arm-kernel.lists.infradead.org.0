Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C88154508
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 14:36:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4jiTXVPUfMf8oLPY+lCjSTbxVH/3ph2RXbG+oEzLiB8=; b=pNVXJDEqexHBHh
	0WErbS0RSCidmVQslanMtmypA/Jg9I/MjzwSlB8Tc18wgeuwJfN0UjOPrG+SVIFu/X0XHQxNqHifS
	2JBQ9L6Wmlu/DWQwm/Udj/uLR1p4XT60ned27uCo5ek+oSgfApDmb/RlWkJNUthU4jmkj7DKwEDqX
	CjGUiuVc99EIBzngdP3iQIhfBZNF6PjnoRcf4IisBuzD5wSOXNfhTl0eyRXrYLvztJ+0XKZXNbWw/
	CMjcr+1/PSo+qcgg6eTVC8bXUlci9bJp7wEsjxpm5J6Vo9/HK7XPdUyxyXQrc2riuwy3/bhs+U4Uf
	J9Z+2T6HughUAf5R13gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izhKC-0007Ka-04; Thu, 06 Feb 2020 13:36:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izhK5-0007KE-Of
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 13:36:02 +0000
Received: from localhost (unknown [122.178.198.215])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 330B22082E;
 Thu,  6 Feb 2020 13:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580996161;
 bh=KQ1zNlhQGY64IHdB8I6m2LzafLRqPGfU8AX+YoBdzQg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kJBPHTJYzmbvrcRG634TwPmCRb2rG0lb2roFVEyErmRYAkCTzhIau1RYoal97rzba
 n/QItxXcTNTsnRDzk1f8fEi7JAAGN3moK1meFBhESojb+HexZiMJ2XjAiPd42H8pLi
 RmZzEcv7pEmtwCNcV4PfEZObyh/EXotjJCHKKoCk=
Date: Thu, 6 Feb 2020 19:05:54 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dejin Zheng <zhengdejin5@gmail.com>
Subject: Re: [PATCH] net: stmmac: fix a possible endless loop
Message-ID: <20200206133554.GO2618@vkoul-mobl>
References: <20200206132147.22874-1-zhengdejin5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200206132147.22874-1-zhengdejin5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_053601_825140_F035B713 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 joabreu@synopsys.com, mcoquelin.stm32@gmail.com, peppe.cavallaro@st.com,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06-02-20, 21:21, Dejin Zheng wrote:
> It forgot to reduce the value of the variable retry in a while loop
> in the ethqos_configure() function. It may cause an endless loop and
> without timeout.

Thanks for the fix.

Acked-by: Vinod Koul <vkoul@kernel.org>

We should add:
Fixes: a7c30e62d4b8 ("net: stmmac: Add driver for Qualcomm ethqos")

Also, I think this should be CCed stable

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
