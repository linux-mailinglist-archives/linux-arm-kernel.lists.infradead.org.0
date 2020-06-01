Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B141EA87D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 19:41:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=HcBXNJIDbfnZ5UCLRxmwiaxMM3128zfAiHrKrSF5OTw=; b=aAWp9FZ46RZ0SJ
	ItYTISNxgKa3GTPLUcHeYW111JWG0TA5JdMWmMc5ZTOwI042H/mdPchnDPf6SSOgHAeF/dlER53Cb
	cG1cgR1ted6naQIjJIgBmyYwrAdM5Wr+L6sM+gLjD9A+3dbRMb9C6U6ma0eKdTjThL2vMque3esir
	VGDEk9TC98bjLuD58jJuzJ2Kz2clG9GaqOkM4AXW3QwNxUyDbpvs2Wg71zjKIJKRvwTi4FQiSuwD4
	FCfiRHJUane3TBUKL7DJDoZcK7KpPNkeAi33dSGbq5IxBDNKtEBaFHMFXw3XkfNBJBumFswx4zKUt
	6NULMbsni5hIuvaZjUSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfoQz-0003FF-I6; Mon, 01 Jun 2020 17:41:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfoQt-0003Er-L3
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 17:41:09 +0000
Received: from localhost (mobile-166-175-190-200.mycingular.net
 [166.175.190.200])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 48FEF206A4;
 Mon,  1 Jun 2020 17:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591033266;
 bh=egFH6RgQ4a+4kLCfGrEDkjv5v4bJblqDQOjodPikqEM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=PBS/XvI5mPBJhMQPW3QR/267YghZh8VBNHFVIA3y76nvmv7wSAOnIG8ZofBmrwL3W
 hjX/e/kbh6hI/0SHMT/KsCJ3IYwK/78zwY6ZY8W6ZDDtNYI4kfbVVgq5NF84Mj/Dz5
 u9OiYWmcq6uvLgae6Udy20G6q8HsslAkBraLQcZo=
Date: Mon, 1 Jun 2020 12:41:04 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Joerg Roedel <joro@8bytes.org>
Subject: Re: [PATCH 0/2] Introduce PCI_FIXUP_IOMMU
Message-ID: <20200601174104.GA734973@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528073344.GO5221@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_104107_710771_3EFC49A1 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: jean-philippe <jean-philippe@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 linux-pci@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hanjun Guo <guohanjun@huawei.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 kenneth-lee-2012@foxmail.com, linux-acpi@vger.kernel.org,
 Wangzhou <wangzhou1@hisilicon.com>, linux-crypto@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Zhangfei Gao <zhangfei.gao@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 09:33:44AM +0200, Joerg Roedel wrote:
> On Wed, May 27, 2020 at 01:18:42PM -0500, Bjorn Helgaas wrote:
> > Is this slowdown significant?  We already iterate over every device
> > when applying PCI_FIXUP_FINAL quirks, so if we used the existing
> > PCI_FIXUP_FINAL, we wouldn't be adding a new loop.  We would only be
> > adding two more iterations to the loop in pci_do_fixups() that tries
> > to match quirks against the current device.  I doubt that would be a
> > measurable slowdown.
> 
> I don't know how significant it is, but I remember people complaining
> about adding new PCI quirks because it takes too long for them to run
> them all. That was in the discussion about the quirk disabling ATS on
> AMD Stoney systems.
> 
> So it probably depends on how many PCI devices are in the system whether
> it causes any measureable slowdown.

I found this [1] from Paul Menzel, which was a slowdown caused by
quirk_usb_early_handoff().  I think the real problem is individual
quirks that take a long time.

The PCI_FIXUP_IOMMU things we're talking about should be fast, and of
course, they're only run for matching devices anyway.  So I'd rather
keep them as PCI_FIXUP_FINAL than add a whole new phase.

Bjorn

[1] https://lore.kernel.org/linux-pci/b1533fd5-1fae-7256-9597-36d3d5de9d2a@molgen.mpg.de/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
