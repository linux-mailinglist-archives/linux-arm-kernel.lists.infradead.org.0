Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5930D120FD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 19:27:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KFx4ed/j3zJf+scHAmxjLxE6xsMeqdK8aQsKX1QJgJs=; b=GgP99DlYXq0riW
	HMlUx6BFvJVfRO8QTVNAO+FqINFoZ6WMluFUMz1X0zVQIjvd+4cNpzcvHGCt8VQBVYGPhGMPKFYy/
	ltfWo198YMRzMKdj+omoemXMI8V352XYbGIBpiLIaFQb0oQAR++EIdyLhE537OOG8EY0nY1ZMTjA9
	NXZJc2FI1QMVGkqMKmlmhDZ+HMG//7nuLhfrMMy+wwgdrCGMrAqxe4PIJuxZuiolKuFeSYVW0Iixu
	iIG1m4U/bZuskfJFjgTcToR0Fo76rFpY/zbShg5di/UIkh18B8pHMY5ojsNGSE/RZQiT9UUuqGK5r
	MTbcmy1zCyC4d/3PYFQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMFUS-0000mB-BU; Thu, 02 May 2019 17:27:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMFUK-0000iy-AE
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 17:27:17 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5BA6420651;
 Thu,  2 May 2019 17:27:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556818035;
 bh=nUrwWPD8ucED90XNkUlUix14ltwwHkXny6E3ImMXWRc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PF6fFdBzx4hNtuFY4X7GBes3yLTc1ZZ6KV5pnxzb/IFPEfTd+SDcDvTJ+la3Xi/2K
 sssLcj85wn9UVQsfWNgz7/l+VCSNK/tP8uNsL3O4yKSHjNDNRwaccw8K/hISQXfQRc
 C7gYAiBdPg/hDemPuENunbgsltANLZVctsnAJUX0=
Date: Thu, 2 May 2019 19:27:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dragan Cvetic <dragan.cvetic@xilinx.com>
Subject: Re: [PATCH V3 07/12] misc: xilinx_sdfec: Add ability to configure LDPC
Message-ID: <20190502172713.GD1874@kroah.com>
References: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
 <1556402706-176271-8-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556402706-176271-8-git-send-email-dragan.cvetic@xilinx.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_102716_380108_262B2BFF 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, arnd@arndb.de,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Derek Kiernan <derek.kiernan@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 27, 2019 at 11:05:01PM +0100, Dragan Cvetic wrote:
> --- a/include/uapi/misc/xilinx_sdfec.h
> +++ b/include/uapi/misc/xilinx_sdfec.h

<snip>

> +/**
> + * xsdfec_calculate_shared_ldpc_table_entry_size - Calculates shared code
> + * table sizes.
> + * @ldpc: Pointer to the LPDC Code Parameters
> + * @table_sizes: Pointer to structure containing the calculated table sizes
> + *
> + * Calculates the size of shared LDPC code tables used for a specified LPDC code
> + * parameters.
> + */
> +inline void
> +xsdfec_calculate_shared_ldpc_table_entry_size(struct xsdfec_ldpc_params *ldpc,
> +	struct xsdfec_ldpc_param_table_sizes *table_sizes)
> +{
> +	/* Calculate the sc_size in 32 bit words */
> +	table_sizes->sc_size = (ldpc->nlayers + 3) >> 2;
> +	/* Calculate the la_size in 256 bit words */
> +	table_sizes->la_size = ((ldpc->nlayers << 2) + 15) >> 4;
> +	/* Calculate the qc_size in 256 bit words */
> +	table_sizes->qc_size = ((ldpc->nqc << 2) + 15) >> 4;
> +}

Why do you have an inline function in a user api .h file?  That's really
not a good idea.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
