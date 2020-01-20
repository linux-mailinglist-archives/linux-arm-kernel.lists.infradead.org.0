Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E00142212
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 04:35:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zWyLXGE2RSnrOl5dppCvhOkDCeFFrO4v90MJC+f2LGw=; b=QQ9aB0Fenehe2n
	mCmaBA2n2g0AyN3sPk/KRtGOkMztTbNTHi6iumYRqpI4ApAyYNlTFARtvfqhq6ns4KltEmY0pahch
	/Ji5ud7aaR4JDD2+MqXbIcRJwNFvglwAFezot2PLI5VdZtwgaRzaZrORBn3O7ZaY99tIrTvZOPrC/
	p8Wh77NmuG/3oi8Y1kdXy0h4xz9+qV4Xy9gglI3AyHI9JyttT1MGblMNwMil+Oe2Y3+dVQ8aLqnHe
	ncngYvduqb2C961efYz+kcLjXmwTA4gVa7q24XzqAetP/3s3zia+KC1jtbsNn3c+jcEQK9s3OD6Nx
	ScNccbwfvFkZht3EJQ0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itNq4-00006L-EZ; Mon, 20 Jan 2020 03:34:56 +0000
Received: from bilbo.ozlabs.org ([2401:3900:2:1::2] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itNpR-00083f-HI
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 03:34:19 +0000
Received: by ozlabs.org (Postfix, from userid 1003)
 id 481HMj19Cqz9sR1; Mon, 20 Jan 2020 14:34:09 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ozlabs.org; s=201707;
 t=1579491249; bh=CYQ1aZ17JhSt3DjEaZvaRhmx5aaB56ZpLc9jKEgrQHg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XhZomLA0ZQA5ksrIQZqTYTjoL3DPHU68CbqTHKmAYu16fL/fIE1BYH7UjUNBUUN96
 BOuEpy2CunYKbeiub7mIts8QMfAiWmeBeKcarVFg26ySQX+0isv7JeVEL1d4Z7b45d
 5m7sEPD4iauKp3dpRpTlihU23q+pd7On1gqkqYQPHrJPglWg+MBbDBmbYJkatU8xz0
 Uz3Fq5i/6DiaknB95EBdraZENg7mGA9XAyQVsRAdFWKMiy5SfqI7mq2lhpVa6uDvRO
 oWMfXTCMsTK2ig1sBV5Ak32Iy5mNr3ucrWW4O2iQ2wR/sSeHCe8APza70YCBWrJGVb
 GMaswqr6dHlKA==
Date: Mon, 20 Jan 2020 14:34:02 +1100
From: Paul Mackerras <paulus@ozlabs.org>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v2 15/45] KVM: PPC: Move kvm_vcpu_init() invocation to
 common code
Message-ID: <20200120033402.GC14307@blackberry>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
 <20191218215530.2280-16-sean.j.christopherson@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218215530.2280-16-sean.j.christopherson@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_193417_730618_A8A956BD 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBEZWMgMTgsIDIwMTkgYXQgMDE6NTU6MDBQTSAtMDgwMCwgU2VhbiBDaHJpc3RvcGhl
cnNvbiB3cm90ZToKPiBNb3ZlIHRoZSBrdm1fY3B1X3t1bn1pbml0KCkgY2FsbHMgdG8gY29tbW9u
IFBQQyBjb2RlIGFzIGFuIGludGVybWVkaWF0ZQo+IHN0ZXAgdG93YXJkcyByZW1vdmluZyBrdm1f
Y3B1X3t1bn1pbml0KCkgYWx0b2dldGhlci4KPiAKPiBObyBmdW5jdGlvbmFsIGNoYW5nZSBpbnRl
bmRlZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTZWFuIENocmlzdG9waGVyc29uIDxzZWFuLmouY2hy
aXN0b3BoZXJzb25AaW50ZWwuY29tPgoKVGhpcyBkb2Vzbid0IGNvbXBpbGU6CgogIENDIFtNXSAg
YXJjaC9wb3dlcnBjL2t2bS9ib29rM3MubwovaG9tZS9wYXVsdXMva2VybmVsL2t2bS9hcmNoL3Bv
d2VycGMva3ZtL2Jvb2szcy5jOiBJbiBmdW5jdGlvbiDigJhrdm1wcGNfY29yZV92Y3B1X2NyZWF0
ZeKAmToKL2hvbWUvcGF1bHVzL2tlcm5lbC9rdm0vYXJjaC9wb3dlcnBjL2t2bS9ib29rM3MuYzo3
OTQ6OTogZXJyb3I6IOKAmGt2beKAmSB1bmRlY2xhcmVkIChmaXJzdCB1c2UgaW4gdGhpcyBmdW5j
dGlvbikKICByZXR1cm4ga3ZtLT5hcmNoLmt2bV9vcHMtPnZjcHVfY3JlYXRlKHZjcHUpOwogICAg
ICAgICBeCi9ob21lL3BhdWx1cy9rZXJuZWwva3ZtL2FyY2gvcG93ZXJwYy9rdm0vYm9vazNzLmM6
Nzk0Ojk6IG5vdGU6IGVhY2ggdW5kZWNsYXJlZCBpZGVudGlmaWVyIGlzIHJlcG9ydGVkIG9ubHkg
b25jZSBmb3IgZWFjaCBmdW5jdGlvbiBpdCBhcHBlYXJzIGluCi9ob21lL3BhdWx1cy9rZXJuZWwv
a3ZtL2FyY2gvcG93ZXJwYy9rdm0vYm9vazNzLmM6Nzk1OjE6IHdhcm5pbmc6IGNvbnRyb2wgcmVh
Y2hlcyBlbmQgb2Ygbm9uLXZvaWQgZnVuY3Rpb24gWy1XcmV0dXJuLXR5cGVdCiB9CiBeCm1ha2Vb
M106ICoqKiBbL2hvbWUvcGF1bHVzL2tlcm5lbC9rdm0vc2NyaXB0cy9NYWtlZmlsZS5idWlsZDoy
NjY6IGFyY2gvcG93ZXJwYy9rdm0vYm9vazNzLm9dIEVycm9yIDEKCj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvcG93ZXJwYy9rdm0vYm9vazNzLmMgYi9hcmNoL3Bvd2VycGMva3ZtL2Jvb2szcy5jCj4gaW5k
ZXggMTMzODU2NTZiOTBkLi41YWQyMGZjMGM2YTEgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9wb3dlcnBj
L2t2bS9ib29rM3MuYwo+ICsrKyBiL2FyY2gvcG93ZXJwYy9rdm0vYm9vazNzLmMKPiBAQCAtNzg5
LDEwICs3ODksOSBAQCB2b2lkIGt2bXBwY19kZWNyZW1lbnRlcl9mdW5jKHN0cnVjdCBrdm1fdmNw
dSAqdmNwdSkKPiAgCWt2bV92Y3B1X2tpY2sodmNwdSk7Cj4gIH0KPiAgCj4gLWludCBrdm1wcGNf
Y29yZV92Y3B1X2NyZWF0ZShzdHJ1Y3Qga3ZtICprdm0sIHN0cnVjdCBrdm1fdmNwdSAqdmNwdSwK
PiAtCQkJICAgIHVuc2lnbmVkIGludCBpZCkKPiAraW50IGt2bXBwY19jb3JlX3ZjcHVfY3JlYXRl
KHN0cnVjdCBrdm1fdmNwdSAqdmNwdSkKPiAgewo+IC0JcmV0dXJuIGt2bS0+YXJjaC5rdm1fb3Bz
LT52Y3B1X2NyZWF0ZShrdm0sIHZjcHUsIGlkKTsKPiArCXJldHVybiBrdm0tPmFyY2gua3ZtX29w
cy0+dmNwdV9jcmVhdGUodmNwdSk7CgpOZWVkcyBzL2t2bS92Y3B1LT5rdm0vIGhlcmUuCgpZb3Ug
YWxzbyBuZWVkIHRvIGNoYW5nZSB0aGUgZGVjbGFyYXRpb24gb2YgdGhlIHZjcHVfY3JlYXRlIGZ1
bmN0aW9uCnBvaW50ZXIgaW4gdGhlIGt2bXBwY19vcHMgc3RydWN0IGluIGt2bV9wcGMuaCB0byBo
YXZlIGp1c3QgdGhlIHZjcHUKcGFyYW1ldGVyIGluc3RlYWQgb2YgMyBwYXJhbWV0ZXJzLgoKUGF1
bC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
