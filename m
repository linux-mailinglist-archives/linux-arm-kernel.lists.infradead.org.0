Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2B5B91E8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 16:29:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EcTu1jTqIRl4f2cx7cghfdBM6fzsw3abt1q0rI+lvmo=; b=CJZ4vB2/jTLI4o
	E3/oAXDsD15s/ZuCJvLNrYfpcyeXf1Nfu9XBeZBMhoXcnITKVuUU525dXb4Kd4dGuBdlUPkA9RWwv
	gaI9CbLW1GPFPaa/2xG313z8sW6iSvHgljdbDuUK7i5s45lImSsHDt8NhcYONq8hlGDAxXerBefib
	hLLyxrxN13ciJGTWDh5FVv1sRImw6hDOA7kP9b12PAWJpWrUWUyTmdF8NRdOHyLCaQACtvb+wvWvN
	3WAx0uI6vdfxhTcfnEgLwUW/Q9f8Xrma6WHuSWiIIn014yWVgWYKuVe6JEr1+DWJXk5QR7SqtKofc
	qFVPmu15O1iU1dpD8zzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBJu9-0005rM-00; Fri, 20 Sep 2019 14:29:01 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBJu0-0005r0-Rz
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 14:28:54 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id C30DB80AA;
 Fri, 20 Sep 2019 14:29:23 +0000 (UTC)
Date: Fri, 20 Sep 2019 07:28:49 -0700
From: Tony Lindgren <tony@atomide.com>
To: Tero Kristo <t-kristo@ti.com>
Subject: Re: [PATCHv5 00/10] soc: ti: add OMAP PRM driver (for reset)
Message-ID: <20190920142849.GS5610@atomide.com>
References: <20190912113916.20093-1-t-kristo@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190912113916.20093-1-t-kristo@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_072852_943881_A1D69D95 
X-CRM114-Status: UNSURE (   7.63  )
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

* Tero Kristo <t-kristo@ti.com> [190912 04:39]:
> Hi,
> 
> V5 of the series, re-sent the whole series as one patch was dropped.
> Changes compared to v3/v4:
> 
> - removed dependency towards clock driver (patch #5 was completely
>   dropped compared to v3/v4)
> - dropped clocks property from dt binding
> - re-added the pdata patch which was accidentally dropped out (it has
>   dependency towards this series.)
> 
> The new implementation (without clock driver dependency) relies on the
> bus driver to sequence events properly, otherwise some timeouts will
> occur either at clock driver or reset driver end.

With the two updated patches seems like we're done with this
series?

If so, I suggest either Santosh or me sets up an immutable
branch against v5.3 or v5.4-rc1 that we all can merge in.
I will need it for the related dts changes at least.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
