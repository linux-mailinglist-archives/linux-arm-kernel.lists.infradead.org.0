Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 573FF9DA12
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 01:41:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8/dMMyCHvVeWXAbhOIyw1jLGcplwQe3IAHtp3QIX0Is=; b=YNFQwI0rfkfIjz
	ehrIN3Ui2uaT+CoCkHE3o3TtE52jO+xfC2a30ip2vyH4B7LSk/V6lGPmmHzpaFhDONAvqaR4SdSyy
	zu/LtqyHTbYo6bexIHGDgqWkmg1bqbGba5eN9Clu6EnyZfeQUWAlc/NyMSAIR7jMwUsVdAZ2jX6KT
	6rz06erBnBMG9nY+H7wU+GSbNrC58jGVAjwRn2tUpOtf49VgObn+7O+d+boO9bTCnxdS70MB8GGbK
	IKB3ckolBt28dIDqFNtkFyeBqMoyS45Rj++LuqUfV8EYqid20umHL6pv/c3iywAdIFULnR8S9KLJ0
	Lu9jurf44IradcNE1cag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Oc0-00074M-Cf; Mon, 26 Aug 2019 23:41:24 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Obn-00073p-Iq
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 23:41:13 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id BC21320F5C;
 Mon, 26 Aug 2019 19:41:10 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Mon, 26 Aug 2019 19:41:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=b6gK9Z0HBCIrzjuVL3PtgdZDNROaOQs
 GEZzEggIRfVE=; b=cQqchq0ozGW0puceRe7q9wyVlMbfVN2H+TSD66CiOi7utLk
 7NitNr1kiS6uuRkPfEwPrUgj2Y3B4SNBeKaQUwUBRx//DehErGWC2CS1KRUa8rpG
 lV5UuR4ZObgeYC20Ijbn7C1uxAxv31dD/pIl2+w7/ogpa3N1O07r3JGrWNpOKX0l
 wkU6ILc5I3mCilwsn+9C23OEIbEG/ZxdE+ptNR+F2qgN7Oi5cjXsE+g8HeiPJiD8
 OMNoZByDAKiZF5cANroqhiQSCJYVqsqMQA5SoOU2DJRx08qTDw3FPh2t65xgh1e9
 fSnE5O2Dq3pBW/3HFux71yadgAmhivOUgYge1Rg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=b6gK9Z
 0HBCIrzjuVL3PtgdZDNROaOQsGEZzEggIRfVE=; b=IdCtWamyrlUuRijPg3dExw
 WnKjrXYjEt1zYLN4MyAIdDcJrZW7z0MZZddYwJjT+AtQ7w4ysurVaX5fwKpwdlRx
 LyrydUkHxRZWsurCJuKwyt9xZx+rv6wENQ7r5wOV8ih5buRpPJPxAlYRmFmmz+wu
 HoZJtYUSA9sl2kWecaOjcLqDvqV8LCTWC3Rb2HeBEi4DDx7A1SlQ1ephRqj7lPDA
 EsSkce2LiHYErWkOnWlfxCXsFV4WCVEFqyDYSuPBieyO3RlqzV7nONp/ETj58ZbS
 8LZCUH0iLfa7zWiQoXqq9+NtAFhUAfyKMxjmO8T+yYixmQL2ibkGquQ8+KOAFguQ
 ==
X-ME-Sender: <xms:FW5kXWqZeLZ3N9nOExpzv1HyQalR89DNl0zMPCF5mdCpldGueVTLTQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudehhedgvdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:FW5kXUVjbpswDRQyx4ktX97fB8NTndYQnvhSJhH5lc09OsfXmD5utg>
 <xmx:FW5kXWCIpgdbS1DYVzJJ2m0UypAAXXyecHKEtAzT1XVHjx1DIExWfQ>
 <xmx:FW5kXYUMP_dLuKeXT6Ld14yCOrsbFeYKspCwqkR0wnU5UD28cKXJKg>
 <xmx:Fm5kXWIkRy4USgX5OrGvI47HsHeE14uSKVtv-C2VMMMU7qsE1yxxdg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 3F0F8E00A3; Mon, 26 Aug 2019 19:41:09 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-916-g49fca03-fmstable-20190821v7
Mime-Version: 1.0
Message-Id: <e23e0193-51c8-41a2-95f7-d48f0ef00eb5@www.fastmail.com>
In-Reply-To: <20190826120013.183435-1-weiyongjun1@huawei.com>
References: <20190826120013.183435-1-weiyongjun1@huawei.com>
Date: Tue, 27 Aug 2019 09:10:37 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Wei Yongjun" <weiyongjun1@huawei.com>,
 "Adrian Hunter" <adrian.hunter@intel.com>,
 "Ulf Hansson" <ulf.hansson@linaro.org>, "Joel Stanley" <joel@jms.id.au>
Subject: =?UTF-8?Q?Re:_[PATCH_-next]_mmc:_aspeed:_Fix_return_value_check_in_aspee?=
 =?UTF-8?Q?d=5Fsdc=5Fprobe()?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_164112_714383_2D6C40F9 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kernel-janitors@vger.kernel.org, linux-mmc <linux-mmc@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Mon, 26 Aug 2019, at 21:27, Wei Yongjun wrote:
> In case of error, the function of_platform_device_create() returns
> NULL pointer not ERR_PTR(). The IS_ERR() test in the return value
> check should be replaced with NULL test.
> 
> Fixes: 09eed7fffd33 ("mmc: Add support for the ASPEED SD controller")
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> ---
>  drivers/mmc/host/sdhci-of-aspeed.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mmc/host/sdhci-of-aspeed.c 
> b/drivers/mmc/host/sdhci-of-aspeed.c
> index 8bb095ca2fa9..d5acb5afc50f 100644
> --- a/drivers/mmc/host/sdhci-of-aspeed.c
> +++ b/drivers/mmc/host/sdhci-of-aspeed.c
> @@ -261,9 +261,9 @@ static int aspeed_sdc_probe(struct platform_device 
> *pdev)
>  		struct platform_device *cpdev;
>  
>  		cpdev = of_platform_device_create(child, NULL, &pdev->dev);
> -		if (IS_ERR(cpdev)) {
> +		if (!cpdev) {
>  			of_node_put(child);
> -			ret = PTR_ERR(cpdev);
> +			ret = -ENODEV;
>  			goto err_clk;
>  		}
>  	}

I ... have no idea why I wrote it that way. I must have just assumed it returned
an ERR_PTR(). Thanks for finding/fixing that.

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
