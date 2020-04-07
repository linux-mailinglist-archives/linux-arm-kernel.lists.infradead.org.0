Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5111A1550
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 20:55:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7TIznM+PmdE/Ruq55+npBAWHI/knenn3e6264LHjpGM=; b=sJERqYPu4wB/ups5rNLzvsTyY
	dGVsgIQh48bhn557Sc16I4GGuURGxMXl4pORTtjOJofc3ByuP5QBKK3Cs0SQejtOZ6cJTNXWwp/H4
	tMG+83cPH+eLcQq62TOZBvo5/sigSh+jL5r7yBVEFP9A8sQaAllMkygaQPA7mK+0lVxPskZgsdUdt
	K8z2FKh6UWiEVh8teaGuMgBFdU/kQfxX7njsE9n89AhVoP3Ej06ONMHeN50CB9n5jEMN0qkUyGc9D
	QuViZrp+znBr70x/u4r9c9I4x5lWjweuxwp9eH4MyHBrMrUrt1deh8NdsFxIZcKeakWuzYz7b50+h
	nRO39WY9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLtNg-0006Ou-BK; Tue, 07 Apr 2020 18:55:28 +0000
Received: from hqnvemgate24.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLtNR-000649-K9
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 18:55:15 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate24.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e8ccc2a0001>; Tue, 07 Apr 2020 11:53:30 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 07 Apr 2020 11:55:12 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 07 Apr 2020 11:55:12 -0700
Received: from DRHQMAIL107.nvidia.com (10.27.9.16) by HQMAIL109.nvidia.com
 (172.20.187.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 7 Apr
 2020 18:55:12 +0000
Received: from [10.24.37.103] (10.124.1.5) by DRHQMAIL107.nvidia.com
 (10.27.9.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 7 Apr 2020
 18:55:07 +0000
From: sumitg <sumitg@nvidia.com>
Subject: Re: [TEGRA194_CPUFREQ Patch v2 2/3] cpufreq: Add Tegra194 cpufreq
 driver
To: Dmitry Osipenko <digetx@gmail.com>, <rjw@rjwysocki.net>,
 <viresh.kumar@linaro.org>, <catalin.marinas@arm.com>, <will@kernel.org>,
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>, <talho@nvidia.com>,
 <linux-pm@vger.kernel.org>, <linux-tegra@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <1586028547-14993-1-git-send-email-sumitg@nvidia.com>
 <1586028547-14993-3-git-send-email-sumitg@nvidia.com>
 <67f9feb1-ba51-f1ac-b6eb-4587924d0748@gmail.com>
Message-ID: <538ddcf4-b760-a342-eab6-5a61c9bd860a@nvidia.com>
Date: Wed, 8 Apr 2020 00:25:38 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <67f9feb1-ba51-f1ac-b6eb-4587924d0748@gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 DRHQMAIL107.nvidia.com (10.27.9.16)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1586285610; bh=9hwDPF9VnbM85J5PKb1WmMWXNhaY35UANwXzXHCJb2w=;
 h=X-PGP-Universal:From:Subject:To:CC:References:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=RpyBtvuW4zXVIrNxiDX8UX/Xomrv4A7Z1yqgIwYlAcurOdV36H+rD1k/iCneY13Hb
 BYk5O90k96V1wzaJPZZRJNnfi/xRQZjTWt1o8o2/CxaD84gq0hvbejKpJkcc4+u0Aw
 eBTOFS12N1UXN6XEBSuhB6mw7X6RLWRF3oNEcb9ZRQmKPka04lrRIBWoYAK/NUvyEK
 +GtOEw3fTZijPq2+kMcQbb8av8mxL38StLZL6bi22+1zkGxGNu5jMe3SeDKl2seMov
 rCoaXtZGRBaJaGjFY/nalQmATSCQjKt95+sdsoicBKJ3THhoMW6rliFPHzmo3GYRNI
 XpJ5uv/kQ8UCw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_115513_831882_B90DDDD6 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: sumitg@nvidia.com, bbasu@nvidia.com, mperttunen@nvidia.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwNS8wNC8yMCA3OjM1IFBNLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4gRXh0ZXJuYWwg
ZW1haWw6IFVzZSBjYXV0aW9uIG9wZW5pbmcgbGlua3Mgb3IgYXR0YWNobWVudHMKPiAKPiAKPiAw
NC4wNC4yMDIwIDIyOjI5LCBTdW1pdCBHdXB0YSDQv9C40YjQtdGCOgo+IC4uLgo+PiArc3RhdGlj
IHZvaWQgdGVncmFfcmVhZF9jb3VudGVycyhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCj4+ICt7
Cj4+ICsgICAgIHN0cnVjdCByZWFkX2NvdW50ZXJzX3dvcmsgKnJlYWRfY291bnRlcnNfd29yazsK
Pj4gKyAgICAgc3RydWN0IHRlZ3JhX2NwdV9jdHIgKmM7Cj4+ICsgICAgIHU2NCB2YWw7Cj4+ICsK
Pj4gKyAgICAgLyoKPj4gKyAgICAgICogcmVmX2Nsa19jb3VudGVyKDMyIGJpdCBjb3VudGVyKSBy
dW5zIG9uIGNvbnN0YW50IGNsaywKPj4gKyAgICAgICogcGxsX3AoNDA4TUh6KS4KPj4gKyAgICAg
ICogSXQgd2lsbCB0YWtlID0gMiBeIDMyIC8gNDA4IE1IeiB0byBvdmVyZmxvdyByZWYgY2xrIGNv
dW50ZXIKPj4gKyAgICAgICogICAgICAgICAgICAgID0gMTA1MjY4ODAgdXNlYyA9IDEwLjUyNyBz
ZWMgdG8gb3ZlcmZsb3cKPj4gKyAgICAgICoKPj4gKyAgICAgICogTGlrZSB3aXNlIGNvcmVfY2xr
X2NvdW50ZXIoMzIgYml0IGNvdW50ZXIpIHJ1bnMgb24gY29yZSBjbG9jay4KPj4gKyAgICAgICog
SXQncyBzeW5jaHJvbml6ZWQgdG8gY3JhYl9jbGsgKGNwdV9jcmFiX2Nsaykgd2hpY2ggcnVucyBh
dAo+PiArICAgICAgKiBmcmVxIG9mIGNsdXN0ZXIuIEFzc3VtaW5nIG1heCBjbHVzdGVyIGNsb2Nr
IH4yMDAwTUh6LAo+PiArICAgICAgKiBJdCB3aWxsIHRha2UgPSAyIF4gMzIgLyAyMDAwIE1IeiB0
byBvdmVyZmxvdyBjb3JlIGNsayBjb3VudGVyCj4+ICsgICAgICAqICAgICAgICAgICAgICA9IH4y
LjE0NyBzZWMgdG8gb3ZlcmZsb3cKPj4gKyAgICAgICovCj4+ICsgICAgIHJlYWRfY291bnRlcnNf
d29yayA9IGNvbnRhaW5lcl9vZih3b3JrLCBzdHJ1Y3QgcmVhZF9jb3VudGVyc193b3JrLAo+PiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgd29yayk7Cj4+ICsgICAgIGMg
PSAmcmVhZF9jb3VudGVyc193b3JrLT5jOwo+PiArCj4+ICsgICAgIHZhbCA9IHJlYWRfZnJlcV9m
ZWVkYmFjaygpOwo+PiArICAgICBjLT5sYXN0X3JlZmNsa19jbnQgPSBsb3dlcl8zMl9iaXRzKHZh
bCk7Cj4+ICsgICAgIGMtPmxhc3RfY29yZWNsa19jbnQgPSB1cHBlcl8zMl9iaXRzKHZhbCk7Cj4+
ICsgICAgIHVkZWxheShjLT5kZWxheSk7Cj4+ICsgICAgIHZhbCA9IHJlYWRfZnJlcV9mZWVkYmFj
aygpOwo+PiArICAgICBjLT5yZWZjbGtfY250ID0gbG93ZXJfMzJfYml0cyh2YWwpOwo+PiArICAg
ICBjLT5jb3JlY2xrX2NudCA9IHVwcGVyXzMyX2JpdHModmFsKTsKPj4gK30KPj4gKwo+PiArLyoK
Pj4gKyAqIFJldHVybiBpbnN0YW50YW5lb3VzIGNwdSBzcGVlZAo+PiArICogSW5zdGFudGFuZW91
cyBmcmVxIGlzIGNhbGN1bGF0ZWQgYXMgLQo+PiArICogLVRha2VzIHNhbXBsZSBvbiBldmVyeSBx
dWVyeSBvZiBnZXR0aW5nIHRoZSBmcmVxLgo+PiArICogICAtIFJlYWQgY29yZSBhbmQgcmVmIGNs
b2NrIGNvdW50ZXJzOwo+PiArICogICAtIERlbGF5IGZvciBYIHVzCj4+ICsgKiAgIC0gUmVhZCBh
Ym92ZSBjeWNsZSBjb3VudGVycyBhZ2Fpbgo+PiArICogICAtIENhbGN1bGF0ZXMgZnJlcSBieSBz
dWJ0cmFjdGluZyBjdXJyZW50IGFuZCBwcmV2aW91cyBjb3VudGVycwo+PiArICogICAgIGRpdmlk
ZWQgYnkgdGhlIGRlbGF5IHRpbWUgb3IgZXF2LiBvZiByZWZfY2xrX2NvdW50ZXIgaW4gZGVsdGEg
dGltZQo+PiArICogICAtIFJldHVybiBLY3ljbGVzL3NlY29uZCwgZnJlcSBpbiBLSHoKPj4gKyAq
Cj4+ICsgKiAgIGRlbHRhIHRpbWUgcGVyaW9kID0geCBzZWMKPj4gKyAqICAgICAgICAgICAgICAg
ICAgICAgPSBkZWx0YSByZWZfY2xrX2NvdW50ZXIgLyAoNDA4ICogMTBeNikgc2VjCj4+ICsgKiAg
IGZyZXEgaW4gSHogPSBjeWNsZXMvc2VjCj4+ICsgKiAgICAgICAgICAgICAgPSAoZGVsdGEgY3lj
bGVzIC8geCBzZWMKPj4gKyAqICAgICAgICAgICAgICA9IChkZWx0YSBjeWNsZXMgKiA0MDggKiAx
MF42KSAvIGRlbHRhIHJlZl9jbGtfY291bnRlcgo+PiArICogICBpbiBLSHogICAgID0gKGRlbHRh
IGN5Y2xlcyAqIDQwOCAqIDEwXjMpIC8gZGVsdGEgcmVmX2Nsa19jb3VudGVyCj4+ICsgKgo+PiAr
ICogQGNwdSAtIGxvZ2ljYWwgY3B1IHdob3NlIGZyZXEgdG8gYmUgdXBkYXRlZAo+IAo+IAo+PiAr
ICogUmV0dXJucyBmcmVxIGluIEtIeiBvbiBzdWNjZXNzLCAwIGlmIGNwdSBpcyBvZmZsaW5lCj4g
Cj4gSSBkb24ndCBzZWUgYW55IGNoZWNrcyBpbiB0aGUgY29kZSBhYm91dCB3aGV0aGVyIENQVSBp
cyBvZmZsaW5lLgo+IAo+IEdvb2dsaW5nIGZvciAicXVldWVfd29ya19vbiBvZmZsaW5lIGNwdSIg
c3VnZ2VzdHMgdGhhdCB0aGlzIGZ1bmN0aW9uCj4gc2hvdWxkIGhhbmcuCj4gClRyaWVkIHRoaXMg
YW5kIGRpZG4ndCBnZXQgY3Jhc2ggb3IgaGFuZy4Kc2hvd19jcHVpbmZvX2N1cl9mcmVxKCkgcmV0
dXJucyAiPHVua25vd24+IiB2YWx1ZSBvbiByZWFkaW5nIGZyZXF1ZW5jeSAKZnJvbSBhIGNsdXN0
ZXIgaGF2aW5nIGJvdGggaXQncyBjb3JlcyBvZmZsaW5lLgpJZiBvbmx5IG9uZSBjcHUgaXMgb2Zm
bGluZSwgdGhlbiBmcmVxdWVuY3kgb2Ygb3RoZXIgb25saW5lIGNwdSB3aGljaCBpcyAKbWFuYWdp
bmcgdGhlIHBvbGljeSBvZiB0aGF0IGNsdXN0ZXIgaXMgcmV0dXJuZWQuCkhhdmUgc3RpbGwgYWRk
ZWQgYmVsb3cgY2hlY2sgYXMgZ3VhcmQgaW4gZ2V0fHNldCgpIGZyZXEgY2FsbHMuCglpZiAoIWNw
dV9vbmxpbmUoY3B1KSkKCQlyZXR1cm4gLUVJTlZBTDsKVGhhbmt5b3UgZm9yIHRoZSBpbnB1dC4K
Cj4+ICsgKi8KPj4gK3N0YXRpYyB1bnNpZ25lZCBpbnQgdGVncmExOTRfZ2V0X3NwZWVkX2NvbW1v
bih1MzIgY3B1LCB1MzIgZGVsYXkpCj4+ICt7Cj4+ICsgICAgIHN0cnVjdCByZWFkX2NvdW50ZXJz
X3dvcmsgcmVhZF9jb3VudGVyc193b3JrOwo+PiArICAgICBzdHJ1Y3QgdGVncmFfY3B1X2N0ciBj
Owo+PiArICAgICB1MzIgZGVsdGFfcmVmY250Owo+PiArICAgICB1MzIgZGVsdGFfY2NudDsKPj4g
KyAgICAgdTMyIHJhdGVfbWh6Owo+PiArCj4+ICsgICAgIHJlYWRfY291bnRlcnNfd29yay5jLmNw
dSA9IGNwdTsKPj4gKyAgICAgcmVhZF9jb3VudGVyc193b3JrLmMuZGVsYXkgPSBkZWxheTsKPj4g
KyAgICAgSU5JVF9XT1JLX09OU1RBQ0soJnJlYWRfY291bnRlcnNfd29yay53b3JrLCB0ZWdyYV9y
ZWFkX2NvdW50ZXJzKTsKPj4gKyAgICAgcXVldWVfd29ya19vbihjcHUsIHJlYWRfY291bnRlcnNf
d3EsICZyZWFkX2NvdW50ZXJzX3dvcmsud29yayk7Cj4+ICsgICAgIGZsdXNoX3dvcmsoJnJlYWRf
Y291bnRlcnNfd29yay53b3JrKTsKPj4gKyAgICAgYyA9IHJlYWRfY291bnRlcnNfd29yay5jOwo+
PiArCj4+ICsgICAgIGlmIChjLmNvcmVjbGtfY250IDwgYy5sYXN0X2NvcmVjbGtfY250KQo+PiAr
ICAgICAgICAgICAgIGRlbHRhX2NjbnQgPSBjLmNvcmVjbGtfY250ICsgKE1BWF9DTlQgLSBjLmxh
c3RfY29yZWNsa19jbnQpOwo+PiArICAgICBlbHNlCj4+ICsgICAgICAgICAgICAgZGVsdGFfY2Nu
dCA9IGMuY29yZWNsa19jbnQgLSBjLmxhc3RfY29yZWNsa19jbnQ7Cj4+ICsgICAgIGlmICghZGVs
dGFfY2NudCkKPj4gKyAgICAgICAgICAgICByZXR1cm4gMDsKPj4gKwo+PiArICAgICAvKiByZWYg
Y2xvY2sgaXMgMzIgYml0cyAqLwo+PiArICAgICBpZiAoYy5yZWZjbGtfY250IDwgYy5sYXN0X3Jl
ZmNsa19jbnQpCj4+ICsgICAgICAgICAgICAgZGVsdGFfcmVmY250ID0gYy5yZWZjbGtfY250ICsg
KE1BWF9DTlQgLSBjLmxhc3RfcmVmY2xrX2NudCk7Cj4+ICsgICAgIGVsc2UKPj4gKyAgICAgICAg
ICAgICBkZWx0YV9yZWZjbnQgPSBjLnJlZmNsa19jbnQgLSBjLmxhc3RfcmVmY2xrX2NudDsKPj4g
KyAgICAgaWYgKCFkZWx0YV9yZWZjbnQpIHsKPj4gKyAgICAgICAgICAgICBwcl9kZWJ1ZygiY3B1
ZnJlcTogJWQgaXMgaWRsZSwgZGVsdGFfcmVmY250OiAwXG4iLCBjcHUpOwo+PiArICAgICAgICAg
ICAgIHJldHVybiAwOwo+PiArICAgICB9Cj4+ICsgICAgIHJhdGVfbWh6ID0gKCh1bnNpZ25lZCBs
b25nKShkZWx0YV9jY250ICogUkVGX0NMS19NSFopKSAvIGRlbHRhX3JlZmNudDsKPj4gKwo+PiAr
ICAgICByZXR1cm4gKHJhdGVfbWh6ICogS0haKTsgLyogaW4gS0h6ICovCj4+ICt9Cj4gCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
