Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F37EC97
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 00:12:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qmZTWq42s0UA3zp6GVmhGOqJJT7hWgn5dDEw/kZTNMc=; b=knk83V+NN7FS8M
	udMxpVq2YiGV8GA6FcnNI6Ox0jsIe072fI/1oVHeK6xj+Wa4s1TMP5kQbtUlaP+YWVXOdshPGrOxD
	RyVqCHqjRACdPyCp4eqJTQMtdz48TzscFtCx1WyjTgaHaFMLfnJc04thuik2p27wut4WUETliu10+
	WArgZ4orVeySR9m+LhxfkSY9rQHqP5lKyqet7YnAtVhdPJ3Io8Cx1/HVkvEB4oTD31mNCQdOg/yxY
	Mamss3zTgttoPL+Gd9PBGq7kZFnuIvz01iKvFYJKM5hHiNj/UOX0mpz/qxvgte3bDZ+2BhRIyPih5
	H4T3uTEPeglRcYN6b/+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLEVe-0008Cz-I0; Mon, 29 Apr 2019 22:12:26 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLEVU-000896-RE
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 22:12:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2kYkuKi0eOi4EYkCSiWnO4OUux0YvrH2tW6GujbRqCs=; b=2hRLVDtny6Qt8FRmT6UY1Oof3n
 W5apgJ71EVRR40X57FKFYkcR1OIKXEkS9KJElQaivoDR7qLI/wVxh+dh3LqG2Qod3CF0yHRodRUZu
 wb8peKzgbFeRZyfjpKSKux5kho815tUrSunuH6Pjo3x8ENtAY9hk1l/qFdnkeYE4DiAo=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hLEVI-0007Pi-8O; Tue, 30 Apr 2019 00:12:04 +0200
Date: Tue, 30 Apr 2019 00:12:04 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Esben Haabendal <esben@geanix.com>
Subject: Re: [PATCH 07/12] net: ll_temac: Support indirect_mutex share within
 TEMAC IP
Message-ID: <20190429221204.GN12333@lunn.ch>
References: <20190426073231.4008-1-esben@geanix.com>
 <20190429083422.4356-1-esben@geanix.com>
 <20190429083422.4356-8-esben@geanix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190429083422.4356-8-esben@geanix.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_151217_033883_8FC351D9 
X-CRM114-Status: GOOD (  11.08  )
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

> For OF devices, the xlnx,compound parent of the temac node should be
> used to find siblings, and setup a shared indirect_mutex between them.
> I will leave this work to somebody else, as I don't have hardware to
> test that.  No regression is introduced by that, as before this commit
> using two Ethernet interfaces in same TEMAC block is simply broken.

Is that true?

> @@ -1092,7 +1092,16 @@ static int temac_probe(struct platform_device *pdev)
>  	lp->dev = &pdev->dev;
>  	lp->options = XTE_OPTION_DEFAULTS;
>  	spin_lock_init(&lp->rx_lock);
> -	mutex_init(&lp->indirect_mutex);
> +
> +	/* Setup mutex for synchronization of indirect register access */
> +	if (pdata) {
> +		if (!pdata->indirect_mutex) {
> +			dev_err(&pdev->dev,
> +				"indirect_mutex missing in platform_data\n");
> +			return -EINVAL;
> +		}
> +		lp->indirect_mutex = pdata->indirect_mutex;
> +	}

In the OF case, isn't lp->indirect_mutex now a NULL pointer, where as
before it was a valid mutex?

Or did i miss something somewhere?

   Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
