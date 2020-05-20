Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2024C1DB45A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 14:59:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hwod4xhuAMmSRRmnHX/S+U9aQmgZYDX4gR6bKxH/06M=; b=m2N8L1k4tLe7it
	oTB8byMnDiz5NfmqQo3mUVGNarwPxOHDazcfBE9gJilmX5oFYqrBVFs5zbr02iHRCCnnT8fmDS4ru
	IQtTuBtVQmRdSYW0ax9D4xcM9PRczHg96afcWPHveF+Cnh4pridklnXqP+N/P6E/Z8oos3e7uA6zm
	FhYn1soE/wwFozKOH/JRYWDr+MGYVfk/fCYSJPlDxipWv7hre6BQRXCpqVueezf+fTMLR4QrIa5hr
	QGnul+cbm5RFyHuqzXkgcU2OV2OnzSFdoYgb/uk/zdiFyN+MPFwP7Jv1SZXR1oMGwW3ZcS9gmjrfI
	W3wshLqpTiYLa7otNkyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbOJo-0007ao-KB; Wed, 20 May 2020 12:59:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbOJd-0007Zi-Ug
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 12:59:23 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 428642070A;
 Wed, 20 May 2020 12:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589979561;
 bh=UY6bhyA1qIT24OzeirfJ2m2V4bIa7vSuhBxipVcxHSg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PQv/vo1vuOh5BN49oSfeBhlvcbtDT/i2W10QY5VDIAdRGhoXfpN3/Z/QUeozn5SD+
 rzEi1mftpME8HSrsWYMdBHtO+ywFV0pA1oQallMrYtkq4UKSLTdC9feue1eJt4ywVs
 qENI/Bjv+xJ6dqkzZxsfk4v9OQqOwLRmWnay1Niw=
Date: Wed, 20 May 2020 13:59:17 +0100
From: Will Deacon <will@kernel.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH] iomm/arm-smmu: Add stall implementation hook
Message-ID: <20200520125916.GE25815@willie-the-truck>
References: <b491e02ad790a437115fdeab6b21bc48@codeaurora.org>
 <1ced023b-157c-21a0-ac75-1adef7f029f0@arm.com>
 <20200507125357.GA31783@willie-the-truck>
 <CAF6AEGuLU+_qP8HNO1s9PTPHqJnCMHzehmcT8NiJhiAwrfSH6w@mail.gmail.com>
 <CAF6AEGvuHKObTR97XdSXjmjKB+qjQ8N1_wxM=ZU8bEkF=cXp-A@mail.gmail.com>
 <20200511173008.GA24282@jcrouse1-lnx.qualcomm.com>
 <20200518154522.GN32394@willie-the-truck>
 <5a0ad639e272026c8be57393937cda22@codeaurora.org>
 <CAF6AEGuzBtj+srindmOvhaom5BdS2adLaOF=v_MtguMja14V2w@mail.gmail.com>
 <a801e79a0a75092c28a6646ae7fa5e36@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a801e79a0a75092c28a6646ae7fa5e36@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_055922_037643_A5F80718 
X-CRM114-Status: GOOD (  24.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Joerg Roedel <joro@8bytes.org>, "list@263.net:IOMMU DRIVERS ,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Clark <robdclark@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 03:02:45PM +0530, Sai Prakash Ranjan wrote:
> On 2020-05-19 20:41, Rob Clark wrote:
> > On Tue, May 19, 2020 at 2:26 AM Sai Prakash Ranjan
> > <saiprakash.ranjan@codeaurora.org> wrote:
> > > On 2020-05-18 21:15, Will Deacon wrote:
> > > > So this sounds like an erratum to me, and I'm happy to set HUPCF if we
> > > > detect the broken implementation. However, it will need an entry in
> > > > Documentation/arm64/silicon-errata.rst and a decent comment in the
> > > > driver
> > > > to explain what we're doing and why.
> > > >
> > > 
> > > AFAIK there is no erratum documented internally for this behaviour and
> > > this
> > > exists from MSM8996 SoC time and errata usually don't survive this
> > > long
> > > across generation of SoCs and there is no point for us in disguising
> > > it.
> > 
> > possibly longer, qcom_iommu sets CFCFG..
> > 
> 
> Oh right, I was still in college when those SoCs were released ;)
> 
> > > Is it OK if we clearly mention it as the "design limitation" or some
> > > other
> > > term which we can agree upon along with the description which Rob and
> > > Jordan
> > > provided for setting HUPCF in the driver when we add the set_hupcf
> > > callback?
> > 
> > I'm not too picky on what we call it, but afaict it has been this way
> > since the beginning of time, rather than specific to a certain SoC or
> > generation of SoCs.  So it doesn't seem like the hw designers consider
> > it a bug.
> > 
> > (I'm not sure what the expected behavior is.. nor if any other SMMU
> > implementation encounters this sort of situation..)
> 
> Yes, that was my point as well that its probably not counted as a bug
> by the hw designers. So I'm going to post setting HUPCF on QCOM
> implementation with clear comments based on yours and Jordan's description
> of this problem, but I wanted to have a way to set this only for GPU context
> bank and not GMU as Jordan mentioned earlier that GMU doesnt need HUPCF set.
> I was checking as to how do we map cb to device, if it was possible then we
> can have
> a compatibility thing like we did for identity mapping. Any ideas Robin?

Right, see my reply over at:

https://lore.kernel.org/r/20200520125700.GD25815@willie-the-truck

Hopefully something like that can be made to work.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
