Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF1EE873F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 12:36:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ErKrKG40z/F7no2/dedMFHV9jrfIUnZLxkCD+2Ncr4A=; b=SEK2FK4wVX2gSp
	kt7SJo47TRoHXg9LBX4w3ackEYihngGB7Na3qWFEtyh7qxDHJtM/k5PBdFw+tYefe5poeUualadrL
	geQo2Aw4eTl6vYZ9z4Ipi22amr+171/7c2v5soo+zhSEGuVnBdF9G3tlpebJzxmFKyIe2mmEUoUvw
	vmiF5ccaqWzKzXMmel2zArD8w3rw2uPlVvmTbfC7SKQCzwUz3jREF7nDFAqG9TsU36BP01/XwzH8e
	qh6CzL4nCG8Vm3xGBojHvvhyjr2z+8sd1ZH8zJPNx0EwUWbqqpdxgM3Wj8v0J3D6PPKkhoZgvSaxH
	HAc46dG7u1u4hLOsw/7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPPnU-0005z7-3y; Tue, 29 Oct 2019 11:36:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPPnI-0005yf-1l
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 11:36:13 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 777EA20862;
 Tue, 29 Oct 2019 11:36:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572348971;
 bh=tlknb9NnrARnO/8Jo6xu68QaVQIAbSopr0LHFOUwm+k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=geGLqSfEdrnzxSm9FQfIRzAiLbtD2iIt8lyKJ6YUWqb3eNbFWglTqSONgv6jbCViU
 x0FY/02oXRKa8MrrU7G9szdibvAeRlEz73QLwwFPnfKdf6BbU8RjD9LQ7OSKnC/Klv
 qat2wwlVHkM5hSsLE0PUbjqz98Pz8DrGwv5Q8IRU=
Date: Tue, 29 Oct 2019 11:36:07 +0000
From: Will Deacon <will@kernel.org>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [PATCH] arm64: cpufeature: Export Armv8.6 Matrix feature to
 userspace
Message-ID: <20191029113606.GB12103@willie-the-truck>
References: <20191025171056.30641-1-julien.grall@arm.com>
 <20191029111517.GE11590@willie-the-truck>
 <f58cb01f-4543-6041-df2d-7ca7ba887bc9@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f58cb01f-4543-6041-df2d-7ca7ba887bc9@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_043612_115639_1EA851DA 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: catalin.marinas@arm.com, Dave.Martin@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 11:26:41AM +0000, Julien Grall wrote:
> On 29/10/2019 11:15, Will Deacon wrote:
> > On Fri, Oct 25, 2019 at 06:10:56PM +0100, Julien Grall wrote:
> > > This patch provides support for reporting the presence of Armv8.6
> > > Matrix and its optional features to userspace.
> > 
> > Are you sure this is 8.6 and not earlier?
> 
> This was introduced by Armv8.6 see [1] but allowed to be used by Armv8.2 and
> onwards.

That doesn't mean an awful lot though, especially then the features are
referred to in the docs as things like "ARMv8.2-F64MM".

> > > @@ -227,6 +229,12 @@ infrastructure:
> > >        +------------------------------+---------+---------+
> > >        | Name                         |  bits   | visible |
> > >        +------------------------------+---------+---------+
> > > +     | F64MM                        | [56-59] |    y    |
> > > +     +------------------------------+---------+---------+
> > > +     | F32MM                        | [52-55] |    y    |
> > > +     +------------------------------+---------+---------+
> > > +     | I8MM                         | [44-47] |    y    |
> > > +     +------------------------------+---------+---------+
> > 
> > Urgh, we're inconsistent in our bitfields. Some are [lo-hi] whilst others
> > are [hi-lo]. Please can you fix that in a preparatory patch? I prefer
> > [hi-lo] and it matches the arch docs.
> 
> Sure.

Thanks.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
