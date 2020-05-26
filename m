Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98FF11E2F7C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 21:56:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ZvzMoSgv3QAlXCi0eGG7lDVDniqTN/Ajn5VV4hM/kE=; b=DyUnPhe2gVQaAj
	FAsROhNpsF3PecXFVJkFJqz/DzcuLJa26uwN33dmiWyLWRNKPdZj4rrGzm2GQxQVHZfDRyhZmK6BO
	kUxxvAcfPb68e9LvdtiYprS232IEa0au5DQtgbuxiFgzi7/DP0zd9+VuaJEbUFSzgVyBMkDUQ+MXg
	viyYDePhXlTk16buR0BJXluY+1S7y36rchJJEUaK496nfZVIl1cleuN6wIfz7Qu2whK+6ZsKvPVJf
	TlphEy97Ji3itWoab7dCUzT6kQe9LubcPSjBxAAnBijcwx2Cass5We4Yg+qaoZMtSPYnXPcIAu4yj
	ooWaJ1fQ8xlB3RmRY9tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdfg6-0006yu-2C; Tue, 26 May 2020 19:55:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdffq-0006yV-29
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 19:55:44 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 54FF8207CB;
 Tue, 26 May 2020 19:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590522941;
 bh=I0pWDEeNF5Vwd03PmZHg8R8UgdCMpO59ulZEcEMgnkM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Fu7ywaBTkI5p2RcaFj1MFi7zFxQo8SZnhO5/rNTd0nOBobQpIVjjhsFg3xrG+wqVK
 Nrj5wCwVHDMWu7A9AvvQ4JzBB4+/rc4K8e3hMubj2jFwG2yTAU1xeK6B2TwFZGKrJT
 OHCsjm4p5oj84C/m//Ex1nOgN/UylLHgmYe3H208=
Date: Tue, 26 May 2020 20:55:37 +0100
From: Will Deacon <will@kernel.org>
To: Shaokun Zhang <zhangshaokun@hisilicon.com>
Subject: Re: [PATCH] arm64: atomics: Fix the issue on xchg when switch to
 atomic instruction
Message-ID: <20200526195536.GD2206@willie-the-truck>
References: <1588669355-38741-1-git-send-email-zhangshaokun@hisilicon.com>
 <20200505091503.GC16980@willie-the-truck>
 <a48b7408-adb4-08f2-129b-f71e1c79db5a@hisilicon.com>
 <20200506075352.GE7021@willie-the-truck>
 <90dde2e8-ea11-fa7b-1a44-4d357a61cd66@hisilicon.com>
 <20200506104435.GB8043@willie-the-truck>
 <295b5b2c-ae8d-3db2-3621-5d5ba15481fd@hisilicon.com>
 <a44c1318-bace-36ec-457e-c2856ad3e191@hisilicon.com>
 <d1e62e64-9cda-eb70-42f8-f65e43632add@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d1e62e64-9cda-eb70-42f8-f65e43632add@hisilicon.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_125543_638834_D18C2B43 
X-CRM114-Status: GOOD (  14.20  )
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
Cc: Yuqi Jin <jinyuqi@huawei.com>, Andrew Murray <amurray@thegoodpenguin.co.uk>,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 25, 2020 at 05:27:30PM +0800, Shaokun Zhang wrote:
> On 2020/5/7 15:54, Shaokun Zhang wrote:
> > On 2020/5/6 19:30, Shaokun Zhang wrote:
> >> On 2020/5/6 18:44, Will Deacon wrote:
> >>> Good to hear there's not a bug, but if you see a performance benefit from
> >>> using the static-key for xchg() then I'd obviously be open to changing it
> >>
> >> Thanks your reply, if I follow the two methods correctly, static-key will
> >> not consume '__nops(3)', others are the same.
> >>
> >> I will run some tests to check the performance  ;-)
> >>
> > 
> > We compare the two methods on Huawei Kunpeng920 and the throughput per second
> > as follows:
> > 
> > one core  |without delay| 200ns delay|
> > --------------------------------------
> > static-key| 55294942    | 3937156    |
> > --------------------------------------
> > runtime   | 54706282    | 3918188    |
> > --------------------------------------
> > 
> 
> Are you happy to pick up this patch since it has some benefits for single core?  ;-)

Is it really worth it? I don't think so.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
