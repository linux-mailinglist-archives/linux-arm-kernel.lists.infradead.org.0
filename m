Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1241E7B5B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 13:12:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v82aIoFiNNQaZ+7k9s+C8U6VlbGEmq/+zLj1pu01jwE=; b=Uwk0jjpjypY4go
	I9LXKAt+Io6eJsrEtdZNDCkY14fJ7btVrXY8BHIqW53S0ECwdTJr1lKfEnB6p4XbOA3c2GszT9FZl
	JoEDPc7gcd9ic3dcDTAehr3hLsAVGMnRSz97vHEmeVN7AWWur6jHMVa38lS7TayQnqvocO4itEt/5
	fHd9aiCvHMMVpvZYWJQrv0carvdOQi05pn4Tfk7DwGP5pff8I92e2gGA0DM0j3EYeyyrSZQZvkV1Q
	Do0ujutJ8HaXkVwF+BD7h+g+BhFT4GrT82wTxQeC6gUk9GRSvG30tZ7KmHe4dCJW51nsAbJZJZ5tb
	1/NMQV6qxApCCs7zmbsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jecvw-0002rY-Ex; Fri, 29 May 2020 11:12:16 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jecvo-0002qf-Io
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 11:12:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590750723;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9M/dfx/AlUONwh5MphhAji3d3cM3kUpcCH4+D+us/Ew=;
 b=QJxM1O0Ub52xPJ5rYY8sYjbJBLtCMwfAnuDJb5MKX3nY9Amo9JrLir8b2J81qSL3Wjz9p/
 EeczS8jZAWE5KZLmvX5rhpyEdS1TgSWY0pe8fF1JaD3b0Vsfz+pb09Q/qgS/oGPGixDo4u
 0Ga3BrP93l2lh4sSz0itZ26OKhOJXxs=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-326-XVlE5xG7MfecvFL63ZA0TQ-1; Fri, 29 May 2020 07:12:01 -0400
X-MC-Unique: XVlE5xG7MfecvFL63ZA0TQ-1
Received: by mail-wr1-f72.google.com with SMTP id w4so906259wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 04:12:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9M/dfx/AlUONwh5MphhAji3d3cM3kUpcCH4+D+us/Ew=;
 b=luyHeZdNkIybfqLD0z16VGEy2SgarJ4K6F8Q2gvJ9cYC6DLiKArGrhZKXg7ZU9Bx4o
 ciernvDd/16vXfPRNmbxjVwXXfp7GMiG4JLYujUkiZWFB1sXvxNo2h1k/8My3ydIOCMs
 72ALrOA2LRWEJl5LshfZZVzUT0a2CzmvS5jj96MabJURqG01ga7+4H4vCdB4HMqdpYop
 WmzOmhfgWdamfyqzqFbAPzYarB8NAWLhUP5WMTIDvWFevl/QcaT+kBe6+Q6BT32YW/42
 qNITYfxODgAyjEo+RzZ8zWquR/g+PRfNFZxrLdGmlVkd26d/G30PGUkj1iobCH/z4KpO
 NUzQ==
X-Gm-Message-State: AOAM531fJVgVQ0U+yrq9UxqF1tgOnqFvqUtT88qZtIrIeb1OHeinIDyp
 N9PgdWlMOJkApQg/RMKq5idrhjT0mQPBFz+tpGXQIp7zRp9s9mxc8hTLZk2DMeBYqF4lmLHnrES
 99wgobG6+OjElc2Zt+Tbh96y9pGloMs4M/4g=
X-Received: by 2002:a7b:c5cc:: with SMTP id n12mr8037157wmk.69.1590750720111; 
 Fri, 29 May 2020 04:12:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzXn3TKEVztYoQ/UzuKg90zh74+FaWzUOHiQ5op3FdCYq5th45LuGb7iOizyYyyR3rfbSOLuQ==
X-Received: by 2002:a7b:c5cc:: with SMTP id n12mr8037141wmk.69.1590750719880; 
 Fri, 29 May 2020 04:11:59 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:b096:1b7:7695:e4f7?
 ([2001:b07:6468:f312:b096:1b7:7695:e4f7])
 by smtp.gmail.com with ESMTPSA id t8sm9309944wro.56.2020.05.29.04.11.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 29 May 2020 04:11:59 -0700 (PDT)
Subject: Re: [PATCH RFCv2 9/9] arm64: Support async page fault
To: Marc Zyngier <maz@kernel.org>, Gavin Shan <gshan@redhat.com>
References: <20200508032919.52147-1-gshan@redhat.com>
 <20200508032919.52147-10-gshan@redhat.com>
 <81adf013-3de7-23e6-7648-8aec821b033c@redhat.com>
 <a6addc25-29af-3690-8392-efa5e8381e98@redhat.com>
 <8ab64c6a-582b-691d-79ab-21cdc0455cd3@redhat.com>
 <6a4a82a4-af01-98c2-c854-9199f55f7bd3@redhat.com>
 <6965aaf641a23fab64fbe2ceeb790272@kernel.org>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <d0bfb944-b50a-608a-7dcc-5a409cdc4524@redhat.com>
Date: Fri, 29 May 2020 13:11:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <6965aaf641a23fab64fbe2ceeb790272@kernel.org>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_041208_695480_1BBB70EC 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org, shan.gavin@gmail.com,
 will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29/05/20 11:41, Marc Zyngier wrote:
>>>
>>>
>>> For x86 the advantage is that the processor can take care of raising the
>>> stage2 page fault in the guest, so it's faster.
>>>
>> I think there might be too much overhead if the page can be populated
>> quickly by host. For example, it's fast to populate the pages if swapin
>> isn't involved.

Those would still be handled by the host.  Only those that are not
present in the host (which you can see through the MMU notifier) would
be routed to the guest.  You can do things differently between "not
present fault because the page table does not exist" and "not present
fault because the page is missing in the host".

>> If I'm correct enough, it seems arm64 doesn't have similar mechanism,
>> routing stage2 page fault to guest.
> 
> Indeed, this isn't a thing on arm64. Exception caused by a S2 fault are
> always routed to EL2.

Is there an ARM-approved way to reuse the S2 fault syndromes to detect
async page faults?

(By the way, another "modern" use for async page faults is for postcopy
live migration).

Thanks,

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
