Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE07E58489
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 16:33:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FtKsOCNjpdvc3O5DFUGar5CgaouGgesJqZKHSVDzaSI=; b=Smm3bSfssDKTnX
	Nx3vZ3hwby6kGBr7NWaA3lds+h0SuVS8K/Zwijd/Ijmy2hlH9bdE+ZBA3HhCVCY8E+fWoccG3aEY4
	QHgbBXTb5zOowbiMKsGu67mt3QmpZEcrvrEXlicVf+FoOlhSzjpzKniU6JJDCwgrzh7bAOohtXpde
	c+bGmPzmf1B2n72OdsmhVTL8j2OO6H3AqGvBldagGnuFA1EfCMYlZSqqyIR9pF1oz/kO+Ef4h73Sq
	1ls5o0/cyIfUfYqqFgMgtDSylykxfU1gZqyTUbMAGVspRZ5jHxKTfiGK5igpoMTLS7VuX0JaK6oCP
	n6zWIHNEe9f75zb1zljw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgVSS-0004Im-Pm; Thu, 27 Jun 2019 14:33:04 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgVRo-000498-MP
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 14:32:26 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5REWAE7064972;
 Thu, 27 Jun 2019 09:32:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561645930;
 bh=Pdb2niascgRQ5Fb/5i1cIddIfEEE5n8a0ANOeYZHq5k=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=J1JAqDO0zB1wxT4LmmPkCiXU0LgdhayBVgJkcE4djJAjs9LqOqNUkKaLtejVYCrg6
 oqSiUUiusYB9leJWWdbgfoBnsO3eW2axDI1iya9HNuQVHhdgLy7v17BWhV6vnpL636
 XKRipUtgCrWCktKEjlNLGaeOHmFgodvKjBJRx2/Y=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5REWA17018257
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 27 Jun 2019 09:32:10 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 27
 Jun 2019 09:32:10 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 27 Jun 2019 09:32:10 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5REWAuH077836;
 Thu, 27 Jun 2019 09:32:10 -0500
Date: Thu, 27 Jun 2019 09:32:08 -0500
From: Nishanth Menon <nm@ti.com>
To: Keerthy <j-keerthy@ti.com>
Subject: Re: [PATCH v2] arm64: Kconfig.platforms: Enable GPIO_DAVINCI for
 ARCH_K3
Message-ID: <20190627143208.eeca4xyygml7s4n3@kahuna>
References: <20190627110920.15099-1-j-keerthy@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190627110920.15099-1-j-keerthy@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_073224_790599_71EF0567 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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
Cc: lokeshvutla@ti.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16:39-20190627, Keerthy wrote:
> Enable GPIO_DAVINCI and related configs for TI K3 AM6 platforms.
> 
> Signed-off-by: Keerthy <j-keerthy@ti.com>
> ---
> 
> Changes in v2:
> 
>   * Enabling configs in Kconfig.platforms file instead of defconfig.
>   * Removed GPIO_DEBUG config.
> 
>  arch/arm64/Kconfig.platforms | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
> index 4778c775de1b..6e43a0995ed4 100644
> --- a/arch/arm64/Kconfig.platforms
> +++ b/arch/arm64/Kconfig.platforms
> @@ -97,6 +97,8 @@ config ARCH_K3
>  	select TI_SCI_PROTOCOL
>  	select TI_SCI_INTR_IRQCHIP
>  	select TI_SCI_INTA_IRQCHIP
> +	select GPIO_SYSFS
> +	select GPIO_DAVINCI


Could you help explain the logic of doing this? commit message is
basically the diff in English. To me, this does NOT make sense.

I understand GPIO_DAVINCI is the driver compatible, but we cant do this for
every single SoC driver that is NOT absolutely mandatory for basic
functionality.

Also keep in mind the impact to arm64/configs/defconfig -> every single
SoC in the arm64 world will be now rebuild with GPIO_SYSFS.. why force
that?

-- 
Regards,
Nishanth Menon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
