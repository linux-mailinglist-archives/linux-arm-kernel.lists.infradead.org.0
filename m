Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD61200ACE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 15:57:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fGYFpfatWBUWKFYzmEEHQgPyneFfUqNQZqoTaLotm40=; b=N1q8KpITTyTWX/
	PFVIt3NojKw+y6xfGLnfQD9ZuYy1OiA/3p3DcIqHdnIpERlVRWVuM+mPAwhJT8+KyNPom7ZVtz6ek
	rPdYdxj0+RBlbjT7Amzcjl+9yPsIcWY8+s0NGZ6DS5pKek9nj7cQR6EpPEUhD4fovE0XaO8FF6nnI
	QunAd02DO9wh0TYx6A+278WFiRFX9TZPTJJbJ7seEmmHENo11Q0scePK4lOc3wcr8uGNAacEZo642
	AX98bZfBDQa37QTD02pc4YGHJgsGS+0upCLw0Us6Ay18KjU+mdYyDMkM4ZZKJQ1p/y/JVreGWVVaX
	PJOZnSQHkGNFgEcyjOtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmHWJ-0000z5-KO; Fri, 19 Jun 2020 13:57:27 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jmHW8-0000yl-Di; Fri, 19 Jun 2020 13:57:16 +0000
Date: Fri, 19 Jun 2020 06:57:16 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Jianyong Wu <jianyong.wu@arm.com>
Subject: Re: [PATCH v13 3/9] smccc: Export smccc conduit get helper.
Message-ID: <20200619135716.GA14308@infradead.org>
References: <20200619130120.40556-1-jianyong.wu@arm.com>
 <20200619130120.40556-4-jianyong.wu@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200619130120.40556-4-jianyong.wu@arm.com>
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
Cc: Mark.Rutland@arm.com, maz@kernel.org, justin.he@arm.com,
 kvm@vger.kernel.org, Wei.Chen@arm.com, suzuki.poulose@arm.com,
 netdev@vger.kernel.org, richardcochran@gmail.com, Steve.Capper@arm.com,
 linux-kernel@vger.kernel.org, sean.j.christopherson@intel.com,
 steven.price@arm.com, Kaly.Xin@arm.com, john.stultz@linaro.org,
 yangbo.lu@nxp.com, pbonzini@redhat.com, tglx@linutronix.de, nd@arm.com,
 will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 19, 2020 at 09:01:14PM +0800, Jianyong Wu wrote:
> Export arm_smccc_1_1_get_conduit then modules can use smccc helper which
> adopts it.
> 
> Acked-by: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> ---
>  drivers/firmware/smccc/smccc.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/firmware/smccc/smccc.c b/drivers/firmware/smccc/smccc.c
> index 4e80921ee212..b855fe7b5c90 100644
> --- a/drivers/firmware/smccc/smccc.c
> +++ b/drivers/firmware/smccc/smccc.c
> @@ -24,6 +24,7 @@ enum arm_smccc_conduit arm_smccc_1_1_get_conduit(void)
>  
>  	return smccc_conduit;
>  }
> +EXPORT_SYMBOL(arm_smccc_1_1_get_conduit);

EXPORT_SYMBOL_GPL, please.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
