Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0206C143BA0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 12:06:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4WsBCSWusSLEnDozgskdbc0+Kde9/NrLkH+kpv8PRAA=; b=LPZoAZvufq7At0
	s9exCq3Xg/jQgbJ7r90Xxl/y39x0mWEyUFrX8rAOdDYyo6Ny6l7hpWoBCnbvArQBILrHueXFkGg9T
	1Pu2ikteuVLaK/UkKoksA9fG4Ogh5j+BQgHtTn8wXzdXDWIMEjHrk32t7GcF77ieLi/pwurFqOAAi
	RAvPATXJf0sewhpT+Yr6DVUEqOBM6EuM0VIUP3hFF2ulUQaJRmsy94XEFeJq345X7Mb+gGJ0Qlyjr
	Kqm1yNJ0qffY2jEvX4ZmJfZGYX+1JSM38zebup2yc8zdQ2h8mN1f/3zKTctj6EwfV5L+PUHuRHgzG
	mb8cFNKmj0V85xH0jJFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itrMB-0006B0-3l; Tue, 21 Jan 2020 11:06:03 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itrLy-0006An-9M
 for linux-arm-kernel@bombadil.infradead.org; Tue, 21 Jan 2020 11:05:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GHlDobO7oHY+nQ+axF+VLoIhwWmOeoHVcejl/AsTEGk=; b=vz+LcX4qFaiN4eIWc0V6v+su3f
 zm6eyiaRVeUaWp70f+GvwHPBWtxq+oSHKXlZlrbGZErDaqE8LkFGQyKHhzIIZP2miZ48g0hYhSvis
 b+G151fn3tal9i8qitLE2vn1MqFkDKYZ/oX6u7QMYsOLJUIV/GW/942NYQVkDnhX4zSuGFjCe9m8U
 Tgf2HdOX0p1tI6oQrtIavYKif6HR23aTLBbM4u7cFkD44hP+kA0fj5xlXkAovWjf0zl+mgoafrRWk
 w8J/D8PQDY4RPtk75hod1yi3m2nL0S2Ig48asvCQLRahd9QIcDn/DLpBxYzQ5JZY0qlMn2Y+M6diG
 9RzjwCTw==;
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itrMG-00082J-1r
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 11:06:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579604705;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GHlDobO7oHY+nQ+axF+VLoIhwWmOeoHVcejl/AsTEGk=;
 b=LUhM9V9jPniOFgCH+u4bY9oigacKl48A1zohFJgQNmolaPWXxNbuOGxfAaeE2w6rOAwF85
 QAyqcEZW/weNhQtqxcVkj+eKgZn0B7j0biWZZWU5FhMje2yje8mtH4LExrmhEHXS/m72gc
 Edd5uWIGJtYg7pXicR5Y5TKolrpajUE=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-65-SQStkGmSNv6nsPgAxgFUKA-1; Tue, 21 Jan 2020 06:05:04 -0500
Received: by mail-wm1-f70.google.com with SMTP id n17so322026wmk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 03:05:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=d9MsVbaNk7uS2Z+64id6QtYbk8dUZDS6e1+y0CQGu/U=;
 b=Aym+NHCSWfo93XxEG1UzH/fHEObpNj8GKHcSRuPIW41Y7zJ7RdCsMwuMtXIZZdVhKy
 uODPKnN3I/91PjiNjkNofMJR/5xN2CNr6ohxuRSyCzbTqReEMdEzYRu5ehLRzivIAU1c
 F7ctnZv7H8DaZcYokL0gOquqn/m4P7ixdK1iSks34h6RkHbjDwIEzI5PM5upvrkNec2j
 thtLMxaSOVzeTr+o23S99a36rRgbjSlPw9iAi8SMxXgEEGXlRYl6wQu3OfoJpWd06qG2
 erVph9I0FZigKvLyhzVdBLlC/2UvYMRw+T5pIaW6I1dsBHN9InHuPRfN1YCEe4qR7zhw
 HtLw==
X-Gm-Message-State: APjAAAVQYwRnIKOCTSS0sCdF9Zxh3F8mO4CiPojK9Gx7kPvS2ZHlubtF
 qObxMcC5Qrz1QVfWR1FCn+XKHKxmv2n5BqoIqwc01eoNLSxjFzQ66bmM0ZyigIzr8NfveMuphQh
 IgU0MxD+KOoQdcnq8JwcSUoz4ZFM7uYmRyV0=
X-Received: by 2002:adf:978c:: with SMTP id s12mr4583925wrb.408.1579604702659; 
 Tue, 21 Jan 2020 03:05:02 -0800 (PST)
X-Google-Smtp-Source: APXvYqxC6B3CUIhPHui5yyVc53K8mg8DvgmB+n/aXEy4G4Rxw9ic8vDj4v06pAmlaTd9zgfxWEA28g==
X-Received: by 2002:adf:978c:: with SMTP id s12mr4583882wrb.408.1579604702280; 
 Tue, 21 Jan 2020 03:05:02 -0800 (PST)
Received: from ?IPv6:2001:b07:6468:f312:b509:fc01:ee8a:ca8a?
 ([2001:b07:6468:f312:b509:fc01:ee8a:ca8a])
 by smtp.gmail.com with ESMTPSA id s8sm50551793wrt.57.2020.01.21.03.05.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Jan 2020 03:05:01 -0800 (PST)
Subject: Re: [PATCH v2 12/45] KVM: PPC: Allocate vcpu struct in common PPC code
To: Paul Mackerras <paulus@ozlabs.org>,
 Sean Christopherson <sean.j.christopherson@intel.com>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
 <20191218215530.2280-13-sean.j.christopherson@intel.com>
 <20200120040412.GF14307@blackberry>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <fcd2aaf1-6f6e-303a-d7c6-f6b0c0a4555c@redhat.com>
Date: Tue, 21 Jan 2020 12:05:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20200120040412.GF14307@blackberry>
Content-Language: en-US
X-MC-Unique: SQStkGmSNv6nsPgAxgFUKA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_110608_213813_CBC3A672 
X-CRM114-Status: GOOD (  18.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

T24gMjAvMDEvMjAgMDU6MDQsIFBhdWwgTWFja2VycmFzIHdyb3RlOgo+IE9uIFdlZCwgRGVjIDE4
LCAyMDE5IGF0IDAxOjU0OjU3UE0gLTA4MDAsIFNlYW4gQ2hyaXN0b3BoZXJzb24gd3JvdGU6Cj4+
IE1vdmUgYWxsb2NhdGlvbiBvZiBhbGwgZmxhdm9ycyBvZiBQUEMgdkNQVXMgdG8gY29tbW9uIFBQ
QyBjb2RlLiAgQWxsCj4+IHZhcmlhbnRzIGVpdGhlciBhbGxvY2F0ZSAnc3RydWN0IGt2bV92Y3B1
JyBkaXJlY3RseSwgb3IgcmVxdWlyZSB0aGF0Cj4+IHRoZSBlbWJlZGRlZCAnc3RydWN0IGt2bV92
Y3B1JyBtZW1iZXIgYmUgbG9jYXRlZCBhdCBvZmZzZXQgMCwgaS5lLgo+PiBndWFyYW50ZWUgdGhh
dCB0aGUgYWxsb2NhdGlvbiBjYW4gYmUgZGlyZWN0bHkgaW50ZXJwcmV0ZWQgYXMgYSAnc3RydWN0
Cj4+IGt2bV92Y3B1JyBvYmplY3QuCj4+Cj4+IFJlbW92ZSB0aGUgbWVzc2FnZSBmcm9tIHRoZSBi
dWlsZC10aW1lIGFzc2VydGlvbiByZWdhcmRpbmcgcGxhY2VtZW50IG9mCj4+IHRoZSBzdHJ1Y3Qs
IGFzIGNvbXBhdGliaWxpdHkgd2l0aCB0aGUgYXJjaCB1c2VyY29weSByZWdpb24gaXMgbm8gbG9u
Z2VyCj4+IHRoZSBzb2xlIGRlcGVuZGVudCBvbiAnc3RydWN0IGt2bV92Y3B1JyBiZWluZyBhdCBv
ZmZzZXQgemVyby4KPj4KPj4gU2lnbmVkLW9mZi1ieTogU2VhbiBDaHJpc3RvcGhlcnNvbiA8c2Vh
bi5qLmNocmlzdG9waGVyc29uQGludGVsLmNvbT4KPiAKPiBUaGlzIGZhaWxzIHRvIGNvbXBpbGUg
Zm9yIEJvb2sgRSBjb25maWdzOgo+IAo+ICAgQ0MgICAgICBhcmNoL3Bvd2VycGMva3ZtL2U1MDAu
bwo+IC9ob21lL3BhdWx1cy9rZXJuZWwva3ZtL2FyY2gvcG93ZXJwYy9rdm0vZTUwMC5jOiBJbiBm
dW5jdGlvbiDigJhrdm1wcGNfY29yZV92Y3B1X2NyZWF0ZV9lNTAw4oCZOgo+IC9ob21lL3BhdWx1
cy9rZXJuZWwva3ZtL2FyY2gvcG93ZXJwYy9rdm0vZTUwMC5jOjQ2NDo5OiBlcnJvcjogcmV0dXJu
IG1ha2VzIGludGVnZXIgZnJvbSBwb2ludGVyIHdpdGhvdXQgYSBjYXN0IFstV2Vycm9yPWludC1j
b252ZXJzaW9uXQo+ICAgcmV0dXJuIHZjcHU7Cj4gICAgICAgICAgXgo+IGNjMTogYWxsIHdhcm5p
bmdzIGJlaW5nIHRyZWF0ZWQgYXMgZXJyb3JzCj4gbWFrZVszXTogKioqIFsvaG9tZS9wYXVsdXMv
a2VybmVsL2t2bS9zY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjI2NjogYXJjaC9wb3dlcnBjL2t2bS9l
NTAwLm9dIEVycm9yIDEKPiAKPiBUaGVyZSBpcyBhICJyZXR1cm4gdmNwdSIgc3RhdGVtZW50IGlu
IGt2bXBwY19jb3JlX3ZjcHVfY3JlYXRlX2U1MDAoKSwKPiBhbmQgYW5vdGhlciBpbiBrdm1wcGNf
Y29yZV92Y3B1X2NyZWF0ZV9lNTAwbWMoKSwgd2hpY2ggYm90aCBuZWVkIHRvIGJlCj4gY2hhbmdl
ZCB0byAicmV0dXJuIDAiLgo+IAo+IChCeSB0aGUgd2F5LCBJIGRvIGFwcHJlY2lhdGUgeW91IGZp
eGluZyB0aGUgUFBDIGNvZGUsIGV2ZW4gaWYgdGhlcmUKPiBhcmUgc29tZSBlcnJvcnMuKQoKU3F1
YXNoZWQ6CgpkaWZmIC0tZ2l0IGEvYXJjaC9wb3dlcnBjL2t2bS9lNTAwLmMgYi9hcmNoL3Bvd2Vy
cGMva3ZtL2U1MDAuYwppbmRleCA5NmQ5Y2RlM2QyZTMuLmY1ZGQyYzdhZGNkNCAxMDA2NDQKLS0t
IGEvYXJjaC9wb3dlcnBjL2t2bS9lNTAwLmMKKysrIGIvYXJjaC9wb3dlcnBjL2t2bS9lNTAwLmMK
QEAgLTQ2MSw3ICs0NjEsNyBAQCBzdGF0aWMgaW50IGt2bXBwY19jb3JlX3ZjcHVfY3JlYXRlX2U1
MDAoc3RydWN0IGt2bSAqa3ZtLCBzdHJ1Y3Qga3ZtX3ZjcHUgKnZjcHUsCiAJCWdvdG8gdW5pbml0
X3RsYjsKIAl9CiAKLQlyZXR1cm4gdmNwdTsKKwlyZXR1cm4gMDsKIAogdW5pbml0X3RsYjoKIAlr
dm1wcGNfZTUwMF90bGJfdW5pbml0KHZjcHVfZTUwMCk7CmRpZmYgLS1naXQgYS9hcmNoL3Bvd2Vy
cGMva3ZtL2U1MDBtYy5jIGIvYXJjaC9wb3dlcnBjL2t2bS9lNTAwbWMuYwppbmRleCBhZWE1ODhm
NzNiZjcuLjdjMGQzOTJmNjY3YSAxMDA2NDQKLS0tIGEvYXJjaC9wb3dlcnBjL2t2bS9lNTAwbWMu
YworKysgYi9hcmNoL3Bvd2VycGMva3ZtL2U1MDBtYy5jCkBAIC0zMjcsNyArMzI3LDcgQEAgc3Rh
dGljIGludCBrdm1wcGNfY29yZV92Y3B1X2NyZWF0ZV9lNTAwbWMoc3RydWN0IGt2bSAqa3ZtLCBz
dHJ1Y3Qga3ZtX3ZjcHUgKnZjcHUKIAkJZ290byB1bmluaXRfdGxiOwogCX0KIAotCXJldHVybiB2
Y3B1OworCXJldHVybiAwOwogCiB1bmluaXRfdGxiOgogCWt2bXBwY19lNTAwX3RsYl91bmluaXQo
dmNwdV9lNTAwKTsKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
