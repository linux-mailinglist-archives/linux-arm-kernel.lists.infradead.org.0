Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC46B11E60B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 16:04:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J3n7ys9XbHxr2OPPGykK7qb6Nt4gVVF2wAk3BWJnoxc=; b=ZLVrHb2Z/Xwrw0
	lVCoepQoONiKKcgms18ZTvmjqJryOUZhYIcYUOQ/u5bkHnaGsaD+m+I6S3ZYPSLTOBq4FXeGKgRoq
	F7/gu8xEFKqDDw0IAcF1f/eFX7BKjKDx7tp0aA2JRVUuta3ZUgHZTtXxekwIwUfgYDeSu7le8F3bX
	ivhp9lGUlVMEGQsydxQQ18YUsvEc0yQymdrN3/gCDExzzxoWxXK/4dksHpl51DsGFo7I4+3YrC6ci
	OB1XPb3+84EWtngtmBif9a1pgELSNrKWSXs8boCcajnv+7KgRsqKR79qvSBy2O8Mx/dan3mri0J/B
	daPxWgq7paQvUOKMuLYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifmU1-0005Su-29; Fri, 13 Dec 2019 15:03:57 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifmTr-0005Sa-FM
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 15:03:48 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 670AE8161;
 Fri, 13 Dec 2019 15:04:26 +0000 (UTC)
Date: Fri, 13 Dec 2019 07:03:44 -0800
From: Tony Lindgren <tony@atomide.com>
To: Dave Gerlach <d-gerlach@ti.com>
Subject: Re: [PATCH 0/5] ARM: OMAP2+: Introduce cpuidle for am335x/am437x
Message-ID: <20191213150344.GJ35479@atomide.com>
References: <20191213030755.16096-1-d-gerlach@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213030755.16096-1-d-gerlach@ti.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_070347_549888_6D19BCC4 
X-CRM114-Status: UNSURE (   8.33  )
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Santosh Shilimkar <ssantosh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Dave Gerlach <d-gerlach@ti.com> [191212 19:07]:
> Hi,
> This series adds support for cpuidle on am335x and am437x using the
> cpuidle_arm driver. When testing on am335x-evm and am437x-gp-evm the
> follow power consumption reductions are seen on v5.5-rc1 baseline:
> 
> 
> Idling at command line, CPUFreq userspace governor to 300MHz:
>   am335x-evm:
>     VDD_MPU: 48 mW -> 5 mW
> 
>   am437x-gp-evm:
>     VDD_MPU: 32 mW -> 3 mW
> 
> 
> Idling at command line, CPUFreq userspace governor to 1GHz:
>   am335x-evm:
>     VDD_MPU: 313 mW -> 18 mW
> 
>   am437x-gp-evm:
>     VDD_MPU: 208 mW -> 10 mW

Hey this is great! A beverage on me when we get a chance :)

For merging, looks like I should take the series after folks are happy
with it. Santosh, care to review and ack if it looks OK?

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
