Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A01154917
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 17:26:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GycvRDhl9hLBRJEDU+n9aZDtY7r1wZZtOKv7AQHDVI8=; b=bhKCS83NWifHo3
	MnRc4K1qeIwFE+4fpSNvpyZkbU5l8Dv4Fmm1hNQN/rXYNtFAs/kqiqtwBmbx+bIUeL4N1L6nfLA9/
	7wMJsGjMrpoZRiJ+wRk1+5wj09sH6cm0cCXT3afzr3igaGbpR8H9AWofjQJrvh3pAX97mIpnp/c3n
	BHGdCF7gJOWIQ4tlCd8SVwg05yqtRGZZ2BoPdLtxE8FddfNJPABIYLRR3ZDTU4/cSu+tTJV7CK83v
	20E2RwUBdG92rcTiW9O01e+yaMCzOUDjH+5eoKaME6r5IEJ06hofavXEk9h/2OCyn59DopyKDWqIk
	2bqnBhBt2o6jnvTHmhRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izjz7-0006hD-5c; Thu, 06 Feb 2020 16:26:33 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izjyz-0006gE-8g
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 16:26:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581006383;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=36/9V1aQHvnph1E3Ra53dLjyT6m3Oj9D2Do7+H9igJw=;
 b=IVrjnMdfbkGmiGfFyczILdV7dSpdzovI+THVjzDRBkZS95GFm5HUGQtOX+TvEY1xElYlf7
 Omz93p0CEcbYqMSq8TMrMIjFgrWKYI/xLIwxmon9ui5zoNW6q76w/UV7j5ut3eTa9S7Mtv
 ndFLAhRuH6IrYOzQw+4K50ofyg/IreU=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-274-oWjoQ4cmMyOPokmhMOex0A-1; Thu, 06 Feb 2020 11:26:21 -0500
Received: by mail-qt1-f200.google.com with SMTP id h11so4221998qtq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 08:26:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=QT4Dyzc7mqGctXHju0bs7rAU06NGyt0QOqamAxfKKT8=;
 b=UfmFGePVsjAMsfHFj+5TWFReZVIL4gJqqsZiaqqT8B2HCaQNDNuAhwlQGIw5YIpGnm
 MkM3hSGpjSojT85xv/n98yzSP4Yv3b2H83jbb7Xpar0k6ViatKy7XWLxdhf9yT/5yiCx
 HsmK3iNnzYlqPKjK5gdClOLCQMKTsRY9gK4FUFrev4GwnS0Yx7Q19pIh1bc8xljoPtIo
 KaItQuUq7xn9Z3rCQCRCWlVr9Bx17RUZQ7TsSrQny6uH7znt0pr9wqJzna0NAPffCiFT
 mlhAh86OMoBsqnnGGuRCtLZ3BzBsYT3PILJ5c1V8sxfFG3OmoGGE0siumDPf7iVom9Kg
 WC1Q==
X-Gm-Message-State: APjAAAUW2D9+1qivbtmNhfXgpRd711ppU0056NVsKn70JJNJRqZIMMkt
 1+Zggb81BH3hn9TkXuk/qXG5X/+h7HRiX/29odHsfl6NqfhtCcy7WnFYaHvWSCmo7s4j+DMMU7W
 0wOPpoiLW7jiHlV1wkbeIwK6PIHguG7QkfaE=
X-Received: by 2002:a37:7b43:: with SMTP id w64mr3282129qkc.203.1581006381172; 
 Thu, 06 Feb 2020 08:26:21 -0800 (PST)
X-Google-Smtp-Source: APXvYqx+9hqm72d72EyKnRwyP/P3+idsr/CwBkH5EeXl92Z4n7jMR0A/IUI51rmKg9nIiuqPw/V2og==
X-Received: by 2002:a37:7b43:: with SMTP id w64mr3282106qkc.203.1581006380845; 
 Thu, 06 Feb 2020 08:26:20 -0800 (PST)
Received: from xz-x1 ([2607:9880:19c8:32::2])
 by smtp.gmail.com with ESMTPSA id g77sm1629814qke.129.2020.02.06.08.26.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 08:26:20 -0800 (PST)
Date: Thu, 6 Feb 2020 11:26:17 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v5 09/19] KVM: Move setting of memslot into helper routine
Message-ID: <20200206162617.GB695333@xz-x1>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-10-sean.j.christopherson@intel.com>
MIME-Version: 1.0
In-Reply-To: <20200121223157.15263-10-sean.j.christopherson@intel.com>
X-MC-Unique: oWjoQ4cmMyOPokmhMOex0A-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_082625_387649_A929081E 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>, kvmarm@lists.cs.columbia.edu,
 Janosch Frank <frankja@linux.ibm.com>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvm-ppc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 Cornelia Huck <cohuck@redhat.com>, Christoffer Dall <christoffer.dall@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Philippe =?utf-8?Q?Mathieu-Daud=C3=A9?= <f4bug@amsat.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKYW4gMjEsIDIwMjAgYXQgMDI6MzE6NDdQTSAtMDgwMCwgU2VhbiBDaHJpc3RvcGhl
cnNvbiB3cm90ZToKPiBTcGxpdCBvdXQgdGhlIGNvcmUgZnVuY3Rpb25hbGl0eSBvZiBzZXR0aW5n
IGEgbWVtc2xvdCBpbnRvIGEgc2VwYXJhdGUKPiBoZWxwZXIgaW4gcHJlcGFyYXRpb24gZm9yIG1v
dmluZyBtZW1zbG90IGRlbGV0aW9uIGludG8gaXRzIG93biByb3V0aW5lLgo+IAo+IFRlc3RlZC1i
eTogQ2hyaXN0b2ZmZXIgRGFsbCA8Y2hyaXN0b2ZmZXIuZGFsbEBhcm0uY29tPgo+IFJldmlld2Vk
LWJ5OiBQaGlsaXBwZSBNYXRoaWV1LURhdWTDqSA8ZjRidWdAYW1zYXQub3JnPgo+IFNpZ25lZC1v
ZmYtYnk6IFNlYW4gQ2hyaXN0b3BoZXJzb24gPHNlYW4uai5jaHJpc3RvcGhlcnNvbkBpbnRlbC5j
b20+Cj4gLS0tCj4gIHZpcnQva3ZtL2t2bV9tYWluLmMgfCAxMDYgKysrKysrKysrKysrKysrKysr
KysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDYzIGluc2VydGlv
bnMoKyksIDQzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS92aXJ0L2t2bS9rdm1fbWFp
bi5jIGIvdmlydC9rdm0va3ZtX21haW4uYwo+IGluZGV4IGZkZjA0NWE1ZDI0MC4uNjRmNmM1ZDM1
MjYwIDEwMDY0NAo+IC0tLSBhL3ZpcnQva3ZtL2t2bV9tYWluLmMKPiArKysgYi92aXJ0L2t2bS9r
dm1fbWFpbi5jCj4gQEAgLTk4Miw2ICs5ODIsNjYgQEAgc3RhdGljIHN0cnVjdCBrdm1fbWVtc2xv
dHMgKmluc3RhbGxfbmV3X21lbXNsb3RzKHN0cnVjdCBrdm0gKmt2bSwKPiAgCXJldHVybiBvbGRf
bWVtc2xvdHM7Cj4gIH0KPiAgCj4gK3N0YXRpYyBpbnQga3ZtX3NldF9tZW1zbG90KHN0cnVjdCBr
dm0gKmt2bSwKPiArCQkJICAgY29uc3Qgc3RydWN0IGt2bV91c2Vyc3BhY2VfbWVtb3J5X3JlZ2lv
biAqbWVtLAo+ICsJCQkgICBjb25zdCBzdHJ1Y3Qga3ZtX21lbW9yeV9zbG90ICpvbGQsCj4gKwkJ
CSAgIHN0cnVjdCBrdm1fbWVtb3J5X3Nsb3QgKm5ldywgaW50IGFzX2lkLAo+ICsJCQkgICBlbnVt
IGt2bV9tcl9jaGFuZ2UgY2hhbmdlKQo+ICt7Cj4gKwlzdHJ1Y3Qga3ZtX21lbW9yeV9zbG90ICpz
bG90Owo+ICsJc3RydWN0IGt2bV9tZW1zbG90cyAqc2xvdHM7Cj4gKwlpbnQgcjsKPiArCj4gKwlz
bG90cyA9IGt2emFsbG9jKHNpemVvZihzdHJ1Y3Qga3ZtX21lbXNsb3RzKSwgR0ZQX0tFUk5FTF9B
Q0NPVU5UKTsKPiArCWlmICghc2xvdHMpCj4gKwkJcmV0dXJuIC1FTk9NRU07Cj4gKwltZW1jcHko
c2xvdHMsIF9fa3ZtX21lbXNsb3RzKGt2bSwgYXNfaWQpLCBzaXplb2Yoc3RydWN0IGt2bV9tZW1z
bG90cykpOwo+ICsKPiArCWlmIChjaGFuZ2UgPT0gS1ZNX01SX0RFTEVURSB8fCBjaGFuZ2UgPT0g
S1ZNX01SX01PVkUpIHsKPiArCQkvKgo+ICsJCSAqIE5vdGUsIHRoZSBJTlZBTElEIGZsYWcgbmVl
ZHMgdG8gYmUgaW4gdGhlIGFwcHJvcHJpYXRlIGVudHJ5Cj4gKwkJICogaW4gdGhlIGZyZXNobHkg
YWxsb2NhdGVkIG1lbXNsb3RzLCBub3QgaW4gQG9sZCBvciBAbmV3Lgo+ICsJCSAqLwo+ICsJCXNs
b3QgPSBpZF90b19tZW1zbG90KHNsb3RzLCBvbGQtPmlkKTsKPiArCQlzbG90LT5mbGFncyB8PSBL
Vk1fTUVNU0xPVF9JTlZBTElEOwo+ICsKPiArCQkvKgo+ICsJCSAqIFdlIGNhbiByZS11c2UgdGhl
IG9sZCBtZW1zbG90cywgdGhlIG9ubHkgZGlmZmVyZW5jZSBmcm9tIHRoZQo+ICsJCSAqIG5ld2x5
IGluc3RhbGxlZCBtZW1zbG90cyBpcyB0aGUgaW52YWxpZCBmbGFnLCB3aGljaCB3aWxsIGdldAo+
ICsJCSAqIGRyb3BwZWQgYnkgdXBkYXRlX21lbXNsb3RzIGFueXdheS4gIFdlJ2xsIGFsc28gcmV2
ZXJ0IHRvIHRoZQo+ICsJCSAqIG9sZCBtZW1zbG90cyBpZiBwcmVwYXJpbmcgdGhlIG5ldyBtZW1v
cnkgcmVnaW9uIGZhaWxzLgo+ICsJCSAqLwo+ICsJCXNsb3RzID0gaW5zdGFsbF9uZXdfbWVtc2xv
dHMoa3ZtLCBhc19pZCwgc2xvdHMpOwo+ICsKPiArCQkvKiBGcm9tIHRoaXMgcG9pbnQgbm8gbmV3
IHNoYWRvdyBwYWdlcyBwb2ludGluZyB0byBhIGRlbGV0ZWQsCj4gKwkJICogb3IgbW92ZWQsIG1l
bXNsb3Qgd2lsbCBiZSBjcmVhdGVkLgo+ICsJCSAqCj4gKwkJICogdmFsaWRhdGlvbiBvZiBzcC0+
Z2ZuIGhhcHBlbnMgaW46Cj4gKwkJICoJLSBnZm5fdG9faHZhIChrdm1fcmVhZF9ndWVzdCwgZ2Zu
X3RvX3BmbikKPiArCQkgKgktIGt2bV9pc192aXNpYmxlX2dmbiAobW11X2NoZWNrX3Jvb3QpCj4g
KwkJICovCj4gKwkJa3ZtX2FyY2hfZmx1c2hfc2hhZG93X21lbXNsb3Qoa3ZtLCBzbG90KTsKPiAr
CX0KPiArCj4gKwlyID0ga3ZtX2FyY2hfcHJlcGFyZV9tZW1vcnlfcmVnaW9uKGt2bSwgbmV3LCBt
ZW0sIGNoYW5nZSk7Cj4gKwlpZiAocikKPiArCQlnb3RvIG91dF9zbG90czsKPiArCj4gKwl1cGRh
dGVfbWVtc2xvdHMoc2xvdHMsIG5ldywgY2hhbmdlKTsKPiArCXNsb3RzID0gaW5zdGFsbF9uZXdf
bWVtc2xvdHMoa3ZtLCBhc19pZCwgc2xvdHMpOwo+ICsKPiArCWt2bV9hcmNoX2NvbW1pdF9tZW1v
cnlfcmVnaW9uKGt2bSwgbWVtLCBvbGQsIG5ldywgY2hhbmdlKTsKPiArCj4gKwlrdmZyZWUoc2xv
dHMpOwo+ICsJcmV0dXJuIDA7Cj4gKwo+ICtvdXRfc2xvdHM6Cj4gKwlpZiAoY2hhbmdlID09IEtW
TV9NUl9ERUxFVEUgfHwgY2hhbmdlID09IEtWTV9NUl9NT1ZFKQo+ICsJCXNsb3RzID0gaW5zdGFs
bF9uZXdfbWVtc2xvdHMoa3ZtLCBhc19pZCwgc2xvdHMpOwo+ICsJa3ZmcmVlKHNsb3RzKTsKPiAr
CXJldHVybiByOwo+ICt9Cj4gKwo+ICAvKgo+ICAgKiBBbGxvY2F0ZSBzb21lIG1lbW9yeSBhbmQg
Z2l2ZSBpdCBhbiBhZGRyZXNzIGluIHRoZSBndWVzdCBwaHlzaWNhbCBhZGRyZXNzCj4gICAqIHNw
YWNlLgo+IEBAIC05OTgsNyArMTA1OCw2IEBAIGludCBfX2t2bV9zZXRfbWVtb3J5X3JlZ2lvbihz
dHJ1Y3Qga3ZtICprdm0sCj4gIAl1bnNpZ25lZCBsb25nIG5wYWdlczsKPiAgCXN0cnVjdCBrdm1f
bWVtb3J5X3Nsb3QgKnNsb3Q7Cj4gIAlzdHJ1Y3Qga3ZtX21lbW9yeV9zbG90IG9sZCwgbmV3Owo+
IC0Jc3RydWN0IGt2bV9tZW1zbG90cyAqc2xvdHM7Cj4gIAlpbnQgYXNfaWQsIGlkOwo+ICAJZW51
bSBrdm1fbXJfY2hhbmdlIGNoYW5nZTsKPiAgCj4gQEAgLTEwODUsNTggKzExNDQsMTkgQEAgaW50
IF9fa3ZtX3NldF9tZW1vcnlfcmVnaW9uKHN0cnVjdCBrdm0gKmt2bSwKPiAgCQkJcmV0dXJuIHI7
Cj4gIAl9Cj4gIAo+IC0Jc2xvdHMgPSBrdnphbGxvYyhzaXplb2Yoc3RydWN0IGt2bV9tZW1zbG90
cyksIEdGUF9LRVJORUxfQUNDT1VOVCk7Cj4gLQlpZiAoIXNsb3RzKSB7Cj4gLQkJciA9IC1FTk9N
RU07Cj4gLQkJZ290byBvdXRfYml0bWFwOwo+IC0JfQo+IC0JbWVtY3B5KHNsb3RzLCBfX2t2bV9t
ZW1zbG90cyhrdm0sIGFzX2lkKSwgc2l6ZW9mKHN0cnVjdCBrdm1fbWVtc2xvdHMpKTsKPiAtCj4g
LQlpZiAoKGNoYW5nZSA9PSBLVk1fTVJfREVMRVRFKSB8fCAoY2hhbmdlID09IEtWTV9NUl9NT1ZF
KSkgewo+IC0JCXNsb3QgPSBpZF90b19tZW1zbG90KHNsb3RzLCBpZCk7Cj4gLQkJc2xvdC0+Zmxh
Z3MgfD0gS1ZNX01FTVNMT1RfSU5WQUxJRDsKPiAtCj4gLQkJLyoKPiAtCQkgKiBXZSBjYW4gcmUt
dXNlIHRoZSBvbGQgbWVtc2xvdHMsIHRoZSBvbmx5IGRpZmZlcmVuY2UgZnJvbSB0aGUKPiAtCQkg
KiBuZXdseSBpbnN0YWxsZWQgbWVtc2xvdHMgaXMgdGhlIGludmFsaWQgZmxhZywgd2hpY2ggd2ls
bCBnZXQKPiAtCQkgKiBkcm9wcGVkIGJ5IHVwZGF0ZV9tZW1zbG90cyBhbnl3YXkuICBXZSdsbCBh
bHNvIHJldmVydCB0byB0aGUKPiAtCQkgKiBvbGQgbWVtc2xvdHMgaWYgcHJlcGFyaW5nIHRoZSBu
ZXcgbWVtb3J5IHJlZ2lvbiBmYWlscy4KPiAtCQkgKi8KPiAtCQlzbG90cyA9IGluc3RhbGxfbmV3
X21lbXNsb3RzKGt2bSwgYXNfaWQsIHNsb3RzKTsKPiAtCj4gLQkJLyogRnJvbSB0aGlzIHBvaW50
IG5vIG5ldyBzaGFkb3cgcGFnZXMgcG9pbnRpbmcgdG8gYSBkZWxldGVkLAo+IC0JCSAqIG9yIG1v
dmVkLCBtZW1zbG90IHdpbGwgYmUgY3JlYXRlZC4KPiAtCQkgKgo+IC0JCSAqIHZhbGlkYXRpb24g
b2Ygc3AtPmdmbiBoYXBwZW5zIGluOgo+IC0JCSAqCS0gZ2ZuX3RvX2h2YSAoa3ZtX3JlYWRfZ3Vl
c3QsIGdmbl90b19wZm4pCj4gLQkJICoJLSBrdm1faXNfdmlzaWJsZV9nZm4gKG1tdV9jaGVja19y
b290KQo+IC0JCSAqLwo+IC0JCWt2bV9hcmNoX2ZsdXNoX3NoYWRvd19tZW1zbG90KGt2bSwgc2xv
dCk7Cj4gLQl9Cj4gLQo+IC0JciA9IGt2bV9hcmNoX3ByZXBhcmVfbWVtb3J5X3JlZ2lvbihrdm0s
ICZuZXcsIG1lbSwgY2hhbmdlKTsKPiAtCWlmIChyKQo+IC0JCWdvdG8gb3V0X3Nsb3RzOwo+IC0K
PiAgCS8qIGFjdHVhbCBtZW1vcnkgaXMgZnJlZWQgdmlhIG9sZCBpbiBrdm1fZnJlZV9tZW1zbG90
IGJlbG93ICovCj4gIAlpZiAoY2hhbmdlID09IEtWTV9NUl9ERUxFVEUpIHsKPiAgCQluZXcuZGly
dHlfYml0bWFwID0gTlVMTDsKPiAgCQltZW1zZXQoJm5ldy5hcmNoLCAwLCBzaXplb2YobmV3LmFy
Y2gpKTsKPiAgCX0KCkl0J3Mgbm90IGV4dHJlbWVseSBjbGVhciB0byBtZSBvbiB3aHkgdGhpcyBz
aW5nbGUgYmxvY2sgaXMgbGVmdG92ZXIKaGVyZSBpbnN0ZWFkIG9mIHB1dHRpbmcgaW50byBrdm1f
c2V0X21lbXNsb3QoKS4gIEkgc2VlIHRoYXQgYWZ0ZXIgYWxsCml0J2xsIGJlIHJlbW92ZWQgaW4g
cGF0Y2ggMTIsIHNvIGl0IHNlZW1zIE9LOgoKUmV2aWV3ZWQtYnk6IFBldGVyIFh1IDxwZXRlcnhA
cmVkaGF0LmNvbT4KCj4gIAo+IC0JdXBkYXRlX21lbXNsb3RzKHNsb3RzLCAmbmV3LCBjaGFuZ2Up
Owo+IC0Jc2xvdHMgPSBpbnN0YWxsX25ld19tZW1zbG90cyhrdm0sIGFzX2lkLCBzbG90cyk7Cj4g
LQo+IC0Ja3ZtX2FyY2hfY29tbWl0X21lbW9yeV9yZWdpb24oa3ZtLCBtZW0sICZvbGQsICZuZXcs
IGNoYW5nZSk7Cj4gKwlyID0ga3ZtX3NldF9tZW1zbG90KGt2bSwgbWVtLCAmb2xkLCAmbmV3LCBh
c19pZCwgY2hhbmdlKTsKPiArCWlmIChyKQo+ICsJCWdvdG8gb3V0X2JpdG1hcDsKPiAgCj4gIAlr
dm1fZnJlZV9tZW1zbG90KGt2bSwgJm9sZCwgJm5ldyk7Cj4gLQlrdmZyZWUoc2xvdHMpOwo+ICAJ
cmV0dXJuIDA7Cj4gIAo+IC1vdXRfc2xvdHM6Cj4gLQlpZiAoY2hhbmdlID09IEtWTV9NUl9ERUxF
VEUgfHwgY2hhbmdlID09IEtWTV9NUl9NT1ZFKQo+IC0JCXNsb3RzID0gaW5zdGFsbF9uZXdfbWVt
c2xvdHMoa3ZtLCBhc19pZCwgc2xvdHMpOwo+IC0Ja3ZmcmVlKHNsb3RzKTsKPiAgb3V0X2JpdG1h
cDoKPiAgCWlmIChuZXcuZGlydHlfYml0bWFwICYmICFvbGQuZGlydHlfYml0bWFwKQo+ICAJCWt2
bV9kZXN0cm95X2RpcnR5X2JpdG1hcCgmbmV3KTsKPiAtLSAKPiAyLjI0LjEKPiAKCi0tIApQZXRl
ciBYdQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
