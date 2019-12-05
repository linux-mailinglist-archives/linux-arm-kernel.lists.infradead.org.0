Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C30E511441D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 16:51:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L/Wz0ucNZXqnbkLUpQyTxHJlf8x8F9xhQPCB7KOxXmg=; b=X2wZtF/vH3YECZ
	LXxwVvDsvXOj0ucB/1Nm0NoRTcXOX9KyAK5xeJJxwWGfPASoOhV9VOzZrGj8ZZdHNVNxQkpjoYzAP
	uZrtS+tHTjr/T1I6VDq8Q8gz+8hXCzPQx4wASA5BtcmFApT1Abqq/QWMPFq3QTLz6c0yyaqMDDg+R
	SccQwQetsdkggeKKAMOyuMHdJ5GZ5SmMC/9daJ5eVtgRDzAroAO967S/yMbjHuPByAzZmdLh2GA75
	KEjSAtw5Odp6O2NSWYCcZ5bAc5Zgwe0aHDQ9QUa+EY7Lf1bilhMbVsVC5XKdo2BwVWMbMtDHICeEO
	iug3q4LHOBq5YHROBdTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ictPv-00046F-5I; Thu, 05 Dec 2019 15:51:47 +0000
Received: from a27-185.smtp-out.us-west-2.amazonses.com ([54.240.27.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ictPj-00045Q-Nv
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 15:51:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1575561093;
 h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
 bh=9pymZMREs0aDkOkin38Qg0017bN8aBp0lR9eje0eErE=;
 b=ilHwO3mzJNRYMmKb4BqBpjs+9gHLHKJOH/JDfQjkLTS5hU6rn+dDop8PO7S8L8CX
 IvIDvrE1OWnToL4DuoVTzFheHH/HPg6IXxp8rcf5Q6fgIo3n7/Xi62Dyea3g3nEbLIH
 NS5+VmXNkcuVROqUt7GJc2kJEwddgyt0hL1qlXvQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1575561092;
 h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Feedback-ID;
 bh=9pymZMREs0aDkOkin38Qg0017bN8aBp0lR9eje0eErE=;
 b=aCYiV0xMTtzPQo6BEudn7r9pcmJOgwhavwdXnb9gAkGQVB03wmuA/fnqe/uwy5ez
 lTp24WcDqkaaaLwO6TOgiIrsQZTUSK/kGpiNiJlV6CBTHUnoViytxak1acIorhSFVbt
 kZ0Z7advnCApMIWiMbO0HUldQcNn4cQrCpYQ81Zw=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 17A40C447B1
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
Date: Thu, 5 Dec 2019 15:51:32 +0000
From: Jordan Crouse <jcrouse@codeaurora.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 4/8] iommu/arm-smmu: Add split pagetables for Adreno
 IOMMU implementations
Message-ID: <0101016ed6c25f11-06433521-6681-43bc-978d-a3fcc94f8dbd-000000@us-west-2.amazonses.com>
Mail-Followup-To: Robin Murphy <robin.murphy@arm.com>,
 iommu@lists.linux-foundation.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Joerg Roedel <joro@8bytes.org>
References: <1574465484-7115-1-git-send-email-jcrouse@codeaurora.org>
 <0101016e95752703-78491f46-41db-441c-b0fb-9a760e4d56cb-000000@us-west-2.amazonses.com>
 <2a43c49e-064e-1e95-6726-8d1e761f6749@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2a43c49e-064e-1e95-6726-8d1e761f6749@arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-SES-Outgoing: 2019.12.05-54.240.27.185
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_075135_906439_41C29290 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.185 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 04, 2019 at 04:44:59PM +0000, Robin Murphy wrote:
> On 22/11/2019 11:31 pm, Jordan Crouse wrote:
> >Add implementation specific support to enable split pagetables for
> >SMMU implementations attached to Adreno GPUs on Qualcomm targets.
> >
> >To enable split pagetables the driver will set an attribute on the domain.
> >if conditions are correct, set up the hardware to support equally sized
> >TTBR0 and TTBR1 regions and programs the domain pagetable to TTBR1 to make
> >it available for global buffers while allowing the GPU the chance to
> >switch the TTBR0 at runtime for per-context pagetables.
> >
> >After programming the context, the value of the domain attribute can be
> >queried to see if split pagetables were successfully programmed. The
> >domain geometry will be updated so that the caller can determine the
> >start of the region to generate correct virtual addresses.
> 
> Why is any of this in impl? It all looks like perfectly generic
> architectural TTBR1 setup to me. As long as DOMAIN_ATTR_SPLIT_TABLES is
> explicitly an opt-in for callers, I'm OK with them having to trust that
> SEP_UPSTREAM is good enough. Or, even better, make the value of
> DOMAIN_ATTR_SPLIT_TABLES not a boolean but the actual split point, where the
> default of 0 would logically mean "no split".

(apologies if you get multiple copies of this email, I have tickets in with the
CAF IT folks).

I made it impl specific because my impression from the previous conversations
was that setting up the T0 space but leaving TTBR0 un-programmed was a silly
thing that was unique to the Adreno GPU. I don't mind moving it to the generic
code since that saves us from some silly compatible string games.

I like the idea of DOMAIN_ATTR_SPLIT_TABLES returning the split point but would
we want to allow the user to try to specific a desired split point ahead of
time? It is my impression that we only have a handful of valid SEP values and
I'm not sure what the right response would be if the user specified an incorrect
one.

So far I've not found a use for anything except SEP_UPSTREAM but I have the
extreme luxury of a SMMU with an actual 49 bit IAS.

New patchset coming soon.

Thanks,
Jordan

-- 
The Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
