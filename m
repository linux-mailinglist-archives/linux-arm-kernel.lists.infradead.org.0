Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2042CE966
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 18:38:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Z4BKkPg/w4ExUDnPN73UQsjDc0K6XU8aZ5frdz9IqE=; b=uxM5yCUxhD2f+q
	pTrH46IIAHqsbjGDzIL7Od3C/Ragik8SXLTzTym0QaWwbC2p9AID3ny9a6/FWrsuDw3j00JpYxCkK
	TPxEUvHHvK/LZ5uBY2xZ0WPBAZwwyTau3m5jFHnt7BCN3j/NF1IQcW/xVnZwshiszZbUSVPoy7grz
	z04JaCPivHzUkrhMsz3J7Cjx9LgHaBr88bArW1JGJfW5hJ3iPzLYJQTplI21l0UdhGdrNNPDPIltw
	fzX4v+a+oBR/HGcszWcXRsNe30iJbbd5hB5ROsQ//ueAXw51b3/cA7yGgO25hQ0udm+ReHDI1WOJy
	QlsU9eEPgx+S5+V/8Vdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHW1f-0007ue-4D; Mon, 07 Oct 2019 16:38:23 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHW1Y-0007u3-TS
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 16:38:18 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id DFE6E8191;
 Mon,  7 Oct 2019 16:38:43 +0000 (UTC)
Date: Mon, 7 Oct 2019 09:38:07 -0700
From: Tony Lindgren <tony@atomide.com>
To: Tero Kristo <t-kristo@ti.com>
Subject: Re: [PATCH 0/3] bus: ti-sysc: fix reset sequencing
Message-ID: <20191007163807.GU5610@atomide.com>
References: <20191007122931.18668-1-t-kristo@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191007122931.18668-1-t-kristo@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_093816_993396_76D03536 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tero Kristo <t-kristo@ti.com> [191007 12:30]:
> Hi,
> 
> These three patches make sure that IOMMU/remoteprocs work across
> all devices with the latest OMAP PRM series for reset support [1].
> The last dangling issues were caused by the removal of the hardlink
> between the reset + clock drivers.

OK. I presume these are safe to wait for v5.5 since we don't
have the rstctrl driver yet?

Regards,

Tony


> [1] https://patchwork.kernel.org/cover/11142871/
> 
> 
> --
> Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
