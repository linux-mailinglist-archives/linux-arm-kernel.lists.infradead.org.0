Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA35119F143
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 10:01:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/hm21ai+P5LaPpYfmwExCfE8hsXsOqVS1+nO0q5hsWE=; b=A3erUnuOXTi8ptwdjFl1R0Si1
	ED6oVYpNlwJg01KepGj/GdofLEKEEpV/XY3s28NSifgwelJzB9UefTzkHj1xZJtxK+crvxovEhlw3
	q/6XLpLnYNQmatytfeW+GqZmB3skoYp4GTHrHrxBHWZOrsAHE8OaAG5Yx9AbIizeDRNFMFVrrmKEv
	2+7JziJB9SMWjDLDaliTpo3R+xhXvG5ThEbP7fiiKPjMMjcOKAahx90eif6/6ee0uekLcVW2nrGQI
	U+FOjACmyTKaaI8Y63vYmgh5ntqCu+ZVPP8L4TcP+InL7SxTwbOSU0LuemyWwtLJxzAOlARn0PkTF
	aIYudEjvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLMgs-0002YX-0M; Mon, 06 Apr 2020 08:01:06 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLMgk-0002X2-ML
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 08:01:00 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 79FAB66759F3822586F4;
 Mon,  6 Apr 2020 16:00:44 +0800 (CST)
Received: from [127.0.0.1] (10.133.217.205) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.487.0;
 Mon, 6 Apr 2020 16:00:35 +0800
Subject: Re: [PATCH] sched/arm64: store cpu topology before notify_cpu_starting
To: Valentin Schneider <valentin.schneider@arm.com>
References: <855831b59e1b3774b11c3e33050eac4cc4639f06.1583332765.git.vpillai@digitalocean.com>
 <20200401114215.36640-1-cj.chengjian@huawei.com> <jhjwo6zjq5m.mognet@arm.com>
From: "chengjian (D)" <cj.chengjian@huawei.com>
Message-ID: <9686e37d-5698-334d-5e23-70a1e2d804ec@huawei.com>
Date: Mon, 6 Apr 2020 16:00:32 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <jhjwo6zjq5m.mognet@arm.com>
Content-Language: en-US
X-Originating-IP: [10.133.217.205]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_010058_920468_0BC7698B 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: joelaf@google.com, "chengjian \(D\)" <cj.chengjian@huawei.com>,
 peterz@infradead.org, fweisbec@gmail.com, huawei.libin@huawei.com,
 joel@joelfernandes.org, mingo@kernel.org, aubrey.li@linux.intel.com,
 naravamudan@digitalocean.com, aaron.lwe@gmail.com, jdesfossez@digitalocean.com,
 w.f@huawei.com, pawan.kumar.gupta@linux.intel.com, pjt@google.com,
 kerrnel@google.com, keescook@chromium.org, xiexiuqi@huawei.com,
 vpillai@digitalocean.com, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, pauld@redhat.com,
 mgorman@techsingularity.net, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, aubrey.intel@gmail.com,
 Sudeep Holla <sudeep.holla@arm.com>, pbonzini@redhat.com,
 tim.c.chen@linux.intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNC8xIDIxOjIzLCBWYWxlbnRpbiBTY2huZWlkZXIgd3JvdGU6Cj4gKCtMQUtNTCwg
K1N1ZGVlcCkKPgo+IE9uIFdlZCwgQXByIDAxIDIwMjAsIENoZW5nIEppYW4gd3JvdGU6Cj4+IHdo
ZW4gU0NIRURfQ09SRSBlbmFibGVkLCBzY2hlZF9jcHVfc3RhcnRpbmcoKSB1c2VzIHRocmVhZF9z
aWJsaW5nIGFzCj4+IFNNVF9NQVNLIHRvIGluaXRpYWxpemUgcnEtPmNvcmUsIGJ1dCBvbmx5IGFm
dGVyIHN0b3JlX2NwdV90b3BvbG9neSgpLAo+PiB0aGUgdGhyZWFkX3NpYmxpbmcgaXMgcmVhZHkg
Zm9yIHVzZS4KPj4KPj4gICAgICAgIG5vdGlmeV9jcHVfc3RhcnRpbmcoKQo+PiAgICAgICAgICAg
IC0+IHNjaGVkX2NwdV9zdGFydGluZygpCSMgdXNlIHRocmVhZF9zaWJsaW5nCj4+Cj4+ICAgICAg
ICBzdG9yZV9jcHVfdG9wb2xvZ3koY3B1KQo+PiAgICAgICAgICAgIC0+IHVwZGF0ZV9zaWJsaW5n
c19tYXNrcwkjIHNldCB0aHJlYWRfc2libGluZwo+Pgo+PiBGaXggdGhpcyBieSBkb2luZyBub3Rp
ZnlfY3B1X3N0YXJ0aW5nIGxhdGVyLCBqdXN0IGxpa2UgeDg2IGRvLgo+Pgo+IEkgaGF2ZW4ndCBi
ZWVuIGZvbGxvd2luZyB0aGUgc2NoZWQgY29yZSBzdHVmZiBjbG9zZWx5OyBjYW4ndCB0aGlzCj4g
cnEtPmNvcmUgYXNzaWdubWVudCBiZSBkb25lIGluIHNjaGVkX2NwdV9hY3RpdmF0ZSgpIGluc3Rl
YWQ/IFdlIGFscmVhZHkKPiBsb29rIGF0IHRoZSBjcHVfc210X21hc2soKSBpbiB0aGVyZSwgYW5k
IGl0IGlzIHZhbGlkICh3ZSBnbyB0aHJvdWdoIHRoZQo+IGVudGlyZXR5IG9mIHNlY29uZGFyeV9z
dGFydF9rZXJuZWwoKSBiZWZvcmUgZ2V0dGluZyBhbnl3aGVyZSBuZWFyCj4gQ1BVSFBfQVBfQUNU
SVZFKS4KPgo+IEkgZG9uJ3QgdGhpbmsgdGhpcyBicmVha3MgYW55dGhpbmcsIGJ1dCB3aXRob3V0
IHRoaXMgZGVwZW5kZW5jeSBpbgo+IHNjaGVkX2NwdV9zdGFydGluZygpIHRoZW4gdGhlcmUgaXNu
J3QgcmVhbGx5IGEgcmVhc29uIGZvciB0aGlzIG1vdmUuCgpZZXMsIGl0IGlzIGNvcnJlY3QgdG8g
cHV0IHRoZSBycS0+IGNvcmUgYXNzaWdubWVudCBpbiBzY2hlZF9jcHVfYWN0aXZlKCkuCgpUaGUg
Y3B1X3NtdF9tYXNrIGlzIGFscmVhZHkgdmFsaWQgaGVyZS4KCgpJIGhhdmUgbWFkZSBzdWNoIGFu
IGF0dGVtcHQgb24gbXkgb3duIGJyYW5jaCBhbmQgcGFzc2VkIHRoZSB0ZXN0LgoKClRoYW5rIHlv
dS4KCgogwqDCoMKgIC0tIENoZW5nIEppYW4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
