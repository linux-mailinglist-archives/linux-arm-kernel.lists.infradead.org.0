Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC53614E2FC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 20:16:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H3ZmR9ilHqYrS6UA5+ofjP3BotQ9qg+FLkMQcBwxzdA=; b=MRbH0EVhox1lQg
	TCTsRfHlIF1E8v2gt80/khN9BqC9aVsp7dFknrcI7DGxjdGb4RL/HGuDAhnh7ui4rk6LakW02YzlF
	r9ykP6mPR+klnP5RJd7KPi9AssTrDhf011YYlPyfuS0UW0klieTgM3fUGymRBHwTdueP2D82j9Irf
	osVqU8L10MUZP4Fl0T0qEZEeYrqHgyugDVBwWw/npRiF1DGmfnbwL/UQgxtVGgW8KOcE+YxBdmd2X
	dscjlu6VeiM7MEP14irzb7QT+khJamPyeSwkw1BjEmoKrD/O1dfrcUVdCZFo+b8PmudmhqGV6kghP
	9QrAYavfPEAEx60II4Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixFJ2-0000zY-JG; Thu, 30 Jan 2020 19:16:48 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixFIt-0000z8-EH
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 19:16:40 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 11:16:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,382,1574150400"; d="scan'208";a="262281101"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga002.fm.intel.com with ESMTP; 30 Jan 2020 11:16:33 -0800
Date: Thu, 30 Jan 2020 13:07:30 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Subject: Re: [PATCH net] net: thunderx: workaround BGX TX Underflow issue
Message-ID: <20200130120730.GA60572@ranger.igk.intel.com>
References: <20200129223609.9327-1-rjones@gateworks.com>
 <20200130091055.159d63ed@cakuba>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200130091055.159d63ed@cakuba>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_111639_530179_C20DEE0B 
X-CRM114-Status: GOOD (  19.94  )
X-Spam-Score: -3.9 (---)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-3.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Robert Jones <rjones@gateworks.com>, netdev@vger.kernel.org,
 Tim Harvey <tharvey@gateworks.com>, linux-kernel@vger.kernel.org,
 Robert Richter <rrichter@marvell.com>, Sunil Goutham <sgoutham@marvell.com>,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 30, 2020 at 09:10:55AM -0800, Jakub Kicinski wrote:
> On Wed, 29 Jan 2020 14:36:09 -0800, Robert Jones wrote:
> > From: Tim Harvey <tharvey@gateworks.com>
> > 
> > While it is not yet understood why a TX underflow can easily occur
> > for SGMII interfaces resulting in a TX wedge. It has been found that
> > disabling/re-enabling the LMAC resolves the issue.
> > 
> > Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> > Reviewed-by: Robert Jones <rjones@gateworks.com>
> 
> Sunil or Robert (i.e. one of the maintainers) will have to review this
> patch (as indicated by Dave by marking it with "Needs Review / ACK" in
> patchwork).
> 
> At a quick look there are some things which jump out at me:
> 
> > +static int bgx_register_intr(struct pci_dev *pdev)
> > +{
> > +	struct bgx *bgx = pci_get_drvdata(pdev);
> > +	struct device *dev = &pdev->dev;
> > +	int num_vec, ret;
> > +
> > +	/* Enable MSI-X */
> > +	num_vec = pci_msix_vec_count(pdev);
> > +	ret = pci_alloc_irq_vectors(pdev, num_vec, num_vec, PCI_IRQ_MSIX);
> > +	if (ret < 0) {
> > +		dev_err(dev, "Req for #%d msix vectors failed\n", num_vec);
> > +		return 1;
> 
> Please propagate real error codes, or make this function void as the
> caller never actually checks the return value.
> 
> > +	}
> > +	sprintf(bgx->irq_name, "BGX%d", bgx->bgx_id);

Another quick look: use snprintf so that you won't overflow the
bgx->irq_name in case bgx->bgx_id has some weird big number.

> > +	ret = request_irq(pci_irq_vector(pdev, GMPX_GMI_TX_INT),
> 
> There is a alloc_irq and request_irq call added in this patch but there
> is never any freeing. Are you sure this is fine? Devices can be
> reprobed (unbound and bound to drivers via sysfs).
> 
> > +		bgx_intr_handler, 0, bgx->irq_name, bgx);
> 
> Please align the continuation line with the opening bracket (checkpatch
> --strict should help catch this).
> 
> > +	if (ret)
> > +		return 1;
> > +
> > +	return 0;
> > +}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
