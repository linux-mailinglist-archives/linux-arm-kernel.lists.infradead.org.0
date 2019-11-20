Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4FD5103805
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 11:55:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ATfBGbk5W7RXIQhhp7+l+ORvBkFimKanWYz5MEa79ZY=; b=WLfMbNQEzaC23+
	+uYBwF0YhPuDMyFokQcSlQzRdz6r94SqbXPaS/SlwylNPh0ym2kOhy4YBcFTihZIwmoalw/pZ3JkK
	MZTkhZZKGj3ffIXQHWi07VYRL1kKlwGZLdk2lHNlghi1DuiasJIAFKnJbtggAp32OhBV7Q6IijTEy
	2LsuKNlWuuxsVAzspEF9tvU6zmoBf8w3pLIbymfk7HSQpeTW6Jg+7XuJrwNQh9qLGLuPGDhUcfcCW
	es7TlvjutnAd6GP6oCthZIO249lZbjjvvOJfb1vnbkq0vdvMm/luNgP6drtoDOfIBxw+6bP3/oWGi
	Rfuyl/scsN2rutz9nMng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXNe3-0000st-SK; Wed, 20 Nov 2019 10:55:35 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXNdt-0000sE-Q6
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 10:55:27 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 9F59C68AFE; Wed, 20 Nov 2019 11:55:21 +0100 (CET)
Date: Wed, 20 Nov 2019 11:55:21 +0100
From: Christoph Hellwig <hch@lst.de>
To: "kernelci.org bot" <bot@kernelci.org>
Subject: Re: next/master bisection: boot on peach-pi
Message-ID: <20191120105521.GA3958@lst.de>
References: <5dd42b85.1c69fb81.36825.244a@mx.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5dd42b85.1c69fb81.36825.244a@mx.google.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_025525_998332_3B627EE3 
X-CRM114-Status: UNSURE (   6.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linux-mips@vger.kernel.org, Paul Mackerras <paulus@samba.org>,
 mgalka@collabora.com, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Paul Burton <paulburton@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Russell King <linux@armlinux.org.uk>, James Hogan <jhogan@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, broonie@kernel.org,
 matthew.hart@linaro.org, linux-arm-kernel@lists.infradead.org,
 tomeu.vizoso@collabora.com, guillaume.tucker@collabora.com,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 iommu@lists.linux-foundation.org, khilman@baylibre.com,
 enric.balletbo@collabora.com, linuxppc-dev@lists.ozlabs.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks.

Marek Szyprowski already reported the issue and a fix is in the works.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
