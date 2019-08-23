Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A40DA9AA87
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 10:38:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yPRDjhnSNU8QV/dB3DH1rxdBh2GjEPcOWAdjCJYvhSE=; b=qHztEP6clkddA5
	XaqwzOoYR2lX1692Pzb5ebDSSPVTchBUjWYOdDH3uvhCOPpmOYbC0SdNImvHiIf0skeU2pSPOxSRc
	gKAh5MMBM3eOaiR+U6eKmqLLIjn+5NU3acOgdn9MKr+3JliaCve0chmKefjCHpIY+wK9oTdWbNjEO
	0FUpqGL6HCI25Bh0pKIH+LpW5fhhjv0lXASl3/NpUAcWwutCP1Zn9HnTTC1a6c3ilDHZ2r9xbcNXa
	rDb3BOHRhACRp3qB4mVDw3huDT0gV+kuW02JmTIgakNHVfTwFwJoNR776I9Smz/wq7rAwy8V+g4pU
	Omzm5Czn5Yps7LaqaXUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i155H-0006qZ-NV; Fri, 23 Aug 2019 08:38:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i154Q-0006F7-AC
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 08:37:21 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 599C922CEC;
 Fri, 23 Aug 2019 08:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566549437;
 bh=niV7neuzYojJdHn0ExBeb264ApqQ6IcTCNkFCeK4d+o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lo91WDqMkrMHkBSpDl1bj3ZG5vGkzmlVPsKy2PaOuAhB8vy9ujjPpFGPC4MW4h1cU
 FqIft2qhTQzKucvJeqF4/BmwPJnFE6ZTbwpi6UEqDCdTaOKZIBGoqdX2OJd+jeeDPo
 mCmk/FFGHESA6BxwLZTCKFbsPfstWev8YNa/jqlg=
Date: Fri, 23 Aug 2019 09:37:13 +0100
From: Will Deacon <will@kernel.org>
To: "Leizhen (ThunderTown)" <thunder.leizhen@huawei.com>
Subject: Re: [PATCH v3 0/2] improve the concurrency of
 arm_smmu_atc_inv_domain()
Message-ID: <20190823083712.ggzmw3rcodwyhmlf@willie-the-truck>
References: <20190823024551.24448-1-thunder.leizhen@huawei.com>
 <20190823075026.pwlx33e4crh3m6tn@willie-the-truck>
 <7e28e1ce-2cc3-3c7f-45c7-e7de334c6976@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7e28e1ce-2cc3-3c7f-45c7-e7de334c6976@huawei.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_013718_439063_D0FBC729 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Joerg Roedel <joro@8bytes.org>, John Garry <john.garry@huawei.com>,
 iommu <iommu@lists.linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 04:06:52PM +0800, Leizhen (ThunderTown) wrote:
> 
> 
> On 2019/8/23 15:50, Will Deacon wrote:
> > On Fri, Aug 23, 2019 at 10:45:49AM +0800, Zhen Lei wrote:
> >> v2 --> v3:
> >> As Will Deacon's suggestion, I changed the lock type of
> >> arm_smmu_domain.devices_lock from spinlock_t to rwlock_t, and I saw that the
> >> performance is all right. And further use nr_ats_masters to quickly check have
> >> no obvious effect, so I drop it.
> > 
> > :/
> > 
> > I already sent two versions of a series fixing this without any locking at
> > all on the ->unmap() path, and you were on cc. I've also queued that stuff
> > up.
> > 
> > Did you not receive my patches?
> Sorry, my message filter setting is a bit wrong, must contains
> "linux-kernel@vger.kernel.org", I have corrected it.

Ha, sounds like the opposite of my email filter ;)

> > v1: https://lists.linuxfoundation.org/pipermail/iommu/2019-August/038306.html
> > v2: https://lists.linuxfoundation.org/pipermail/iommu/2019-August/038374.html
> OK, I will test it when it's my turn to use the board.

Thanks, although I plan to send it to Joerg today so any changes will need
to go on top. Does your testing involve ATS, or just non-ATS devices? I've
tested the latter locally, although I haven't looked at the performance
since most of the patches are trying to fix the enable/disable ordering.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
