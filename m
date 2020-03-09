Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2F717E2ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 15:57:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+QSb7zS9n8i2Ylff7RA6o0IYywKYQoi/N9GEByj36fo=; b=FRu0vivcb2xyYY/NwHEai4uWI
	JqFuGvwbjfzMih1k9QzYj3c+/O7iIWVClmYLZDwlSZgOznKySWmT45lOx3WS6k8LP5tJNGXx3gh5l
	C13rqQSItmHUmM0dR5kYcoIAqkpk81hTdb+YRrr5E1knt62ZA2FkVPum4/iBlWijERhaTQPpY/BBU
	1R0SC4blAPCX7cmPbd6kkMRJRrt6zmrfg5qOQbHaI0s9WNB3bFVVqjDktOcmqywJAA7yYA251CU7n
	HnvIM+m9agRLEcesPat1cNBQB084+4/xKImpz4g42nwa1xjM8ooomxbXsfusHBZ8eFeuORpMwJT7z
	mNVEBL/GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBJqY-0001yd-80; Mon, 09 Mar 2020 14:57:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBJqQ-0001y0-2X
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 14:57:27 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5A1F421655;
 Mon,  9 Mar 2020 14:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583765844;
 bh=lKI8Yb8uZ3tBIe9X4wlAKYTXm/yXMD/FBLCurx3Ybds=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JhpMNSKzrpZSjcFxvL6Ii+nhacGswhk8gehCkK+Eu0AsQMpo2Bf4KZRdeAeibLrmQ
 ZdB2DECIG4CtwARIQU1ytrj8fN+cvZyyaVFv7Ld7bc3gbmHuRdtqgIF6y5bY05dnbq
 ztSx+ssyOK9hjHm0wZi1g0s/VeSN+lZ/Nuqla/dI=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jBJqM-00BJCg-Ig; Mon, 09 Mar 2020 14:57:22 +0000
MIME-Version: 1.0
Date: Mon, 09 Mar 2020 14:57:22 +0000
From: Marc Zyngier <maz@kernel.org>
To: Ionela Voinescu <ionela.voinescu@arm.com>
Subject: Re: [PATCH v5 3/7] arm64/kvm: disable access to AMU registers from
 kvm guests
In-Reply-To: <20200309142529.GB13343@arm.com>
References: <20200226132947.29738-1-ionela.voinescu@arm.com>
 <20200226132947.29738-4-ionela.voinescu@arm.com>
 <46b89d0c9704e0a0fb7a4ac2a1fb5b7a@kernel.org>
 <20200309142529.GB13343@arm.com>
Message-ID: <e3c164afe9fdefe2a01ddbdf34e437a2@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: ionela.voinescu@arm.com, catalin.marinas@arm.com,
 will@kernel.org, mark.rutland@arm.com, suzuki.poulose@arm.com,
 sudeep.holla@arm.com, lukasz.luba@arm.com, valentin.schneider@arm.com,
 dietmar.eggemann@arm.com, rjw@rjwysocki.net, pkondeti@codeaurora.org,
 peterz@infradead.org, mingo@redhat.com, vincent.guittot@linaro.org,
 viresh.kumar@linaro.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, james.morse@arm.com, julien.thierry.kdev@gmail.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_075726_136214_831E32EF 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, pkondeti@codeaurora.org,
 catalin.marinas@arm.com, linux-pm@vger.kernel.org, linux-doc@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, dietmar.eggemann@arm.com,
 peterz@infradead.org, mingo@redhat.com, viresh.kumar@linaro.org,
 linux-arm-kernel@lists.infradead.org, sudeep.holla@arm.com,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, will@kernel.org,
 valentin.schneider@arm.com, lukasz.luba@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-09 14:25, Ionela Voinescu wrote:

Hi Ionela,

[now with everyone on cc...]

>> This will definitely conflict with some of the ongoing rework I 
>> have[1].
>> I'm happy to provide this as a stable branch for you to rebase on top,
>> or use an arm64 provided branch to rebase my stoff on top.
>> 
>> Just let me know how you want to proceed.
>> 
> 
> Catalin added the AMU patches on top of 5.6-rc3 at [1].
> Is this okay as a base branch for your patches?

Sure, no problem. I still need to respin those...

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
