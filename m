Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 233DC181234
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 08:43:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/sdEFVHpxLlKbStdSKId0+fUakvuAbRIeu96C0c830U=; b=mMSKRSGu1u2nfI
	o+c5WdX2eERFP29WoMK0jJBwwcfAThv8OLqHH8pzU9JsL1i9nblDb31kcng13aE4GNX0QV2hXmAfL
	H4VrzaaTy1c8odWN2BDrUl6PCBvo5Loi3JpoX9kVBnRpyx5XFOyhYpRVzJSihvrOvkNmtX+IeEX1g
	WNbpdfgB5Brld0VNO4O09QyvsS46vlsiCApvdpQ/APvHKUM/MUaGxrFeVw11CIrQWuzecHxD0GLQ9
	03Mb2KR/FUV62CT3ib+hB1+NMoOYHtIwHwmB7hC0rvWkPg5/vgvdReEQytZ1dBtQfv9n0AffGnoGH
	4KSw2VIB/f6SEHPOifJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBw1g-0004mW-Gw; Wed, 11 Mar 2020 07:43:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBw1Q-0004iw-MQ
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 07:43:21 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 76BD520578;
 Wed, 11 Mar 2020 07:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583912600;
 bh=eb6X39X/EDrlVTNIumxU0I8Ahmihb5TtN/ubR16x01U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=beALctgQujcAortLMexlUJW267GT3Z/xzHrgHX63e8Lk8Sm2TH8L2qD1dKeXqbAYe
 TrDe8YzRPcF8KZKOYC4Zkf6l/LA9IXwM/6MT8ifEk538EI0sfqDC/zXjHgz0mvQmur
 DNMraLsm0zoWhgZfXn4r/Tt62Zl0ughWyG3nV0Qc=
Date: Wed, 11 Mar 2020 15:43:15 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Russell King <rmk+kernel@armlinux.org.uk>
Subject: Re: [PATCH] arm64: dts: lx2160a-cex7: add support for ltc3882
 regulator
Message-ID: <20200311074314.GS29269@dragon>
References: <E1j7Hvq-0004Vn-5w@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1j7Hvq-0004Vn-5w@rmk-PC.armlinux.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_004320_762201_193B2791 
X-CRM114-Status: GOOD (  10.55  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Li Yang <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 12:06:22PM +0000, Russell King wrote:
> Add support for the LTC3882 regulator so that the hardware monitoring
> can be used with this device.  This regulator provides the 0.78V
> supply for the LX2160A.
> 
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
