Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D24AB8C6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 15:02:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aLvnfAwalwA+V0MLpLmMR6o2IAKAW7KSTjx+xWaPXlg=; b=D3o69eofcvkSaMiBnKiYjF4eY
	ZtQUftfbaDTkW0u9as4q5FmbK9jc69HZIN9estgFhhzz3Om8Yz3agnUfip5jhYCg7j2W6RQtRxcMi
	VX68YzgtCjurk8pqcMGSlYk60XFRA4BYOLICeXLFPoBbp0dVFVwdaUe7MH9jxX4m6cVsbSH5byq3v
	qypom/eYFboNfIX1KB6lT12diulfHj3Sqcb91KvKf//S5ypEUJSmnNVxbQcvR3NlGnU78XYqLO7Pl
	4JllWOc61WJG7oCw8EWogCl1K4DcNxr5q0ll/NragH9hPsCbGRFigRc0LP09Th4ONJ5GGvpKpFwFj
	3rFabwwaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Dsd-0004rd-Ou; Fri, 06 Sep 2019 13:02:23 +0000
Received: from smtp-fw-6001.amazon.com ([52.95.48.154])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6DsW-0004rB-Do
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 13:02:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1567774936; x=1599310936;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=BsL/MpON9lOcR0hZ9plTd/PmmADOU1tKuQ65tHkbvfo=;
 b=B0DYmAZTJRkWy4QJ6FEhgVbx8Rr3CGwgo35OQQzX62ZE4HONTuzQd3Ww
 R4R+aL3FCwGigRSFdEq6qQdoRiJSILVdE837ipNdwuoZUMNAUIM6Ft9iY
 29ApmPawlOGn5NsVpaKHMM9h2SAIS0+lzUiP2oGZFI9WNGY/DCK3RHh76 o=;
X-IronPort-AV: E=Sophos;i="5.64,473,1559520000"; d="scan'208";a="413929647"
Received: from iad6-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-2b-4ff6265a.us-west-2.amazon.com) ([10.124.125.6])
 by smtp-border-fw-out-6001.iad6.amazon.com with ESMTP;
 06 Sep 2019 13:02:12 +0000
Received: from EX13MTAUWC001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan3.pdx.amazon.com [10.170.41.166])
 by email-inbound-relay-2b-4ff6265a.us-west-2.amazon.com (Postfix) with ESMTPS
 id 56569A23DF; Fri,  6 Sep 2019 13:02:12 +0000 (UTC)
Received: from EX13D20UWC001.ant.amazon.com (10.43.162.244) by
 EX13MTAUWC001.ant.amazon.com (10.43.162.135) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 6 Sep 2019 13:02:11 +0000
Received: from 38f9d3867b82.ant.amazon.com (10.43.160.20) by
 EX13D20UWC001.ant.amazon.com (10.43.162.244) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 6 Sep 2019 13:02:09 +0000
Subject: Re: [UNVERIFIED SENDER] Re: [PATCH 1/1] KVM: inject data abort if
 instruction cannot be decoded
To: Marc Zyngier <maz@kernel.org>, Christoffer Dall <christoffer.dall@arm.com>
References: <20190904180736.29009-1-xypron.glpk@gmx.de>
 <86r24vrwyh.wl-maz@kernel.org>
 <CAFEAcA-mc6cLmRGdGNOBR0PC1f_VBjvTdAL6xYtKjApx3NoPgQ@mail.gmail.com>
 <86mufjrup7.wl-maz@kernel.org>
 <CAFEAcA9qkqkOTqSVrhTpt-NkZSNXomSBNiWo_D6Kr=QKYRRf=w@mail.gmail.com>
 <20190905092223.GC4320@e113682-lin.lund.arm.com>
 <4b6662bd-56e4-3c10-3b65-7c90828a22f9@kernel.org>
 <20190906080033.GF4320@e113682-lin.lund.arm.com>
 <a58c5f76-641a-8381-2cf3-e52d139c4236@amazon.com>
 <0a99ce2b-7700-2a2f-eb3a-4922631cbe02@kernel.org>
From: Alexander Graf <graf@amazon.com>
Message-ID: <9745a09c-3410-38a5-1399-24eefbed8336@amazon.com>
Date: Fri, 6 Sep 2019 15:02:07 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <0a99ce2b-7700-2a2f-eb3a-4922631cbe02@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.43.160.20]
X-ClientProxiedBy: EX13D07UWB002.ant.amazon.com (10.43.161.131) To
 EX13D20UWC001.ant.amazon.com (10.43.162.244)
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_060216_666850_7830D418 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: -2.2 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.95.48.154 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: =?UTF-8?Q?Daniel_P=2e_Berrang=c3=a9?= <berrange@redhat.com>, Heinrich
 Schuchardt <xypron.glpk@gmx.de>,
 lkml - Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stefan Hajnoczi <stefanha@redhat.com>, kvmarm@lists.cs.columbia.edu,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 06.09.19 14:34, Marc Zyngier wrote:
> On 06/09/2019 13:08, Alexander Graf wrote:
>>
>>
>> On 06.09.19 10:00, Christoffer Dall wrote:
>>> On Thu, Sep 05, 2019 at 02:09:18PM +0100, Marc Zyngier wrote:
> 
> [...]
> 
>>>>> @@ -673,6 +694,8 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
>>>>>    		ret = kvm_handle_mmio_return(vcpu, vcpu->run);
>>>>>    		if (ret)
>>>>>    			return ret;
>>>>> +	} else if (run->exit_reason == KVM_EXIT_ARM_NISV) {
>>>>> +		kvm_inject_undefined(vcpu);
>>>>
>>>> Just to make sure I understand: Is the expectation here that userspace
>>>> could clear the exit reason if it managed to handle the exit? And
>>>> otherwise we'd inject an UNDEF on reentry?
>>>>
>>>
>>> Yes, but I think we should change that to an external abort.  I'll test
>>> something and send a proper patch with more clear documentation.
>>
>> Why not leave the injection to user space in any case? API wise there is
>> no need to be backwards compatible, as we require the CAP to be enabled,
>> right?
>>
>> IMHO it should be 100% a policy decision in user space whether to
>> emulate and what type of exception to inject, if anything.
> 
> The exception has to be something that the trapped instruction can
> actually generate. An UNDEF is definitely wrong, as the guest would have
> otherwise UNDEF'd at EL1, and KVM would have never seen it. You cannot
> deviate from the rule of architecture, and userspace feels like the
> wrong place to enforce it.

There are multiple viable options user space has:

   1) Trigger an external abort
   2) Emulate the instruction in user space
   3) Inject a PV mechanism into the guest to emulate the insn inside 
guest space

Why should we treat 1) any different from 2) or 3)? Why is there a "fast 
path" for the external abort, on an exit that is not performance 
critical or has any other reason to get special attention from kernel 
space. All we're doing is add more code in a privileged layer for a case 
that realistically should never occur in the first place.


Alex



Amazon Development Center Germany GmbH
Krausenstr. 38
10117 Berlin
Geschaeftsfuehrung: Christian Schlaeger, Ralf Herbrich
Eingetragen am Amtsgericht Charlottenburg unter HRB 149173 B
Sitz: Berlin
Ust-ID: DE 289 237 879


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
