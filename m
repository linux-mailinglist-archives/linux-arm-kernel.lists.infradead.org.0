Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D82571E6788
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 18:36:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QBUulAtiQJpOewea9HU/a91f4srGE9q6TVI3HpdMtJ4=; b=aPpY8v7zB7y18R
	uyFY7Px9Guyced+L9yHBwHmQjdSLzYkdlIfgmfEtuGYZeiIqYDZSAOA4PjBP324XVlhsflVJkapWX
	Zs5VS066uy8XhXNSXJ7/DxM6LR5XRcTIteg4RZGedg0WWCT4qaBQm25wdRAeMo7/FDwOMjye7rBF4
	dYLMoUx/FEvacHnb/fuxg+LsNFvVM0SvO3tIHL4xuxkbFcJzdCjj3DaDJ56dENohjhPuiWKTj8bwA
	B2H3mVqVwKW2eYBV39iISYVL7zpES9JJ6IEFvfNrtlur6H6+vlFYFUuz7cNd0sU3+3+zZw6OA7hT7
	1OMCdJxdwymt7dltkChA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeLW8-0003Ds-NO; Thu, 28 May 2020 16:36:28 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeLVz-0003D5-L4
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 16:36:21 +0000
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1jeLVl-0004mm-VY; Thu, 28 May 2020 18:36:06 +0200
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 3A4C7100D01; Thu, 28 May 2020 18:36:05 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Jianyong Wu <jianyong.wu@arm.com>, netdev@vger.kernel.org,
 yangbo.lu@nxp.com, john.stultz@linaro.org, pbonzini@redhat.com,
 sean.j.christopherson@intel.com, maz@kernel.org, richardcochran@gmail.com,
 Mark.Rutland@arm.com, will@kernel.org, suzuki.poulose@arm.com,
 steven.price@arm.com
Subject: Re: [RFC PATCH v12 05/11] time: Add mechanism to recognize
 clocksource in time_get_snapshot
In-Reply-To: <20200522083724.38182-6-jianyong.wu@arm.com>
References: <20200522083724.38182-1-jianyong.wu@arm.com>
 <20200522083724.38182-6-jianyong.wu@arm.com>
Date: Thu, 28 May 2020 18:36:05 +0200
Message-ID: <87tv00nhje.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_093619_829481_755D784D 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
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
Cc: justin.he@arm.com, Wei.Chen@arm.com, kvm@vger.kernel.org,
 Steve.Capper@arm.com, jianyong.wu@arm.com, linux-kernel@vger.kernel.org,
 Kaly.Xin@arm.com, nd@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Jianyong Wu <jianyong.wu@arm.com> writes:
> From: Thomas Gleixner <tglx@linutronix.de>
> diff --git a/kernel/time/clocksource.c b/kernel/time/clocksource.c
> index 7cb09c4cf21c..a8f65b3e4ec8 100644
> --- a/kernel/time/clocksource.c
> +++ b/kernel/time/clocksource.c
> @@ -928,6 +928,9 @@ int __clocksource_register_scale(struct clocksource *cs, u32 scale, u32 freq)
>  
>  	clocksource_arch_init(cs);
>  
> +if (WARN_ON_ONCE((unsigned int)cs->id >= CSID_MAX))
> +		cs->id = CSID_GENERIC;
> +

This is white space damaged and certainly not from me.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
