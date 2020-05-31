Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A591E97B1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 14:45:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JFO8vvN90BUeBZ0fzm92JqIfDy0eKhOIF/1TjlvHJ1k=; b=f5gWK+OYztqr2IElYrqrnMw02
	Rt5DPCJvF1yw2T5JBNyqlmUl7fws06BJJzWACI7SrqFJVadV1A111Cj+0drWR3hcEyyJ6EyY7vmwE
	lJxFH1wQA4IwqnYn6thrXckzX5hnNLEMkWXDv/c3MXH2aFfars+4nlOXOYeBeYXbHJrWxQa7RULrv
	gyg0PofgR20yecg080I6sWSsOh3c7XW1egWE5rvcdlTAg3o2pdTtpO1TLvpyvLSYVBNSOLeKg/9dr
	fZGy+jVGVfTKuNE9oQYNaJI4h80JFjwAjfQwLaUBNK09BUJAuufH/LntTIVTYnBOK5vs4mJ8E4UQt
	k27WxKq4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfNKg-0003sF-V2; Sun, 31 May 2020 12:44:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfNKW-0003ri-H7
 for linux-arm-kernel@lists.infradead.org; Sun, 31 May 2020 12:44:46 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E5C5620707;
 Sun, 31 May 2020 12:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590929082;
 bh=2vL02Vz4eW1dAdaOSuiF9dEX0n59BC4p/43yQ+cQhzE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=vFlD0XZGL4swONxoZWY9HC8REfRlBdsTA/uPXgH0nN3NiBqWmIm/6Bqq7Fqfq3W3Q
 9PQgssKMp9KkuRXfuwkerCfpuPIB4sKNb6UXA6JD1ryjLTpw/nKpLpEnV+IQQDBgdL
 MeJ+uYq9xKf0P/tZBkcFdBnkJ+PGMUfcRsO2Rsg4=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jfNKS-00Ggkq-8R; Sun, 31 May 2020 13:44:40 +0100
MIME-Version: 1.0
Date: Sun, 31 May 2020 13:44:40 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: Re: [PATCH RFCv2 9/9] arm64: Support async page fault
In-Reply-To: <d0bfb944-b50a-608a-7dcc-5a409cdc4524@redhat.com>
References: <20200508032919.52147-1-gshan@redhat.com>
 <20200508032919.52147-10-gshan@redhat.com>
 <81adf013-3de7-23e6-7648-8aec821b033c@redhat.com>
 <a6addc25-29af-3690-8392-efa5e8381e98@redhat.com>
 <8ab64c6a-582b-691d-79ab-21cdc0455cd3@redhat.com>
 <6a4a82a4-af01-98c2-c854-9199f55f7bd3@redhat.com>
 <6965aaf641a23fab64fbe2ceeb790272@kernel.org>
 <d0bfb944-b50a-608a-7dcc-5a409cdc4524@redhat.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <4337cca152df47c93d96e092189a0e36@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, gshan@redhat.com,
 kvmarm@lists.cs.columbia.edu, linux-kernel@vger.kernel.org,
 shan.gavin@gmail.com, catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_054444_606534_3E4DFB39 
X-CRM114-Status: GOOD (  16.19  )
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
Cc: Gavin Shan <gshan@redhat.com>, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, shan.gavin@gmail.com, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-29 12:11, Paolo Bonzini wrote:
> On 29/05/20 11:41, Marc Zyngier wrote:
>>>> 
>>>> 
>>>> For x86 the advantage is that the processor can take care of raising 
>>>> the
>>>> stage2 page fault in the guest, so it's faster.
>>>> 
>>> I think there might be too much overhead if the page can be populated
>>> quickly by host. For example, it's fast to populate the pages if 
>>> swapin
>>> isn't involved.
> 
> Those would still be handled by the host.  Only those that are not
> present in the host (which you can see through the MMU notifier) would
> be routed to the guest.  You can do things differently between "not
> present fault because the page table does not exist" and "not present
> fault because the page is missing in the host".
> 
>>> If I'm correct enough, it seems arm64 doesn't have similar mechanism,
>>> routing stage2 page fault to guest.
>> 
>> Indeed, this isn't a thing on arm64. Exception caused by a S2 fault 
>> are
>> always routed to EL2.
> 
> Is there an ARM-approved way to reuse the S2 fault syndromes to detect
> async page faults?

It would mean being able to set an ESR_EL2 register value into ESR_EL1,
and there is nothing in the architecture that would allow that, with
the exception of nested virt: a VHE guest hypervisor running at EL1
must be able to observe S2 faults for its own S2, as synthesized by
the host hypervisor.

The trouble is that:
- there is so far no commercially available CPU supporting NV
- even if you could get hold of such a machine, there is no
   guarantee that such "EL2 syndrome at EL1" is valid outside of
   the nested context
- this doesn't solve the issue for non-NV CPUs anyway

> (By the way, another "modern" use for async page faults is for postcopy
> live migration).

Right. That's definitely a more interesting version of "swap-in".

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
