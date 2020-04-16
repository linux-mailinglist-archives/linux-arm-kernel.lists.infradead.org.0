Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2B21AC9D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 17:28:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GEHwI3+ZQO5Bl5Mn0piI7ypk4faY52A+tqRuZrTmwW0=; b=SVHNOvYzJnQHCywe4ZEUyOdva
	JTxxzfYBDe5Dseha1r9tcg+doZP9dcP6D1/SM32hZtQgskFOFiGkCVLIVyzfjXgSVhm2lZ3bz+8ee
	lXQzVttFdAXIIphgktYd+lUMHxAr8BkeIN7b3L4RpfKm1vzrhjx8WNumLkADhjGps/tSI+VUMPvVP
	fJ4pmSH5AUYkRFvcNKUUerE75ERbYFuDW/z/qlMQMjuGeFq47sLAEeuDAVN4DFqncrHN6LaG2gohD
	a02VqCRSB5i8AmOpyPzdvWI2PkZ6Zbv5ol6a+1XJbTy+1p7OiLSdemzCZyB0tqiy+8ghI2K3SQg7J
	H3F0kd9Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP6R0-0001Ev-OL; Thu, 16 Apr 2020 15:28:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP6P1-0007l6-Jd
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 15:26:08 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 203D7214D8;
 Thu, 16 Apr 2020 15:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587050767;
 bh=9UZrlX86YbwbreLTFi5YKGq3YhBn1+9uHoeSBBf886o=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Wro98QecVB/0yTP1mFZaDqaN8sf50x8/37MZzrvNgiLKrQBlnQ6sup5XaruO0XJ92
 Ov5TZHt+/at8yAP5S0jEpEatpociE0KfOEDnJhmaFF8XEYMeoULpW57GUqGQWwHoJs
 gxSvPKSjW6ewRrdRcYKlexr5vTiEok4qN9+lJFbQ=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jP6Oz-003uSn-HM; Thu, 16 Apr 2020 16:26:05 +0100
MIME-Version: 1.0
Date: Thu, 16 Apr 2020 16:26:05 +0100
From: Marc Zyngier <maz@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH 8/8] arm64: cpufeature: Add an overview comment for the
 cpufeature framework
In-Reply-To: <96dd797d-ccfe-c867-0a70-65eccacde3cd@arm.com>
References: <20200414213114.2378-1-will@kernel.org>
 <20200414213114.2378-9-will@kernel.org>
 <96dd797d-ccfe-c867-0a70-65eccacde3cd@arm.com>
Message-ID: <96438d59a2bc05871ef68fca475fabf5@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: suzuki.poulose@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com, anshuman.khandual@arm.com,
 catalin.marinas@arm.com, saiprakash.ranjan@codeaurora.org,
 dianders@chromium.org, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_082607_693052_F398F0F6 
X-CRM114-Status: GOOD (  11.90  )
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
Cc: mark.rutland@arm.com, saiprakash.ranjan@codeaurora.org,
 kernel-team@android.com, anshuman.khandual@arm.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, dianders@chromium.org, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-16 15:59, Suzuki K Poulose wrote:

Hi Suzuki,

[...]

> As you mentioned in the other response we could add information about
> the guest view, something like :
> 
>       - KVM exposes the sanitised value of the feature registers to the
> 	guests and is not affected by the FTR_VISIBLE. However,
> 	depending on the individual feature support in the hypervisor,
> 	some of the fields may be capped/limited.

Although in most cases, what KVM exposes is indeed a strict subset of
the host's features, there is a few corner cases where we expose 
features
that do not necessarily exist on the host. For example ARMv8.5-GTG and
ARMv8.4-TTL get exposed by the NV patches even if they don't exist on 
the
host, as KVM will actually emulate them.

Not a big deal, but I just wanted to outline that it isn't as clear-cut 
as
it may seem...

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
