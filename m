Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4410B172535
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 18:36:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yk1cO2P9Ue8pVy7/vdksat/4iTiTWmz4HysoD14uYxU=; b=ckyzjIZU373smX
	Ws2YDlteeS9UikkSfQwfqqZGfw8VeAzo0KDLiZ/X1cgqKOhv3Gqg4AcvKL8GkWIgeHaT3nBM2GC7H
	mB6RXFP/R7Vx41KhP5YFbUk1aprQtnTK8bACNy6lO/S5D8gpM2kDPA6kCUhhvAtJMl2/zw4Xuqgrq
	UPMHHrjYSMTn22Bv3cRSgyq55ULvY3/weWgyMULtPg0M+Usz0Hr5eZiG5eijJ2oc/8Obgv6X400LD
	7PQ/e3rbcmjpxNDaaLcN2G/Psji6OX7AjmCyf6JGGv6pmCmrbIHdAT1akF1s/c9y46nKoRGRUTerT
	aWdyeosy/J2fWG44O1cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7N52-00062B-N2; Thu, 27 Feb 2020 17:36:12 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7N4s-00061o-Qm
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 17:36:04 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id CB30180C0;
 Thu, 27 Feb 2020 17:36:47 +0000 (UTC)
Date: Thu, 27 Feb 2020 09:35:59 -0800
From: Tony Lindgren <tony@atomide.com>
To: Dave Gerlach <d-gerlach@ti.com>
Subject: Re: [PATCH 0/2] ARM: dts: am33xx/am4372: Add cpuidle dt states
Message-ID: <20200227173559.GH37466@atomide.com>
References: <20191213041725.16831-1-d-gerlach@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213041725.16831-1-d-gerlach@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_093602_909211_10EFDF37 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Santosh Shilimkar <ssantosh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Dave Gerlach <d-gerlach@ti.com> [191212 20:16]:
> Hi,
> This series adds DT idle states for TI am33xx and am4372 platforms.
> The mpu_gate is added for both platforms which gates the MPU clock
> to save power during idle. It depends on the driver series sent
> here [1].
> 
> Regards,
> Dave
> 
> [1] https://marc.info/?l=linux-kernel&m=157620644400324&w=2

Thanks applying into omap-for-v5.7/dt.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
