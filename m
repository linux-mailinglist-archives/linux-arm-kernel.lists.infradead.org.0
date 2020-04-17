Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAAF1AE264
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 18:41:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=irBDPDpFDbxjzPDUYzOUfwWkL6BgHg02j21NC8ORyp0=; b=OXzvicuDKwkPXx
	t859hybI3HhFu5OKGK5EHLTO5v9GE7JdaGz7PR3ZLdiJycMgmBlb+f8XEXzCB21a6WURcXadZY2tQ
	Hiq6qyOsFkv3WUeSDAPGI+8aYJ4PhJGcXg/8LkNhlfg+MsD/hVGtWxf6erR3aSN/fZO496IYgJJus
	0HzOwDrj1rxUkI5YOZqYLiabOQB4tXZxzQoQ7csdcK97DdMfWNpK+tJ6tkaxzko048+Qv+Ly53H//
	FiUhvHzmDoqbq1lf7Wu5SumugJ6mMoU5Rbvjt9EH7A6dX1prFVndpTaYQpfJpedEnt45X16HyQI+3
	w6jAlO9B7iU4CGT5qRdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPU3L-00038S-DB; Fri, 17 Apr 2020 16:41:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPU3D-00037u-GJ
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 16:41:12 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E4A8F22209;
 Fri, 17 Apr 2020 16:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587141670;
 bh=yldu/9O+pI/74eLBcGiM5/HHh/VECo3WDbDrBUprZts=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ulQaf7dBiblH0I77SP4hLxbd6p3rQIH28t4Osgf+X+dP31AGnFZ9mm73KZLWvJyK9
 jqHTCuPS790qnbi9L32WriRrlcbia2O5wnEGA0gaN+SRKdOHiS/bC5Qo+/W+x3c4Ag
 eWI+IFfxfOfiteIBkn3nYhDllHIGc8f0Sd40t2yQ=
Date: Fri, 17 Apr 2020 17:41:04 +0100
From: Will Deacon <will@kernel.org>
To: Andrew Scull <ascull@google.com>
Subject: Re: [RFC PATCH] arm64: unify WORKAROUND_SPECULATIVE_AT_{NVHE,VHE}
Message-ID: <20200417164103.GA12362@willie-the-truck>
References: <20200327143941.195626-1-ascull@google.com>
 <1705907b-234c-6f56-1360-f598c8047d1d@arm.com>
 <20200403125726.GA33049@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403125726.GA33049@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_094111_559331_541BD82B 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "qwandor@google.com" <qwandor@google.com>,
 "qperret@google.com" <qperret@google.com>, Marc Zyngier <maz@kernel.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Steven Price <steven.price@arm.com>,
 "wedsonaf@google.com" <wedsonaf@google.com>,
 "tabba@google.com" <tabba@google.com>, James Morse <James.Morse@arm.com>,
 "dbrazdil@google.com" <dbrazdil@google.com>,
 "kernel-team@android.com" <kernel-team@android.com>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 03, 2020 at 01:57:26PM +0100, Andrew Scull wrote:
> On Fri, Mar 27, 2020 at 02:59:47PM +0000, Steven Price wrote:
> > I proposed something similar a while ago[1], but Marc was concerned about
> > the microarch detail[2] and hence I split the workaround into VHE/non-VHE.
> > 
> > That said I'm not saying this is necessarily wrong, just that we'd need some
> > more information on whether the non-VHE workaround is suitable for the CPUs
> > we're currently forcing VHE on.
> 
> We noticed that both the nVHE and VHE workarounds share the same
> assumption that the EPDx bits are not being cached in the TLB.
> 
> `__tlb_switch_to_guest_vhe` and `__tlb_switch_to_guest_nvhe` are both
> setting EPDx as part of the workaround. However, neither handles the
> possibility of a speculative AT being able to make use of a cached EPD=0
> value in the TLB in order to allocate bad TLB entries.
> 
> If this is correct, the microarch concern appears to have been solved
> already. Otherwise, or if we are unsure, we should go ahead and add the
> TLB flushes to keep this safe.

I think Andrew's right here. Can we go ahead with the original approach of
combining the workarounds, or is there something we've missed?

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
