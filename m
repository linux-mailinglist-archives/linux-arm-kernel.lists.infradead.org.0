Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB16918309A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 13:48:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kjVWzxG9cmd5YkRsxb0IgIJNoAx4BMmefVXYOxD0esM=; b=O/4GX35WEDLHAzQLZxcNyBNSo
	marbJeezRgM3Ph6IvxLuI/f+GhGaiXWJ59g8b7T4ijQA/bkdcrEETXl3wwMTAEYp5erml0TtWUiVP
	j7ouinho+lP4iMcs8gzxfBQkqcOufLYAGZg/dac5bpglGjG7XDPjyfRgB3eVEOe7HtgtXyw9lg9r0
	J0bbzAwV1po0/eNLzkUgIP6PW0fECXtrFmiLuep5v8E5kYyeGepG5rrSpHKKYu6TFkBrDgUVAY/iB
	cXe6+OK65IV0eyr0yn2P5w78z/vGAxy6qUKmfet6eTPxXtgZy2x5oP+89w+SJ3ADoQspl/nR7/ERv
	lmkUaQ1VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCNFo-00078E-1G; Thu, 12 Mar 2020 12:48:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCNFc-00077k-J2
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 12:47:49 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 036222067C;
 Thu, 12 Mar 2020 12:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584017268;
 bh=nR0E7H/0Y5OKyy4ZCqLlhOjPVkLoNhxXEe9cuXpw5FQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=vcFaGuY7YLfhxZ40rPHJ4Jba4QkQm0rOeU5zycy9LuU/yWRb0KBD/Wp8jiWCT2rxM
 99QovipUfsv2PfN0MDeg7FHO0vn4QGRfvRUOUoL6gR0y6jrdSlr5oWMhPczWSNRlAt
 iq7ghwgfBSjERREktDSijpxctvt2owlpNv6fypxY=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jCNFa-00CDNZ-3T; Thu, 12 Mar 2020 12:47:46 +0000
MIME-Version: 1.0
Date: Thu, 12 Mar 2020 12:47:46 +0000
From: Marc Zyngier <maz@kernel.org>
To: Amit Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v6 00/18]  (as long a
In-Reply-To: <98ad6e44-7aef-9ad2-0398-d5d412d8bb23@arm.com>
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <ae8f900b-6173-5cbb-076e-457994fbe0fe@arm.com>
 <79a45ce2-a632-9821-986e-1f48cb0121c9@arm.com>
 <98ad6e44-7aef-9ad2-0398-d5d412d8bb23@arm.com>
Message-ID: <b5ca043cfaca30435957974d0f58524e@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: amit.kachhap@arm.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, mark.rutland@arm.com,
 keescook@chromium.org, ardb@kernel.org, catalin.marinas@arm.com,
 suzuki.poulose@arm.com, will@kernel.org, ramana.radhakrishnan@arm.com,
 kristina.martsenko@arm.com, Dave.Martin@arm.com, Vincenzo.Frascino@arm.com,
 broonie@kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_054748_674163_2EE52BCA 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Amit,

On 2020-03-12 08:06, Amit Kachhap wrote:
> Hi James,
> 
> On 3/12/20 12:23 PM, Amit Kachhap wrote:
>> Hi James,
>> 
>> On 3/11/20 2:58 PM, James Morse wrote:
>>> Hi Amit,
>>> 
>>> (CC: +Marc)
>>> 
>>> On 3/6/20 6:35 AM, Amit Daniel Kachhap wrote:
>>>> This series improves function return address protection for the 
>>>> arm64 kernel, by
>>>> compiling the kernel with ARMv8.3 Pointer Authentication 
>>>> instructions (referred
>>>> ptrauth hereafter). This should help protect the kernel against 
>>>> attacks using
>>>> return-oriented programming.
>>> 
>>> (as it looks like there may be another version of this:)
>>> 
>>> Am I right in thinking that after your patch 10 changing
>>> cpu_switch_to(), only the A key is live during kernel execution?
>> 
>> Yes
>> 
>>> 
>>> KVM is still save/restoring 4 extra keys around guest-entry/exit. As 
>>> you
>>> restore all the keys on return to user-space, is this still 
>>> necessary?
>> 
>> Yes Its a good optimization to skip 4 non-A keys. I was wondering 
>> whether to do it in this series or send it separately.
> 
> I suppose we can only skip non-A keys save/restore for host context. If
> we skip non-A keys for guest context then guest with old implementation
> will break. Let me know your opinion.

I don't think you can skip anything as far as the guest is concerned.
But being able to skip the B keys (which is what I expect you call the
non-A keys) on the host would certainly be useful.

I assume you have a way to hide them from userspace, though.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
