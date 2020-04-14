Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4606B1A83EA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 17:57:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hKWWQM0d4Y51uiEXM+JJW8E3lln0j6TStNvM+pD7cwk=; b=D9l2+eo7eicRsUzBowndOCsOW
	a79sJX7T1K/dC+2xX+f7MOCArEmg5cOQCUD57qKR4qTn6JLdHhPHe1FUZb/ZQHk7ucccVQnBvoIAO
	LrcBYJhh4JSfRg/EijhpImfjUnGNbTIUotRU/TiY+cF/cGWWK7mfvYulOwmmO9laR3BCsNM0sgc6R
	hXFR1HakE6QlyHpsm4KOVantBMR6sVaM5I/oGxktBhOTBvZ5QuFxGGBScemW5dYsRTp+ZVtSfTVG6
	JRsIIChFP7EyzuNsNyjmAc7+rFOrqQOOVohACXNmTm+M5fwGz0jA/UxU46IVLG0QD3j0coMfrtstd
	PxSSyhOqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jONwK-0003lw-4r; Tue, 14 Apr 2020 15:57:32 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jONvy-0003bI-BS
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 15:57:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586879828;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LtET4y1erldy/ABcJ/1Ge/mDl44RsauO4InLRypykLQ=;
 b=OiCh9d8InaJL3TxRjG1ZrVSxsxL8wgX1MTTeyzlxpWgIOR3V8zoRqENDwPBqMb6YRiC1hc
 uwoKsQpd3grRN8dJfZXHdOJil7j0Tvd8Rcj2kkJbgyXLOa618ltxw39zpIrdB86GWmYguD
 IduD2zoilT0LNamUTbtQSeNUKfOUaDg=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-34-tFiwn0GAPki02XvN8dRR1A-1; Tue, 14 Apr 2020 11:57:06 -0400
X-MC-Unique: tFiwn0GAPki02XvN8dRR1A-1
Received: by mail-wm1-f69.google.com with SMTP id b203so3977803wmd.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 08:57:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+YYLNoHPS0R9msE++qaePEk7EKWnckmMQYzoCYqpJRk=;
 b=e7fmNE7hoQwNqcoHSF9+eVPnijDf/GR6UIBq7LqCPsuw3SwUBsbZuGzQBKFGXA9TeJ
 mOUvhK37HPklwMQxsbKbYf/m9XxMlROdzJmYG7xKla04rSXgXCIjHNJszBrpksXLK8ot
 hVriFou7SvMDgVX6LIo0ex3LLrnUdaaGnO2gT0lwKa6HyLOzU9LqwsFKBfsf+e4BstsL
 CuW93KuO/Jc0DrfsapwXNGkGTBD1HOLZ6UbBvFEqwK3L8ZhooXuCOfEt/v7KYeDBQqgd
 h7l1JC5hXW0uOzpYFGh12Ipp4+j+6QMb1gnSbnQEj/tRhaBm93Ebd4SHPuuRrg+RuX1Y
 lklg==
X-Gm-Message-State: AGi0Pua6hArKtkTWDzenSvQq+3x8dhHTxGF1GduqGgoiOEAwJRccHZFA
 CDN6MCre9lckj6AbdgXw9pA7XGwaP2DktgE9e6jmaxKnV5ggsg8+qqLaHgEbaUE3oJIiwBXp3nH
 gOS3I0RN2c0mt0LJuXN8GQScRE6l4Lke7U68=
X-Received: by 2002:a1c:5502:: with SMTP id j2mr502940wmb.93.1586879825148;
 Tue, 14 Apr 2020 08:57:05 -0700 (PDT)
X-Google-Smtp-Source: APiQypK43hPUptF5L9yvQziVzJGJV/VyMhS23tlGH7dzBh06iijjr98+S1d6K1K1pTXXFtXi18cgZQ==
X-Received: by 2002:a1c:5502:: with SMTP id j2mr502914wmb.93.1586879824909;
 Tue, 14 Apr 2020 08:57:04 -0700 (PDT)
Received: from localhost.localdomain ([194.230.155.210])
 by smtp.gmail.com with ESMTPSA id j10sm16390309wmi.18.2020.04.14.08.57.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Apr 2020 08:57:04 -0700 (PDT)
Subject: Re: [PATCH] kvm_host: unify VM_STAT and VCPU_STAT definitions in a
 single place
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?Q?Philippe_Mathieu-Daud=c3=a9?= <f4bug@amsat.org>,
 kvm@vger.kernel.org
References: <20200413140332.22896-1-eesposit@redhat.com>
 <03a481a8-bcf2-8755-d113-71ef393508bf@amsat.org>
 <bf870876-9f9a-7ba8-d941-a3883e519eed@redhat.com>
From: Emanuele Giuseppe Esposito <eesposit@redhat.com>
Message-ID: <a5e9246e-2bf3-204e-b79b-0ed4c40fcc5d@redhat.com>
Date: Tue, 14 Apr 2020 17:57:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <bf870876-9f9a-7ba8-d941-a3883e519eed@redhat.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_085710_637777_17C2ECA7 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA0LzE0LzIwIDEwOjE4IEFNLCBQYW9sbyBCb256aW5pIHdyb3RlOgo+IE9uIDEzLzA0LzIw
IDIzOjM0LCBQaGlsaXBwZSBNYXRoaWV1LURhdWTDqSB3cm90ZToKPj4+ICsjZGVmaW5lIFZNX1NU
QVQoeCwgLi4uKSBvZmZzZXRvZihzdHJ1Y3Qga3ZtLCBzdGF0LngpLCBLVk1fU1RBVF9WTSwgIyMg
X19WQV9BUkdTX18KPj4+ICsjZGVmaW5lIFZDUFVfU1RBVCh4LCAuLi4pIG9mZnNldG9mKHN0cnVj
dCBrdm1fdmNwdSwgc3RhdC54KSwgS1ZNX1NUQVRfVkNQVSwgIyMgX19WQV9BUkdTX18KPj4gSSBm
aW5kIHRoaXMgbWFjcm8gZXhwYW5kaW5nIGludG8gbXVsdGlwbGUgZmllbGRzIG9kZC4uLiBNYXli
ZSBhIG1hdHRlcgo+PiBvZiB0YXN0ZS4gU3VnZ2dlc3Rpb24sIGhhdmUgdGhlIG1hY3JvIGRlZmlu
ZSB0aGUgZnVsbCBzdHJ1Y3R1cmUsIGFzIGluCj4+IHRoZSBhcm02NCBhcmNoOgo+Pgo+PiAjZGVm
aW5lIFZNX1NUQVQobiwgeCwgLi4uKSB7IG4sIG9mZnNldG9mKHN0cnVjdCBrdm0sIHN0YXQueCks
Cj4+IEtWTV9TVEFUX1ZNLCAjIyBfX1ZBX0FSR1NfXyB9Cj4+Cj4+IERpdHRvIGZvciBWQ1BVX1NU
QVQoKS4KPj4KSGkgUGhpbGlwcGUgYW5kIFBhb2xvLAo+IAo+IFllcywgdGhhdCdzIGEgZ29vZCBp
ZGVhLiAgRW1hbnVlbGUsIGNhbiB5b3Ugc3dpdGNoIGl0IHRvIHRoaXMgZm9ybWF0PwoKU3VyZSwg
SSBqdXN0IHN1Ym1pdHRlZCB0aGUgdjIgdmVyc2lvbi4KClRoYW5rcywKCkVtYW51ZWxlCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
