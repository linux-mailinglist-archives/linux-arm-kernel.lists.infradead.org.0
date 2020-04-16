Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED4F1ABC2E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 11:09:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O0kCXF9lrsCHaIm0VLl4BDw5SfmcZYErf9K6tu6BVEI=; b=fkOlPS3T3j5c6iSyLbeD6Zkyh
	4jSjIDJqN/J3qcrOXfnDD0h7+5etMnyqS0+RM3L0Bs27/PVNAGEILzCy4QN2MkZuOOwZyiF/oJEoq
	2GFOohcJjOoreALfTU7t/YwJNBfrC/h5xBVsWXhx+lVM+3NaeyHfWoBTbx9bL7/g2B9kIKTMWfWJv
	zrg8BPuiNl1gq4WksPAwZCjikpCXnOlb2VAuZqCUqtAf+BcyZJ4M0Zp7uice7gZaY8a6Wq5ousPFU
	qfGQq/TRoUyohtw32OW1smEKElBENi+CKroMJsCsNiKxHQAc99eRbif2Aq2KbQFLlGteGPaQV8cQH
	qwC3aRVnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP0WC-0007Et-QI; Thu, 16 Apr 2020 09:09:08 +0000
Received: from out30-132.freemail.mail.aliyun.com ([115.124.30.132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP0W4-0007EE-S3
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 09:09:02 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R101e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04394;
 MF=tianjia.zhang@linux.alibaba.com; NM=1; PH=DS; RN=36; SR=0;
 TI=SMTPD_---0TvhGIdK_1587028131; 
Received: from 30.27.118.45(mailfrom:tianjia.zhang@linux.alibaba.com
 fp:SMTPD_---0TvhGIdK_1587028131) by smtp.aliyun-inc.com(127.0.0.1);
 Thu, 16 Apr 2020 17:08:53 +0800
Subject: Re: [PATCH v2] KVM: Optimize kvm_arch_vcpu_ioctl_run function
To: Cornelia Huck <cohuck@redhat.com>
References: <20200416051057.26526-1-tianjia.zhang@linux.alibaba.com>
 <878sivx67g.fsf@vitty.brq.redhat.com>
 <1000159f971a6fa3b5bd9e5871ce4d82@kernel.org>
 <8b92fb5b-5138-0695-fb90-6c36b8dfad00@linux.alibaba.com>
 <20200416105019.51191d79.cohuck@redhat.com>
From: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Message-ID: <668a12b9-eda5-2d42-95f9-8d5e2990a465@linux.alibaba.com>
Date: Thu, 16 Apr 2020 17:08:51 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200416105019.51191d79.cohuck@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_020901_066902_0FE45116 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.132 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyMDIwLzQvMTYgMTY6NTAsIENvcm5lbGlhIEh1Y2sgd3JvdGU6Cj4gT24gVGh1LCAxNiBB
cHIgMjAyMCAxNjo0NTozMyArMDgwMAo+IFRpYW5qaWEgWmhhbmcgPHRpYW5qaWEuemhhbmdAbGlu
dXguYWxpYmFiYS5jb20+IHdyb3RlOgo+IAo+PiBPbiAyMDIwLzQvMTYgMTY6MjgsIE1hcmMgWnlu
Z2llciB3cm90ZToKPj4+IE9uIDIwMjAtMDQtMTYgMDg6MDMsIFZpdGFseSBLdXpuZXRzb3Ygd3Jv
dGU6Cj4+Pj4gVGlhbmppYSBaaGFuZyA8dGlhbmppYS56aGFuZ0BsaW51eC5hbGliYWJhLmNvbT4g
d3JpdGVzOgo+Pj4+ICAgCj4+Pj4+IEluIGVhcmxpZXIgdmVyc2lvbnMgb2Yga3ZtLCAna3ZtX3J1
bicgaXMgYW4gaW5kZXBlbmRlbnQgc3RydWN0dXJlCj4+Pj4+IGFuZCBpcyBub3QgaW5jbHVkZWQg
aW4gdGhlIHZjcHUgc3RydWN0dXJlLiBBdCBwcmVzZW50LCAna3ZtX3J1bicKPj4+Pj4gaXMgYWxy
ZWFkeSBpbmNsdWRlZCBpbiB0aGUgdmNwdSBzdHJ1Y3R1cmUsIHNvIHRoZSBwYXJhbWV0ZXIKPj4+
Pj4gJ2t2bV9ydW4nIGlzIHJlZHVuZGFudC4KPj4+Pj4KPj4+Pj4gVGhpcyBwYXRjaCBzaW1wbGlm
eSB0aGUgZnVuY3Rpb24gZGVmaW5pdGlvbiwgcmVtb3ZlcyB0aGUgZXh0cmEKPj4+Pj4gJ2t2bV9y
dW4nIHBhcmFtZXRlciwgYW5kIGV4dHJhY3QgaXQgZnJvbSB0aGUgJ2t2bV92Y3B1JyBzdHJ1Y3R1
cmUKPj4+Pj4gaWYgbmVjZXNzYXJ5Lgo+Pj4+Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBUaWFuamlh
IFpoYW5nIDx0aWFuamlhLnpoYW5nQGxpbnV4LmFsaWJhYmEuY29tPgo+Pj4+PiAtLS0KPj4+Pj4K
Pj4+Pj4gdjIgY2hhbmdlOgo+Pj4+PiAgwqAgcmVtb3ZlICdrdm1fcnVuJyBwYXJhbWV0ZXIgYW5k
IGV4dHJhY3QgaXQgZnJvbSAna3ZtX3ZjcHUnCj4+Pj4+Cj4+Pj4+ICDCoGFyY2gvbWlwcy9rdm0v
bWlwcy5jwqDCoMKgwqDCoMKgIHzCoCAzICsrLQo+Pj4+PiAgwqBhcmNoL3Bvd2VycGMva3ZtL3Bv
d2VycGMuYyB8wqAgMyArKy0KPj4+Pj4gIMKgYXJjaC9zMzkwL2t2bS9rdm0tczM5MC5jwqDCoCB8
wqAgMyArKy0KPj4+Pj4gIMKgYXJjaC94ODYva3ZtL3g4Ni5jwqDCoMKgwqDCoMKgwqDCoCB8IDEx
ICsrKysrKy0tLS0tCj4+Pj4+ICDCoGluY2x1ZGUvbGludXgva3ZtX2hvc3QuaMKgwqAgfMKgIDIg
Ky0KPj4+Pj4gIMKgdmlydC9rdm0vYXJtL2FybS5jwqDCoMKgwqDCoMKgwqDCoCB8wqAgNiArKyst
LS0KPj4+Pj4gIMKgdmlydC9rdm0va3ZtX21haW4uY8KgwqDCoMKgwqDCoMKgIHzCoCAyICstCj4+
Pj4+ICDCoDcgZmlsZXMgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0p
Cj4gCj4+PiBPdmVyYWxsLCB0aGVyZSBpcyBhIGxhcmdlIHNldCBvZiBjbGVhbnVwcyB0byBiZSBk
b25lIHdoZW4gYm90aCB0aGUgdmNwdQo+Pj4gYW5kIHRoZSBydW4KPj4+IHN0cnVjdHVyZXMgYXJl
IHBhc3NlZCBhcyBwYXJhbWV0ZXJzIGF0IHRoZSBzYW1lIHRpbWUuIEp1c3QgZ3JlcHBpbmcgdGhl
Cj4+PiB0cmVlIGZvcgo+Pj4ga3ZtX3J1biBpcyBwcmV0dHkgaW5zdHJ1Y3RpdmUuCj4+Pgo+Pj4g
ICDCoMKgwqDCoMKgwqDCoCBNLgo+Pgo+PiBTb3JyeSwgaXQncyBteSBtaXN0YWtlLCBJIG9ubHkg
Y29tcGlsZWQgdGhlIHg4NiBwbGF0Zm9ybSwgSSB3aWxsIHN1Ym1pdAo+PiBwYXRjaCBhZ2Fpbi4K
PiAKPiBJIHRoaW5rIGl0J3MgY29tcGxldGVseSBmaW5lIChhbmQgZXZlbiBwcmVmZXJhYmxlKSB0
byBkbyBjbGVhbnVwcyBsaWtlCj4gdGhhdCBvbiB0b3AuCj4gCj4gW0ZXSVcsIEkgY29tcGlsZWQg
czM5MCBoZXJlLl0KPiAKClZlcnkgZ29vZCwgSSB3aWxsIGRvIGEgY29tcHJlaGVuc2l2ZSBjbGVh
bnVwIG9mIHRoaXMgdHlwZSBvZiBjb2RlLgoKVGhhbmtzLApUaWFuamlhCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
