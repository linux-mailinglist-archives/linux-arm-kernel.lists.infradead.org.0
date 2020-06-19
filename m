Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6E4200601
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 12:07:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mhCw0k/GFV9pwFdb54qr8mE5BYqVm2PD2DLUiAb35KA=; b=D/78LjPf9Ja9+8BW/D7wR4BoR
	IPDFoxJJLY2vbQgPItxq+iKT/RYClvbymXe5f7OZ1fWuCsO6RVNW9AcP5UoJZYTGThrWxagB3Wa9T
	YQgyzVA00nGVvO9h0VpHxQ8p0jMqn2fmJpNg1D6RBsQR1AB8UbXThlLcwxXxmfh5Bfhf14InHdqrW
	qRbmupwom6wQqa1GZVSDhecK2/u9w2Q5mT/MnA6DBof2R0/fbOiCDKjz/6d4tzVR5KNdVyx077qIZ
	h+JbuIC0wxcbsGXtiOucImF2xfaRIMDXVvAR3eiAXyq6ZdU7jcaHbWiXzFjxl3TB7Be8sBBq0fIuz
	KMfwCSv7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmDvH-00081N-KT; Fri, 19 Jun 2020 10:06:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmDuw-0007vq-SF
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 10:06:40 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE8E52073E;
 Fri, 19 Jun 2020 10:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592561197;
 bh=DWSDBScNwddwzZeNQuc8t3eZi3YeAqlJ80SvLgG6nS8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=qIufNTZj6yHfnPnBRaf2owSdXt7OVv7IpCYl31/NDFk71OtOv+pZZqp0d8gLcdubc
 TDzWmk0gLtWleYLotZ1fKE9J16A0E/65QArtUQm0riJj+wYsYWhuzvh/TDqu6dmvam
 KkjDqDbCPnaAwVGwUECfJZMmVIuxBpYakWWlymGQ=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jmDuu-004QT8-7C; Fri, 19 Jun 2020 11:06:36 +0100
MIME-Version: 1.0
Date: Fri, 19 Jun 2020 11:06:36 +0100
From: Marc Zyngier <maz@kernel.org>
To: David Brazdil <dbrazdil@google.com>
Subject: Re: [PATCH v3 02/15] arm64: kvm: Move __smccc_workaround_1_smc to
 .rodata
In-Reply-To: <20200619095120.wenkbs5bl3wbyiyh@google.com>
References: <20200618122537.9625-1-dbrazdil@google.com>
 <20200618122537.9625-3-dbrazdil@google.com>
 <02322fdac903aa1786c334d0ddd7f38a@kernel.org>
 <20200619095120.wenkbs5bl3wbyiyh@google.com>
User-Agent: Roundcube Webmail/1.4.5
Message-ID: <eac273f8f0801969c650a3bd78052e0a@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: dbrazdil@google.com, will@kernel.org,
 catalin.marinas@arm.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 android-kvm@google.com, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_030638_962994_74294A2C 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kernel-team@android.com, Suzuki K Poulose <suzuki.poulose@arm.com>,
 android-kvm@google.com, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-19 10:51, David Brazdil wrote:
> Hey Marc,
> 
>> > -	.popsection
>> 
>> I'd be tempted to leave the .popsection in place, if only for symmetry 
>>  with
>> the initial .pushsection.
> 
> I removed it because other .S files don't pop either. It must have been 
> added
> here purely for the smccc workaround code. Happy to add it back if you 
> prefer,
> but the pushsection is removed later in the series, so this would 
> disappear
> as well.

Don't bother then.

> 
>> > +	.pushsection	.rodata
>> > +	.global		__smccc_workaround_1_smc
>> > +__smccc_workaround_1_smc:
>> 
>> You probably want to replace this with SYM_DATA_START (and 
>> SYM_DATA_END at
>> the end).
> 
> Done

Thanks!

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
