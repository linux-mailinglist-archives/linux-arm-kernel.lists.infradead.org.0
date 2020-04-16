Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D9E1ABBE2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 10:59:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wY/NvTFwiHmIXUFkU5llU6faHfZoayHiEI4+vPyw6ms=; b=JaCF2QuUJP/x1dVIbNrICN1y5
	ovuBPC1McYfeUBcILBHC5xf/J2GhG8pgzC5CdKVEaFvooHqdlv13YTc50WAIql1NHJPtyaF0KmVzr
	IYjpMbzkS8+YyzNSs4IDTR/1b0zvUUZrgEzj+sQ9cc79GDuIKxKRqRxpjQEtevU95LTAoA9jiM6aw
	qvUinIQF2QQanheeS768r8IjVTjhkoTv+zmql1LJ1IflvGTgt/F/YcbjrPKWXF4a+QPtnr4EHeikK
	PcEvWjZYyV7VEIxNdegRZUMrog4GRYJn1A6Fdw5ek3FUeU3Pe3mzIJ65Da/fZkeTGlQ8vbYl5pLT7
	xqOWdIuzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP0MJ-0008Fk-DN; Thu, 16 Apr 2020 08:58:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP0MC-0008FJ-Dx
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 08:58:49 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 84BF220784;
 Thu, 16 Apr 2020 08:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587027527;
 bh=dVAp91Tj6hWWtUY7tL+aLgKkZ276mvf5MWRT7goV5sk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=NAw/DPQ2vN2rzJzmUreAA38rnfxIXX3BUID+0uehW0Z9v4f/Ntd1a7JWQHTF+uDMv
 4tUi3XdV3gd/0EuPpoon9MJXibqbgTfuDttD3xyfrTBNZAOlFyJ4cRJ6Z+sHqArQUT
 PeqbbpCCaPZTxxeljv/xMr+adoczGliqtOh0MmEk=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jP0M9-003lwb-Tr; Thu, 16 Apr 2020 09:58:46 +0100
MIME-Version: 1.0
Date: Thu, 16 Apr 2020 09:58:45 +0100
From: Marc Zyngier <maz@kernel.org>
To: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Subject: Re: [PATCH v2] KVM: Optimize kvm_arch_vcpu_ioctl_run function
In-Reply-To: <8b92fb5b-5138-0695-fb90-6c36b8dfad00@linux.alibaba.com>
References: <20200416051057.26526-1-tianjia.zhang@linux.alibaba.com>
 <878sivx67g.fsf@vitty.brq.redhat.com>
 <1000159f971a6fa3b5bd9e5871ce4d82@kernel.org>
 <8b92fb5b-5138-0695-fb90-6c36b8dfad00@linux.alibaba.com>
Message-ID: <b700f9bde1218b217ca4e571b1d29c1e@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: tianjia.zhang@linux.alibaba.com, vkuznets@redhat.com,
 kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-s390@vger.kernel.org, linux-kernel@vger.kernel.org, pbonzini@redhat.com,
 tsbogend@alpha.franken.de, paulus@ozlabs.org, mpe@ellerman.id.au,
 benh@kernel.crashing.org, borntraeger@de.ibm.com, frankja@linux.ibm.com,
 david@redhat.com, cohuck@redhat.com, heiko.carstens@de.ibm.com,
 gor@linux.ibm.com, sean.j.christopherson@intel.com, wanpengli@tencent.com,
 jmattson@google.com, joro@8bytes.org, tglx@linutronix.de, mingo@redhat.com,
 bp@alien8.de, x86@kernel.org, hpa@zytor.com, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 christoffer.dall@arm.com, peterx@redhat.com, thuth@redhat.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_015848_511824_443EF347 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
 frankja@linux.ibm.com, mpe@ellerman.id.au, joro@8bytes.org, x86@kernel.org,
 borntraeger@de.ibm.com, mingo@redhat.com, julien.thierry.kdev@gmail.com,
 thuth@redhat.com, gor@linux.ibm.com, suzuki.poulose@arm.com,
 kvm-ppc@vger.kernel.org, bp@alien8.de, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, jmattson@google.com,
 tsbogend@alpha.franken.de, cohuck@redhat.com, linux-mips@vger.kernel.org,
 sean.j.christopherson@intel.com, james.morse@arm.com, pbonzini@redhat.com,
 Vitaly Kuznetsov <vkuznets@redhat.com>, linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wNC0xNiAwOTo0NSwgVGlhbmppYSBaaGFuZyB3cm90ZToKPiBPbiAyMDIwLzQvMTYg
MTY6MjgsIE1hcmMgWnluZ2llciB3cm90ZToKClsuLi5dCgo+PiBPdmVyYWxsLCB0aGVyZSBpcyBh
IGxhcmdlIHNldCBvZiBjbGVhbnVwcyB0byBiZSBkb25lIHdoZW4gYm90aCB0aGUgCj4+IHZjcHUg
YW5kIHRoZSBydW4KPj4gc3RydWN0dXJlcyBhcmUgcGFzc2VkIGFzIHBhcmFtZXRlcnMgYXQgdGhl
IHNhbWUgdGltZS4gSnVzdCBncmVwcGluZyAKPj4gdGhlIHRyZWUgZm9yCj4+IGt2bV9ydW4gaXMg
cHJldHR5IGluc3RydWN0aXZlLgo+PiAKPj4gIMKgwqDCoMKgwqDCoMKgIE0uCj4gCj4gU29ycnks
IGl0J3MgbXkgbWlzdGFrZSwgSSBvbmx5IGNvbXBpbGVkIHRoZSB4ODYgcGxhdGZvcm0sIEkgd2ls
bAo+IHN1Ym1pdCBwYXRjaCBhZ2Fpbi4KCk5vdCBhIG1pc3Rha2UuIEFsbCBJJ20gc2F5aW5nIGlz
IHRoYXQgdGhlcmUgaXMgYW4gb3Bwb3J0dW5pdHkgZm9yIGEgCmxhcmdlcgpzZXJpZXMgdGhhdCBj
bGVhbnMgdXAgdGhlIGNvZGUgYmFzZSwgcmF0aGVyIHRoYW4ganVzdCBkb2luZyBhIGNvdXBsZSBv
Zgpsb2NhbGl6ZWQgY2hhbmdlcy4KClRoYW5rcywKCiAgICAgICAgIE0uCi0tIApKYXp6IGlzIG5v
dCBkZWFkLiBJdCBqdXN0IHNtZWxscyBmdW5ueS4uLgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
