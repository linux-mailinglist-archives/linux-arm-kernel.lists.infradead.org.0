Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86DBF1A2C9D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 01:53:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=we0zk/CND7geR8xTPfwV+Xg7s/ybLwGbPIkknOIjduw=; b=aGEzBL4LH59Hsz
	wVp9MV7uSFhcd3afivd8YX6/BXTjR3koCpHHfLajoasdU7PQmq993NAkrKLAOazBMbE0sxfFgEfMP
	bbiiOPDSelJCT1SAjwVSJTXzkZMqB4npxZHWZVKoAHOfWlQ3EUtxGjI5yoKWhI7dId0wSpGPtII6Y
	5aQ6956uuDNW7fkHSAJJivzVJguJ8Yv6doeDTxHh+xO27ZcfE7Htfq+MJ/ZSYhixlaP05wQxL+6mP
	XELsAo+Nn3p8yZPB5rq/ZgmL24pC1XcAeyFMLHmJaaN9MOBRBTP/44kP3rqob/jC0j8XUgY7AFfs8
	/1wAtBpeYW0jWbBTjcqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMKVi-0001Ig-Dc; Wed, 08 Apr 2020 23:53:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMKVb-0001Hy-9a; Wed, 08 Apr 2020 23:53:28 +0000
Received: from localhost (mobile-166-175-188-68.mycingular.net
 [166.175.188.68])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 18DB12084D;
 Wed,  8 Apr 2020 23:53:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586390006;
 bh=7zViGsXDSmvWLZedluQ728hyvtvtBvOJlVvSpmYzI4U=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=kR1mYAhYYGarx3rHMJcWGOWjTLiVhOXOrxfrjoRGT4/N6DXdR2o8jai7AuQOCw/th
 fE4n3O77v2CZTPeTyA3RZ65uJLSmqKOPqKrZ6DJwDxQtckCcKn9cCDoDsNG/GdNSwo
 tUKRRoOhPOTdwctGauWVqv2NvNRqLUvF75O/Ftr8=
Date: Wed, 8 Apr 2020 18:53:24 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v7 7/8] PCI: Add Renesas R8A774C0 device ID
Message-ID: <20200408235324.GA153524@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586360280-10956-8-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_165327_355061_7FF741DC 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Chris Paterson <Chris.Paterson2@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tom Joseph <tjoseph@cadence.com>,
 Rob Herring <robh+dt@kernel.org>, Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Jingoo Han <jingoohan1@gmail.com>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 08, 2020 at 04:37:59PM +0100, Lad Prabhakar wrote:
> Add R8A774C0 device ID so that this can be used by
> pci_endpoint_test driver.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---
>  include/linux/pci_ids.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/include/linux/pci_ids.h b/include/linux/pci_ids.h
> index 1dfc4e1dcb94..9e957c18abeb 100644
> --- a/include/linux/pci_ids.h
> +++ b/include/linux/pci_ids.h
> @@ -2460,6 +2460,7 @@
>  #define PCI_DEVICE_ID_RENESAS_SH7763	0x0004
>  #define PCI_DEVICE_ID_RENESAS_SH7785	0x0007
>  #define PCI_DEVICE_ID_RENESAS_SH7786	0x0010
> +#define PCI_DEVICE_ID_RENESAS_R8A774C0	0x002d

We don't add device IDs here anymore unless they're used in more than
one place (see the comment at the top of the file).  This series
doesn't use it at all, so please move this patch to the series that
adds multiple uses of this ID.

>  #define PCI_VENDOR_ID_SOLARFLARE	0x1924
>  #define PCI_DEVICE_ID_SOLARFLARE_SFC4000A_0	0x0703
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
