Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA72BB91E4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 16:27:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YdOf8wVXMRPnDhb5BbDUV/ef8/VT3hhXogWoiYn40pk=; b=V0c9Jt+C4/78JT
	jGS0L9rpZfCWKKl3Ur3kuQTdILpQkUCSlV2AofNPxA+HUXELm3HNZyTiYLIpnP/NzBTRE7p7h2tDt
	mNrsTLI2efs6v1bQWL01BHYajSP7z+pg4QPZsG5gQ8itnnf2LYIE6VKsF0nUNNnNHMio9HAYFEbTC
	83p6l5EoV3WhYkAQY2+D98IjuaMIOxXahP9kzfy2HYL8iOWAgs18+59ItpiwupdCZM9mzblKXmhRT
	HvHZ2fLUytW49x3iLeFFGJOSMp4KZJDdxhVT79kBZdpM/uI1EFVsXufkX1zx7OayDdrRdcGUHBImO
	IusJ5TlFL6x1Sw0uKzig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBJs9-0005OL-NA; Fri, 20 Sep 2019 14:26:57 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBJs3-0005O1-8Q
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 14:26:52 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 78E1C80AA;
 Fri, 20 Sep 2019 14:27:22 +0000 (UTC)
Date: Fri, 20 Sep 2019 07:26:47 -0700
From: Tony Lindgren <tony@atomide.com>
To: Tero Kristo <t-kristo@ti.com>
Subject: Re: [PATCHv6 10/10] ARM: OMAP2+: pdata-quirks: add PRM data for
 reset support
Message-ID: <20190920142647.GR5610@atomide.com>
References: <20190912170953.GT52127@atomide.com>
 <20190919123258.23172-1-t-kristo@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919123258.23172-1-t-kristo@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_072651_334684_DCB8FA64 
X-CRM114-Status: UNSURE (   5.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org, robh+dt@kernel.org,
 p.zabel@pengutronix.de, ssantosh@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tero Kristo <t-kristo@ti.com> [190919 12:33]:
> The parent clockdomain for reset must be in force wakeup mode, otherwise
> the reset may never complete. Add pdata quirks for this purpose for PRM
> driver.
> 
> Signed-off-by: Tero Kristo <t-kristo@ti.com>
> ---
> v6: replaced platform specific compatibles with a single common
>     compatible check

Thanks looks good to me:

Acked-by: Tony Lindgren <tony@atomide.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
