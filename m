Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B7A135751
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 11:46:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XHw/gOA5Iu0Xx/ryZjsyQfcGq4/lieOWRIjxstSda/E=; b=CU4n/VQVwr53pW
	NpxhztFl6TgtbBffdcptOjTNU7+LsT8MvMrAgB0bvW6kOv3nepABcM32RiJmrFP5wAP5zN3UZPhk3
	GVPvfZzMS/VohTLOeoz7mImswaA5UwSFWoJ9uHcXauOmjUXQUBcii+dqMI3E4wvzP6+x3TMvjeZWT
	+T3URZ4eVUl47Pq3aZKOZyJIXwG00hV5VJ8Ah66luLw5+FyJHf5GmCZv76j5lnnweP11J271WLsxO
	9Q7KfppEY9YUEe0d7L8OnOUv36uXuF6iOSjZ2WudEugcYiozs7+qj9CVGhPzULJX5uoghn70TZb9E
	FXPNbVuqr+eEjCMMS9Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipVK7-000790-50; Thu, 09 Jan 2020 10:45:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipVJz-00078X-7y
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 10:45:48 +0000
Received: from T480 (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3408F2067D;
 Thu,  9 Jan 2020 10:45:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578566746;
 bh=XpoSr/YGAdJWPkdV4gcQmV4/lJinB/gChwQ7uoHLs/w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sG4T27u9Fu3IQkbUUnW2JIqTk2fhH9qoEPto6fNoIg7yn//Nsrcw468B+iHPOpodY
 eUS8EeG9TnWlgAg8OWkZRvxJDMnraG2MSWgpSWCUxcykLpWjxw4lBKYBjkJanbQ83d
 EloTMPzdX82z/5PhKW0GIiGyqUP3zpuzrFMH9eB8=
Date: Thu, 9 Jan 2020 18:45:41 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6ul-14x14-evk: Pass the "broken-cd" property
Message-ID: <20200109104540.GR4456@T480>
References: <20200107001117.2009-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107001117.2009-1-festevam@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_024547_304053_A2CF2E22 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 06, 2020 at 09:11:17PM -0300, Fabio Estevam wrote:
> imx6ul-14x14-evk does not have a GPIO dedicated for reading the card
> detect pin on the eSDHC2 micro-SD port. 
> 
> Pass the "broken-cd" property to describe the absence of the card detect
> GPIO so that polling must be used.
> 
> According to Documentation/devicetree/bindings/mmc/mmc-controller.yaml:
> 
>   broken-cd:
>     $ref: /schemas/types.yaml#/definitions/flag
>     description:
>       There is no card detection available; polling must be used.
> 
> Even though no error is oberved in the kernel, the lack of the
> 'broken-cd' property caused the micro-SD to not be detected in U-Boot,
> so let's improve the device tree description to make it more accurate.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
