Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2EF14DFAA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 18:11:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rY6XQMYeSfmKFGcLKy97ZZorgg24yfDaVlq9oK263hA=; b=RW4nfedLUH63HQ
	RN0dep5f8Moclnn/DS/5E4w3Wy5Ida51A7LrxHENLfsg713LdK4pgkFVjV0SKC9t7MApAOntIw/wt
	+t1ejyu/z01F9rauY+lFDFWbDhcAYcqGcoF5jXzJiEG2V6wye8TFBcxYU/6EotCGEikpEJoEaosM4
	fqk+IRKxzDHRZAhh/zdSBeijI0w+L76sfacM1vUgUAQwPleUCn2SqehDDji4BoGlk8aYtb2DoBOLS
	Pswo9964BYlFhFOMT3ZlNhvKsApuxKHYW3zlncGq7VlWRTgEm9GngfbMKDIkZrciqdkRzFhtDJCvg
	KmoekVhUTR6qx+4miceg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixDLS-0003r3-94; Thu, 30 Jan 2020 17:11:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixDLE-0003fP-SE
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 17:11:01 +0000
Received: from cakuba (unknown [199.201.64.133])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D4AB020707;
 Thu, 30 Jan 2020 17:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580404256;
 bh=Hxrsh7O/rjzAeL1uBZU4NMmuZq1J4Zw8jlVqpSJ/bR4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=S3+Rs+Ad125yxd6jqyK1V6fCELrvcCmCaIoeJpZld0ZcfixK0JJDrONTnLfoa7w27
 oiiKZKJjwAhxUh3gMtGWF2xjVe3ofm0/vd8aTqCiRH8jE8zA79fG4bkhDFQf9UP1gW
 kyjzhAV/8gHxw4DJwQBnUgr2ogEgCLzhmPkbrEI8=
Date: Thu, 30 Jan 2020 09:10:55 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Robert Jones <rjones@gateworks.com>
Subject: Re: [PATCH net] net: thunderx: workaround BGX TX Underflow issue
Message-ID: <20200130091055.159d63ed@cakuba>
In-Reply-To: <20200129223609.9327-1-rjones@gateworks.com>
References: <20200129223609.9327-1-rjones@gateworks.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_091059_315254_FDF8D2B3 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: netdev@vger.kernel.org, Tim Harvey <tharvey@gateworks.com>,
 linux-kernel@vger.kernel.org, Robert Richter <rrichter@marvell.com>,
 Sunil Goutham <sgoutham@marvell.com>, David Miller <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 29 Jan 2020 14:36:09 -0800, Robert Jones wrote:
> From: Tim Harvey <tharvey@gateworks.com>
> 
> While it is not yet understood why a TX underflow can easily occur
> for SGMII interfaces resulting in a TX wedge. It has been found that
> disabling/re-enabling the LMAC resolves the issue.
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> Reviewed-by: Robert Jones <rjones@gateworks.com>

Sunil or Robert (i.e. one of the maintainers) will have to review this
patch (as indicated by Dave by marking it with "Needs Review / ACK" in
patchwork).

At a quick look there are some things which jump out at me:

> +static int bgx_register_intr(struct pci_dev *pdev)
> +{
> +	struct bgx *bgx = pci_get_drvdata(pdev);
> +	struct device *dev = &pdev->dev;
> +	int num_vec, ret;
> +
> +	/* Enable MSI-X */
> +	num_vec = pci_msix_vec_count(pdev);
> +	ret = pci_alloc_irq_vectors(pdev, num_vec, num_vec, PCI_IRQ_MSIX);
> +	if (ret < 0) {
> +		dev_err(dev, "Req for #%d msix vectors failed\n", num_vec);
> +		return 1;

Please propagate real error codes, or make this function void as the
caller never actually checks the return value.

> +	}
> +	sprintf(bgx->irq_name, "BGX%d", bgx->bgx_id);
> +	ret = request_irq(pci_irq_vector(pdev, GMPX_GMI_TX_INT),

There is a alloc_irq and request_irq call added in this patch but there
is never any freeing. Are you sure this is fine? Devices can be
reprobed (unbound and bound to drivers via sysfs).

> +		bgx_intr_handler, 0, bgx->irq_name, bgx);

Please align the continuation line with the opening bracket (checkpatch
--strict should help catch this).

> +	if (ret)
> +		return 1;
> +
> +	return 0;
> +}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
