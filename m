Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BAE74B1B2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 07:53:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Inqjtk+J8LMjSfo3JfiPAraOdZSMhNNdJNwVh0N/A48=; b=Maz1LCuNNycHjh
	034bYhdrhyFxn2CerDNoSkhIbNEi9MWdDwlLuHL1f/fhy3sXv9jFlczfvCQOJlvDJOeogzFjtNcvf
	+fuFejUsJROTdCuy1sbMGFulsQlN1053Joi7RbNBumQWXOINL7RSzvttYQzYoCXOkhLclY0C3qpNf
	m+AFnl1sP4USJifm3eDh/m9N++PIxjzKz7189L72z18/FURqzcsq7+IpYTaE+rngbsojoONQQXjI7
	1ysiqqcJEK9MxtyPA/+AeiVvxda2ahoRNduCCs5A9q3vILx9Prl3t0DyHtqjPFHypQK2kkiKPbWV8
	n3FxDuyZ0NzVKmfN5f5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdTX9-0003z0-LD; Wed, 19 Jun 2019 05:53:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdTVy-0003BS-BM
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 05:52:11 +0000
Received: from localhost (107-207-74-175.lightspeed.austtx.sbcglobal.net
 [107.207.74.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DB91920B1F;
 Wed, 19 Jun 2019 05:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560923529;
 bh=ZkuAsgequni95HbNK6ONBqjvUgeSIKHzcp8y3cXEKz8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MWH4DBJfxrXWzAFsqaWAnBOD2tH+jkU0ekX2LD7Z3/LcYKnoODJ0/ScFaGDx0YCEd
 DBbDYukz3hvGCkGRlVb7osPPAHbwx6kCjoZM2lMrTmz2Q+SgBrCvGNFkSqJGpDyAC1
 NY8t6HUR8T/k9LDqdHZEecD6DRxa5VVYh75tiJZQ=
Date: Wed, 19 Jun 2019 00:52:07 -0500
From: Andy Gross <agross@kernel.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [RESEND v4 1/4] soc: qcom: geni: Add support for ACPI
Message-ID: <20190619055207.GA14273@hector.attlocal.net>
References: <20190617125105.6186-1-lee.jones@linaro.org>
 <20190617125105.6186-2-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617125105.6186-2-lee.jones@linaro.org>
User-Agent: Mutt/1.5.23.1 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_225210_416070_A94B5EDF 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: balbi@kernel.org, felipe.balbi@linux.intel.com, ard.biesheuvel@linaro.org,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
 david.brown@linaro.org, alokc@codeaurora.org, linux-arm-msm@vger.kernel.org,
 jlhugo@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 01:51:02PM +0100, Lee Jones wrote:
> When booting with ACPI as the active set of configuration tables,
> all; clocks, regulators, pin functions ect are expected to be at
> their ideal values/levels/rates, thus the associated frameworks
> are unavailable.  Ensure calls to these APIs are shielded when
> ACPI is enabled.
> 
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Applied.

Thanks,

Andy

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
