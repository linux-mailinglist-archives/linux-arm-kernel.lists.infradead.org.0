Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54194143BAD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 12:08:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DmaYFDv7twhgwHPYt3D6/ouZgaHugfS5Dk4g4oOB5Zs=; b=LGQnIViNjtjVYM
	1v5yacV3m9qrZqiAsBO2dSm0EQhOpsEUl54hjkNesbqZTB1hqTYKHTUeHxIT8I2Bz2rpFQhvTl1MP
	Cf9Khy/Rs3UVsdCNrlJ/v/wBj/3eksYQOtg1c1+gi1/NLhihHlLbIvdq3PurEGjd0yXYKBjr+/cCm
	4DocL95iux6DrE5OiFqTVokVNFKtgsI+Wz5LvH1srJdUMnjFPzGg9ibDvJgaIwBaC08hAqMrTnA0h
	HjXT+4WA1gQrOh/6zpzenbiyBY9EgvaORc3j76ye4FDeknBDJxjk0u8/qNRuWsm/xIHFSuJx8k2yC
	MItySXCI3StdFVYcJFaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itrOP-0006nP-V0; Tue, 21 Jan 2020 11:08:21 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itrOC-0006mT-Ul
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 11:08:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579604886;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sngbJ+Kyu9/Mq5RVvCDBtxR0cwUMu/3ilD0iozKavMc=;
 b=IykcVE/AvsHYntsQFqXNivVf8idAr05RFTKGc3ZnRLzBfruLIYR317vb3bU0jpibltrwC9
 yIreCLFFw5M7dA9ZHeEDR/kt+ymx94GLJJN7AQ3gzvs+Xopw6/yr/IfhxWnzD5HuoKweHn
 4S+IClpmUz9m8NMBxa7XkpGHHE/Hj4A=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-143-eXLIa6amOwuyEbKN_wmeNw-1; Tue, 21 Jan 2020 06:08:05 -0500
Received: by mail-wr1-f72.google.com with SMTP id y7so1163581wrm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 03:08:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=x7jZw/H2y5zeqQuje6kJm5arA3TA0C7bKtuRivqDv8Y=;
 b=QoAOK7sgcJ0JsSheHbna6xuxTXbDm0yxnMY6iry9itnzt+veMtUrdXKaG0JoNjB2u8
 ujUylQq0QAgaDFB+XGCRGl89bZb/Nz3IbmEdY/Zn5c446o3mUVEMErU8cN+eApzf9Fr0
 QOG5D2DzJabuRYbTM1PIANUmYj6iCQq/SzYqwLNBV2KPI3H5ZQ1wg+jkpG1OlhWAntOo
 uQq7lMxqiXCUtUM9l4zCtaeUGz1lw4EKKZFLU30kPo/dX8AfLXdny0ejkjoFHQVg6T3m
 893tTZ7lzDXXE0Vr+9VAr7HLphKdn7zDZn5HJpU6LJobr/lpTNJ8aaSV9CBLkd9ForET
 CN/g==
X-Gm-Message-State: APjAAAXRnP5tpETERIG24mBxGsAzGcA+mmLopvLRnfGcOc04r8mx1hTJ
 bw8GfiaFRrqIz83Ps43QHhvY3EG1amaBDRmNayCD2y2RDkmBmXOMbS3l2mlUaV8Q6aRFzK921r+
 kqGD4m9zSJGJzsUOcWjCBk6XdO7/Atl7XhE4=
X-Received: by 2002:a5d:5091:: with SMTP id a17mr4584297wrt.362.1579604884296; 
 Tue, 21 Jan 2020 03:08:04 -0800 (PST)
X-Google-Smtp-Source: APXvYqyrSJw1xVD8KtI/DVSDHhO4SUvtdN2Xqf5CmpjkIe8Jj2CEEstdjLnJnkKwuFepClVNL9qC7A==
X-Received: by 2002:a5d:5091:: with SMTP id a17mr4584254wrt.362.1579604883939; 
 Tue, 21 Jan 2020 03:08:03 -0800 (PST)
Received: from ?IPv6:2001:b07:6468:f312:b509:fc01:ee8a:ca8a?
 ([2001:b07:6468:f312:b509:fc01:ee8a:ca8a])
 by smtp.gmail.com with ESMTPSA id l15sm49716775wrv.39.2020.01.21.03.08.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Jan 2020 03:08:03 -0800 (PST)
Subject: Re: [PATCH v2 15/45] KVM: PPC: Move kvm_vcpu_init() invocation to
 common code
To: Paul Mackerras <paulus@ozlabs.org>,
 Sean Christopherson <sean.j.christopherson@intel.com>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
 <20191218215530.2280-16-sean.j.christopherson@intel.com>
 <20200120033402.GC14307@blackberry>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <07329402-25a3-874a-5e79-d35900668f1d@redhat.com>
Date: Tue, 21 Jan 2020 12:08:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20200120033402.GC14307@blackberry>
Content-Language: en-US
X-MC-Unique: eXLIa6amOwuyEbKN_wmeNw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_030809_072891_5F024173 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Cornelia Huck <cohuck@redhat.com>, Wanpeng Li <wanpengli@tencent.com>,
 Janosch Frank <frankja@linux.ibm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, David Hildenbrand <david@redhat.com>,
 linux-mips@vger.kernel.org, kvm-ppc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christian Borntraeger <borntraeger@de.ibm.com>,
 Greg Kurz <groug@kaod.org>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, James Hogan <jhogan@kernel.org>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAvMDEvMjAgMDQ6MzQsIFBhdWwgTWFja2VycmFzIHdyb3RlOgo+IE9uIFdlZCwgRGVjIDE4
LCAyMDE5IGF0IDAxOjU1OjAwUE0gLTA4MDAsIFNlYW4gQ2hyaXN0b3BoZXJzb24gd3JvdGU6Cj4+
IE1vdmUgdGhlIGt2bV9jcHVfe3VufWluaXQoKSBjYWxscyB0byBjb21tb24gUFBDIGNvZGUgYXMg
YW4gaW50ZXJtZWRpYXRlCj4+IHN0ZXAgdG93YXJkcyByZW1vdmluZyBrdm1fY3B1X3t1bn1pbml0
KCkgYWx0b2dldGhlci4KPj4KPj4gTm8gZnVuY3Rpb25hbCBjaGFuZ2UgaW50ZW5kZWQuCj4+Cj4+
IFNpZ25lZC1vZmYtYnk6IFNlYW4gQ2hyaXN0b3BoZXJzb24gPHNlYW4uai5jaHJpc3RvcGhlcnNv
bkBpbnRlbC5jb20+Cj4gCj4gVGhpcyBkb2Vzbid0IGNvbXBpbGU6Cj4gCj4gICBDQyBbTV0gIGFy
Y2gvcG93ZXJwYy9rdm0vYm9vazNzLm8KPiAvaG9tZS9wYXVsdXMva2VybmVsL2t2bS9hcmNoL3Bv
d2VycGMva3ZtL2Jvb2szcy5jOiBJbiBmdW5jdGlvbiDigJhrdm1wcGNfY29yZV92Y3B1X2NyZWF0
ZeKAmToKPiAvaG9tZS9wYXVsdXMva2VybmVsL2t2bS9hcmNoL3Bvd2VycGMva3ZtL2Jvb2szcy5j
Ojc5NDo5OiBlcnJvcjog4oCYa3Zt4oCZIHVuZGVjbGFyZWQgKGZpcnN0IHVzZSBpbiB0aGlzIGZ1
bmN0aW9uKQo+ICAgcmV0dXJuIGt2bS0+YXJjaC5rdm1fb3BzLT52Y3B1X2NyZWF0ZSh2Y3B1KTsK
PiAgICAgICAgICBeCj4gL2hvbWUvcGF1bHVzL2tlcm5lbC9rdm0vYXJjaC9wb3dlcnBjL2t2bS9i
b29rM3MuYzo3OTQ6OTogbm90ZTogZWFjaCB1bmRlY2xhcmVkIGlkZW50aWZpZXIgaXMgcmVwb3J0
ZWQgb25seSBvbmNlIGZvciBlYWNoIGZ1bmN0aW9uIGl0IGFwcGVhcnMgaW4KPiAvaG9tZS9wYXVs
dXMva2VybmVsL2t2bS9hcmNoL3Bvd2VycGMva3ZtL2Jvb2szcy5jOjc5NToxOiB3YXJuaW5nOiBj
b250cm9sIHJlYWNoZXMgZW5kIG9mIG5vbi12b2lkIGZ1bmN0aW9uIFstV3JldHVybi10eXBlXQo+
ICB9Cj4gIF4KPiBtYWtlWzNdOiAqKiogWy9ob21lL3BhdWx1cy9rZXJuZWwva3ZtL3NjcmlwdHMv
TWFrZWZpbGUuYnVpbGQ6MjY2OiBhcmNoL3Bvd2VycGMva3ZtL2Jvb2szcy5vXSBFcnJvciAxCj4g
Cj4+IGRpZmYgLS1naXQgYS9hcmNoL3Bvd2VycGMva3ZtL2Jvb2szcy5jIGIvYXJjaC9wb3dlcnBj
L2t2bS9ib29rM3MuYwo+PiBpbmRleCAxMzM4NTY1NmI5MGQuLjVhZDIwZmMwYzZhMSAxMDA2NDQK
Pj4gLS0tIGEvYXJjaC9wb3dlcnBjL2t2bS9ib29rM3MuYwo+PiArKysgYi9hcmNoL3Bvd2VycGMv
a3ZtL2Jvb2szcy5jCj4+IEBAIC03ODksMTAgKzc4OSw5IEBAIHZvaWQga3ZtcHBjX2RlY3JlbWVu
dGVyX2Z1bmMoc3RydWN0IGt2bV92Y3B1ICp2Y3B1KQo+PiAgCWt2bV92Y3B1X2tpY2sodmNwdSk7
Cj4+ICB9Cj4+ICAKPj4gLWludCBrdm1wcGNfY29yZV92Y3B1X2NyZWF0ZShzdHJ1Y3Qga3ZtICpr
dm0sIHN0cnVjdCBrdm1fdmNwdSAqdmNwdSwKPj4gLQkJCSAgICB1bnNpZ25lZCBpbnQgaWQpCj4+
ICtpbnQga3ZtcHBjX2NvcmVfdmNwdV9jcmVhdGUoc3RydWN0IGt2bV92Y3B1ICp2Y3B1KQo+PiAg
ewo+PiAtCXJldHVybiBrdm0tPmFyY2gua3ZtX29wcy0+dmNwdV9jcmVhdGUoa3ZtLCB2Y3B1LCBp
ZCk7Cj4+ICsJcmV0dXJuIGt2bS0+YXJjaC5rdm1fb3BzLT52Y3B1X2NyZWF0ZSh2Y3B1KTsKPiAK
PiBOZWVkcyBzL2t2bS92Y3B1LT5rdm0vIGhlcmUuCj4gCj4gWW91IGFsc28gbmVlZCB0byBjaGFu
Z2UgdGhlIGRlY2xhcmF0aW9uIG9mIHRoZSB2Y3B1X2NyZWF0ZSBmdW5jdGlvbgo+IHBvaW50ZXIg
aW4gdGhlIGt2bXBwY19vcHMgc3RydWN0IGluIGt2bV9wcGMuaCB0byBoYXZlIGp1c3QgdGhlIHZj
cHUKPiBwYXJhbWV0ZXIgaW5zdGVhZCBvZiAzIHBhcmFtZXRlcnMuCgpTcXVhc2hlZDoKCmRpZmYg
LS1naXQgYS9hcmNoL3Bvd2VycGMvaW5jbHVkZS9hc20va3ZtX3BwYy5oIGIvYXJjaC9wb3dlcnBj
L2luY2x1ZGUvYXNtL2t2bV9wcGMuaAppbmRleCAzNzRlNGI4MzVmZjAuLmJjMjQ5NGU1NzEwYSAx
MDA2NDQKLS0tIGEvYXJjaC9wb3dlcnBjL2luY2x1ZGUvYXNtL2t2bV9wcGMuaAorKysgYi9hcmNo
L3Bvd2VycGMvaW5jbHVkZS9hc20va3ZtX3BwYy5oCkBAIC0yNzMsOCArMjczLDcgQEAgc3RydWN0
IGt2bXBwY19vcHMgewogCXZvaWQgKCppbmplY3RfaW50ZXJydXB0KShzdHJ1Y3Qga3ZtX3ZjcHUg
KnZjcHUsIGludCB2ZWMsIHU2NCBzcnIxX2ZsYWdzKTsKIAl2b2lkICgqc2V0X21zcikoc3RydWN0
IGt2bV92Y3B1ICp2Y3B1LCB1NjQgbXNyKTsKIAlpbnQgKCp2Y3B1X3J1bikoc3RydWN0IGt2bV9y
dW4gKnJ1biwgc3RydWN0IGt2bV92Y3B1ICp2Y3B1KTsKLQlpbnQgKCp2Y3B1X2NyZWF0ZSkoc3Ry
dWN0IGt2bSAqa3ZtLCBzdHJ1Y3Qga3ZtX3ZjcHUgKnZjcHUsCi0JCQkgICB1bnNpZ25lZCBpbnQg
aWQpOworCWludCAoKnZjcHVfY3JlYXRlKShzdHJ1Y3Qga3ZtX3ZjcHUgKnZjcHUpOwogCXZvaWQg
KCp2Y3B1X2ZyZWUpKHN0cnVjdCBrdm1fdmNwdSAqdmNwdSk7CiAJaW50ICgqY2hlY2tfcmVxdWVz
dHMpKHN0cnVjdCBrdm1fdmNwdSAqdmNwdSk7CiAJaW50ICgqZ2V0X2RpcnR5X2xvZykoc3RydWN0
IGt2bSAqa3ZtLCBzdHJ1Y3Qga3ZtX2RpcnR5X2xvZyAqbG9nKTsKZGlmZiAtLWdpdCBhL2FyY2gv
cG93ZXJwYy9rdm0vYm9vazNzLmMgYi9hcmNoL3Bvd2VycGMva3ZtL2Jvb2szcy5jCmluZGV4IDVh
ZDIwZmMwYzZhMS4uM2Y3YWRjYjBmZjYzIDEwMDY0NAotLS0gYS9hcmNoL3Bvd2VycGMva3ZtL2Jv
b2szcy5jCisrKyBiL2FyY2gvcG93ZXJwYy9rdm0vYm9vazNzLmMKQEAgLTc5MSw3ICs3OTEsNyBA
QCB2b2lkIGt2bXBwY19kZWNyZW1lbnRlcl9mdW5jKHN0cnVjdCBrdm1fdmNwdSAqdmNwdSkKIAog
aW50IGt2bXBwY19jb3JlX3ZjcHVfY3JlYXRlKHN0cnVjdCBrdm1fdmNwdSAqdmNwdSkKIHsKLQly
ZXR1cm4ga3ZtLT5hcmNoLmt2bV9vcHMtPnZjcHVfY3JlYXRlKHZjcHUpOworCXJldHVybiB2Y3B1
LT5rdm0tPmFyY2gua3ZtX29wcy0+dmNwdV9jcmVhdGUodmNwdSk7CiB9CiAKIHZvaWQga3ZtcHBj
X2NvcmVfdmNwdV9mcmVlKHN0cnVjdCBrdm1fdmNwdSAqdmNwdSkKZGlmZiAtLWdpdCBhL2FyY2gv
cG93ZXJwYy9rdm0vYm9va2UuYyBiL2FyY2gvcG93ZXJwYy9rdm0vYm9va2UuYwppbmRleCBkZDc0
NDBlNTBjN2EuLmQ0MTc2NTE1N2YwZSAxMDA2NDQKLS0tIGEvYXJjaC9wb3dlcnBjL2t2bS9ib29r
ZS5jCisrKyBiL2FyY2gvcG93ZXJwYy9rdm0vYm9va2UuYwpAQCAtMjExNiw3ICsyMTE2LDcgQEAg
aW50IGt2bXBwY19jb3JlX2luaXRfdm0oc3RydWN0IGt2bSAqa3ZtKQogCiBpbnQga3ZtcHBjX2Nv
cmVfdmNwdV9jcmVhdGUoc3RydWN0IGt2bV92Y3B1ICp2Y3B1KQogewotCXJldHVybiBrdm0tPmFy
Y2gua3ZtX29wcy0+dmNwdV9jcmVhdGUodmNwdSk7CisJcmV0dXJuIHZjcHUtPmt2bS0+YXJjaC5r
dm1fb3BzLT52Y3B1X2NyZWF0ZSh2Y3B1KTsKIH0KIAogdm9pZCBrdm1wcGNfY29yZV92Y3B1X2Zy
ZWUoc3RydWN0IGt2bV92Y3B1ICp2Y3B1KQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
