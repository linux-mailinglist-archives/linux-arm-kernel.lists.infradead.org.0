Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 424461A75B2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 10:19:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gTC6fWFvslMToR2brWIqO0ypPD8vdht4eVTL+G7eBJ4=; b=YYMgC6D8N13DUG
	VTW8Qpe4wFcUJU3dNcw3sCJ4vrYJVqQwupPfnRObkPaM78vS3B6i53MDWavWpOBCMfgLD37ZikB5T
	0RP+ypRtVTa07CwUJp+Ct1zLEsZEomK4VC4sYB0/6ZLnvQG9AnClVQ0lLX6UJVQdn1Np9LAyddwqx
	Sx8ftgpu1nXonrjS8/17aPNO4SgZ3l3asz5G/ZQhqmmeZ7DBWxh6uow1O0gtIZ3CfBbIjfMc6u6hH
	dHLU0p1ZII5W9T0p8TWecveBz1N+10vlVxyuLiPrbSZnpFMSq2cGrlVzSjNj7ffJciBYPSXZXqWWT
	Zo9IuoRjPbz6HqpAV5vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOGmq-0000hp-Sd; Tue, 14 Apr 2020 08:19:16 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOGmg-0000gL-JM
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 08:19:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586852344;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5Wb7ghxdvKYdRHUeDIrwZRLDN53fs9i+DGns+KVd+no=;
 b=PkTSlSFuPa3VHPfkwulYvXZXNWKPSqnP6MKwyfdAH/CtMAG9ixUBadV96a2iIFtplJkuof
 +Pf/4L5xGmUNSBj0r5Chp14DGoHvwwK6QqPSk0BAuGfoNwVyZGDnAzZsIbiAq9nhfRGx0S
 oi0yCtUlTd5/6cqd7bzGEgCXIY46AdU=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-503-EO9GemnBN0agBQ4iQXkNOw-1; Tue, 14 Apr 2020 04:19:02 -0400
X-MC-Unique: EO9GemnBN0agBQ4iQXkNOw-1
Received: by mail-wr1-f72.google.com with SMTP id j22so8331990wrb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 01:19:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=TtBLM3c8JTLmBP2uDmSrWuT9/+Pwll6JJwpjBt6QX00=;
 b=gLdJtnS8yRmcIZJonAQcUeQ78pOpDYepnPNCMDgsTr7sZs6jRhjB8tt54Q+AyuP7NN
 IdELPnuQuXx3x9/Ape0UmpqegIFl8l/8rND5flbAtqvTKFdtAlH9X5ls+vsA8/vvinUv
 kcOtQlCjHRNl7wmuEaNpK7MKxnyiEv04Lfyej6R+IorHN4HhzHY2kRTIHVZ9Sgbggj2f
 58O7RhYg3VxNAtLo9EfHVsQu5Z4fsAsNEjx8JSmJK5vjtC8Cg3zKVYnJkJaKk3LB/OyT
 D+35Ex8NhQGwDp3FKNK24trO2fzP8VtiUv3U0lj8gCE+SPu2BW+5QGTqHIWBGDvjgHnA
 MWNw==
X-Gm-Message-State: AGi0PuZmKgX5fqXD2ykB80R2bPKr+QQnbw9CiH4pOTzb2EVx6UHJ0+7O
 LiLrUH1jf3/t8qelsoGXN2KQZL4PiQmPR1WpzTgEqyyIVO6RusweO2OIV4mGre1Ce+RP4P/Qs8t
 GU/vtVizm+9DXDKEQTkm8p6El5uaEPAniKT0=
X-Received: by 2002:a05:6000:8b:: with SMTP id
 m11mr8390698wrx.168.1586852341224; 
 Tue, 14 Apr 2020 01:19:01 -0700 (PDT)
X-Google-Smtp-Source: APiQypKNVMzJLyv+Go05DzXWcde1VJnPobjfS5TpC3OSGCsAYJkHQBkL4kr8iyDzRWBXP64iQWFZGA==
X-Received: by 2002:a05:6000:8b:: with SMTP id
 m11mr8390681wrx.168.1586852340970; 
 Tue, 14 Apr 2020 01:19:00 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:e159:eda1:c472:fcfa?
 ([2001:b07:6468:f312:e159:eda1:c472:fcfa])
 by smtp.gmail.com with ESMTPSA id o28sm3426907wra.84.2020.04.14.01.18.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Apr 2020 01:19:00 -0700 (PDT)
Subject: Re: [PATCH] kvm_host: unify VM_STAT and VCPU_STAT definitions in a
 single place
To: =?UTF-8?Q?Philippe_Mathieu-Daud=c3=a9?= <f4bug@amsat.org>,
 Emanuele Giuseppe Esposito <eesposit@redhat.com>, kvm@vger.kernel.org
References: <20200413140332.22896-1-eesposit@redhat.com>
 <03a481a8-bcf2-8755-d113-71ef393508bf@amsat.org>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <bf870876-9f9a-7ba8-d941-a3883e519eed@redhat.com>
Date: Tue, 14 Apr 2020 10:18:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <03a481a8-bcf2-8755-d113-71ef393508bf@amsat.org>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_011906_722089_A7036948 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Wanpeng Li <wanpengli@tencent.com>, David Hildenbrand <david@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>, kvmarm@lists.cs.columbia.edu,
 linux-s390@vger.kernel.org, Janosch Frank <frankja@linux.ibm.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvm-ppc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 Cornelia Huck <cohuck@redhat.com>, linux-kernel@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 James Morse <james.morse@arm.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTMvMDQvMjAgMjM6MzQsIFBoaWxpcHBlIE1hdGhpZXUtRGF1ZMOpIHdyb3RlOgo+PiArI2Rl
ZmluZSBWTV9TVEFUKHgsIC4uLikgb2Zmc2V0b2Yoc3RydWN0IGt2bSwgc3RhdC54KSwgS1ZNX1NU
QVRfVk0sICMjIF9fVkFfQVJHU19fCj4+ICsjZGVmaW5lIFZDUFVfU1RBVCh4LCAuLi4pIG9mZnNl
dG9mKHN0cnVjdCBrdm1fdmNwdSwgc3RhdC54KSwgS1ZNX1NUQVRfVkNQVSwgIyMgX19WQV9BUkdT
X18KPiBJIGZpbmQgdGhpcyBtYWNybyBleHBhbmRpbmcgaW50byBtdWx0aXBsZSBmaWVsZHMgb2Rk
Li4uIE1heWJlIGEgbWF0dGVyCj4gb2YgdGFzdGUuIFN1Z2dnZXN0aW9uLCBoYXZlIHRoZSBtYWNy
byBkZWZpbmUgdGhlIGZ1bGwgc3RydWN0dXJlLCBhcyBpbgo+IHRoZSBhcm02NCBhcmNoOgo+IAo+
ICNkZWZpbmUgVk1fU1RBVChuLCB4LCAuLi4pIHsgbiwgb2Zmc2V0b2Yoc3RydWN0IGt2bSwgc3Rh
dC54KSwKPiBLVk1fU1RBVF9WTSwgIyMgX19WQV9BUkdTX18gfQo+IAo+IERpdHRvIGZvciBWQ1BV
X1NUQVQoKS4KPiAKClllcywgdGhhdCdzIGEgZ29vZCBpZGVhLiAgRW1hbnVlbGUsIGNhbiB5b3Ug
c3dpdGNoIGl0IHRvIHRoaXMgZm9ybWF0PwoKVGhhbmtzLAoKUGFvbG8KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
