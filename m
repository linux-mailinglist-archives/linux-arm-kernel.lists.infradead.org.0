Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E54DD80BB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 22:11:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i72wxzJktlF0iPADay+P4DY+7TMiRZNzeGkh9HYUP0I=; b=A1OQKhUPJlxsLB
	jUNxg8kII+llZtsk2Ux8DIYjE6PfRvUd2TX+pdgfYtu01esd5dFFCtTSqPX4kgmFhkqzhvxtfBmB5
	XxRldh1Oa1HEPq2huCe0HWzykIVTwTw38y8epzENGJ9EZd93KXNcwnJdeitSSnVu6dryWTdIip1M3
	p6usSvg/YZn0VV5WL1X7zlmjb/yfpx45j4TjW2QAaS4jY4EJSrtCg2g9gBMNbjx9oHMJygaAI04Bw
	5HiB6I+IkIKpfm02w5oUwlIS5c+Vn6BEhnTrT+o1LErz7KXTnbPBSf2EKLx158CJg2rPV71gTSnFk
	iuwQE5oxrT+lPACxQrPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKTA7-0007Ji-MR; Tue, 15 Oct 2019 20:11:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKT9g-000793-Bi; Tue, 15 Oct 2019 20:10:54 +0000
Received: from remote.shanghaihotelholland.com ([46.44.148.63]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iKT9c-00080l-5K; Tue, 15 Oct 2019 22:10:48 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 2/2] include: dt-bindings: rockchip: remove RK_FUNC defines
Date: Tue, 15 Oct 2019 22:10:42 +0200
Message-ID: <2236841.lnJlJmhppS@phil>
In-Reply-To: <20191015191000.2890-2-jbx6244@gmail.com>
References: <20191015191000.2890-1-jbx6244@gmail.com>
 <20191015191000.2890-2-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_131052_550323_678DAF79 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Johan,

Am Dienstag, 15. Oktober 2019, 21:10:00 CEST schrieb Johan Jonker:
> The defines RK_FUNC_1, RK_FUNC_2, RK_FUNC_3 and RK_FUNC_4
> are no longer used, so remove them to prevent
> that someone start using them again.

That won't work. Devicetree provides a slightly flexible promise of
backwards compatibilty. So a new kernel should still work old devicetrees.
(not exactly sure if this means dt-binaries and sources or only binaries)

So while I think RK_FUNC_0-n should not be used anymore, we should
probably just mark them as "deprecated" in a first step.


Heiko


> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  include/dt-bindings/pinctrl/rockchip.h | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/include/dt-bindings/pinctrl/rockchip.h b/include/dt-bindings/pinctrl/rockchip.h
> index dc5c1c73d..2798b6c03 100644
> --- a/include/dt-bindings/pinctrl/rockchip.h
> +++ b/include/dt-bindings/pinctrl/rockchip.h
> @@ -50,9 +50,5 @@
>  #define RK_PD7		31
>  
>  #define RK_FUNC_GPIO	0
> -#define RK_FUNC_1	1
> -#define RK_FUNC_2	2
> -#define RK_FUNC_3	3
> -#define RK_FUNC_4	4
>  
>  #endif
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
