Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D015D04FC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 03:03:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9FystLW4liuPmj1Pts2kvhiQoj5NWWXtG6PTaIXFc6M=; b=h6+SK39SpWsTXP
	3Vrk4IZHkvPNc6ceH6qo4lLlfnrwpROwbqJuLOVxWapTAdVzO8PZEoRgp8MKgLaLMJJny+WZTE2GT
	uheZP4s1ncV6apt2uNWxge9LUpFRbFq5vl9ZdI1+gGPEUwqkj0MyhtJfgHxUy6EkNAQzumm3peQP0
	CZYktyO2Pt/JeamfuBteXDrX3944No9xdLYGAQQTJEMI4SEvgJJQxIOcy4cZFNGSMGVh88MjmVPFs
	PLxHs+emX+VLazCt+upcUtqj5Ugvb+cXSvtCqXybdTIdfb5vNzDjFhxQKl1F7D5AfNG4Ys2AXr8m7
	ffuAhiYsTHmN1CSEqK/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI0Nz-00022w-6x; Wed, 09 Oct 2019 01:03:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI0Ns-00021S-Gc
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 01:03:22 +0000
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
 [209.85.160.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7F68D206C2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  9 Oct 2019 01:03:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570582995;
 bh=VLCuRsT/MfVMhiZm4dpxA6L+PvxonwyYTic44/Y8bTk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=VVdn5FnpZ2LW7gOeC0iXD/4eMjkljyV0uaiMQuEzBESoDaT45DoQVIEfx+T3qvbgZ
 Nx/M4hs0e17oXxWj4zabjE0GgFI2QwABFO8uYmkjbk4FAY/UMRubyrKsZoCf4YrPsH
 sU4OR5NoROArKqTPJQE3e8b9NyiiP/Y0G54k6/7k=
Received: by mail-qt1-f180.google.com with SMTP id m15so1034694qtq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 18:03:15 -0700 (PDT)
X-Gm-Message-State: APjAAAX+VjKvLhiZNQOT2gWRRaY9+P4YyxBJxMims8LaPNSW9lYFnoX5
 Ch8mccrq3n9MIfSbgpGdD1CfH8Jym/pP7HB3fQ==
X-Google-Smtp-Source: APXvYqwRe4KvCR0oZcnhRteOV94HuZo93EGdhT82sy+BCEmzxu67B5XFk6sBiEIoEiq0xHLNZS9g8EJr+Zb0qOVzX0k=
X-Received: by 2002:ac8:19f4:: with SMTP id s49mr986458qtk.136.1570582994663; 
 Tue, 08 Oct 2019 18:03:14 -0700 (PDT)
MIME-Version: 1.0
References: <20191008195239.12852-1-robh@kernel.org>
 <4f6b26f8779a4fd98712b966bff3491dc31e26c2.camel@suse.de>
In-Reply-To: <4f6b26f8779a4fd98712b966bff3491dc31e26c2.camel@suse.de>
From: Rob Herring <robh@kernel.org>
Date: Tue, 8 Oct 2019 20:03:02 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+RjC0b1ZXzgmMdn5Gd1=3zkN62Jdq_QKeZ8-X4pCiDPw@mail.gmail.com>
Message-ID: <CAL_Jsq+RjC0b1ZXzgmMdn5Gd1=3zkN62Jdq_QKeZ8-X4pCiDPw@mail.gmail.com>
Subject: Re: [PATCH v2] of: Make of_dma_get_range() work on bus nodes
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_180320_591328_6DDC97DC 
X-CRM114-Status: GOOD (  22.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Robin Murphy <robin.murphy@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Marek Vasut <marek.vasut@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Stefan Wahren <wahrenst@gmx.net>, Simon Horman <horms+renesas@verge.net.au>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 8, 2019 at 3:52 PM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> Hi Rob/Robin,
>
> On Tue, 2019-10-08 at 14:52 -0500, Rob Herring wrote:
> > From: Robin Murphy <robin.murphy@arm.com>
> >
> > Since the "dma-ranges" property is only valid for a node representing a
> > bus, of_dma_get_range() currently assumes the node passed in is a leaf
> > representing a device, and starts the walk from its parent. In cases
> > like PCI host controllers on typical FDT systems, however, where the PCI
> > endpoints are probed dynamically the initial leaf node represents the
> > 'bus' itself, and this logic means we fail to consider any "dma-ranges"
> > describing the host bridge itself. Rework the logic such that
> > of_dma_get_range() also works correctly starting from a bus node
> > containing "dma-ranges".
> >
> > While this does mean "dma-ranges" could incorrectly be in a device leaf
> > node, there isn't really any way in this function to ensure that a leaf
> > node is or isn't a bus node.
>
> Sorry, I'm not totally sure if this is what you're pointing out with the last
> sentence. But, what about the case of a bus configuring a device which also
> happens to be a memory mapped bus (say a PCI platform device). It'll get it's
> dma config based on its own dma-ranges which is not what we want.

What I was trying to say is we just can't tell if we should be looking
in the current node or the parent. 'dma-ranges' in a leaf node can be
correct or incorrect.

Your example is a bit different. I'm not sure that case is valid or
can ever work if it is. It's certainly valid that a PCI bridge's
parent has dma-ranges and now we'll actually handle any translation.
The bridge itself is not a DMA-capable device, but just passing thru
DMA. Do we ever need to know the parent's dma-ranges in that case? Or
to put it another way, is looking at anything other than leaf
dma-ranges useful?

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
