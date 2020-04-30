Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF711C01B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nUIAlC+8vibxaX5QVihPmVSzkEhHt0uTfAOMUnVFcsU=; b=ph11GfMix/LpR/
	BB7U4xEjo0KR24Q8iXl8LqwHZgvFFyYOF9R4aEVetYoLFmsXdF28bOfGrVIIofxDNotsV64sDJUe7
	/o8rcTf5E9W7F0uS6UdGCXqVZh9inDPU/0rNZ35jzEi63vh/dMaEA+7pmCLAvYbVG+62j3H0btaYD
	j9oDsqkj3P+a6yMrCavFJ3Sn1t5frMikRZL/OBlA+k8XLJgfsbIjZVO4GArm9ZF5K30P8ScGuhyD2
	/OrmBIkhVdMvJkeTJ9/4kNrmoGfjWpc1XXFaWFBerESaYrxZBHGA/BrfbRDWs9wAdubpyZRaqBcDN
	PtTACh+G2OnrGE9rbbrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUBjo-0003Bt-Rh; Thu, 30 Apr 2020 16:08:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUBjd-0003BP-P6
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 16:08:26 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C66052076D;
 Thu, 30 Apr 2020 16:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588262905;
 bh=7bQtmp+LVEtku56Wh7klBkiOxfuNf/1bfIv2rQj7acY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MrnXE3bhXgFieK2gbsCzhRv4a61JYDHxFZCA1augf2biefQLgoLN1GYnICuvLxkts
 YaWrowcmLu7Y/ilLm2IW3stD+73AJk5hXJlWV+VW3oxt+2V7+avxXaxdau7QVTsw7H
 6D4RDB0YMbxqeSMDEiTark35975NFArGwPmaOgzQ=
Date: Thu, 30 Apr 2020 17:08:21 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 1/3] arm64: insn: Don't assume unrecognized HINTs are
 NOPs
Message-ID: <20200430160821.GC25258@willie-the-truck>
References: <20200428172433.48830-1-broonie@kernel.org>
 <20200428172433.48830-2-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428172433.48830-2-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_090825_839014_7B768870 
X-CRM114-Status: GOOD (  10.01  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 06:24:31PM +0100, Mark Brown wrote:
> Currently the kernel assumes that any HINT which it does not explicitly
> recognise is a NOP.  This is not robust as new instructions may be added
> which need special handling, including recent extensions like PAC, and
> in any case software should only be using explicit NOP instructions for
> deliberate NOPs.

Hmm, I'm not sure that using PAC as the justification makes tonnes of sense
here, since you go ahead and whitelist the PAC hints in patch 3!

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
