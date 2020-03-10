Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CB517FBE2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 14:17:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NSjjXuqDdbR1zYaJWYu5Iop3k39qm/PrxdSn2ZMMRF4=; b=VvYKN2i/vVzzIOE0mub8trlx/
	7PlYmxJie57C5JvKZhlxPfRY6Ce8W/PYXHQpe+kjZI6AMLDeb/zImjmNfloIJyxsOiRnRJcDheJGR
	bw54VupgRW+9RxKAokNJrBwI9+I5O8mrSf1ISd753RFfVlBK/k1SNns0P5xavYNpPyYhveRqXskqP
	b1NJVU7QPhIYCVMhUDz7RUqm9JSnXLHCzKIHNoQMJ7/dnzfW2koU7Ib/m0lFW2f4WXy3IsscV+z20
	EWQ9X0LHbwoTKkJJfVOqXz6zxOdllVw+nUIxADFX0gxau3irwBW9adK3ryNdmkEQhrasZmUUtQ3q4
	XOAyIZa1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBekp-0008LR-Ku; Tue, 10 Mar 2020 13:17:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBekj-0008Kb-CS
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 13:16:58 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9503E24693;
 Tue, 10 Mar 2020 13:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583846215;
 bh=CiF2e4Gu3MUdh7Lg3zur4QzwVBU4lRXnHY3VzJVyY/4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Dyd17xpVF0JxkmyH3agz6PA0jQ9JY+cKzy37NP2xJREQyR1k4eYVBwOMm3QBwZafZ
 78doEykwC9a3jiy++aeUHd2sjMmBr52uxv6lUDfQzWrsO5rzavgL7Be86zUEPOKaZw
 rwwyMfDKk9vYKGWvUHcwjyAXo+h3EcV1GpDqMlbg=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jBekf-00Bb9d-VK; Tue, 10 Mar 2020 13:16:54 +0000
MIME-Version: 1.0
Date: Tue, 10 Mar 2020 13:16:53 +0000
From: Marc Zyngier <maz@kernel.org>
To: zhukeqian <zhukeqian1@huawei.com>
Subject: Re: [RFC] KVM: arm64: support enabling dirty log graually in small
 chunks
In-Reply-To: <64925c8b-af3d-beb5-bc9b-66ef1e47f92d@huawei.com>
References: <20200309085727.1106-1-zhukeqian1@huawei.com>
 <4b85699ec1d354cc73f5302560231f86@misterjones.org>
 <64925c8b-af3d-beb5-bc9b-66ef1e47f92d@huawei.com>
Message-ID: <a642a79ea9190542a9098e4c9dc5a9f2@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: zhukeqian1@huawei.com, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, jianjay.zhou@huawei.com,
 sean.j.christopherson@intel.com, pbonzini@redhat.com, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_061657_446601_DC9C26DB 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-kernel@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jay Zhou <jianjay.zhou@huawei.com>, Paolo Bonzini <pbonzini@redhat.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-10 08:26, zhukeqian wrote:
> Hi Marc,
> 
> On 2020/3/9 19:45, Marc Zyngier wrote:
>> Kegian,

[...]

>> Is there a userspace counterpart to it?
>> 
> As this KVM/x86 related changes have not been merged to mainline
> kernel, some little modification is needed on mainline Qemu.

Could you please point me to these changes?

> As I tested this patch on a 128GB RAM Linux VM with no huge pages, the
> time of enabling dirty log will decrease obviously.

I'm not sure how realistic that is. Not having huge pages tends to lead
to pretty bad performance in general...

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
