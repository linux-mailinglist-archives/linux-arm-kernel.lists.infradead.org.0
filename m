Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A17866C931
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 08:19:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BArBHh1DMWzXIhEcCLYHjC0ddR8mZZqPcQT4NHOUZa4=; b=rY4JswKFMbs7JX
	VTZDcyp/sxMVOspQLjAopSkEIE4qooUfxt30jKDAtKerrsExsTS6ZdcjdkuZUsV0wCG0Q8h86lfWU
	3KCOyXi4ANscR/oJLZ9o7oCAVkUVAQ4QlipA5IH1sWyDiXYPbFOlWaor0XjdtRGmn8LA14pQ/sasI
	39DLar5lN8GdV2FFFyn6K/OZfocvASKIO+RznibyhHu11HHql1uB2cNIXjtljOir6RuHKBp+Bs9Tz
	SnDnFx1Kk/Qn/kvTwlF3MyyfaQF3+2BVky8K9esPPVjHemJmypUr8JHzDc11cMB3202jqg7yBNAez
	gt7sPOFLaisY+RGrUvUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnzks-00031o-Vn; Thu, 18 Jul 2019 06:19:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnzkK-00031L-Sy
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 06:18:30 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 353E121783;
 Thu, 18 Jul 2019 06:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563430708;
 bh=7oXdC/BBOSs4R+BYdQQn2lL4c0s3kGsaL0UN9sswgkU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DuGObL3/UamoNl1qHOt9x85Hj2kJouVL6hQG8/01jGMVIMmCvvmdtJo0fqX4ifklH
 vLjxali4sOC9Cee25O832KqHfn8TsfnAVB8vbq4QhVjSUW3YSbCJ4J4gMn7KJKkc6u
 4DN95dMBPjFaK/h4Q6wJsE+HQGEjgC8CE4MltmNs=
Date: Thu, 18 Jul 2019 14:18:14 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] ARM: dts: imx7ulp: Fix usb-phy unit address format
Message-ID: <20190718061813.GI3738@dragon>
References: <20190625154000.6113-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625154000.6113-1-festevam@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_231828_967669_DEDA7869 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: peter.chen@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 12:40:00PM -0300, Fabio Estevam wrote:
> The following warning is seen when building with W=1:
> 
> arch/arm/boot/dts/imx7ulp.dtsi:189.31-195.5: Warning (simple_bus_reg): /bus@40000000/usb-phy@0x40350000: simple-bus unit address format error, expected "40350000"
> 
> Fix it as suggested by removing the extra "0x" notation.
> 
> Fixes: 5b7bd456318a ("ARM: dts: imx7ulp: add imx7ulp USBOTG1 support")
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
