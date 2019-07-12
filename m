Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 880D96632B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 02:57:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4vOgLfTfvvQl8uIfzWA44bVOXSdP0oM5XffHWDo7IYM=; b=rNVvAAMMWTKsN+
	1gyMOcBDPBk+xoqHvQWMGKQjjQTL7Sa2w1/6SVoqgo7eg8spH5SFQsEaXIVqqFsVk5wnnX0D3BE/3
	eaumJFaNWNDgFz4pGcZud+sqyGq1AZcxzxJrnVqj7pg1rX65idK4c1/ods2bif1tujKGzP7epcufx
	438fMb2hG//8YVa/7REOFIlgvNbrziYr+tXdHvTYPuOb+g47ZE3aRRhiDQZq58cuaiKDD4aRuIcfI
	RanRKnSPtdH+gKB5t16zdHRj0ppCmcF+giQ7UII7qBVO5tY6RPFwqTsYSFHzumCwQHUPxCOWPZ18m
	8ok/WopjcWAe0EKwZ6ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hljrt-0006HI-RY; Fri, 12 Jul 2019 00:56:58 +0000
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hljrM-0006G0-Lf
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 00:56:27 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id E4909450;
 Thu, 11 Jul 2019 20:56:20 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Thu, 11 Jul 2019 20:56:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=n5XgGSR9S3ycrfXAbbJwSWuvFtXox+Z
 XDAlvGeNuQ/E=; b=D+QCDTRFT6VhyD9yXJX+mJoIcIOBkqobcOFP75bo0G7biFH
 sr+C7fQM0mbSSguhjV47U7g2HCEErQxTriZGuvwM88keKehbJdsBLceKu48J2sfY
 Q0XMikgRdtzMuo5qL+xAE/myWyRC4nxWrqM6KGc6HWS7PtHHLK2iPR7pn+Ywkxlm
 9jPqcBjC7bOT95J54SM90ki4sl542N1QMfcCURrkX54xe6dWtBd2DPLBExw0UoJf
 Q3IQxt8qTLWfz4xcvnfk8+CieO+MbrHKM0Vyk5GHDFLJEVjB7bIfj+sPNvpjQoYV
 UuRUHACCSSL4wrT7Ty2m/ITxlHSxFyExmxTTEgQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=n5XgGS
 R9S3ycrfXAbbJwSWuvFtXox+ZXDAlvGeNuQ/E=; b=0VkkckC23DIWDoIbCWksLd
 PAdXXctdxiNsnIlfNnItkIWnqdfK41EPp2IWEa6mVdQdedfIP4S3aTuH/OY8QmkI
 CHhF2GCYIUaIlymNZfM+StYINhYfh92Rm31F4j3df8OINp0rXuq1o12MYJM7LdJM
 FkE6jMM5rXQgbkmqmjUDKOZdtPttx+63nqVEpQWQSO3kr6Kle4ndy8CmvODnMz6f
 IkXkLS8K6FUoNlnL09j6IabuZBJBL2EoD+ogbBkpgbcFD7XIFngUvSlqjOH3zy2q
 76OFjAVlwb/GCooEyV21l2OQNwnX3C9fJ4Kt/6m3CXfuy6h+ZIpGBD8nkmqCY69A
 ==
X-ME-Sender: <xms:s9onXXqNoGvQnLC9z5kvUYwQZzLZS1pj2UFMBpZpwXCGdxDFQzMNmA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrgeelgdegudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:s9onXYNdBaN1A61qtAwiMjBIcmvWTUl5K2psGOZn2NaCntsnricA6Q>
 <xmx:s9onXRoMLbG3o8vJUKM-1LkluxpSQzEjXBd0AllxsNQRdGy0fIEE5Q>
 <xmx:s9onXbFmKdAWEdI9JXBuTZHpHH57je1z5nSoHnRSegHwO0M4jNX8iQ>
 <xmx:tNonXcK5xcTSQja0JucwCL81a3aFNCfqo3nNUCj4_gZCjZFr5ZkXLg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 61999E0128; Thu, 11 Jul 2019 20:56:19 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-731-g19d3b16-fmstable-20190627v1
Mime-Version: 1.0
Message-Id: <8ed970e9-7062-4905-9d8e-d5f28a0a4919@www.fastmail.com>
In-Reply-To: <20190711142457.37028-1-yuehaibing@huawei.com>
References: <20190711142457.37028-1-yuehaibing@huawei.com>
Date: Fri, 12 Jul 2019 10:26:26 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: YueHaibing <yuehaibing@huawei.com>,
 "Linus Walleij" <linus.walleij@linaro.org>, "Joel Stanley" <joel@jms.id.au>,
 linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org
Subject: Re: [PATCH -next] pinctrl: aspeed: Make aspeed_pinmux_ips static
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_175625_247044_628DED94 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Thu, 11 Jul 2019, at 23:55, YueHaibing wrote:
> Fix sparse warning:
> 
> drivers/pinctrl/aspeed/pinmux-aspeed.c:8:12: warning:
>  symbol 'aspeed_pinmux_ips' was not declared. Should it be static?
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

> ---
>  drivers/pinctrl/aspeed/pinmux-aspeed.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/pinctrl/aspeed/pinmux-aspeed.c 
> b/drivers/pinctrl/aspeed/pinmux-aspeed.c
> index 5b0fe17..839c01b 100644
> --- a/drivers/pinctrl/aspeed/pinmux-aspeed.c
> +++ b/drivers/pinctrl/aspeed/pinmux-aspeed.c
> @@ -5,7 +5,7 @@
>  
>  #include "pinmux-aspeed.h"
>  
> -const char *const aspeed_pinmux_ips[] = {
> +static const char *const aspeed_pinmux_ips[] = {
>  	[ASPEED_IP_SCU] = "SCU",
>  	[ASPEED_IP_GFX] = "GFX",
>  	[ASPEED_IP_LPC] = "LPC",
> -- 
> 2.7.4
> 
> 
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
