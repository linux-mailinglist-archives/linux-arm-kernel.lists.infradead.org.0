Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C111ABBB0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 10:51:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ahEeSxV1luFGjDlgTMDtG+CfD7qGO68T/NkXj6C163I=; b=YwTTn8kuJpq8XY
	tVdBIx3MMA8U+oy7ACupaUn64D4yzMU9iWCJF31Vs3PFGHmvvRttHDhfTYq3EBF1dk9O+P7DFePt4
	gz1wfSy2ndIy+gfoQ9EMtW2rHi1tziExTnaw9yBWQGJtj772KIjcefY6UaH1oQQhchnW/BMC9vJC3
	HJ1Gp93Mf5vAYSQTtNrnqlI+v8oGTUkoOCeFSAtMGTd50JFu17wiEfHsnhR/Z/lC3k9Oo/8GCz9Qs
	LRlai2YLuN3NDjPR9zxDhj1xnldjxj2mClyWwftESAXUi9Ugtq6ANH53Opw6hQe+/tRg/rpRFYd9c
	VWYOno8wYW8E6LXycMLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP0Ec-0002hV-Bl; Thu, 16 Apr 2020 08:50:58 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP0EU-0002Zu-9H
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 08:50:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587027048;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HBOSp8KoaqgQUXlL6khiQxh82SbQfD3UXPaPxlc3NpI=;
 b=SAZOXk8e3bOfIiblT3KEanC34Cr2ERHz2OAj1z5udHAIYoMzy7FEBAiLU3tOkG3vjFBXLU
 RJ1+UhYcNWRmanl/jDRIR+NLsaMtjBZk/1GV7FNoFaE1tJlNcojdz6CEPLZ0gyeSPCoaxI
 vu2BVvUEOncDoo6OHYGGljUZxbKLZSQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-270-MuypNbuHM0uD0I3hVYYtuw-1; Thu, 16 Apr 2020 04:50:46 -0400
X-MC-Unique: MuypNbuHM0uD0I3hVYYtuw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 994A818C35A6;
 Thu, 16 Apr 2020 08:50:42 +0000 (UTC)
Received: from gondolin (ovpn-112-234.ams2.redhat.com [10.36.112.234])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 330E27E7C4;
 Thu, 16 Apr 2020 08:50:22 +0000 (UTC)
Date: Thu, 16 Apr 2020 10:50:19 +0200
From: Cornelia Huck <cohuck@redhat.com>
To: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Subject: Re: [PATCH v2] KVM: Optimize kvm_arch_vcpu_ioctl_run function
Message-ID: <20200416105019.51191d79.cohuck@redhat.com>
In-Reply-To: <8b92fb5b-5138-0695-fb90-6c36b8dfad00@linux.alibaba.com>
References: <20200416051057.26526-1-tianjia.zhang@linux.alibaba.com>
 <878sivx67g.fsf@vitty.brq.redhat.com>
 <1000159f971a6fa3b5bd9e5871ce4d82@kernel.org>
 <8b92fb5b-5138-0695-fb90-6c36b8dfad00@linux.alibaba.com>
Organization: Red Hat GmbH
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_015050_404596_2F1D30C4 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: christoffer.dall@arm.com, wanpengli@tencent.com, kvm@vger.kernel.org,
 david@redhat.com, benh@kernel.crashing.org, heiko.carstens@de.ibm.com,
 peterx@redhat.com, linux-kernel@vger.kernel.org, paulus@ozlabs.org,
 hpa@zytor.com, kvmarm@lists.cs.columbia.edu, linux-s390@vger.kernel.org,
 frankja@linux.ibm.com, Marc Zyngier <maz@kernel.org>, joro@8bytes.org,
 x86@kernel.org, borntraeger@de.ibm.com, mingo@redhat.com,
 julien.thierry.kdev@gmail.com, thuth@redhat.com, gor@linux.ibm.com,
 suzuki.poulose@arm.com, kvm-ppc@vger.kernel.org, bp@alien8.de,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org, jmattson@google.com,
 tsbogend@alpha.franken.de, linux-mips@vger.kernel.org,
 sean.j.christopherson@intel.com, james.morse@arm.com, mpe@ellerman.id.au,
 pbonzini@redhat.com, Vitaly Kuznetsov <vkuznets@redhat.com>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAxNiBBcHIgMjAyMCAxNjo0NTozMyArMDgwMApUaWFuamlhIFpoYW5nIDx0aWFuamlh
LnpoYW5nQGxpbnV4LmFsaWJhYmEuY29tPiB3cm90ZToKCj4gT24gMjAyMC80LzE2IDE2OjI4LCBN
YXJjIFp5bmdpZXIgd3JvdGU6Cj4gPiBPbiAyMDIwLTA0LTE2IDA4OjAzLCBWaXRhbHkgS3V6bmV0
c292IHdyb3RlOiAgCj4gPj4gVGlhbmppYSBaaGFuZyA8dGlhbmppYS56aGFuZ0BsaW51eC5hbGli
YWJhLmNvbT4gd3JpdGVzOgo+ID4+ICAKPiA+Pj4gSW4gZWFybGllciB2ZXJzaW9ucyBvZiBrdm0s
ICdrdm1fcnVuJyBpcyBhbiBpbmRlcGVuZGVudCBzdHJ1Y3R1cmUKPiA+Pj4gYW5kIGlzIG5vdCBp
bmNsdWRlZCBpbiB0aGUgdmNwdSBzdHJ1Y3R1cmUuIEF0IHByZXNlbnQsICdrdm1fcnVuJwo+ID4+
PiBpcyBhbHJlYWR5IGluY2x1ZGVkIGluIHRoZSB2Y3B1IHN0cnVjdHVyZSwgc28gdGhlIHBhcmFt
ZXRlcgo+ID4+PiAna3ZtX3J1bicgaXMgcmVkdW5kYW50Lgo+ID4+Pgo+ID4+PiBUaGlzIHBhdGNo
IHNpbXBsaWZ5IHRoZSBmdW5jdGlvbiBkZWZpbml0aW9uLCByZW1vdmVzIHRoZSBleHRyYQo+ID4+
PiAna3ZtX3J1bicgcGFyYW1ldGVyLCBhbmQgZXh0cmFjdCBpdCBmcm9tIHRoZSAna3ZtX3ZjcHUn
IHN0cnVjdHVyZQo+ID4+PiBpZiBuZWNlc3NhcnkuCj4gPj4+Cj4gPj4+IFNpZ25lZC1vZmYtYnk6
IFRpYW5qaWEgWmhhbmcgPHRpYW5qaWEuemhhbmdAbGludXguYWxpYmFiYS5jb20+Cj4gPj4+IC0t
LQo+ID4+Pgo+ID4+PiB2MiBjaGFuZ2U6Cj4gPj4+IMKgIHJlbW92ZSAna3ZtX3J1bicgcGFyYW1l
dGVyIGFuZCBleHRyYWN0IGl0IGZyb20gJ2t2bV92Y3B1Jwo+ID4+Pgo+ID4+PiDCoGFyY2gvbWlw
cy9rdm0vbWlwcy5jwqDCoMKgwqDCoMKgIHzCoCAzICsrLQo+ID4+PiDCoGFyY2gvcG93ZXJwYy9r
dm0vcG93ZXJwYy5jIHzCoCAzICsrLQo+ID4+PiDCoGFyY2gvczM5MC9rdm0va3ZtLXMzOTAuY8Kg
wqAgfMKgIDMgKystCj4gPj4+IMKgYXJjaC94ODYva3ZtL3g4Ni5jwqDCoMKgwqDCoMKgwqDCoCB8
IDExICsrKysrKy0tLS0tCj4gPj4+IMKgaW5jbHVkZS9saW51eC9rdm1faG9zdC5owqDCoCB8wqAg
MiArLQo+ID4+PiDCoHZpcnQva3ZtL2FybS9hcm0uY8KgwqDCoMKgwqDCoMKgwqAgfMKgIDYgKysr
LS0tCj4gPj4+IMKgdmlydC9rdm0va3ZtX21haW4uY8KgwqDCoMKgwqDCoMKgIHzCoCAyICstCj4g
Pj4+IMKgNyBmaWxlcyBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkK
Cj4gPiBPdmVyYWxsLCB0aGVyZSBpcyBhIGxhcmdlIHNldCBvZiBjbGVhbnVwcyB0byBiZSBkb25l
IHdoZW4gYm90aCB0aGUgdmNwdSAKPiA+IGFuZCB0aGUgcnVuCj4gPiBzdHJ1Y3R1cmVzIGFyZSBw
YXNzZWQgYXMgcGFyYW1ldGVycyBhdCB0aGUgc2FtZSB0aW1lLiBKdXN0IGdyZXBwaW5nIHRoZSAK
PiA+IHRyZWUgZm9yCj4gPiBrdm1fcnVuIGlzIHByZXR0eSBpbnN0cnVjdGl2ZS4KPiA+IAo+ID4g
IMKgwqDCoMKgwqDCoMKgIE0uICAKPiAKPiBTb3JyeSwgaXQncyBteSBtaXN0YWtlLCBJIG9ubHkg
Y29tcGlsZWQgdGhlIHg4NiBwbGF0Zm9ybSwgSSB3aWxsIHN1Ym1pdCAKPiBwYXRjaCBhZ2Fpbi4K
CkkgdGhpbmsgaXQncyBjb21wbGV0ZWx5IGZpbmUgKGFuZCBldmVuIHByZWZlcmFibGUpIHRvIGRv
IGNsZWFudXBzIGxpa2UKdGhhdCBvbiB0b3AuCgpbRldJVywgSSBjb21waWxlZCBzMzkwIGhlcmUu
XQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
