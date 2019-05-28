Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA8E2C3F6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 12:09:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ga5xF6g0AEjOK93jNsmxKKvsG+ZL4gzosM/bHKWXpIc=; b=lX1FGV4X9Ib2Kv
	YZEE2gtknmNh45ixnjt8+da9TGEFgyI5YO4swLd5EmCUSmMHJ1VIcR7//D9pn9MbsWzO+3hvHFKgj
	fPIVHn2D1iIupsTCOgfoLmR+4Ti8oauAM4vHy8lYf4862IBcA5xs6+dpEZmygx9A+ikGdDs0oTF6H
	R4koMjWPPWoUsHTc+ig4DXqjbJfquGqNYJzAz+cKYmmlgfm1EzX91bD00CZC99gF/v5r7mi5FmLSA
	x4qN56qD9WVD+BDk1MpuOIXdbvqpAI5cJ7gPqTWHj+0XL3U6UojQbsaP+CjjJ28/rIabUjjiufUF8
	hUNmiSZtIoC73ML1x4/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVZ35-0005Rj-Vw; Tue, 28 May 2019 10:09:40 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVZ2z-0005Nl-AZ
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 10:09:34 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 May 2019 03:07:32 -0700
X-ExtLoop1: 1
Received: from lahna.fi.intel.com (HELO lahna) ([10.237.72.157])
 by fmsmga001.fm.intel.com with SMTP; 28 May 2019 03:07:28 -0700
Received: by lahna (sSMTP sendmail emulation); Tue, 28 May 2019 13:07:28 +0300
Date: Tue, 28 May 2019 13:07:28 +0300
From: Mika Westerberg <mika.westerberg@linux.intel.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v3 1/4] acpi/irq: implement helper to create hierachical
 domains
Message-ID: <20190528100728.GV2781@lahna.fi.intel.com>
References: <20190527112720.2266-1-ard.biesheuvel@linaro.org>
 <20190527112720.2266-2-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527112720.2266-2-ard.biesheuvel@linaro.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_030933_376068_D774497A 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Graeme Gregory <graeme.gregory@linaro.org>, linux-gpio@vger.kernel.org,
 Marc Zyngier <marc.zyngier@arm.com>, Linus Walleij <linus.walleij@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-acpi@vger.kernel.org,
 Masahisa Kojima <masahisa.kojima@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 01:27:17PM +0200, Ard Biesheuvel wrote:
> +
> +/**
> + * acpi_irq_create_hierarchy - Create a hierarchical IRQ domain with the default
> + *                             GSI domain as its parent.

Please document the arguments as well.

> + */
> +struct irq_domain *acpi_irq_create_hierarchy(unsigned int flags,
> +					     unsigned int size,
> +					     struct fwnode_handle *fwnode,
> +					     const struct irq_domain_ops *ops,
> +					     void *host_data)

Otherwise looks good to me.

Reviewed-by: Mika Westerberg <mika.westerberg@linux.intel.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
