Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FE21C49D5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 00:52:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=1M+CZannSpYl2SVueWk+b7ZQVIS1q8dThU3p2pdH0wA=; b=WmUXEEfs9zvMmm
	weKaaEWIpp352UYwrCt5OW8oUnCiwWhkm3kvyomsCUCmqre45pLILUZrP3y0+elg6d4YL+Nk2YdrL
	UvLj/czE3p+RvcTV/brFqevRZU+Oruu1GWEqUtMFzqQy6wHIFRfFZm6ouRQHdoSqGCzT/CKOlRjJG
	Fv9Hdfd5gAmAhtYxLm5m6skMKeGd0XgrKUsEbkUh4TQtS4KmXN8gg42WS9KC/i4fI4BZK80WBl7uI
	ToZaooWGtKlBg868jZQzfVlyt2hgL3C8HPY4zSc6Aba8QAKFnfxDb4YTnjxLt/If809Iyn8sZ4+eu
	8c4p39wBW4sS1PK0xpYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVjx7-00044j-Lt; Mon, 04 May 2020 22:52:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVjx0-00043h-S1; Mon, 04 May 2020 22:52:40 +0000
Received: from localhost (mobile-166-175-184-168.mycingular.net
 [166.175.184.168])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 65AC3206C0;
 Mon,  4 May 2020 22:52:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588632756;
 bh=oDW2m6L9Wrq4l6Sa6FvG+TJuH2YvKGkX1auEkVIa68g=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=qmCv3L7FRPXdzRbioI3T3Quf3DdF6rhAzTR9i6zP7T4//X93+af4luIhonhjHQsxn
 O95sd19nj4u3WoDX9BhU/vRHt6Zi37Lp/sCZ6sACPd6FOUe2HAPUO8R8uVm7pVR6n6
 raEzi3KqsL9DDVFz4SAVWJmSttzT9aOGcEGIbSDc=
Date: Mon, 4 May 2020 17:52:34 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v7 2/4] firmware: raspberrypi: Introduce vl805 init routine
Message-ID: <20200504225234.GA300024@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d105712418b93ebce7c0498d05eea77171892366.camel@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_155238_931483_0B875384 
X-CRM114-Status: GOOD (  10.86  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: tim.gover@raspberrypi.org, ScottBranden <sbranden@broadcom.com>,
 linux-pci@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, RayJui <rjui@broadcom.com>, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 Greg KH <gregkh@linuxfoundation.org>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 04, 2020 at 10:59:29AM +0200, Nicolas Saenz Julienne wrote:
> On Sat, 2020-05-02 at 11:05 +0200, Stefan Wahren wrote:
> > > +	pci_read_config_dword(pdev, VL805_PCI_CONFIG_VERSION_OFFSET, &version);
> > pci_read_config_dword() can fail, we might want to store the return value?
> 
> I planned on doing that, but realised that the vast majority of
> pci_read_config_*() users pass on checking for errors.
> 
> Bjorn, any rule of thumb on when to check for errors here?

Not really.  It *can* fail, for sure.  If it does fail, you normally
get ~0 data, which means you would skip the firmware load, do another
config read (which probably also returns ~0) and print firmware
version ffffffff, and the device probably won't work.

But checking doesn't get you much other than a better error message.

Personally I probably wouldn't bother because it clutters the code so
much for so little benefit.

Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
