Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA621EB56F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 07:45:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6tECcCn6b9h+EarHxe1Oum7+Q6D+BHq05ySP8SFjAdU=; b=PxjRuWhXdKW5SI
	hRvUAasM/kfAa9+H8b0e6WVMwE6q4+owL4CgpAi2e4PlWfdiUtpkJSfpIWRqXA/ni8n7RlLK10h1w
	ochZiGqCDuRHf1pg4SCDWK3sMMzUwtuVxOmi0NVwOXVvuZ66AaQM30qFpVItIG4ZMOAsZaYgDFg7z
	3FJ6s1BzmSqFrk2Vsd9JHloG9fuiwRfgOFfBdSAMEid47mNiH8BleuCVfF48N8F6XmwYjd0GR2rDS
	XiheFYW4rUXlsRUb8qA+jPtws9vTPX8cfwbnVJr/e8B8j7HCRN9qLdNqp7GfMHoWGFw6NVGKIqq/2
	ofylJpNeLSME4R445o6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfzjj-0007Xy-HS; Tue, 02 Jun 2020 05:45:19 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfzjM-0007XX-1i
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 05:44:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591076693;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bCo6Hs1XvKVZ/we8zlozkhnglL2Do2YvAix/0i2LEXM=;
 b=Y63W1x+jPASWT5dLtyK5KW30WZOC1GJJa8JS06G1AQ8rd9SaB6n6Ba29gFHIC68LRk5XXy
 g2SJa4uKMislkCTuJGk9/GPoDTGc2xWNnWDPHhOddVLsi2p0XOogH+l+TXpAYJ5HKB7NQX
 3+qoljhYnpwtl7RXlXHVtH/zL1vE5d0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-111-1OLmskEZNhOBtfnAOikoPA-1; Tue, 02 Jun 2020 01:44:49 -0400
X-MC-Unique: 1OLmskEZNhOBtfnAOikoPA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 40DBC835B40;
 Tue,  2 Jun 2020 05:44:48 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-70.bne.redhat.com [10.64.54.70])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8D7375D9C9;
 Tue,  2 Jun 2020 05:44:45 +0000 (UTC)
Subject: Re: [PATCH RFCv2 9/9] arm64: Support async page fault
To: Paolo Bonzini <pbonzini@redhat.com>, Marc Zyngier <maz@kernel.org>
References: <20200508032919.52147-1-gshan@redhat.com>
 <20200508032919.52147-10-gshan@redhat.com>
 <81adf013-3de7-23e6-7648-8aec821b033c@redhat.com>
 <a6addc25-29af-3690-8392-efa5e8381e98@redhat.com>
 <8ab64c6a-582b-691d-79ab-21cdc0455cd3@redhat.com>
 <6a4a82a4-af01-98c2-c854-9199f55f7bd3@redhat.com>
 <6965aaf641a23fab64fbe2ceeb790272@kernel.org>
 <d0bfb944-b50a-608a-7dcc-5a409cdc4524@redhat.com>
 <4337cca152df47c93d96e092189a0e36@kernel.org>
 <5c72c597-732e-7dbf-d056-665674ec1792@redhat.com>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <fca52ea1-294a-6011-45f1-d0df30069800@redhat.com>
Date: Tue, 2 Jun 2020 15:44:42 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <5c72c597-732e-7dbf-d056-665674ec1792@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_224456_169997_5B452E7B 
X-CRM114-Status: GOOD (  18.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Reply-To: Gavin Shan <gshan@redhat.com>
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org, shan.gavin@gmail.com,
 will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc, Paolo,

On 6/1/20 7:21 PM, Paolo Bonzini wrote:
> On 31/05/20 14:44, Marc Zyngier wrote:
>>>
>>> Is there an ARM-approved way to reuse the S2 fault syndromes to detect
>>> async page faults?
>>
>> It would mean being able to set an ESR_EL2 register value into ESR_EL1,
>> and there is nothing in the architecture that would allow that,
> 
> I understand that this is not what you want to do and I'm not proposing
> it, but I want to understand this better: _in practice_ do CPUs check
> closely what is written in ESR_EL1?
> 
> In any case, the only way to implement this, it seems to me, would be a
> completely paravirtualized exception vector that doesn't use ESR at all.
> 
> On the other hand, for the page ready (interrupt) side assigning a PPI
> seems complicated but doable.
> 

Marc suggested to use SDEI in another reply. I think it might be the
appropriate way to deliver page-not-present. To some extent, it could
be regarded as exception, which doesn't use ESR at all. It matches with
what Paolo is thinking of: paravirtualized exception vector that doesn't
use ESR at all. However, it seems it's not supported in kvm-arm yet. So
I assume it needs to be developed from scratch. Marc, could you please
help to confirm? Thanks in advance.

I agree with Paolo PPI (interrupt) might be the best way to deliver
page-ready currently. I don't think SDEI is suitable because there
are no big difference between SDEI and currently used DABT injection
to some extent. With SDEI, We will have the issues we are facing.
For example, some critical code section isn't safe to receive SDEI
if I'm correct.


Thanks,
Gavin

[...]


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
