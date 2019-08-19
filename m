Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C68DC922C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 13:53:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VcIO21pyG7JLi8URwqA8Qfz4SXEubIn0AIHk2znTgZQ=; b=GEfnAE/89wXZR6
	4/6v9h7w1PrnnIbtXXXgFncqhzgSrDDqDUFU5B/Q4E1xGTEYOflG8EjiEkD+Y1kn9agPMjRZyN2BZ
	1Hb5E+vsdGussBa7Xj9NlPjUu8MejeazCiJxFZh/peRZFJbfVmADVfTuqtQ7EFOE9NJgzkD7E5tEH
	KmItf2tMhu9yqTUuN328Zmx5IxfxWMMnH9ZJR7xe18RubNSvZruhA5qGvam5GTw3I1pjU7F52qtnl
	up2w1wQOjNFWlwK1ANwt41Y0+ABmQlk0REhF9CEP6kckdbEHrWCTVj2VR5TO+3lXVTPVVqR5V8ep0
	BoFjNeN8N21wVI38xg7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzgEB-0003KO-Bv; Mon, 19 Aug 2019 11:53:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzgE0-0003IQ-3q
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 11:53:25 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7A2F22085A;
 Mon, 19 Aug 2019 11:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566215603;
 bh=SV9vvPzmEZyoFNVdyj/jnxtAaRv5uMaaIv0SeIw85aE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Hdtm2eIJtZ3wXCazXb7Td5V+YRrgaqPVMecXmhWTcdkLK4fO6bxXtesSROhiHjzsP
 fjLgAdwvZaHzU4WtY418Lo0v7/9S5UtqXtL5jeektH7v09vUTuGi3SqSqx7JyoUr0B
 llMZKhki92h4GGdvTIEDTW9NK+diptwnMZNmj+2E=
Date: Mon, 19 Aug 2019 13:53:12 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH 0/2] ARM: psci: cpuidle: defconfig updates
Message-ID: <20190819115311.GZ5999@X250>
References: <20190814125239.6270-1-lorenzo.pieralisi@arm.com>
 <20190819075716.GG5999@X250>
 <20190819102053.GA30692@e121166-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819102053.GA30692@e121166-lin.cambridge.arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_045324_181332_7075062B 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, soc@kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 11:21:03AM +0100, Lorenzo Pieralisi wrote:
> On Mon, Aug 19, 2019 at 09:57:17AM +0200, Shawn Guo wrote:
> > On Wed, Aug 14, 2019 at 01:52:37PM +0100, Lorenzo Pieralisi wrote:
> > > Rerouting defconfig updates related to this patch series:
> > > 
> > > https://lore.kernel.org/linux-arm-kernel/cover.1565348376.git.lorenzo.pieralisi@arm.com/
> > > 
> > > to arm-soc, as agreed in:
> > > 
> > > https://lore.kernel.org/linux-arm-kernel/58d9677db3510ed106fe23118090c84f78a44102.1565348376.git.lorenzo.pieralisi@arm.com/
> > > 
> > > Patches [1-6] are already queued in the ARM64 tree.
> > > 
> > > Please consider pulling these defconfig changes, thank you very much.
> > 
> > We, platform maintainers, also send arch/arm64/configs/defconfig changes
> > to arm-soc folk.  So I applied both patches to IMX tree and will send
> > them to arm-soc for 5.4 inclusion.
> 
> Hi Shawn,
> 
> there is no need, these updates were already pulled in arm-soc so
> there is nothing to do, please drop them.

Ah, okay.  Dropped them.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
