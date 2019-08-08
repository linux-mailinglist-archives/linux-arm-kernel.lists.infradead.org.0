Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4980861A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 14:29:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LOecogmB979+Ja16Unjp9Tm4lUZpyi7R2KmUN35qCtc=; b=W4pOL1MoMoAoC2
	parUu2vzHX6o96jFQHMw55H3NYlAoFOPvzOSiOT7azZRveOFoZhaCh35aAu3GWxuavQGO5+g7PZZQ
	bc8SA44ylg7AiTYDGJy7c2CUUlbeiuSCTMk1pN068iYZH5QchUkKt86v3p3y/rshGCBRusP20amv2
	hyaCH8BunjBpKjnbPlxs555LcqpHdHCqmeyHN2/T5++Td0Fr9j6L6VTFobFhCiFwKLthlYE1GBl/o
	8FML1/m2GgDUOPgxeaerq39QAhPr3opEIcGw8iwjuAMrosbrBz6txyADEHe4TCLH9NQIz4afKdZtg
	8lFovuqVm3kODeZ/N7hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvhXk-00023B-MZ; Thu, 08 Aug 2019 12:29:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvhXY-00022m-Od
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 12:29:09 +0000
Received: from localhost (unknown [122.178.245.201])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B339C204EC;
 Thu,  8 Aug 2019 12:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565267348;
 bh=6jzux0+2vvckRewHmMdUXtSlDgM4FNrOY4r8OF3oAc4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rQ2IIjOdyPZYz8p/n9UOdJfzjP5Ie4l9sLrtdN1AbNjOBzXz6Uv6nztj9w/rA+zxe
 CZ5C1s2KkedVvmuGExd9Yj8FSPfYWe+w9BYnxy3qUB3lWuXMqnDMmTyWp6PeqwJyQk
 CtOVSp1HQ0KTpZlA6coKRkcdIXsC9slMOaPApKQI=
Date: Thu, 8 Aug 2019 17:57:56 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sinan Kaya <okaya@kernel.org>
Subject: Re: [PATCH v2] dma: qcom: hidma_mgmt: Add of_node_put() before goto
Message-ID: <20190808122756.GS12733@vkoul-mobl.Dlink>
References: <20190724081609.9724-1-nishkadg.linux@gmail.com>
 <eab2555a-07ad-9e48-14d4-e34417d52fbb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <eab2555a-07ad-9e48-14d4-e34417d52fbb@kernel.org>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_052908_825126_CB0F485B 
X-CRM114-Status: GOOD (  13.70  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-msm@vger.kernel.org, agross@kernel.org,
 Nishka Dasgupta <nishkadg.linux@gmail.com>, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24-07-19, 13:25, Sinan Kaya wrote:
> On 7/24/2019 4:16 AM, Nishka Dasgupta wrote:
> > Each iteration of for_each_available_child_of_node puts the previous
> > node, but in the case of a goto from the middle of the loop, there is
> > no put, thus causing a memory leak. 
> > Hence add an of_node_put under the label that the gotos point to.
> > In order to avoid decrementing an already-decremented refcount, copy the
> > original contents of the label (including the return statement) to just
> > above the label, so that the code under the label is executed only when
> > a goto exit from the loop occurs.
> > Additionally, remove an unnecessary get/put pair from the loop, as the
> > loop itself already keeps track of refcount.
> > Issue found with Coccinelle.
> > 
> > Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> 
> nit: please post v3 with dmaengine:qcom:hidma_mgmt:....
> 
> Vinod doesn't like commit subjectss in this directory to have dma name
> on it. You can keep my acked-by.

That's right but I am okay to hand edit while applying for drive by
contributors :) so applied with you ack

> Acked-by: Sinan Kaya <okaya@kernel.org>
> 

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
