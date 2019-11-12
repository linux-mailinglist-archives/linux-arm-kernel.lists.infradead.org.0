Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4DCF944F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 16:31:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ckSv+2odY/T0M1Vc76KqnNOGoZhm+4aQYjAJ68Us08=; b=fBusCkn/AuVjlW
	CXBEafLXi7uR2JCzs2LxzpDEQV0qqn19ozMshQ1H8U641kmXZT0p8yWUjw3TNl/w4KaSAz0JHGPAV
	3oFtAtTAFJpzPz+ivKtML1ZasmyTBeevQGEyF0wfuj4wU4u/ML7GZEXB+0XokfHst49fTSS7kvSD2
	oQdmrMz4dUeQghBg4KRfPKedColTJT/9FmMlEM4LaVXd5vW9DLfd/lqvXI1Gis1Iru4RD3+dijTUE
	9SLFwDXVbRtI2VtOK1pj79H1o2cXCszEtgW8X9w+4Zg5U6/eV7HWEbZvOOcujAas2kI8y5HnpmJwi
	3la5edS2IJc3ZtSuO8gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUY8S-0002Hv-Jh; Tue, 12 Nov 2019 15:31:16 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUY8K-0002Ha-4K
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 15:31:09 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 4077680F3;
 Tue, 12 Nov 2019 15:31:44 +0000 (UTC)
Date: Tue, 12 Nov 2019 07:31:04 -0800
From: Tony Lindgren <tony@atomide.com>
To: Benoit Parrot <bparrot@ti.com>
Subject: Re: [Patch v3 03/10] ARM: OMAP: DRA7xx: Make CAM clock domain SWSUP
 only
Message-ID: <20191112153104.GG5610@atomide.com>
References: <20191112142753.22976-1-bparrot@ti.com>
 <20191112142753.22976-4-bparrot@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112142753.22976-4-bparrot@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_073108_209414_5203AD12 
X-CRM114-Status: GOOD (  10.13  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, linux-omap@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Benoit Parrot <bparrot@ti.com> [191112 14:25]:
> Both CAL and VIP rely on this clock domain. But CAL DPHY require
> LVDSRX_96M_GFCLK to be active. When this domain is set to HWSUP the
> LVDSRX_96M_GFCLK is on;y active when VIP1 clock is also active.  If only
> CAL on DRA72x (which uses the VIP2 clkctrl) probes the CAM domain is
> enabled but the LVDSRX_96M_GFCLK is left gated. Since LVDSRX_96M_GFCLK
> is sourcing the input clock to the DPHY then actual frame capture cannot
> start as the phy are inactive.
> 
> So we either have to also enabled VIP1 even if we don't intend on using
> it or we need to set the CAM domain to use SWSUP only.
> 
> This patch implements the latter.

Best that Tero picks up this one too if OK:

Acked-by: Tony Lindgren <tony@atomide.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
