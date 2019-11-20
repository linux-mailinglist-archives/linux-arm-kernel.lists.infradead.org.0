Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62911103400
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 06:43:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j5oGTCBxquu26SjlRW1aKG/uIsyM1O7gXmRg3SjHy0Q=; b=ANAPqcMCbISmwW
	JrPNi3RykPSMw6SHsW0U8YjBDXmoiAZBnLmSClNtiGM824BxIVFlQYMdXQWuziv/AQaVZCd08/pkw
	mLTU8bOHLxMATJg3pGpFbwheFNGyT8QIz2M+RVEvkKQMS019WL2mYsZuuRj2/yd49Do5BEbv4Jv8i
	W27mN2KDi4g76B7KPDVlAUpAhIfpudAz1By2o/WbJgUAiDsCgQT9R6CBnqJxo2TK+Yk7r1e0giESw
	sn7YZgO7DcHd8ol5fDPj/Est2GzqgedSpxdGcbRguY83Y5SUPIuGClOAgf83Eq5FyF9S2BT4E+4SC
	Kmf843dR4UwN2qfHyIPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXIlj-0006xa-3u; Wed, 20 Nov 2019 05:43:11 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXIlV-0006w8-SE
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 05:42:59 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id DCCF544D;
 Wed, 20 Nov 2019 00:42:49 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 20 Nov 2019 00:42:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=Lnorfs1rp+zeMCoeD57/2AmXPyjOL0H
 a6BaQrOFchsU=; b=o3qGQUUe6InpOAYfXy8pZ4Aqs4r7RB1G35quGiCXZDIklgV
 45j60gck2g/zQszAqi8c5Za9uuFa5OToie9TG5wKf3NeoRnlvwagMRfc//Pk0rYF
 Kp0HVwjVqIUqToU3xq5+rXif9s6UpACLMZAkRRCmwD5Si7rJP0tbTT2QE/WFQrE7
 7VuKvrMKtD2juGIk6FP0krdUfbgTJezKfvtUjqvYGxLAtovkGV5Fv0pyKDa660Cj
 Ydmasn6PPM9s6FrItrawAHkv4na+e4PssTrh1Gw5Rd4NjOJbUIlskIlSnVJTjx/H
 VKAqBkMlAYYu2/hW2uhZSv5Mfm4ySiVTzwVC4hg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=Lnorfs
 1rp+zeMCoeD57/2AmXPyjOL0Ha6BaQrOFchsU=; b=RnqnHsG5F6inIIh5Q4zjgm
 jhT8HWunrIhBUgPDBTzdY+IWPi5/RIUCil/IMKaxvwJStupYTq2x4Nfai/529Ew/
 CbSkQXByeHdM9Zn9jr6Aak2WeoWvz+zCIOzdEPis/Pj43NpTZUhzrAU2LCvEg5At
 Ob90D1o6vVMxq6i6iLhSYOClZhVI0j7bZhnyhTpVnypYpe18cS/iSanEk2EGNsZU
 AFX9JbHLDzBuSM31HA/uwhdD+4JNEcbxRUFMZCSRKl1zORz/LfrqUMtZ3Wzhm/Zk
 MBlSniBn3RO6TNRZe4c4wMYGd6vAKtX7P7U6oQ8s2CnSsm20lmILh0INSbO5RmPw
 ==
X-ME-Sender: <xms:WNLUXd5dG-U05OpUaPC8cDUivrbL-UkP-j5oBZigZG7yxrksdLol1w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudegledgkeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:WNLUXYdH6Bp1flxoNbpZ8YDkEmHnwesdNblqUanSOJZ-bRbxk1gwqA>
 <xmx:WNLUXa4sTbaCEh-VU67y0PE8UnuxPOeusrNXs3iPMY6JbKmDg61jvQ>
 <xmx:WNLUXXsuHVHcWuFeLHbTN3Gi0uEOdZYdoqVQiWJ_vZauzx_GrbfTuA>
 <xmx:WdLUXagf4JLSbPkH13VJVF-BQk5VeeoCdyLYgpw_B1BF0InArSF1gQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id C89EFE00A3; Wed, 20 Nov 2019 00:42:48 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-578-g826f590-fmstable-20191119v1
Mime-Version: 1.0
Message-Id: <787e54c2-2fe3-4afc-a69b-94771726194b@www.fastmail.com>
In-Reply-To: <20191120000647.30551-1-luc.vanoostenryck@gmail.com>
References: <20191120000647.30551-1-luc.vanoostenryck@gmail.com>
Date: Wed, 20 Nov 2019 16:14:12 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Luc Van Oostenryck" <luc.vanoostenryck@gmail.com>,
 linux-kernel@vger.kernel.org, "Robert Lippert" <rlippert@google.com>,
 "Patrick Venture" <venture@google.com>
Subject: Re: [PATCH] aspeed: fix snoop_file_poll()'s return type
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_214258_205362_886FF58C 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, Joel Stanley <joel@jms.id.au>,
 linux-aspeed@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 20 Nov 2019, at 10:36, Luc Van Oostenryck wrote:
> snoop_file_poll() is defined as returning 'unsigned int' but the
> .poll method is declared as returning '__poll_t', a bitwise type.
> 
> Fix this by using the proper return type and using the EPOLL
> constants instead of the POLL ones, as required for __poll_t.
> 
> CC: Joel Stanley <joel@jms.id.au>
> CC: Andrew Jeffery <andrew@aj.id.au>
> CC: linux-aspeed@lists.ozlabs.org
> CC: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
> ---
>  drivers/soc/aspeed/aspeed-lpc-snoop.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/soc/aspeed/aspeed-lpc-snoop.c 
> b/drivers/soc/aspeed/aspeed-lpc-snoop.c
> index 48f7ac238861..f3d8d53ab84d 100644
> --- a/drivers/soc/aspeed/aspeed-lpc-snoop.c
> +++ b/drivers/soc/aspeed/aspeed-lpc-snoop.c
> @@ -97,13 +97,13 @@ static ssize_t snoop_file_read(struct file *file, 
> char __user *buffer,
>  	return ret ? ret : copied;
>  }
>  
> -static unsigned int snoop_file_poll(struct file *file,
> +static __poll_t snoop_file_poll(struct file *file,
>  				    struct poll_table_struct *pt)
>  {
>  	struct aspeed_lpc_snoop_channel *chan = snoop_file_to_chan(file);
>  
>  	poll_wait(file, &chan->wq, pt);
> -	return !kfifo_is_empty(&chan->fifo) ? POLLIN : 0;
> +	return !kfifo_is_empty(&chan->fifo) ? EPOLLIN : 0;

Looks fine to me as POLLIN and EPOLLIN evaluate to the same value despite
the type difference.

Patrick, Rob: can you take a look / test?

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
