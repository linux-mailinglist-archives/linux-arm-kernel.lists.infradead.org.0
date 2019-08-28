Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E644A0977
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 20:30:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6pjh0meZkZ/MUB7vXIqRYHUX8BhPCvo++fo4io89ITI=; b=Zy8oxntOWosro2
	FzwcwnPiV5jTf9YXOYNbS2yp2x3RfDILbNF2nzilcv3q/o9kZr3vhQDKBXRLosvD00474VgeP8Tvc
	tR+3hUEedBcMRMQPLGaKxwFSOTMANs9PwIMDw9VwORkVLIHIOUsIea78AoneJee0mIkLFgRHRdpeY
	HnOyv6diRFdf6edC5XS+O8XnWHxTZIx2ASAxy03VxjZE4/l+7gWiTfYZvDH4YOduCSMWR2JaogBjI
	hYsjicImCExyY3kf1aySSmgu3dANnkyPF/4aa61IEf+hrTg2AkGRayov0NRWtHO6noxwg4wjw2UNu
	/AGaJ+FS/b4PJNnOlx/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i32iA-0003iN-8y; Wed, 28 Aug 2019 18:30:26 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i32hz-0003hi-1M
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 18:30:16 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 3292F80C5;
 Wed, 28 Aug 2019 18:30:40 +0000 (UTC)
Date: Wed, 28 Aug 2019 11:30:07 -0700
From: Tony Lindgren <tony@atomide.com>
To: Ladislav Michl <ladis@linux-mips.org>
Subject: Re: [PATCH] ARM: OMAP2+: Delete an unnecessary kfree() call in
 omap_hsmmc_pdata_init()
Message-ID: <20190828183007.GD52127@atomide.com>
References: <69025c8c-8d84-6686-138b-cde59467b802@web.de>
 <20190826162050.GX52127@atomide.com>
 <20190827181457.GA16333@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190827181457.GA16333@lenoch>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_113015_129559_AE8294AF 
X-CRM114-Status: GOOD (  10.80  )
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
Cc: Paul Walmsley <paul@pwsan.com>, Balaji T K <balajitk@ti.com>,
 kernel-janitors@vger.kernel.org, Kishore Kadiyala <kishore.kadiyala@ti.com>,
 Russell King <linux@armlinux.org.uk>, LKML <linux-kernel@vger.kernel.org>,
 Markus Elfring <Markus.Elfring@web.de>, Nikolaus Schaller <hns@goldelico.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Benoit Cousson <b-cousson@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Ladislav Michl <ladis@linux-mips.org> [190827 18:15]:
> On Mon, Aug 26, 2019 at 09:20:50AM -0700, Tony Lindgren wrote:
> > * Markus Elfring <Markus.Elfring@web.de> [190826 06:31]:
> > > From: Markus Elfring <elfring@users.sourceforge.net>
> > > Date: Mon, 26 Aug 2019 15:05:31 +0200
> > > 
> > > A null pointer would be passed to a call of the function "kfree" directly
> > > after a call of the function "kzalloc" failed at one place.
> > > Remove this superfluous function call.
> > > 
> > > This issue was detected by using the Coccinelle software.
> > 
> > Applying into omap-for-v5.4/soc thanks.
> 
> Is it really wise touching almost dead code? Last user is pandora board, so
> +Cc: Nikolaus Schaller <hns@goldelico.com>

Yeah would be good to finally get rid of that old code.
Anyways, I'll keep the $subject patch to cut down on
coccinelle produced issue.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
