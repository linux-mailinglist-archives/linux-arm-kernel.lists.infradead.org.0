Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA2BC1FE6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 13:22:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a2Yd3usEjHkm5wlYxh2rr8Ds4Cd1R00dZfzkSu6X6Uo=; b=bMCaoKt8XRyvHx
	s0R7oZWAceF5lbuAbNXv4rGBOZD82td1PoKX6easSbp0UGj2jqaVf8C7QDJ1eZbJ47IdlENiv92Pf
	Cq+wcq8OW9Z3PB0AA/mvlJ8woe2jcCiyxi0g52WfxKQGrHIwm/mCB+9FG78uT+iwoq+67rpzhFemL
	jy1FW9asMroZgFdBoosTT//7ck1VljwvHwasMPz576dcaIGYkPsm4OdEIk+ZYdvjEt0AMz/OtuS1J
	mOiJCTy2mnWKlwW5wBB6nCShWRRmnO5rtlMWe8/4MNHeYcM3W9ysRC9xT/DDhfqVdDTaf7zTPRsPf
	VknDSLxQgwP1S97A+yzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEtkk-00083z-OY; Mon, 30 Sep 2019 11:22:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEtkY-00083g-0O
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 11:21:55 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C846B206BB;
 Mon, 30 Sep 2019 11:21:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569842512;
 bh=XK2t7THQT0Mdaq4LrhC1eZVsJhx+lzPpETJg3foBo1I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TEydkTneGLf8RUEFEfjmnOyBlP3MImuHanTAhl+tQwOEn501QUJzvi49Sc0W45HZr
 4d4iMCQEalm8gNu+VeNVriBG9rIQD4pgRbHY2hRD4Jyhrw9SCBQ0J4iSU6wJACj5+s
 CVLbEI8jJQXyB/PuqaaidGhARXSNVVnr72jEzaL8=
Date: Mon, 30 Sep 2019 12:21:48 +0100
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 0/4] iommu/arm-smmu: Remove arm_smmu_flush_ops
Message-ID: <20190930112148.5ismf35ph22hl75z@willie-the-truck>
References: <cover.1568820087.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1568820087.git.robin.murphy@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_042154_072571_EDAD75DD 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: iommu@lists.linux-foundation.org, joro@8bytes.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 05:17:47PM +0100, Robin Murphy wrote:
> Off the back of Will's iommu_flush_ops work, here's an initial followup
> to replace the temporary solution in arm-smmu with a full conversion.
> Removing teh extra layer of indirection should generally make things a
> good bit more efficient, and rather more readable to boot.

Thanks, I'll queue this for 5.5.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
