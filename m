Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF351934CF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 01:00:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HaVosNqqoRjBi21Fa5BqSxvZ0EZTubQMLqyanRDE2L4=; b=GBCiGFNErbvV1KKL/zYMPIn3Y
	6q1R5uh+5V4zrsx09TZDFzhe59S5TxuavwcVlpFKhB2dODdjyBYTQmFx5FaNMuRb2K/ZfXzfDSvUA
	PFcfPuWFyT0YlJGqit7WZUrK6D+F/UemXKkDUwrcZw+7Z/VRQbVYdT7qiTiW4SfFS/aFLe6yynY7H
	xM3APwIoRNN6Ob+b4j6LQL8BRRty7qBqlZsjMsFWulbvWJeG6hGPypNVaUyatxS67xl99NJZvGpn6
	JAOjt2d1RMN3cccFf7gfaDc/U8dgnlriciJcSjt6E7sXKwDcTKYPMcRm4Uz/JsEK6jXc5iwRxIe7x
	wFKOu1SgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHFwc-0003uY-LM; Thu, 26 Mar 2020 00:00:22 +0000
Received: from hqnvemgate24.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHFwT-0003tn-UR
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 00:00:15 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate24.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e7bf02e0003>; Wed, 25 Mar 2020 16:58:38 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 25 Mar 2020 17:00:10 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 25 Mar 2020 17:00:10 -0700
Received: from [10.24.37.103] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 26 Mar
 2020 00:00:06 +0000
Subject: Re: [TEGRA194_CPUFREQ Patch 2/3] cpufreq: Add Tegra194 cpufreq driver
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
 <1575394348-17649-2-git-send-email-sumitg@nvidia.com>
 <20191204054043.o4ff7pnqec3fwdgu@vireshk-i7>
 <7347caa6-43a3-f761-de83-481b45f7b22a@nvidia.com>
 <20191204112749.jkwlyteal4hfvnhb@vireshk-i7>
From: sumitg <sumitg@nvidia.com>
Message-ID: <aa9fb180-6a23-e27b-51f6-f6b5685d65be@nvidia.com>
Date: Thu, 26 Mar 2020 05:29:58 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191204112749.jkwlyteal4hfvnhb@vireshk-i7>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1585180719; bh=9uZbtNMpcvzB0onUSiYkGRUIchw1nTvWyc50DiXbVTI=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Transfer-Encoding:
 Content-Language;
 b=O5H4mezIfnNNMGskLSIFsJQ7ogdzqyjRRek8D12N94VW9O89rhhNpnmu5iFtPEFdX
 fvwvks1+8PPrKV9P8jtPk8C+pZtCNHl6QyftlW0Up2g3EBdgIuP/IfRsGSdUpoMFqn
 qN2GDqjEE4EZprdo209/9VP7l25ton6dMRUkUvtMA/fzEwtJcPyja7GoiuqU2Okest
 w4Iftt2ENlhBgoKBJll+Y7j4pnyRYj18PA2EmOfa3Nw6SwLsI6G/5PiVAsZ1NROp/U
 FHPayksZCAK6uQdS5xFUchiPeDMeGn6UmfhIvvIJdMaQwqA/Gy8ue7Uaa4ABzVL5Ok
 lY9GtCYK9Bibw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_170013_997552_6E6205CA 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: bbasu@nvidia.com, linux-pm@vger.kernel.org, catalin.marinas@arm.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 talho@nvidia.com, thierry.reding@gmail.com, linux-tegra@vger.kernel.org,
 sumitg@nvidia.com, mperttunen@nvidia.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVmlyZXNoLAoKU29ycnkgZm9yIHRoZSBsYXRlIHJlcGx5LgoKT24gMDQvMTIvMTkgNDo1NyBQ
TSwgVmlyZXNoIEt1bWFyIHdyb3RlOgo+IE9uIDA0LTEyLTE5LCAxNjoyNSwgc3VtaXRnIHdyb3Rl
Ogo+PiBJbiBUMTk0LCBDQ1BMRVggZG9lc24ndCBoYXZlIGFjY2VzcyB0byBzZXQgY2xvY2tzIGFu
ZCB0aGUKPj4KPj4gY2xrX3tnZXR8c2V0fV9yYXRlKCkgZnVuY3Rpb25zIHNldCBjbG9ja3MgYnkg
aG9vayB0byBCUE1QIFI1Lgo+Pgo+PiBDUFUgZnJlcSBjYW4gYmUgZGlyZWN0bHkgc2V0IGJ5IEND
UExFWCB1c2luZyBNU1IoTlZGUkVRX1JFUV9FTDEpLgo+Pgo+PiBBcyBEVkZTIHJ1bidzIG9uIEJQ
TVAsIGFub3RoZXIgTVNSIChOVkZSRVFfRkVFREJBQ0tfRUwxKSBpcwo+Pgo+PiB1c2VkIHRvIHJl
YWQgdGhlIGNvdW50ZXJzIGFuZCBjYWxjdWxhdGUgImFjdHVhbCIgY3B1IGZyZXEgYXQgQ0NQTEVY
Lgo+Pgo+PiBTbywgImNwdWluZm9fY3VyX2ZyZXEiIG5vZGUgZ2l2ZXMgdGhlIGFjdHVhbCBjcHUg
ZnJlcXVlbmN5IGFuZCBub3QKPj4KPj4gZ2l2ZW4gYnkgbm9kZSAic2NhbGluZ19jdXJfZnJlcSIu
Cj4gUmlnaHQsIGJ1dCB3aHkgY2FuJ3QgdGhpcyBiZSBoaWRkZW4gaW4gdGhlIENQVSdzIGNsayBk
cml2ZXIgaW5zdGVhZCwKPiBzbyBjcHVmcmVxIGRyaXZlciBjYW4ganVzdCBkbyBjbGtfZ2V0X3Jh
dGUoKSBhbmQgY2xrX3NldF9yYXRlKCkgPwo+Cj4+PiAtIHBvcHVsYXRpbmcgY3B1ZnJlcSB0YWJs
ZSwgeW91IGNhbiBwcm9iYWJseSBhZGQgT1BQcyBpbnN0ZWFkIHVzaW5nCj4+PiAgICAgdGhlIHNh
bWUgbWVjaGFuaXNtCj4+IFdlIGFyZSByZWFkaW5nIGF2YWlsYWJsZSBmcmVxdWVuY2llcyBmcm9t
IEJQTVAgdG8gcG9wdWxhdGUKPj4KPj4gY3B1ZnJlcSB0YWJsZSBhbmQgbm90IHVzaW5nIHN0YXRp
YyBvcHAgdGFibGUuCj4gUmlnaHQgYW5kIGxvdCBvZiBvdGhlciBwbGF0Zm9ybXMgcmVhZCBpdCBm
cm9tIGZpcm13YXJlIChJIGJlbGlldmUgQkJNUAo+IGlzIGEgZmlybXdhcmUgaGVyZSksIGFuZCBj
cmVhdGUgT1BQcyBhdCBydW50aW1lLiBMb29rIGF0IHRoaXMgZm9yCj4gZXhhbXBsZToKPgo+IGRy
aXZlcnMvY3B1ZnJlcS9xY29tLWNwdWZyZXEtaHcuYwo+Cj4gYW5kIHNlYXJjaCBmb3IgZGV2X3Bt
X29wcF9hZGQoKS4KPgotIEkgdGhpbmsgd2UgZG9uJ3QgbmVlZCBzZXBhcmF0ZSBDUFUgY2xvY2sg
ZHJpdmVyICYgdG8gcmV1c2UKCiDCoCBjcHVmcmVxLWR0IGRyaXZlciBhcyB3ZSB3aWxsIHN0aWxs
IGhhdmUgdG8gcmVwbGljYXRlIHNhbWUgbG9naWMKCiDCoCBmcm9tIGNwdWZyZXEgZHJpdmVyIHRv
IHRoYXQgZHVtbXkgY2xvY2sgZHJpdmVyIGZvciBjYWxjdWxhdGluZwoKIMKgIGFjdHVhbCBjcHVm
cmVxIGZyb20gTVNSIHZhbHVlLiBTbywgaXQgd29uJ3QgYWRkIG11Y2ggdmFsdWUuCgogwqDCoMKg
IC0gInFjb20tY3B1ZnJlcS1ody5jIiBpcyB1c2luZyBjbGtfZ2V0X3JhdGUoKSBkdXJpbmcgaW5p
dCwgYnV0CgogwqDCoMKgwqDCoCB0aGUgZnJlcXVlbmN5IG9wcyAiZ2V0L3RhcmdldF9pbmRleCIg
d3JpdGUgdG8gcmVnaXN0ZXIgZGlyZWN0bHkKCiDCoMKgwqDCoMKgIGFuZCBub3QgdXNpbmcgY2xr
IGFwaSdzLiBBbHNvLCB0aGUgY2xvY2sgZHJpdmVyIGZyb20gZ2NjLW1zbSouYwoKIMKgwqDCoMKg
wqAgc2VlbSB0byBoYW5kbGUgYWxsIGNsb2NrcyBpbiBDQ1BMRVguCgogwqDCoMKgwqDCoCBUZWdy
YSBTT0MncyB3aGljaCBkaWRuJ3QgaGF2ZSBCUE1QIGhhZCB0aGUgY2xvY2sgaGFuZGxpbmcKCiDC
oMKgwqDCoMKgIGRvbmUgYnkgQ0NQTEVYLiBUaGV5IHdlcmUgdXNpbmcgY2xrX3tnZXR8c2V0fV9y
YXRlKCkgYXBpJ3MKCiDCoMKgwqDCoMKgIGFzIHlvdSBtZW50aW9uZWQuIEJ1dCBpbiBUZWdyYTE5
NCwgYWxsIGNsb2NrIGhhbmRsaW5nIGlzIGRvbmUKCiDCoMKgwqDCoMKgIHdpdGhpbiBCUE1QIFI1
IGNvcmUgZXhjZXB0IENQVSBjbG9jayh3aGljaCBpcyB0aHJvdWdoIE1TUikuCgotIEFkZGluZyBP
UFAncyB3aXRoIGRldl9wbV9vcHBfYWRkKCkgaXMgYWxzbyBub3QgcmVxdWlyZWQgYXM6CgogwqDC
oCAxKSBXZSBkb24ndCBoYXZlIGFueSBjb25zdW1lciBsaWtlIGVuZXJneSBtb2RlbCBvciBFQVMg
aW4KCiDCoMKgwqDCoMKgwqAgVGVncmExOTQgd2hpY2ggaXQgc2VlbXMgd2FzIHZhbGlkIHdpdGgg
InFjb20tY3B1ZnJlcS1ody5jIi4KCiDCoMKgwqDCoMKgwqAgU28sIGkgdGhpbmsgaXQgd29uJ3Qg
YmUgdXNlZnVsIGZvciBUMTk0LgoKIMKgwqAgMikgQWxzbywgdGhlcmUgaXMgbm8gd2F5IHRvIG1h
cCBuZGl2IHRvIHZvbHRhZ2UgaW4ga2VybmVsLiBLZXJuZWwKCiDCoMKgwqDCoMKgwqAgZHJpdmVy
IHBhc3NlcyBuZGl2IHZhbHVlIHRvIEJQTVAoUjUpIHdoaWNoIGNvbnZlcnRzIHRvIHZoaW50LgoK
UGxlYXNlIHNoYXJlIHlvdXIgaW5wdXRzLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
