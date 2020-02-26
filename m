Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A90B51707E5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 19:43:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9R7UPtY1TIFJo74UqPbcGUnvEmk8c4Lo1sqIEBc4mX8=; b=gSyiX/QvkFgPj7
	l98nnEN+m9aGJcvjKg8DQwbk7Tfc4Q838MQoVrgtGNQIgWoizOsQbQr9f91WdVetOOW4QmgqSGmtn
	qr4VjReUZzbN8RxfOC91wAjQBQ107eGlUr6oG4p6WJu8slKE7vcyYIpn+oZKdZ6qH2SgO16q3AUdP
	H63G5CF+07XumRYZeASWO1ky2DvXvope9laVQsvrQJjOA+nzIol7em8LEFtldhUBVLh+7kjICkQ92
	Pgm0sI+16sBlPb7/nV060TgE+uLcn+unOrKuXNfGyZJ7DyJP/2gXSy2tnWFHUuigS38nlzqDycsqR
	VS+janj+qvslZJwU/CHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j71el-00056Y-RH; Wed, 26 Feb 2020 18:43:39 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j71ed-00056H-J1
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 18:43:32 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 2841A8022;
 Wed, 26 Feb 2020 18:44:16 +0000 (UTC)
Date: Wed, 26 Feb 2020 10:43:28 -0800
From: Tony Lindgren <tony@atomide.com>
To: Dave Gerlach <d-gerlach@ti.com>,
	Santosh Shilimkar <ssantosh@kernel.org>
Subject: Re: [PATCH 0/5] ARM: OMAP2+: Introduce cpuidle for am335x/am437x
Message-ID: <20200226184328.GY37466@atomide.com>
References: <20191213030755.16096-1-d-gerlach@ti.com>
 <20191213150344.GJ35479@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213150344.GJ35479@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_104331_664465_84145890 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Santosh Shilimkar <ssantosh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Santosh,

* Tony Lindgren <tony@atomide.com> [191213 15:04]:
> * Dave Gerlach <d-gerlach@ti.com> [191212 19:07]:
> > Hi,
> > This series adds support for cpuidle on am335x and am437x using the
> > cpuidle_arm driver. When testing on am335x-evm and am437x-gp-evm the
> > follow power consumption reductions are seen on v5.5-rc1 baseline:
> > 
> > 
> > Idling at command line, CPUFreq userspace governor to 300MHz:
> >   am335x-evm:
> >     VDD_MPU: 48 mW -> 5 mW
> > 
> >   am437x-gp-evm:
> >     VDD_MPU: 32 mW -> 3 mW
> > 
> > 
> > Idling at command line, CPUFreq userspace governor to 1GHz:
> >   am335x-evm:
> >     VDD_MPU: 313 mW -> 18 mW
> > 
> >   am437x-gp-evm:
> >     VDD_MPU: 208 mW -> 10 mW
> 
> Hey this is great! A beverage on me when we get a chance :)
> 
> For merging, looks like I should take the series after folks are happy
> with it. Santosh, care to review and ack if it looks OK?

Looks like this series of changes is still pending. Care
to ack?

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
