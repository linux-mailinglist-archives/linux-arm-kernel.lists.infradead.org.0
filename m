Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD014F372E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 19:27:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dsQ94Cpg1XA4kO5NLCWw3YwJXMDCzBL0hwCskU776OE=; b=fxftd/HTAl5pT8
	SK/wp76E3l3tIA39mv/UqsMRjweUP+EA1WtWmIK5rF2+Bg8qnvK5GElceYJmGdzE+fck7R1S1mMdc
	J11t1mN/ZAzr6k47V/PZEfXiOG5QtGx2yV2lhwt2ay2rniITyG1T7B7KGXgi9V93aNDgzJ1fg0C0Z
	gNWL8rU4LD3MNESKgSLTILrgmuP/WQlbu7fwSfLLjWs3kklz9W+7tnAKhM6r35XkJqrDjLQ7w8OIG
	G3x1ZG85gOuKTHfzBokt8syzL+OCIE10Y+9qxQ61GHziry0g8Fa0T4PbZB1witWPVQhe5ydOQd/JH
	F8x8Em3vgn9Hsm4eqUKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSmUz-0004ct-H1; Thu, 07 Nov 2019 18:27:13 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSmUs-0004bz-IH
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 18:27:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1573151222;
 s=strato-dkim-0002; d=gerhold.net;
 h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=Oqhe1WXoIbq8yVt8OzlAqvdDOM9RGB7JcT21P0FRSQk=;
 b=DCk+l9jwKhFIRGn5Gd5McAMcZxV6BWjy7v49UJ4ZhX4+h78VIY9VEIwZattJRcpek1
 iCkQIHWNIh/g/htbX55NDtGV6N0gklpwOh8A1g92o6yKet3j/NZERGOFxSr4+dKXxV/B
 ZK/SISTR3jjQfsDGTwPV+xg7gQXM3nRFY48rHMduu659oN31hAQIqs5EFT8jmbWaOWcH
 8NPsg07MVAhiwqEyQnraQJWpPmSNNRihdAcO5ozeIjz2Ijtac3OO90jIIYmXS80GuG4m
 MTWT2bHxNqMcK5n8cO5Ot0I8mDB+L+FxKR+htEAozLR071ydGbDkVuhkVvYm6J+p+/R2
 IfCg==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u266EZF6ORJDd+zEsL6f"
X-RZG-CLASS-ID: mo00
Received: from gerhold.net by smtp.strato.de (RZmta 44.29.0 AUTH)
 with ESMTPSA id e07688vA7IQpoNh
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Thu, 7 Nov 2019 19:26:51 +0100 (CET)
Date: Thu, 7 Nov 2019 19:26:45 +0100
From: Stephan Gerhold <stephan@gerhold.net>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 1/1] mfd: mfd-core: Honour Device Tree's request to
 disable a child-device
Message-ID: <20191107182645.GA13813@gerhold.net>
References: <20191107111950.1189-1-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107111950.1189-1-lee.jones@linaro.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_102706_745414_E2C50EEE 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: daniel.thompson@linaro.org, arnd@arndb.de, baohua@kernel.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, broonie@kernel.org,
 Barry Song <Baohua.Song@csr.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 11:19:50AM +0000, Lee Jones wrote:
> Until now, MFD has assumed all child devices passed to it (via
> mfd_cells) are to be registered. It does not take into account
> requests from Device Tree and the like to disable child devices
> on a per-platform basis.
> 
> Well now it does.
> 
> Link: https://www.spinics.net/lists/arm-kernel/msg366309.html
> Link: https://lkml.org/lkml/2019/8/22/1350
> 
> Reported-by: Barry Song <Baohua.Song@csr.com>
> Reported-by: Stephan Gerhold <stephan@gerhold.net>
> Signed-off-by: Lee Jones <lee.jones@linaro.org>

Thanks for all your work on this issue!

FWIW:
Tested-by: Stephan Gerhold <stephan@gerhold.net>

> ---
>  drivers/mfd/mfd-core.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/mfd/mfd-core.c b/drivers/mfd/mfd-core.c
> index cb3e0a14bbdd..f5a73af60dd4 100644
> --- a/drivers/mfd/mfd-core.c
> +++ b/drivers/mfd/mfd-core.c
> @@ -152,6 +152,11 @@ static int mfd_add_device(struct device *parent, int id,
>  	if (parent->of_node && cell->of_compatible) {
>  		for_each_child_of_node(parent->of_node, np) {
>  			if (of_device_is_compatible(np, cell->of_compatible)) {
> +				if (!of_device_is_available(np)) {
> +					/* Ignore disabled devices error free */
> +					ret = 0;
> +					goto fail_alias;
> +				}
>  				pdev->dev.of_node = np;
>  				pdev->dev.fwnode = &np->fwnode;
>  				break;
> -- 
> 2.24.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
