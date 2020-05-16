Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C1F1D6383
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 20:19:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FtISfJrZpBLyl1t9VUb5KAKib89Vmndhh7ARVbOKP7k=; b=Pm4wiRy9tpMOUe
	eUT+1+EkK0D1XwAyG6uACdeGDjsT279LUecknMZhyL5QeXsVFR9Gp7MUltgCijB94ttRKKZ/Vm389
	GfWZ9+nfyIdCAi3AOqqKVQHs4vgRO4mnc8BhyGuQNMWXKXCHoaiKUfrmKoH0IAfJEId5cQTOW41Kx
	icslkDTH1VaSPL9MMFmrauppWszy+KxqfuuRwJ6spbel8S46+KNyZIlBrTsdCGsP9QO8BUw2JHDhB
	9V5imUZsxf7CgU//V6isIng6mwNdOQ33EsFhI3DgdMBAQgpr3aNm+3hAVXRGx3Ur2ZGTNwG8UKCqa
	3wkPfhzvSq/oUsmqc10g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja1PW-0000uA-Oz; Sat, 16 May 2020 18:19:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja1PN-0000tT-3Z
 for linux-arm-kernel@lists.infradead.org; Sat, 16 May 2020 18:19:38 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5B861206F4;
 Sat, 16 May 2020 18:19:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589653174;
 bh=Gyc9t3X2urr60eF4Vay6002sHovimEfau4gtnVMx/xc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=H4U+gUAdlba1/cy756hvthqXryByavE0vCKoIQG/ujKlKqbo5epV9pTc3Vrw6KRCp
 AWADzyhnSiPaGeECjcntEsH8H+y+YvuknqenX2cAHJUvlmwIW/FxMLq8ZO/22OORuV
 IqAIOHlzTKnhC05IeSJsgGvaizadnOHS/vTKZ94Q=
Date: Sat, 16 May 2020 19:19:14 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH] iio: adc: Add scaling support to exynos adc driver
Message-ID: <20200516191914.3b028794@archlinux>
In-Reply-To: <20200511074232.GA7134@kozik-lap>
References: <BN6PR04MB066058A68D6471E7F6AFCFF7A3A20@BN6PR04MB0660.namprd04.prod.outlook.com>
 <20200510112417.1e54d66e@archlinux>
 <20200511074232.GA7134@kozik-lap>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_111937_169399_5EDF06DB 
X-CRM114-Status: GOOD (  17.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kstewart@linuxfoundation.org, linux-samsung-soc@vger.kernel.org,
 lars@metafoo.de, linux-iio@vger.kernel.org, mpe@ellerman.id.au,
 Jonathan Bakker <xc-racer2@live.ca>, linux-kernel@vger.kernel.org,
 swboyd@chromium.org, cw00.choi@samsung.com, kgene@kernel.org,
 pmeerw@pmeerw.net, knaack.h@gmx.de, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 11 May 2020 09:42:32 +0200
Krzysztof Kozlowski <krzk@kernel.org> wrote:

> On Sun, May 10, 2020 at 11:24:17AM +0100, Jonathan Cameron wrote:
> > On Fri,  8 May 2020 14:14:00 -0700
> > Jonathan Bakker <xc-racer2@live.ca> wrote:
> >   
> > > Currently the driver only exposes the raw counts.  As we
> > > have the regulator voltage and the maximum value (stored in
> > > the data mask), we can trivially produce a scaling fraction
> > > of voltage / max value.
> > > 
> > > This assumes that the regulator voltage is in fact the max
> > > voltage, which appears to be the case for all mainline dts
> > > and cross referenced with the public Exynos4412 and S5PV210
> > > datasheets.
> > > 
> > > Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>  
> > 
> > Seems reasonable to me. I'd like an exynos Ack though before applying.  
> 
> 
> It's correct, at least with ARMv7 Exynos datasheets
> 
> The few ARMv8 Exynos chips are silent about the voltage levels. The
> Exynos 7 DTS board in mainline kernel does not have regulator but it
> looks clearly like mistake.
> 
> I think they behave the same, so for Exynos:
> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
Applied to the togreg branch of iio.git and pushed out as testing
for the autobuilders to poke at it.

Thanks,

Jonathan

> 
> Best regards,
> Krzysztof
> 
> > thanks,
> > 
> > Jonathan
> > 
> >   


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
