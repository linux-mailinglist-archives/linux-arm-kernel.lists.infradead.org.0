Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A208E961
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 12:56:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4CaEzePegb2Ttk/L+Hf3p0zuMUYtWyLFpa0IxdGIyS8=; b=hNZZJgfteGPVdG
	mvXwsJLWJeX0dOMiLDD6P7tAZZkg9+JNXJNgJtVOD4GEn0rM8BK35IeUlkmT8dOSkdvYCJleYJBpA
	0QICQwpUTwXZHIY5C2iF9Xe2F0rYeLlEHrloTLbQEJBsDjB7D3ZvfceJD9z/BXRegmOiAsASCDcNc
	ltDm9GmvI8Ty//XyVuEk7tIEaA/ojUcsHHkyKKABEFvbS8T3/qVRCEyWyVpZnQdfUf8gubfwE3114
	h6AuUKi/6ZefBBt3oH2e9Ru5jEDsCy1MfAx549+esCLbO4xr/EfW1IW0c3L+k59OBcoNiJ/E40IOX
	HfIgQXVyqzw/HhkOCb0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyDQl-0006PZ-PT; Thu, 15 Aug 2019 10:56:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyDQD-0006Cg-EO
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 10:55:59 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 266BA21744;
 Thu, 15 Aug 2019 10:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565866556;
 bh=7cf4u3cY/l0YA9m9qv/SdhxS5YxC0bDqvVYfflUHsl0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OdK2muyFm8nJoIib88QYXlUtuWPQjraO7qRKkgYePLXqu7zRAu8CWQP8blWFK+Vkk
 5Jd+6oSmObvX5FAiL8BV2Ls2FBN4h1pitzYI91Xw+CAkNkvJ5yh/JbARLLgtwxBjyS
 RtFyOm/+pNSIMLnK6LNa+etZmvUQ2z3p+/NdoqvY=
Date: Thu, 15 Aug 2019 11:55:52 +0100
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 00/15] Arm SMMU refactoring
Message-ID: <20190815105551.zqn45le3kd3f3jee@willie-the-truck>
References: <cover.1565369764.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1565369764.git.robin.murphy@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_035557_789844_744C68B2 
X-CRM114-Status: GOOD (  14.32  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: robdclark@gmail.com, joro@8bytes.org, bjorn.andersson@linaro.org,
 iommu@lists.linux-foundation.org, vivek.gautam@codeaurora.org,
 gregory.clement@bootlin.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,

On Fri, Aug 09, 2019 at 06:07:37PM +0100, Robin Murphy wrote:
> This is a big refactoring of arm-smmu in order to help cope with the
> various divergent implementation details currently flying around. So
> far we've been accruing various quirks and errata workarounds within
> the main flow of the driver, but given that it's written to an
> architecture rather than any particular hardware implementation, after
> a point these start to become increasingly invasive and potentially
> conflict with each other.
> 
> These patches clean up the existing quirks handled by the driver to
> lay a foundation on which we can continue to add more in a maintainable
> fashion. The idea is that major vendor customisations can then be kept
> in arm-smmu-<vendor>.c implementation files out of each others' way.
> 
> A branch is available at:
> 
>   git://linux-arm.org/linux-rm  iommu/smmu-impl
> 
> which I'll probably keep tweaking until I'm happy with the names of
> things; I just didn't want to delay this initial posting any lomnger.

Thanks, this all looks pretty decent to me. I've mainly left you a bunch
of nits (hey, it's a refactoring series!) but I did spot one pre-existing
howler that we should address.

When do you think you'll have stopped tweaking this so that I can pick it
up? I'd really like to see it in 5.4 so that others can start working on
top of it.

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
