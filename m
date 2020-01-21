Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE2D143BD1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 12:12:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JreljlCpDCH9weabIYn2eZCwqF6KW/BVPltmSn2TLJE=; b=ojXuR1zjsLBByQ
	sc0LiokBrlNgYRDEVFmvwvxIxSM6nXz6Q8uf2Yt5az3wHWB/exHh6iXTTRw/3pEonu0krWHbyHUAI
	SF4Omjxc8vXpXJWi6bMYzKPraa6utoMBnDQ5mtcHInM2rPcY2tCvrGqZqGHBymsHzNeu7ctC8TgDf
	+xzKeN2m//iZUutP++2Ed63Qw0kAea3biY1Ui0r3j70KulFGUStX0mSGpgi/MRTXt1moixwAinHCf
	XA1EGcUQCvCVEUeolxMX4YEJDBfIeDfCZKdOOdJx2pHV0gjB82Ek1PO2q/SW8OD+bR3yvvMLT6wtI
	73NFFTFzvqX+vv7Z0TDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itrSR-0000Ru-H0; Tue, 21 Jan 2020 11:12:31 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itrSF-0000Qi-Kr
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 11:12:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579605137;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9wI+OtjZQZO6FFE1g0sfkBylA9HInh8CzN6tgRswnV4=;
 b=Gy7XtdnOGaNWATg+cKYAEGMRWv6mCwW5+YeU1fylIezSs7VZLgTMUx6eHzTcQQrjNm+Aqc
 E987XAnfkNMl4LchxoI38HTMtlthZuKsMcG4HKAwr4Efsa72xx5/HuvFQhOML1VOl/9pj+
 GW/bM0QAIhFRvtonHeCy/TLkesQ7eH8=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-148-TdKSSX7eMPeKu5lATLx0pg-1; Tue, 21 Jan 2020 06:12:13 -0500
Received: by mail-wm1-f70.google.com with SMTP id w205so477799wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 03:12:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=SUmH5ZMutw7kgyRL+tUGBiFKuqlrQTYA6wv/vKtVsig=;
 b=BbKyLmafaQgbAy+3Nj5QI8LaV/4YrnxvICyJP3ciuNYkSO4K0jlbKhVHHxx0NhrhWM
 fg4D7io8bPM1ucV5yFhg1c08I0YPEA+y5bTaFONwQOHSlEDJShFIOHvaqUnKypWMVL18
 RXGIjn1IE5R8nIEJZ5Os0i1AwrvI1SJZZLnaTI35RfOd6a76XdF5Q3LBsb06gE8fy7Qb
 N580Taz8Vvm11pIzzt1YLKGgirLlc2mBfopo7MgCuSDAYD5gqH5yGxmZjjMMqurFDeq3
 ifEYHV7YtPPnCgo2ox/InbUs4f8eTf3J1XikC8UOpyZK0f7XOuDYPS1ShOsoGARz2hLU
 s2xA==
X-Gm-Message-State: APjAAAVNMUl2y+MzksQ1+mQD9yFvGfPxswO97lmyzTj714uGpYcXxpEA
 gswAhqwXHWykBo0/9aib8u4o72jW+xDEwGK+7EWhc5GsaFzid9ZO33ujrVZhXaUZoS8BS9306RY
 cqQ71TlgKx6fpMnveR+tWEXyiqcBFh6HeM9o=
X-Received: by 2002:a05:6000:11c9:: with SMTP id
 i9mr4806249wrx.164.1579605131969; 
 Tue, 21 Jan 2020 03:12:11 -0800 (PST)
X-Google-Smtp-Source: APXvYqypfAKKGH/a848HhEdWp/8kNPn20JC8kc1fEqjae+lABJTb9oaxjSSRLWrYZHNDzVwQwM45Kg==
X-Received: by 2002:a05:6000:11c9:: with SMTP id
 i9mr4806191wrx.164.1579605131619; 
 Tue, 21 Jan 2020 03:12:11 -0800 (PST)
Received: from ?IPv6:2001:b07:6468:f312:b509:fc01:ee8a:ca8a?
 ([2001:b07:6468:f312:b509:fc01:ee8a:ca8a])
 by smtp.gmail.com with ESMTPSA id z8sm51076203wrq.22.2020.01.21.03.12.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Jan 2020 03:12:11 -0800 (PST)
Subject: Re: [PATCH v2 41/45] KVM: PPC: Move all vcpu init code into
 kvm_arch_vcpu_create()
To: Paul Mackerras <paulus@ozlabs.org>,
 Sean Christopherson <sean.j.christopherson@intel.com>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
 <20191218215530.2280-42-sean.j.christopherson@intel.com>
 <20200120034658.GD14307@blackberry>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <d3d465b0-6a45-c754-0538-1e4d1e130357@redhat.com>
Date: Tue, 21 Jan 2020 12:12:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20200120034658.GD14307@blackberry>
Content-Language: en-US
X-MC-Unique: TdKSSX7eMPeKu5lATLx0pg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_031219_752153_02FD8BAA 
X-CRM114-Status: GOOD (  16.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
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

T24gMjAvMDEvMjAgMDQ6NDYsIFBhdWwgTWFja2VycmFzIHdyb3RlOgo+IE9uIFdlZCwgRGVjIDE4
LCAyMDE5IGF0IDAxOjU1OjI2UE0gLTA4MDAsIFNlYW4gQ2hyaXN0b3BoZXJzb24gd3JvdGU6Cj4+
IEZvbGQgaW5pdCgpIGludG8gY3JlYXRlKCkgbm93IHRoYXQgdGhlIHR3byBhcmUgY2FsbGVkIGJh
Y2stdG8tYmFjayBieQo+PiBjb21tb24gS1ZNIGNvZGUgKGt2bV92Y3B1X2luaXQoKSBjYWxscyBr
dm1fYXJjaF92Y3B1X2luaXQoKSBhcyBpdHMgbGFzdAo+PiBhY3Rpb24sIGFuZCBrdm1fdm1faW9j
dGxfY3JlYXRlX3ZjcHUoKSBjYWxscyBrdm1fYXJjaF92Y3B1X2NyZWF0ZSgpCj4+IGltbWVkaWF0
ZWx5IHRoZXJlYWZ0ZXIpLiAgUmluc2UgYW5kIHJlcGVhdCBmb3Iga3ZtX2FyY2hfdmNwdV91bmlu
aXQoKQo+PiBhbmQga3ZtX2FyY2hfdmNwdV9kZXN0cm95KCkuICBUaGlzIHBhdmVzIHRoZSB3YXkg
Zm9yIHJlbW92aW5nCj4+IGt2bV9hcmNoX3ZjcHVfe3VufWluaXQoKSBlbnRpcmVseS4KPj4KPj4g
Tm90ZSwgY2FsbGluZyBrdm1wcGNfbW11X2Rlc3Ryb3koKSBpZiBrdm1wcGNfY29yZV92Y3B1X2Ny
ZWF0ZSgpIGZhaWxzCj4+IG1heSBvciBtYXkgbm90IGJlIG5lY2Vzc2FyeS4gIE1vdmUgaXQgYWxv
bmcgd2l0aCB0aGUgbW9yZSBvYnZpb3VzIGNhbGwKPj4gdG8ga3ZtcHBjX3N1YmFyY2hfdmNwdV91
bmluaXQoKSBzbyBhcyBub3QgdG8gaW5hZHZlcnRhbnRseSBpbnRyb2R1Y2UgYQo+PiBmdW5jdGlv
bmFsIGNoYW5nZSBhbmQvb3IgYnVnLgo+Pgo+PiBObyBmdW5jdGlvbmFsIGNoYW5nZSBpbnRlbmRl
ZC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogU2VhbiBDaHJpc3RvcGhlcnNvbiA8c2Vhbi5qLmNocmlz
dG9waGVyc29uQGludGVsLmNvbT4KPiAKPiBUaGlzIGRvZXNuJ3QgY29tcGlsZS4gIEkgZ2V0Ogo+
IAo+ICAgQ0MgW01dICBhcmNoL3Bvd2VycGMva3ZtL3Bvd2VycGMubwo+IC9ob21lL3BhdWx1cy9r
ZXJuZWwva3ZtL2FyY2gvcG93ZXJwYy9rdm0vcG93ZXJwYy5jOiBJbiBmdW5jdGlvbiDigJhrdm1f
YXJjaF92Y3B1X2NyZWF0ZeKAmToKPiAvaG9tZS9wYXVsdXMva2VybmVsL2t2bS9hcmNoL3Bvd2Vy
cGMva3ZtL3Bvd2VycGMuYzo3MzM6MzQ6IGVycm9yOiDigJhrdm1wcGNfZGVjcmVtZW50ZXJfd2Fr
ZXVw4oCZIHVuZGVjbGFyZWQgKGZpcnN0IHVzZSBpbiB0aGlzIGZ1bmN0aW9uKQo+ICAgdmNwdS0+
YXJjaC5kZWNfdGltZXIuZnVuY3Rpb24gPSBrdm1wcGNfZGVjcmVtZW50ZXJfd2FrZXVwOwo+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeCj4gL2hvbWUvcGF1bHVzL2tlcm5lbC9r
dm0vYXJjaC9wb3dlcnBjL2t2bS9wb3dlcnBjLmM6NzMzOjM0OiBub3RlOiBlYWNoIHVuZGVjbGFy
ZWQgaWRlbnRpZmllciBpcyByZXBvcnRlZCBvbmx5IG9uY2UgZm9yIGVhY2ggZnVuY3Rpb24gaXQg
YXBwZWFycyBpbgo+IC9ob21lL3BhdWx1cy9rZXJuZWwva3ZtL2FyY2gvcG93ZXJwYy9rdm0vcG93
ZXJwYy5jOiBBdCB0b3AgbGV2ZWw6Cj4gL2hvbWUvcGF1bHVzL2tlcm5lbC9rdm0vYXJjaC9wb3dl
cnBjL2t2bS9wb3dlcnBjLmM6Nzk0OjI5OiB3YXJuaW5nOiDigJhrdm1wcGNfZGVjcmVtZW50ZXJf
d2FrZXVw4oCZIGRlZmluZWQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1mdW5jdGlvbl0KPiAgc3Rh
dGljIGVudW0gaHJ0aW1lcl9yZXN0YXJ0IGt2bXBwY19kZWNyZW1lbnRlcl93YWtldXAoc3RydWN0
IGhydGltZXIgKnRpbWVyKQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXgo+IG1ha2Vb
M106ICoqKiBbL2hvbWUvcGF1bHVzL2tlcm5lbC9rdm0vc2NyaXB0cy9NYWtlZmlsZS5idWlsZDoy
NjY6IGFyY2gvcG93ZXJwYy9rdm0vcG93ZXJwYy5vXSBFcnJvciAxCj4gCj4gVGhlIHByb2JsZW0g
aXMgdGhhdCBrdm1wcGNfZGVjcmVtZW50ZXJfd2FrZXVwKCkgaXMgYSBzdGF0aWMgZnVuY3Rpb24K
PiBkZWZpbmVkIGluIHRoaXMgZmlsZSAoYXJjaC9wb3dlcnBjL2t2bS9wb3dlcnBjLmMpIGFmdGVy
Cj4ga3ZtX2FyY2hfdmNwdV9jcmVhdGUoKSBidXQgYmVmb3JlIGt2bV9hcmNoX3ZjcHVfaW5pdCgp
LiAgWW91IG5lZWQgYQo+IGZvcndhcmQgc3RhdGljIGRlY2xhcmF0aW9uIG9mIGt2bXBwY19kZWNy
ZW1lbnRlcl93YWtldXAoKSBiZWZvcmUKPiBrdm1fYXJjaF92Y3B1X2NyZWF0ZSgpLCBvciBlbHNl
IG1vdmUgb25lIG9yIG90aGVyIGZ1bmN0aW9uLgo+IAo+IFBhdWwuCj4gCgpTcXVhc2hlZDoKCmRp
ZmYgLS1naXQgYS9hcmNoL3Bvd2VycGMva3ZtL3Bvd2VycGMuYyBiL2FyY2gvcG93ZXJwYy9rdm0v
cG93ZXJwYy5jCmluZGV4IDkxY2Y5NGQ0MTkxZS4uNGZiZjg2OTBiOGM1IDEwMDY0NAotLS0gYS9h
cmNoL3Bvd2VycGMva3ZtL3Bvd2VycGMuYworKysgYi9hcmNoL3Bvd2VycGMva3ZtL3Bvd2VycGMu
YwpAQCAtNzI1LDYgKzcyNSwxNiBAQCBpbnQga3ZtX2FyY2hfdmNwdV9wcmVjcmVhdGUoc3RydWN0
IGt2bSAqa3ZtLCB1bnNpZ25lZCBpbnQgaWQpCiAJcmV0dXJuIDA7CiB9CiAKK3N0YXRpYyBlbnVt
IGhydGltZXJfcmVzdGFydCBrdm1wcGNfZGVjcmVtZW50ZXJfd2FrZXVwKHN0cnVjdCBocnRpbWVy
ICp0aW1lcikKK3sKKwlzdHJ1Y3Qga3ZtX3ZjcHUgKnZjcHU7CisKKwl2Y3B1ID0gY29udGFpbmVy
X29mKHRpbWVyLCBzdHJ1Y3Qga3ZtX3ZjcHUsIGFyY2guZGVjX3RpbWVyKTsKKwlrdm1wcGNfZGVj
cmVtZW50ZXJfZnVuYyh2Y3B1KTsKKworCXJldHVybiBIUlRJTUVSX05PUkVTVEFSVDsKK30KKwog
aW50IGt2bV9hcmNoX3ZjcHVfY3JlYXRlKHN0cnVjdCBrdm1fdmNwdSAqdmNwdSkKIHsKIAlpbnQg
ZXJyOwpAQCAtNzkxLDE2ICs4MDEsNiBAQCBpbnQga3ZtX2NwdV9oYXNfcGVuZGluZ190aW1lcihz
dHJ1Y3Qga3ZtX3ZjcHUgKnZjcHUpCiAJcmV0dXJuIGt2bXBwY19jb3JlX3BlbmRpbmdfZGVjKHZj
cHUpOwogfQogCi1zdGF0aWMgZW51bSBocnRpbWVyX3Jlc3RhcnQga3ZtcHBjX2RlY3JlbWVudGVy
X3dha2V1cChzdHJ1Y3QgaHJ0aW1lciAqdGltZXIpCi17Ci0Jc3RydWN0IGt2bV92Y3B1ICp2Y3B1
OwotCi0JdmNwdSA9IGNvbnRhaW5lcl9vZih0aW1lciwgc3RydWN0IGt2bV92Y3B1LCBhcmNoLmRl
Y190aW1lcik7Ci0Ja3ZtcHBjX2RlY3JlbWVudGVyX2Z1bmModmNwdSk7Ci0KLQlyZXR1cm4gSFJU
SU1FUl9OT1JFU1RBUlQ7Ci19Ci0KIGludCBrdm1fYXJjaF92Y3B1X2luaXQoc3RydWN0IGt2bV92
Y3B1ICp2Y3B1KQogewogCXJldHVybiAwOwoKUGFvbG8KCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
