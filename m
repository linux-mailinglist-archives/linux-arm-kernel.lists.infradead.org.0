Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1047F1A97AA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 10:56:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YZR1MK4/ovezUklBIAdHaDKQbuBgrj+ftr1g4GkNLvg=; b=TSatermO4ehEDEFhxqpk/Zehs
	Q+ntbbehCJlfKV7mYpYmTF0QK/OVegoKmm8b335Jar06usOmP42bKWMpYqEMmm0z20O0k9q8wVa9R
	CqZUvqtx4ZtWBzDXOpS6m1/CxEE3+pr+0fOjo/apWXrwAZYF06LAERSYEh9wG0/KzxcuNa2z/k4JA
	L40jJ7EJBU4mZ2OCFDlnr9rROhfGiQ1g2K0W+lOJbS3eRbLqa9QJA+SGRJluEgkCh2+3IwnJN4Y+W
	ayW7MyMbVmQYEkNkut1jsGpMXRYB8kAakzjypy6f04kJTKRNJvXaQ7fttdD161E/VoUpDR6sfcaM4
	jr5S+dUiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOdq2-0002OK-T4; Wed, 15 Apr 2020 08:56:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOdpw-0002Nq-1F
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 08:56:01 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 900C520737;
 Wed, 15 Apr 2020 08:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586940959;
 bh=lL08kyfy+9y5wE4bT7FrtRAP9e6Jx76z4bGDZo1tk4s=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=zPVuO2lg9Bf7O4AyeHVkBbTdBcjJ0l9TTPg+WqJ1AqZYtX9Ksbab4hxQBuS6PhOcz
 nG946f+z2ldlNfsBvYalLoWeuksyMjcQaVfN7Vrfos3ZdMA9haxjGQx7k25dNYi8JR
 3SG+qQmED0JCKXDh2wrsKH9jJipvG+N1lrNGpk3o=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jOdpt-003Rlm-Ss; Wed, 15 Apr 2020 09:55:58 +0100
MIME-Version: 1.0
Date: Wed, 15 Apr 2020 09:55:57 +0100
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 3/8] arm64: cpufeature: Add CPU capability for AArch32 EL1
 support
In-Reply-To: <20200414213114.2378-4-will@kernel.org>
References: <20200414213114.2378-1-will@kernel.org>
 <20200414213114.2378-4-will@kernel.org>
Message-ID: <1b76993491176577567a0960a435dac0@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: will@kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, linux-kernel@vger.kernel.org,
 suzuki.poulose@arm.com, mark.rutland@arm.com, anshuman.khandual@arm.com,
 catalin.marinas@arm.com, saiprakash.ranjan@codeaurora.org,
 dianders@chromium.org, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_015600_093990_0C276451 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 Doug Anderson <dianders@chromium.org>, kernel-team@android.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 2020-04-14 22:31, Will Deacon wrote:
> Although we emit a "SANITY CHECK" warning and taint the kernel if we
> detect a CPU mismatch for AArch32 support at EL1, we still online the
> CPU with disastrous consequences for any running 32-bit VMs.
> 
> Introduce a capability for AArch32 support at EL1 so that late onlining
> of incompatible CPUs is forbidden.
> 
> Signed-off-by: Will Deacon <will@kernel.org>

Definitely an improvement over the current situation, as the direct read
of ID_AA64PFR0 was always a bit dodgy. Given that I'm pretty sure these 
new
braindead SoCs are going to run an older version of the kernel, should 
we
Cc stable for this?

Otherwise:

Acked-by: Marc Zyngier <maz@kernel.org>

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
