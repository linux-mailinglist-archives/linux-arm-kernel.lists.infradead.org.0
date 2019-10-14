Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97457D5CC3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 09:53:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JtHoWln9d7Jxfinna1b6VgBUVPJkyHW7O6ak7e2R5zI=; b=JJSEwFAgXI7f87
	Xfc6rW1rO3yihRkPqPg3rCpx3O/2BYKdz29gFuOsIz3IUDw/jfDoNEKLwIAL3lk1zpOsPIDtuRgSQ
	r6u4CgxXa0SZ4bEUp5z596B4E5VUOGk0+XPkB9DrJOKvgjiQKYOJOQ6QVWb3FbZ4OoZcyKGvPv0Bk
	fFAIDeN5eVrPZpV5kQqr3iRP2FT528SfEL06dVn5daeXpz9M64wwxYHvz12n1CygYxW323hsAxB1L
	bHbt1OpRl8GmffVxUDa036QRxbf3Q614CiI32yNZRAk+bNf8GTYCBUZQFoPkS+voZBowR0UmDCmne
	f4SevhwWL0CwhsSrx0bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJvAn-0007DA-45; Mon, 14 Oct 2019 07:53:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJvAJ-00072I-Vr
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 07:53:17 +0000
Received: from localhost (unknown [122.167.124.160])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BB8B820854;
 Mon, 14 Oct 2019 07:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571039595;
 bh=7ebQ8kTue/iy+/rFQ6iW23VOTWInv0+ZApP4SxVaAYg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Fr+KavdQrDOvFkyPt3NkhLK5ayBfbpX2bQzkoxok+TVIUuUoDC82MBC5uBVo01LM4
 hci88/NGW3fCtaVm/DaN4Gw/ift+Ek8hO8KElzDK7tFXfX7ahwe3qBvc0ax1BTJCM5
 EFDWog7UuV7m2N7CrRoFoUE7Mx4T7N5bG/vi/MV8=
Date: Mon, 14 Oct 2019 13:23:11 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: [PATCH] dmaengine: zx: Use devm_platform_ioremap_resource() in
 zx_dma_probe()
Message-ID: <20191014075311.GJ2654@vkoul-mobl>
References: <85de79fa-1ca5-a1e5-0296-9e8a2066f134@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <85de79fa-1ca5-a1e5-0296-9e8a2066f134@web.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_005316_079261_D3C52A1B 
X-CRM114-Status: UNSURE (   7.86  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 Shawn Guo <shawnguo@kernel.org>, Jun Nie <jun.nie@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22-09-19, 14:37, Markus Elfring wrote:
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Sun, 22 Sep 2019 14:32:12 +0200
> 
> Simplify this function implementation by using a known wrapper function.
> 
> This issue was detected by using the Coccinelle software.

Applied, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
