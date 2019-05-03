Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6585C12CDA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 13:48:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M0yb+G0KhCebk7r+4Alp8P4o1xmO2na9KkLL8JHHKnA=; b=uea5o8cBd0T45r
	fhZUM+QCs21WEsyWZwbVLzhJaIyD9maLB5hWungVJcTmplHy/F20e9/xoQEG35TxduihXIhy75gSy
	AE9Xu0kn4SnjWkXkDBVCNDAdDH7M12LleRZWmjwBvX9IqQnrvRIdbFLkDqDCjFgd5ZSSHOKjqeJ1J
	AAoW39jw2sk+nk+K/t+5tzVVzOTiOoCLdWrPzfk2f2RFb09jZ2jWGi1ACf3IbW4UkcwntiYRcCv2h
	B1+PhEWNBgO9B+5u2F7EukANPG8tRmvW2+IbYfkZLclq7+0fdhX+EKRS3k4L4h23obEkzo+fhX5oQ
	OTrLhlRp9LIxq7npIUFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMWfY-0003IL-M8; Fri, 03 May 2019 11:48:00 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMWfA-0002tB-OE
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 11:47:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 769B6374;
 Fri,  3 May 2019 04:47:35 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 124C23F220; Fri,  3 May 2019 04:47:33 -0700 (PDT)
Date: Fri, 3 May 2019 12:47:31 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: implement generic dma_map_ops for IOMMUs v4
Message-ID: <20190503114731.GH55449@arrakis.emea.arm.com>
References: <20190430105214.24628-1-hch@lst.de> <20190502132208.GA3069@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502132208.GA3069@lst.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_044737_254517_548D5B2F 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Tom Lendacky <thomas.lendacky@amd.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 02, 2019 at 03:22:08PM +0200, Christoph Hellwig wrote:
> can you quickly look over the arm64 parts?  I'd really like to still
> get this series in for this merge window as it would conflict with
> a lot of dma-mapping work for next merge window, and we also have
> the amd and possibly intel iommu conversions to use it waiting.

Done. They look fine to me.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
