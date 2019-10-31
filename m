Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43478EB0E0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 14:10:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pmf5IbAgfPElAzAJ5mOwJ6YUyQx5Uurn87IHhpGWlh4=; b=YrRJH8i346z/YD
	azAZ61fhP+2nIalSkBaCokyNIq7tEd8SpzTtemHuEE2DuIoHrKOP0ZN7+Q+obo3y/Ep1HzFazNhzn
	rns6hxDsoujKgihhD74an/RH8nXnivMg4waij6XotwmbAJn6TIwUMrkfMCQefNRPsh8rPQPjwC6CM
	aKYeiKwxWynScR9ASU7h0qHQozutJbAEyOehpq7raCeCa+nuVqkjstwPKT0xmZa3vtNABTYJTXn15
	XgCzf9ORXBZUvZHAZVoVrebf8FCTEM0J2PMXTsyfR+6wqSkI3EyQIsxVAjqkohjE7x8/eUn+4lG/Y
	fwsQpkgTesFRXL95Hm6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQADL-0006nZ-W8; Thu, 31 Oct 2019 13:10:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQAD2-0006mg-Su
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 13:09:54 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 99BEE2080F;
 Thu, 31 Oct 2019 13:09:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572527392;
 bh=h4ufg1xgwNnLLqvUR9beo19dIUW2RxlYQwzo0mxMQsk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Hy/fk/lWziR2ZXtVj9ogRGxKxDKwDjQXstqsE+Df4Lceil0PADEsV+hmhkoHENGJR
 OI1GcfKOhrlgi1cbgGGltbi9wftCcilllz0fNuJxThz4TM8GLrOvXqgSOMW1tVbhL/
 E0ojuucWLbpRnDEgPK2GpbMrg6lGKgHBjR7MR+O8=
Date: Thu, 31 Oct 2019 13:09:48 +0000
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v4 0/4] E0PD support
Message-ID: <20191031130948.GA27196@willie-the-truck>
References: <20191024214207.20588-1-broonie@kernel.org>
 <20191031112610.GA26059@willie-the-truck>
 <0152ac71-1295-a302-7810-f9767f7bbd78@huawei.com>
 <20191031124217.GE26059@willie-the-truck>
 <20191031130018.GQ4568@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031130018.GQ4568@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_060952_955973_1FE5B204 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 John Garry <john.garry@huawei.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 02:00:18PM +0100, Mark Brown wrote:
> On Thu, Oct 31, 2019 at 12:42:18PM +0000, Will Deacon wrote:
> > On Thu, Oct 31, 2019 at 12:13:35PM +0000, John Garry wrote:
> 
> > > I booted our D05 and D06 boards with that branch and did not experience the
> > > pauses which we reported some time ago.
> 
> > Hmm. So I annotated the code locally and I see that we do rewrite swapper
> > in this case, so I'm surprised you're not seeing the performance issue
> > you ran into with this before. Have you got KASLR enabled and are you
> > passing a non-zero seed?
> 
> Gah, sorry - I tested change which sets arm64_use_ng_mappings
> early, should be sitting on my machine at home, in mm/init.c.
> That will mean that there's only a slowdown in cases where we
> have a mix of E0PD and non-E0PD CPUs with the boot CPU having
> E0PD, hopefully no such systems have very large amounts of
> memory.
> 
> I'll post it Monday at the latest.

Thanks, Mark.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
