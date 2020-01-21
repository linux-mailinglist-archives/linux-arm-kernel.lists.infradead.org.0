Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA3914403A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 16:11:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q0rPLTGLTJHL9DbrtgaWKLjGh4eUvXg9Wm9c/WMDap0=; b=G3aJ0UCGzvvkgF
	U6QcVIfEiX1lIwpNsoRD+xOP+b9KxkeyfRM2r57jcnaxoD7M0zaYdrh0lP5+RwWJoEY8+IrEPV+Vf
	O+4E4NGo99peaDlVKxtocZZfA++2VZf8bRQOygi3gK3GdoV1gBixZuanZCGgr+NAjtYHuUolHw7qA
	hvMoc2bDQqB+Obu6nxyTDGuuFoso3oK0VgNTJ2V/FT4zwzw1fNiseVXDhQ3cInricgrDoM5vacfbR
	YBrSMXdSWYjwRoSWzBdZRywMk0FCzuuBuCfAFY3VaC5E0Iuk90weug990owEaplTLwI/IG+jt5a54
	aq1YCXIgXDX+xC7JVNHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itvB8-0006iF-Tg; Tue, 21 Jan 2020 15:10:54 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itvAq-0006h3-69
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 15:10:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579619435;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=l3UImGOzBXgoozBAyoISgB2Kd4SVsoekGjPkkvWBCTg=;
 b=IPeo90f6Q8AaXVZgFJZocH325OqKjlRuUrA3621wg93Q3QRAGyBJLb2zLWsIhz8nYj+1uf
 shzMnuBQNoUlO/Raictb0y+OvTzQGtHX7YF+4jmzxpMpNvw3vAYQjoj55Bsz+U2t9uWqUk
 t8OOei/i3vhd3B4k4iimdP9AtAX8qZI=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-399-XmWlpr8_Oga9BcodgUQcWA-1; Tue, 21 Jan 2020 10:10:33 -0500
Received: by mail-wr1-f72.google.com with SMTP id u18so1427833wrn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 07:10:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dLNqv137Ty3zBX/5Bsp+2Ypr44jpbB2i9ogizbwLSF8=;
 b=nBvZ78XAgBvnu18RZ+p68kyY4tGe6nBTJ0rmk9EKLAN6PDfGksFEE3nXGDj35o8yy0
 7d3C8vW1qx2gsaNf0qS91TG3131f6X+A/tWbMzyqUpDyOwKnnTL4nVR+20i/E/aTPYka
 AXtSVdWrwArTqKZLuFTDEda7ufMi18vm+FQ8j0gBZXkb+vfzzfAkUzV1h8xiCXyCdig1
 kfxiW+4PuUDni+TFcYYJQRU3zKZ6DzDU5rC6zHW6kDp5INdffYkUJrCXIFOa/4tdMLLB
 C80W38vXNK07m1M20nfeoaIyPWZ7MaYpfQqMdtIHmoLS9+ohFetjlwSpSAWl+NHUfcXQ
 iXPA==
X-Gm-Message-State: APjAAAVJOxl+B/R31tjhmONuxJo2p88Hn/rgErm4Xro2ZpiMtj7ns1rH
 UqsGfdxmb9hVl/HKJ+tA4d6txXnMFZHRZqB+Vq2kH/6JR6Ly375BiJUbJd0IytF34M6jjTGLdB4
 +WHf/wvwFa2u8U5vXQ34qIS2a40FntcL0UaE=
X-Received: by 2002:a5d:484d:: with SMTP id n13mr5658167wrs.420.1579619431915; 
 Tue, 21 Jan 2020 07:10:31 -0800 (PST)
X-Google-Smtp-Source: APXvYqxxEyxfwVY/ROHiQo6nFEJMG0NaKySaBG+B/YnTEdUCo5yvn8VFW7mI2ukJg01QncMPDMI9zQ==
X-Received: by 2002:a5d:484d:: with SMTP id n13mr5658133wrs.420.1579619431579; 
 Tue, 21 Jan 2020 07:10:31 -0800 (PST)
Received: from ?IPv6:2001:b07:6468:f312:b509:fc01:ee8a:ca8a?
 ([2001:b07:6468:f312:b509:fc01:ee8a:ca8a])
 by smtp.gmail.com with ESMTPSA id h2sm53828069wrv.66.2020.01.21.07.10.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Jan 2020 07:10:31 -0800 (PST)
Subject: Re: [PATCH 00/14] KVM: x86/mmu: Huge page fixes, cleanup, and DAX
To: Barret Rhoden <brho@google.com>,
 Sean Christopherson <sean.j.christopherson@intel.com>
References: <20200108202448.9669-1-sean.j.christopherson@intel.com>
 <e3e12d17-32e4-84ad-94da-91095d999238@google.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <d7d0801b-79be-a5e7-a376-abd92b5c09b2@redhat.com>
Date: Tue, 21 Jan 2020 16:10:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <e3e12d17-32e4-84ad-94da-91095d999238@google.com>
Content-Language: en-US
X-MC-Unique: XmWlpr8_Oga9BcodgUQcWA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_071036_345318_98D1C189 
X-CRM114-Status: GOOD (  13.01  )
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, Paul Mackerras <paulus@ozlabs.org>,
 linux-mm@kvack.org, kvmarm@lists.cs.columbia.edu,
 Andrea Arcangeli <aarcange@redhat.com>, Dave Jiang <dave.jiang@intel.com>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>,
 syzbot+c9d1fb51ac9d0d10c39d@syzkaller.appspotmail.com,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvm-ppc@vger.kernel.org,
 Liran Alon <liran.alon@oracle.com>, Andy Lutomirski <luto@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Jason Zeng <jason.zeng@intel.com>, Vitaly Kuznetsov <vkuznets@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDkvMDEvMjAgMjA6NDcsIEJhcnJldCBSaG9kZW4gd3JvdGU6Cj4gSGkgLQo+IAo+IE9uIDEv
OC8yMCAzOjI0IFBNLCBTZWFuIENocmlzdG9waGVyc29uIHdyb3RlOgo+PiBUaGlzIHNlcmllcyBp
cyBhIG1peCBvZiBidWcgZml4ZXMsIGNsZWFudXAgYW5kIG5ldyBzdXBwb3J0IGluIEtWTSdzCj4+
IGhhbmRsaW5nIG9mIGh1Z2UgcGFnZXMuwqAgVGhlIHNlcmllcyBpbml0aWFsbHkgc3RlbW1lZCBm
cm9tIGEgc3l6a2FsbGVyCj4+IGJ1ZyByZXBvcnRbMV0sIHdoaWNoIGlzIGZpeGVkIGJ5IHBhdGNo
IDAyLCAibW06IHRocDogS1ZNOiBFeHBsaWNpdGx5Cj4+IGNoZWNrIGZvciBUSFAgd2hlbiBwb3B1
bGF0aW5nIHNlY29uZGFyeSBNTVUiLgo+Pgo+PiBXaGlsZSBpbnZlc3RpZ2F0aW5nIG9wdGlvbnMg
Zm9yIGZpeGluZyB0aGUgc3l6a2FsbGVyIGJ1ZywgSSByZWFsaXplZCBLVk0KPj4gY291bGQgcmV1
c2UgdGhlIGFwcHJvYWNoIGZyb20gQmFycmV0J3Mgc2VyaWVzIHRvIGVuYWJsZSBodWdlIHBhZ2Vz
IGZvcgo+PiBEQVgKPj4gbWFwcGluZ3MgaW4gS1ZNWzJdIGZvciBhbGwgdHlwZXMgb2YgaHVnZSBt
YXBwaW5ncywgaS5lLiB3YWxrIHRoZSBob3N0Cj4+IHBhZ2UKPj4gdGFibGVzIGluc3RlYWQgb2Yg
cXVlcnlpbmcgbWV0YWRhdGEgKHBhdGNoZXMgMDUgLSAwOSkuCj4gCj4gVGhhbmtzLCBTZWFuLsKg
IEkgdGVzdGVkIHRoaXMgcGF0Y2ggc2VyaWVzIG91dCwgYW5kIGl0IHdvcmtzIGZvciBtZS4KPiAo
SHVnZSBLVk0gbWFwcGluZ3Mgb2YgYSBEQVggZmlsZSwgZXRjLikuCgpRdWV1ZWQsIHRoYW5rcy4K
ClBhb2xvCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
