Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D8B1E1D94
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 10:46:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R+2VSwJf+d9dpihXqhgScTuWMxds4Y4EkJ5f7QyKTe8=; b=IuI2cyziUiEarS
	U4NY7ZQftvaB7Cvxx4HI376TObL1sYqMVQyzGtny46W3IPz5S0gTLVvL43qPSSktqpQn5BUhZQg9v
	Y55GanFqzLmf7KG5Uj0tCuauBWfFBRbixNE14lpkSAxFSAkrt5fsAhtEVHmSjTfjIJipymwT8X4BL
	/09UWrXb2wWJV902Sx7v0QhAoCI1QouMskoxLJ6KxJL32/mHcgaD05cAQuJpcYs1dd3tdt0h9kGji
	8dyact5X3gqEsVsfg5K67liKmhBKAbdmiWHPfPq7Oj60w9Cpy7+QTf1puIz7xzDbmQEC0+ZEwMPxX
	U8X8gTV2Sq5dkYQnZhsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdVDz-0003ju-FL; Tue, 26 May 2020 08:46:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdVDs-0003j0-53
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 08:46:09 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C87AB2075F;
 Tue, 26 May 2020 08:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590482764;
 bh=ocWz0pfCY8jX9J9R95Nc+Lu6TfrWAdd6R8bOnCWkpSE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rKgC2R++UL+AYxhkUon0jueI1MvMybxcEZw8e5TjMv1//vR3TkK3kKOz6EFUjynx4
 +w++ZukHUunZDnmSVHdPBgzTmVpOzGTDM8NIb6yF/DDXpolhj6bYITtk4yoB73T+67
 7iFnAtSWq4OvisHPnnfwfTIHZPcMy9Eww7prRotE=
Date: Tue, 26 May 2020 09:46:00 +0100
From: Will Deacon <will@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v2] perf: arm_dsu: Support DSU ACPI devices.
Message-ID: <20200526084559.GA24773@willie-the-truck>
References: <1589229160-18558-1-git-send-email-tuanphan@os.amperecomputing.com>
 <20200518172132.GA2601@willie-the-truck>
 <5adeae2c-86be-6ee9-970b-aa891582c562@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5adeae2c-86be-6ee9-970b-aa891582c562@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_014608_212858_88BB4B02 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, patches@amperecomputing.com,
 tuanphan@os.amperecomputing.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 11:45:56AM +0100, Suzuki K Poulose wrote:
> Will,
> 
> Thanks for the Cc.
> 
> On 05/18/2020 06:21 PM, Will Deacon wrote:
> > On Mon, May 11, 2020 at 01:32:40PM -0700, Tuan Phan wrote:
> > > Add ACPI node probing device support. Each DSU ACPI node
> > > defines a "cpus" package with a per cpu MPIDR element.
> 
> I think there is a bit of confusion around the affinity listing.
> I am getting this clarified with the architects.

Thanks, Suzuki. I'll hold off until that's resolved, then.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
