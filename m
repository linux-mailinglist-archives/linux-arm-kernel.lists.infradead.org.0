Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4700195D2F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 18:53:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=alu1CkOT6mw/KZkQ4L84SCYyyMBrkFlX97Y4Ii0vXPQ=; b=VxPvWjr7PRkz/rB4DHbiQtkEj
	ZkxMdyJRdPgZLlIOt/+djCnm9RWIk5usV0ZX7BwDlj+6Q19bwlyrobyDITF3BGudC0/Jbhp5GDayk
	j4kYS6D2U7CX/nGIfTQksZ/8TlSiufa3pn4UefV7kzxYCb8hN+3NS+mEJyB3jJ6nLdBXfVJxP7brA
	dhk8/QvbRhjwe3CU0ZdJNeQ0mo5dj2ZKNWZSMmIbCXslReKDf9nNFL2GvJaU4XhKix3CwsJxJ07N8
	btf6LfQNkFee9hAQpL5qN+Y3ZhZN8oiL5IAvidUIzYrVg0drxKoQX0k+qn2zW9AR/HmNgvbIoKkIL
	AJ7llw05w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHtAa-0002TY-He; Fri, 27 Mar 2020 17:53:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHtAF-0002O0-DY
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 17:53:04 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 862042072F;
 Fri, 27 Mar 2020 17:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585331581;
 bh=hDjqaL0X3nrh5jBH9jkSsUvxSlT36Iz84f9JS0CCci8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=KSeYpGA6t09aDn999+h+fGxkfZNcXlyiWjd92rsrYpDJ0bUPPPxfRMPEw9OICYnSX
 aWut34lUw0bCh2vfkxnkS7tp3j4cqPp5v5hwzZhQ5onGBEVKdLl52tisz41IIBY4HO
 Q188C4cuHe/ORNvSnxb0iv829EKq3/4zVTjAajsY=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jHtAB-00GGLg-Mf; Fri, 27 Mar 2020 17:52:59 +0000
MIME-Version: 1.0
Date: Fri, 27 Mar 2020 17:52:59 +0000
From: Marc Zyngier <maz@kernel.org>
To: Andrew Scull <ascull@google.com>
Subject: Re: [RFC PATCH] arm64: unify WORKAROUND_SPECULATIVE_AT_{NVHE,VHE}
In-Reply-To: <20200327174838.GD178422@google.com>
References: <20200327143941.195626-1-ascull@google.com>
 <1705907b-234c-6f56-1360-f598c8047d1d@arm.com>
 <20200327174838.GD178422@google.com>
Message-ID: <e280f3f31bd5edc9db55757fcfa4ec62@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: ascull@google.com, steven.price@arm.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 qperret@google.com, dbrazdil@google.com, qwandor@google.com, tabba@google.com,
 wedsonaf@google.com, kernel-team@android.com, James.Morse@arm.com,
 Suzuki.Poulose@arm.com, will@kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_105303_504410_3F89DD8C 
X-CRM114-Status: UNSURE (   7.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: qwandor@google.com, qperret@google.com, Will Deacon <will@kernel.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Steven Price <steven.price@arm.com>,
 wedsonaf@google.com, tabba@google.com, James Morse <James.Morse@arm.com>,
 dbrazdil@google.com, kernel-team@android.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On 2020-03-27 17:48, Andrew Scull wrote:
> Thanks, Steven. Could we look into the EPD* caching microarch details
> Marc was referring to for these A55 and A76 cores?

Only the folks that have access to the RTL can tell you, unfortunately.

Thankfully, there is a bunch of people on Cc that should be able to ping
the relevant teams and report back...

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
