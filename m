Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA651DA6D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 02:59:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oixK5gC/OwzA8YsmaGTXGzWG1F43BFRiUcJWaWxHJcI=; b=dtJovweWIhAgIM
	wlQawrJtuNaRBqxp850gPUNVS49Cz3ZUkuXLTIQGtCH8qfCfCnKgjnTKB0wQ90crPQUvxKexTD4uW
	agL040rLz3D1aR990YAzzP2UHvDszYJnKS7oY3x6tJBCjwJj8FLy39v4k3SZotsR2GzP0gP/fW9nN
	vaju7mjmXkpdnd0YydWy74OavUFqiEaswkc8kbFcJqjF01Yd8VgyyCeaIFG/qVlQkK8aJD4LLnjK1
	PUSWnC2YSDQWRdqGY7Ixp8UqLsF64JLTCA4dGysVjw53657Uvsdb0jd857ycxBTkKm8izGTJPcXL0
	8eGmU+WbXhu9ArSGd6aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbD5I-00024G-Kl; Wed, 20 May 2020 00:59:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbD59-00023r-3m
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 00:59:40 +0000
Received: from dragon (unknown [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F1C3520829;
 Wed, 20 May 2020 00:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589936378;
 bh=MaXxUnsEmP20Yr021WrgjNQVIPR91P6ksN4QtjXTsxI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dpR8mhfRj8BsEjniQe/TrC8NqmhD9gT6j8pw5vAOYTf9bCHbqSkj6hQ3q+i1lZ/ZW
 +QoVSYnsgnaLsQAwkkjVFwHUAc1mXZ5KBtYC55NJWV6rnDKX7cBmj4uD8YawAhN+Si
 37xsQMrYCjUbcuzmjV5Y4KfFrhJadmedGh99ebU0=
Date: Wed, 20 May 2020 08:59:27 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] ARM: dts: imx50: Remove unused iomuxc-gpr node
Message-ID: <20200520005926.GC11739@dragon>
References: <20200501203747.14196-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501203747.14196-1-festevam@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_175939_174835_DF00C014 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: robh+dt@kernel.org, linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 05:37:47PM -0300, Fabio Estevam wrote:
> The iomuxc-gpr node is not used and causes the following dtc
> warning with W=1:
> 
> arch/arm/boot/dts/imx50.dtsi:286.28-289.6: Warning (unique_unit_address): /soc/bus@50000000/iomuxc@53fa8000: duplicate unit-address (also used in node /soc/bus@50000000/iomuxc-gpr@53fa8000)
> 
> Remove the node to fix the warning.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
