Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D26B1A5E0F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 12:31:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tusAcySVvFv428B1K5dzXbERLsVdADwfrV7CInrVV0A=; b=neuamxDuqDv0IU
	aqYQRRM3Svm4y6B3eot9s/3MrGfuPHCJzrJp7/LqWPk7DV4YxakEA5PNGnMW/QjDbeN9F1PGRg/cv
	qcmk15tYbqZIyYAE5ELsEmYwA8YDiFE+J+SQnQSWgdqsbMH8K8Hdi9dMkasb1fQoFgmmFmDDubXYk
	5pKFoFvkK7/TJ4f/+yp+LF7sYhmzWPi4Zcb1ABMORffFE3A3tyYiq8S999NLHzSSPI/b2vafzDG5E
	Sa8/C0l02wpH8ES9lZIocuhChFXegLemAVKUk2g4S5LCo3uWhjXA8tOYSztXyeh5lAK7llxgcCWdk
	/Pb2eE2MYgh12ALUjlsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNZu1-0005bk-ES; Sun, 12 Apr 2020 10:31:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNZtu-0005bO-E5
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 10:31:43 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 09A22206E9;
 Sun, 12 Apr 2020 10:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586687502;
 bh=hxvzPQ7gixVpCyxRSJHicmGU46t6PG5ZcN+dwTU8ORk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=u6Xramq7OjfTlYLQkFk/ktCp4AwKS3QCuFk/noujq4J2BzOIo5GomcnaRUJS17Hhk
 gpZaO//FUxHmtvQ4Fbt5nDYtq62jbkPo8j+qDEyShO+lVviCEndkQdrlIUCrKjfBAf
 QQTXcfQWuLeifglX2VIw2adMsyN7qQZTwBfz5G8s=
Date: Sun, 12 Apr 2020 11:31:37 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH v2 1/3] ARM: at91: add atmel tcb capabilities
Message-ID: <20200412113137.1763f084@archlinux>
In-Reply-To: <20200409141401.321222-2-kamel.bouhara@bootlin.com>
References: <20200409141401.321222-1-kamel.bouhara@bootlin.com>
 <20200409141401.321222-2-kamel.bouhara@bootlin.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_033142_491360_A2152A4D 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-iio@vger.kernel.org,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  9 Apr 2020 16:13:59 +0200
Kamel Bouhara <kamel.bouhara@bootlin.com> wrote:

> Some atmel socs have extra tcb capabilities that allow using a generic
> clock source or enabling a quadrature decoder.
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
> Changes from v2:
>  - Fixed first patch not applying on mainline
> 
>  include/soc/at91/atmel_tcb.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/include/soc/at91/atmel_tcb.h b/include/soc/at91/atmel_tcb.h
> index c3c7200ce151..7e47ace9255c 100644
> --- a/include/soc/at91/atmel_tcb.h
> +++ b/include/soc/at91/atmel_tcb.h
> @@ -39,6 +39,8 @@ struct clk;
>   */
>  struct atmel_tcb_config {
>  	size_t	counter_width;

This structure has existing kernel doc. Please add these new
elements and run ./scripts/kernel-doc over it check for any issues.

> +	bool    has_gclk;
> +	bool    has_qdec;
>  };
> 
>  /**
> --
> 2.25.0
> 

Thanks,

Jonathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
