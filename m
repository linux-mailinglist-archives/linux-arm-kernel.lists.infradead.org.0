Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E09428807B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 18:47:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WcudUuCmr3noRe66J9vIy3lYoLzZujkGRIB1Py+Da3o=; b=aRRHZeWF+hzkQ7
	vBZQJJl8tupMZeC/20ML6RFitiqMqFhQwBdhvilfIpPIrOJ+pDs3wz/66kbkl1W4ySkvk1adsMokK
	IHB8rhjXWDyGN0rg4hIfLj0pzH0w0GcDvfaag3eFjBEMoTTUZCUMzzDpl03LX9HE3UglrlobcD0QJ
	R/jDoehvvkDoxAgC/THXJ9s7bBZiKC4CTMnDI64DCi0F4tKwQ3eJVnmczAl6h+m5EHWFz4l0aW/1y
	QUqpF8XBNArVXU6acjP61oDOjWsHz4okj6L9S2IW36/U+GkIhcsmcfDjxGfx36wzRL+PbRPSe608b
	lM7NhZhVCk80PnKaFgeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw838-0002lf-Kl; Fri, 09 Aug 2019 16:47:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw82z-0002lM-RN
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 16:47:22 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2DBF420B7C;
 Fri,  9 Aug 2019 16:47:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565369241;
 bh=VJbOFTfLIu5UHe8Bta/755iC4q+vCdIBYp44YczLsGo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=h56Mve33be55FbBTplCmeRM7ssVz0f7iNnGvJryJTy6Mrp2YLFEeiU5/R/wml20Xa
 klP20Mgv/dXn6k0m1bzf7QFhJ2XE7lGphHEytaEYhEiLXHrCFsgcAPg/c9s0OV1SSu
 AF9r3D3ylcUDabzBeQOkPbZl41eiLR1DkMBuimPU=
Date: Fri, 9 Aug 2019 17:47:17 +0100
From: Will Deacon <will@kernel.org>
To: Steve Capper <steve.capper@arm.com>
Subject: Re: [PATCH V5 00/12] 52-bit kernel + user VAs
Message-ID: <20190809164716.qtt7zizfbqyjukwe@willie-the-truck>
References: <20190807155524.5112-1-steve.capper@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807155524.5112-1-steve.capper@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_094721_903742_0CD9737C 
X-CRM114-Status: UNSURE (   8.96  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, catalin.marinas@arm.com,
 bhsharma@redhat.com, maz@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 04:55:12PM +0100, Steve Capper wrote:
> This patch series adds support for 52-bit kernel VAs using some of the
> machinery already introduced by the 52-bit userspace VA code in 5.0.

Cheers, I've pushed this out on a for-next/52-bit-kva branch with one
small patch on top and Catalin's tags added.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
