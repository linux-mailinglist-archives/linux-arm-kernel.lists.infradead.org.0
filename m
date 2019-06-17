Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6898C48A3E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 19:35:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cRBTLjgabC41M8fWnC/njNPQCnaPJT5eFB5KXWhV3Sg=; b=LkpJW1bubm/m5B
	Ht0RegfJxHjGMXkHPvtuDcOCwl98IBHppdhgOKptNuEL78+Ec9ihzyGPekWNhmJOJucxarvUIvYCQ
	WOtSTZ2N0tw6IuJ4le6384E4Y4nOI5NaYk3GOtYi4Esj12lvAe5fEkJ4ZB91AlbIeoMbRtTl3wdun
	GoUImb+ti4/nbVQSbfwCMH0JPtsxp0izzHBKuEPzQCXqVqTmvPq3CMWrZc+0TTNKlry6EKXCyTEUW
	E30/ap/0LZFaG3sqUXI8KPMoYWfeG+FYNEoTrfUIWf9yetg1+FL21Dgd8Q5D5x+vsi9TDvDLnjge2
	RasLyFqXFOhEqMMJBoIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcvXF-0001oe-Fh; Mon, 17 Jun 2019 17:35:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcvWy-0001o5-7N
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 17:34:57 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8EBB3208C0;
 Mon, 17 Jun 2019 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560792895;
 bh=symDztE4rIf+yOC4zerykBnJwFfFwn0B0J9cXzcdILQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Er8LhWad0kevwkXsZpw2EEET+RGTimdxdJQgp2o70QLJbTadmVEKBOlsb0iza0otu
 twwbMdZVMGf8J+okxBSfvXdqavW4vmOtNB3gcjoDaPtNMqH5c4H5MwubkacRCsIWjs
 qnllQNIugWRZiacwBWvaGE4UZP/x5J6d6efd2/cE=
Date: Mon, 17 Jun 2019 18:34:50 +0100
From: Will Deacon <will@kernel.org>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Subject: Re: [PATCH v2] MAINTAINERS: Update my email address
Message-ID: <20190617173449.4vhgdvllwxo24ovj@willie-the-truck>
References: <1560769335-62944-1-git-send-email-guohanjun@huawei.com>
 <CAJZ5v0jyi-ZkcDU=+GJm5LxMGX36ce=a_j169A_7Ph2AG8_C+w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJZ5v0jyi-ZkcDU=+GJm5LxMGX36ce=a_j169A_7Ph2AG8_C+w@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_103456_280943_0A730CB3 
X-CRM114-Status: GOOD (  10.40  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Hanjun Guo <guohanjun@huawei.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 01:11:40PM +0200, Rafael J. Wysocki wrote:
> On Mon, Jun 17, 2019 at 1:04 PM Hanjun Guo <guohanjun@huawei.com> wrote:
> >
> > The @linaro.org address is not working and bonucing, so update the
> > references.
> >
> > Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
> 
> How do you want this to go it, via ARM or ACPI?

I've already got a MAINTAINERS update queued to send out later this week, so
I can easily pick this up if you're ok with it?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
