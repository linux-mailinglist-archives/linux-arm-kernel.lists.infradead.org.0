Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 178FEEDA19
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 08:45:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cgWHRTYS4uEXLY3TXNJh43rjcXX+ppED5r/9pat3VUw=; b=UT/u4n1tN/dHVf
	zxKNCGWaFiaeO7MNjPuwWD/qLTEwSy/eWmSkKekpVgmr0Kmj6mpzER+bnHc/M4Oi6CRlpMvKopAs/
	yy6PRNzGbrqKEN4o306A7QaPU6uhFDgUWBt22e+7+88kUFDHZeAZSHU3O5WRGCnRnj+rzD8j+Yl3M
	9UAdGjnj/rUywwMxlXJVpGPkMlwuQZ0uWUrLKySre+klz2rSxrp1ftmIPP9mB4c8LwpI210ndaRT1
	Egc1nPdvkY/EkqONprCFh9RTvzMbCKms/qbOvoiRq19C9XOG+vJHPrNySz1XHAEkC48PRjZfO5xXO
	MpGlpEpnvreB8EmBChjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRX3e-0000Gm-DK; Mon, 04 Nov 2019 07:45:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRX3W-0000GP-UA
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 07:45:44 +0000
Received: from dragon (li1038-30.members.linode.com [45.33.96.30])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A251A2190F;
 Mon,  4 Nov 2019 07:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572853542;
 bh=WTVqOEcC1dHVSVyC4yYVjyjBZVnNFJMwi8QDFxKH53I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Rg4OuNF1FndrApd6dvSlvD0vw4tU7S7IQYdV8o9YydcB85WqTlGWHhLwAeYgcZNYm
 /BjWAx0vkKLnr0TCno438srfISO6vL94qEGMtFaJpW4PWD6lfnqwj7LJF8sUTr5ND5
 EyRQ5XdBxMAxhuQXu/Mh/jeByrYoqF36VgRNJjnw=
Date: Mon, 4 Nov 2019 15:45:16 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Schrempf Frieder <frieder.schrempf@kontron.de>
Subject: Re: [PATCH v3 11/11] MAINTAINERS: Add an entry for Kontron
 Electronics ARM board support
Message-ID: <20191104074514.GU24620@dragon>
References: <20191031142112.12431-1-frieder.schrempf@kontron.de>
 <20191031142112.12431-12-frieder.schrempf@kontron.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031142112.12431-12-frieder.schrempf@kontron.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_234542_991449_6EED76B7 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 02:24:34PM +0000, Schrempf Frieder wrote:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> Kontron Electronics GmbH produces several ARM boards, that are
> planned to be upstreamed eventually. For now we have some
> i.MX6UL/ULL based SoMs and boards, that are already available
> in the kernel.
> 
> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>

We usually do not need MAINTAINERS entry for individual DTS files.

Shawn

> ---
>  MAINTAINERS | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 296de2b51c83..a461d31ee98d 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -9103,6 +9103,12 @@ F:	include/linux/kmod.h
>  F:	lib/test_kmod.c
>  F:	tools/testing/selftests/kmod/
>  
> +KONTRON ELECTRONICS ARM BOARDS SUPPORT
> +M:	Frieder Schrempf <frieder.schrempf@kontron.de>
> +S:	Maintained
> +F:	arch/arm/boot/dts/imx6ul-kontron-*
> +F:	arch/arm/boot/dts/imx6ull-kontron-*
> +
>  KPROBES
>  M:	Naveen N. Rao <naveen.n.rao@linux.ibm.com>
>  M:	Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>
> -- 
> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
