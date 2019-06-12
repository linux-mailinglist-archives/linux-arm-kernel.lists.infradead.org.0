Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6D6420D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 11:31:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=280pEBsLB+u8vlDorou0COhCm+wu84zPpbyuc7ANVhs=; b=C+TISWVAc+bCi7
	VlRr/v256IgWT97KjCbB3hRISG+8Tu2i6gf5diafVeIKJe7DSlfkCBK2MixGc9/WCDR8hpSBHolAn
	yMQNC+xpNd4nKjOL08ke3xOTz6jOwkWLjiJDH460Kqz3WDfPXcFosLbHNPglvcmIGFw3U6Vqzs2Xw
	qD2U3fXsqTLPod0vTQ/H2UznrwMht9oC+GAB76fH5qKM4GMz0EuJXhUK0I2WfM1+vg9Ck2+27b7yE
	P7Mink3UGt+SovKpWDBiaHp4t5Aq7LW8lREIklSZFFCjTRXShiXcy9X1K5j5YfXnhyNv5GeMIFbVt
	GuqFzoX/vKMwHaP5pVBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hazbD-0002k4-H9; Wed, 12 Jun 2019 09:31:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hazb1-0002jc-Fr
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 09:31:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1EF2628;
 Wed, 12 Jun 2019 02:31:06 -0700 (PDT)
Received: from queper01-lin (queper01-lin.cambridge.arm.com [10.1.195.48])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 35B5D3F246;
 Wed, 12 Jun 2019 02:31:04 -0700 (PDT)
Date: Wed, 12 Jun 2019 10:31:03 +0100
From: Quentin Perret <quentin.perret@arm.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH v5 0/3] Make IPA use PM_EM
Message-ID: <20190612093100.cuigeni3ixjw5ywi@queper01-lin>
References: <20190530092038.12020-1-quentin.perret@arm.com>
 <20190612091351.jet5sew5dnirsapz@queper01-lin>
 <e9b57e71-81eb-2ac8-cd4a-76b57eee63df@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e9b57e71-81eb-2ac8-cd4a-76b57eee63df@linaro.org>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_023107_574534_4157879C 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-pm@vger.kernel.org, viresh.kumar@linaro.org, amit.kachhap@gmail.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, will.deacon@arm.com,
 edubezval@gmail.com, mka@chromium.org, catalin.marinas@arm.com,
 rui.zhang@intel.com, javi.merino@kernel.org, ionela.voinescu@arm.com,
 dietmar.eggemann@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wednesday 12 Jun 2019 at 11:27:31 (+0200), Daniel Lezcano wrote:
> On 12/06/2019 11:13, Quentin Perret wrote:
> > Hi,
> > 
> > On Thursday 30 May 2019 at 10:20:35 (+0100), Quentin Perret wrote:
> >> Changes in v5:
> >> **************
> >>  - Changed patch 02 to guard IPA-specific code in cpu_cooling.c with
> >>    appropriate ifdefery (Daniel)
> >>  - Rebased on 5.2-rc2
> > 
> > Is there anything else I can do on this series ? Should I send a v6 with
> > Viresh's and Daniel's Acked-by ?
> 
> No need to send a V6 if there are no changes in the patches. The
> maintainer will take care of collecting the tags (which is usually
> automatic when using the patchwork tools).

OK that's good to know, thanks !

Quentin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
