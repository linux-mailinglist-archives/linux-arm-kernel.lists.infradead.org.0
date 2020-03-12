Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EE0183368
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 15:42:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2V+r3fJ3YbjhkAaVxTltw+ROBI6IZtqYoCM7hYC0mtQ=; b=e+dKciMTJXBNxB
	s/IpTJ+PwU3a8VOcPpHkAtg0t784YMjiuLbwbRvdhx3elVc71ISuLFf7lGoegj66jqSRtMXuxQGqX
	FHEPPdlIu3nxYZkL+h6xQIBXYvS0I9DpZ+cmCiG85PhVPqN4vRjVeXAT335Fr67DUC0gVIi2mKEmi
	iquVyWtZNpNCCVpSqDs9hFARRL7MmzKJ0CeQZ8QwaZHx4QzhqMxmFbnU96k0BFsbS4i1Wdms3QYPb
	N4sK/GseeiWeQcCEZvQ+aMdLJ+eu4HuRgoE0V4qWzc8JXifH2MCy+6faP1QljKdgrFlT8vHqV9OHy
	rhbBG0QXj9Bo16GV6GiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCP2J-0008LR-Nu; Thu, 12 Mar 2020 14:42:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCP2A-0008Kd-S6
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 14:42:04 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1E51C2071B;
 Thu, 12 Mar 2020 14:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584024122;
 bh=3V+qE2bmVHwG3+3FnGVMnNeT4gbtWXLMegY28bMW1zg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jgC1NrhTkMGsvXTSlMZr4SUqqkR6Z2K7ruSHOPy+HXUOJpWt47qnwyRWvVuPQ8VR8
 voHPgnOT9JH+uq7t4y3CR/eUpupi5T3LtWlyG/N84+ctoA4S61UVedJxYOUQ6Z3ziZ
 Ry/CeiriWisbaO9wvsJoQQug289ZhMjFzdvAnwvk=
Date: Thu, 12 Mar 2020 22:41:53 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH V3] arm64: dts: enable fspi in imx8mm dts
Message-ID: <20200312144152.GE1249@dragon>
References: <20200306101957.1229406-1-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200306101957.1229406-1-aford173@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_074202_930252_A963B542 
X-CRM114-Status: UNSURE (   8.22  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, aford@beaconembedded.com,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Han Xu <han.xu@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 06, 2020 at 04:19:57AM -0600, Adam Ford wrote:
> Pull in upstream patch from NXP repo to:
> enable fspi in imx8mm DT file
> 
> Signed-off-by: Han Xu <han.xu@nxp.com>
> Signed-off-by: Adam Ford <aford173@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
