Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C17518C62D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 04:53:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KPvEJ+p7vazg3vbkWeSoxq4CaYMHTIv575cyZjS/rIo=; b=pZ/dl0T15pQV17V2BGLuA36X5
	HBbrIyhaAufNWQxpFSqjIEHbRQLE19UQvR8NKdd62CQrlIaGGewscBYOhYo88qkAE+vDsjQe2AtnW
	vZDVDVWdyxVpZzh9WHyGwI2NzCyu8XhHlQYIIuADV370kACcodU7t85NTgt0igdc/V/vhvUi79BDX
	x0ci3XImnGbDOIzRKBV6ZMO37O07nX/GGQtrk88W855XnO2BYwfoHQSYk33+udhyprr2eaW+28XU5
	22D5hmsxavdoSI0jVC30yXIABgLTREJd1j+734IGdqKofAw6XYP18AfyH7E6db9Nla71a8cM2eCFz
	jG0JhbyuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF8j2-0003wb-0h; Fri, 20 Mar 2020 03:53:36 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF8io-0003w1-Sy
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 03:53:24 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 1046441C18B5189ACC3F;
 Fri, 20 Mar 2020 11:53:20 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.487.0; Fri, 20 Mar 2020
 11:53:12 +0800
Subject: Re: [PATCH v5 20/23] KVM: arm64: GICv4.1: Plumb SGI implementation
 selection in the distributor
To: Marc Zyngier <maz@kernel.org>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-21-maz@kernel.org>
 <72832f51-bbde-8502-3e03-189ac20a0143@huawei.com>
 <4a06fae9c93e10351276d173747d17f4@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <1c9fdfc8-bdb2-88b6-4bdc-2b9254dfa55c@huawei.com>
Date: Fri, 20 Mar 2020 11:53:10 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <4a06fae9c93e10351276d173747d17f4@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_205323_103819_EED2E4C3 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org, Eric
 Auger <eric.auger@redhat.com>, Robert
 Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>, Julien
 Thierry <julien.thierry.kdev@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDIwMjAvMy8xOSAyMDoxMCwgTWFyYyBaeW5naWVyIHdyb3RlOgo+PiBCdXQg
SSB3b25kZXIgdGhhdCBzaG91bGQgd2UgdXNlIG5hc3NnaXJlcSB0byAqb25seSoga2VlcCB0cmFj
ayB3aGF0Cj4+IHRoZSBndWVzdCBoYWQgd3JpdHRlbiBpbnRvIHRoZSBHSUNEX0NUTFIubkFTU0dJ
cmVxLsKgIElmIG5vdCwgd2UgbWF5Cj4+IGxvc2UgdGhlIGd1ZXN0LXJlcXVlc3QgYml0IGFmdGVy
IG1pZ3JhdGlvbiBhbW9uZyBob3N0cyB3aXRoIGRpZmZlcmVudAo+PiBoYXNfZ2ljdjRfMSBzZXR0
aW5ncy4KPiAKPiBJJ20gdW5zdXJlIG9mIHdoYXQgeW91J3JlIHN1Z2dlc3RpbmcgaGVyZS4gSWYg
dXNlcnNwYWNlIHRyaWVzIHRvIHNldAo+IEdJQ0RfQ1RMUi5uQVNTR0lyZXEgb24gYSBub24tNC4x
IGhvc3QsIHRoaXMgYml0IHdpbGwgbm90IGxhdGNoLgoKVGhpcyBpcyBleGFjdGx5IHdoYXQgSSAq
d2FzKiBjb25jZXJuaW5nIGFib3V0LgoKPiBVc2Vyc3BhY2UgY2FuIGNoZWNrIHRoYXQgYXQgcmVz
dG9yZSB0aW1lLiBPciB3ZSBjb3VsZCBmYWlsIHRoZQo+IHVzZXJzcGFjZSB3cml0ZSwgd2hpY2gg
aXMgYSBiaXQgb2RkICh0aGUgYml0IGlzIG90aGVyd2lzZSBSRVMwKS4KPiAKPiBDb3VsZCB5b3Ug
Y2xhcmlmeSB5b3VyIHByb3Bvc2FsPwoKTGV0J3MgYXNzdW1lIHR3byBob3N0cyBiZWxvdy4gJ2hh
c19naWN2NF8xJyBpcyB0cnVlIG9uIGhvc3QtQSB3aGlsZQppdCBpcyBmYWxzZSBvbiBob3N0LUIg
YmVjYXVzZSBvZiBsYWNrIG9mIEhXIHN1cHBvcnQgb3IgdGhlIGtlcm5lbApwYXJhbWV0ZXIgImt2
bS1hcm0udmdpY192NF9lbmFibGU9MCIuCgpJZiB3ZSBtaWdyYXRlIGd1ZXN0IHRocm91Z2ggQS0+
Qi0+QSwgd2UgbWF5IGVuZC11cCBsb3NlIHRoZSBpbml0aWFsCmd1ZXN0LXJlcXVlc3QgIm5BU1NH
SXJlcT0xIiBhbmQgZG9uJ3QgdXNlIGRpcmVjdCB2U0dJIGRlbGl2ZXJ5IGZvcgp0aGlzIGd1ZXN0
IHdoZW4gaXQncyBtaWdyYXRlZCBiYWNrIHRvIGhvc3QtQS4KClRoaXMgY2FuIGJlICJmaXhlZCIg
Ynkga2VlcCB0cmFjayBvZiB3aGF0IGd1ZXN0IGhhZCB3cml0dGVuIGludG8KbkFTU0dJcmVxLiBB
bmQgd2UgbmVlZCB0byBldmFsdWF0ZSB0aGUgbmVlZCBmb3IgdXNpbmcgZGlyZWN0IHZTR0kKZm9y
IGEgc3BlY2lmaWVkIGd1ZXN0IGJ5ICdoYXNfZ2ljdjRfMSAmJiBuYXNzZ2lyZXEnLgoKQnV0IGlm
IGl0J3MgZXhwZWN0ZWQgdGhhdCAiaWYgdXNlcnNwYWNlIHRyaWVzIHRvIHNldCBuQVNTR0lyZXEg
b24KYSBub24tNC4xIGhvc3QsIHRoaXMgYml0IHdpbGwgbm90IGxhdGNoIiwgdGhlbiB0aGlzIHNo
b3VsZG4ndCBiZQphIHByb2JsZW0gYXQgYWxsLgoKQW55d2F5IHRoaXMgaXMgbm90IGEgYmlnIGRl
YWwgdG8gbWUgYW5kIEkgd29uJ3QgY29tcGxhaW4gYWJvdXQgaXQKaW4gdGhlIGZ1dHVyZSA7LSkg
RWl0aGVyIHdheSwgZm9yIHRoaXMgcGF0Y2g6CgpSZXZpZXdlZC1ieTogWmVuZ2h1aSBZdSA8eXV6
ZW5naHVpQGh1YXdlaS5jb20+CgoKVGhhbmtzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
