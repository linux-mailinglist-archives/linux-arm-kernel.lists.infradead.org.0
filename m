Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7CA2474A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 07:07:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a+kWOV0TWTSqLAehDPVbYuyv0XFR/ciefnoyitqPkz4=; b=BXZvMuXW1QX+7HHkwH9Jm9ovk
	DQu7G82OzIY7/RZ/dmBXz+d7+DhOmJGqphhbYFlFVXs4bbA5NKCv9ZbWSuDdafvu00aFMEJeNzkp6
	iXgsaU4yYdJu3k+Wm3TaWtwtv7E6Ka7SZHLlDYhNUYiCq2VucPejTlrgXOUkBuej57d16sje2n5cH
	YwuvGlFI5CfhHZDh5o7xv+CBb0PL87xjNvSqPZVWfFZj+WK4yphlbf+94E0u/FlseDzgro4r3dXLB
	QQB+6te/Rq1K45XoyJkLmA+gCsXEMQCpCI4KqE2W5k3uFDx/EhoI5b9AXA/w619BE0jqiUxYRuFfV
	mIADdUUKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSwzQ-0000lZ-MR; Tue, 21 May 2019 05:07:04 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSwzI-0000l8-Pt
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 05:06:58 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ce3876d0001>; Mon, 20 May 2019 22:06:53 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 20 May 2019 22:06:55 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 20 May 2019 22:06:55 -0700
Received: from [10.24.47.153] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 21 May
 2019 05:06:50 +0000
Subject: Re: [PATCH V6 02/15] PCI/PME: Export pcie_pme_disable_msi() &
 pcie_pme_no_msi() APIs
To: Bjorn Helgaas <helgaas@kernel.org>
References: <20190513050626.14991-1-vidyas@nvidia.com>
 <20190513050626.14991-3-vidyas@nvidia.com>
 <20190513072539.GA27708@infradead.org>
 <3a8cea93-2aeb-e5e2-4d56-f0c6449073c3@nvidia.com>
 <20190516133426.GC101793@google.com>
 <bd08ccaa-c6ee-f966-91e4-bcd5d99d5cf2@nvidia.com>
 <20190517132453.GA30700@google.com>
 <ba611a45-9589-8dce-58e1-d99dd463265d@nvidia.com>
 <20190517185545.GB49425@google.com>
 <bf220eba-f9d7-81f3-6b75-db463c74fbfa@nvidia.com>
 <20190520175729.GC49425@google.com>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <367cb46a-de04-0611-f298-104ba0e74f21@nvidia.com>
Date: Tue, 21 May 2019 10:36:47 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190520175729.GC49425@google.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL108.nvidia.com (172.18.146.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1558415213; bh=knyKhNXdRLP+OvahPZsocBnNng/ZZv1jqKbiH7iolnc=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=ePUVBCrfbSnmQ0+s5fgdpSOvDGyF9pATXeKJQht+ac3/ep9UYk0xc3yK7H82e2GgA
 4h5/NqbSmXP9Za96omNtTEi5wu8FmyEqIKtmrNBKLL7MX7fzYdVgFFcHIwO4kjkj/R
 jJPKB3S6ICvFbzDoqTau5hhimMcwijRSFwXSESd3oZ1lK63tEBHZ2Q8I31oWIueBf5
 filIwOXzWb7qnY6g8qABxLM3eMwq1W+SI3ti2PCAjVhtKeJEHpZSs3BPG4c1mN3N+4
 ts4pmnhpyYXd2mb6ubyX5JwNolFe1LcHsRrFhSew/gd48sYVSoN8EWiWgka7G4bRcQ
 C0TopmIVZJD8A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_220656_855390_B9F611A9 
X-CRM114-Status: GOOD (  17.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, jonathanh@nvidia.com,
 Christoph Hellwig <hch@infradead.org>, kthota@nvidia.com,
 thierry.reding@gmail.com, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 linux-tegra@vger.kernel.org, kishon@ti.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNS8yMC8yMDE5IDExOjI3IFBNLCBCam9ybiBIZWxnYWFzIHdyb3RlOgo+IE9uIFNhdCwgTWF5
IDE4LCAyMDE5IGF0IDA3OjI4OjI5QU0gKzA1MzAsIFZpZHlhIFNhZ2FyIHdyb3RlOgo+PiBPbiA1
LzE4LzIwMTkgMTI6MjUgQU0sIEJqb3JuIEhlbGdhYXMgd3JvdGU6Cj4+PiBPbiBGcmksIE1heSAx
NywgMjAxOSBhdCAxMToyMzozNlBNICswNTMwLCBWaWR5YSBTYWdhciB3cm90ZToKPj4+PiBPbiA1
LzE3LzIwMTkgNjo1NCBQTSwgQmpvcm4gSGVsZ2FhcyB3cm90ZToKPj4+Pj4gRG8geW91IGhhdmUg
ImxzcGNpIC12dnh4eCIgb3V0cHV0IGZvciB0aGUgcm9vdCBwb3J0cyBoYW5keT8KPj4+Pj4KPj4+
Pj4gSWYgdGhlcmUncyBzb21lIGNsdWUgaW4gdGhlIHN0YW5kYXJkIGNvbmZpZyBzcGFjZSB0aGF0
IHdvdWxkIHRlbGwgdXMKPj4+Pj4gdGhhdCBNU0kgd29ya3MgZm9yIHNvbWUgZXZlbnRzIGJ1dCBu
b3Qgb3RoZXJzLCB3ZSBjb3VsZCBtYWtlIHRoZSBQQ0kKPj4+Pj4gY29yZSBwYXkgYXR0ZW50aW9u
IGl0LiAgVGhhdCB3b3VsZCBiZSB0aGUgYmVzdCBzb2x1dGlvbiBiZWNhdXNlIGl0Cj4+Pj4+IHdv
dWxkbid0IHJlcXVpcmUgVGVncmEtc3BlY2lmaWMgY29kZS4KPj4+Pgo+Pj4+IEhlcmUgaXMgdGhl
IG91dHB1dCBvZiAnbHNwY2kgdnZ4eHgnIGZvciBvbmUgb2YgVGVncmExOTQncyByb290IHBvcnRz
Lgo+Pj4KPj4+IFRoYW5rcyEKPj4+Cj4+PiBUaGlzIHBvcnQgYWR2ZXJ0aXNlcyBib3RoIE1TSSBh
bmQgTVNJLVgsIGFuZCBuZWl0aGVyIG9uZSBpcyBlbmFibGVkLgo+Pj4gVGhpcyBwYXJ0aWN1bGFy
IHBvcnQgZG9lc24ndCBoYXZlIGEgc2xvdCwgc28gaG90cGx1ZyBpc24ndCBhcHBsaWNhYmxlCj4+
PiB0byBpdC4KPj4+Cj4+PiBCdXQgaWYgSSB1bmRlcnN0YW5kIGNvcnJlY3RseSwgaWYgTVNJIG9y
IE1TSS1YIHdlcmUgZW5hYmxlZCBhbmQgdGhlCj4+PiBwb3J0IGhhZCBhIHNsb3QsIHRoZSBwb3J0
IHdvdWxkIGdlbmVyYXRlIE1TSS9NU0ktWCBob3RwbHVnIGludGVycnVwdHMuCj4+PiBCdXQgUE1F
IGFuZCBBRVIgZXZlbnRzIHdvdWxkIHN0aWxsIGNhdXNlIElOVHggaW50ZXJydXB0cyAoZXZlbiB3
aXRoCj4+PiBNU0kgb3IgTVNJLVggZW5hYmxlZCkuCj4+Pgo+Pj4gRG8gSSBoYXZlIHRoYXQgcmln
aHQ/ICBJIGp1c3Qgd2FudCB0byBtYWtlIHN1cmUgdGhhdCB0aGUgcmVhc29uIGZvcgo+Pj4gUE1F
IGJlaW5nIElOVHggaXMgYSBwZXJtYW5lbnQgaGFyZHdhcmUgY2hvaWNlIGFuZCB0aGF0IGl0J3Mg
bm90Cj4+PiByZWxhdGVkIHRvIE1TSSBhbmQgTVNJLVggY3VycmVudGx5IGJlaW5nIGRpc2FibGVk
Lgo+Pgo+PiBZZXMuIFRoYXRzIHJpZ2h0LiBJdHMgaGFyZHdhcmUgY2hvaWNlIHRoYXQgb3VyIGhh
cmR3YXJlIGVuZ2luZWVycyBtYWRlIHRvCj4+IHVzZSBJTlR4IGZvciBQTUUgaW5zdGVhZCBvZiBN
U0kgaXJyZXNwZWN0aXZlIG9mIE1TSS9NU0ktWCBlbmFibGVkL2Rpc2FibGVkCj4+IGluIHRoZSBy
b290IHBvcnQuCj4gCj4gSGVyZSBhcmUgbW9yZSBzcGVjIHJlZmVyZW5jZXMgdGhhdCBzZWVtIGFw
cGxpY2FibGU6Cj4gCj4gICAgLSBQQ0llIHI0LjAsIHNlYyA3LjcuMS4yIChNZXNzYWdlIENvbnRy
b2wgUmVnaXN0ZXIgZm9yIE1TSSkgc2F5czoKPiAKPiAgICAgICAgTVNJIEVuYWJsZSDigJMgSWYg
U2V0IGFuZCB0aGUgTVNJLVggRW5hYmxlIGJpdCBpbiB0aGUgTVNJLVgKPiAgICAgICAgTWVzc2Fn
ZSBDb250cm9sIHJlZ2lzdGVyIChzZWUgU2VjdGlvbiA3LjkuMikgaXMgQ2xlYXIsIHRoZQo+ICAg
ICAgICBGdW5jdGlvbiBpcyBwZXJtaXR0ZWQgdG8gdXNlIE1TSSB0byByZXF1ZXN0IHNlcnZpY2Ug
YW5kIGlzCj4gICAgICAgIHByb2hpYml0ZWQgZnJvbSB1c2luZyBJTlR4IGludGVycnVwdHMuCj4g
Cj4gICAgLSBQQ0llIHI0LjAsIHNlYyA3LjcuMi4yIChNZXNzYWdlIENvbnRyb2wgUmVnaXN0ZXIg
Zm9yIE1TSS1YKSBzYXlzOgo+IAo+ICAgICAgICBNU0ktWCBFbmFibGUg4oCTIElmIFNldCBhbmQg
dGhlIE1TSSBFbmFibGUgYml0IGluIHRoZSBNU0kgTWVzc2FnZQo+ICAgICAgICBDb250cm9sIHJl
Z2lzdGVyIChzZWUgU2VjdGlvbiA2LjguMS4zKSBpcyBDbGVhciwgdGhlIEZ1bmN0aW9uIGlzCj4g
ICAgICAgIHBlcm1pdHRlZCB0byB1c2UgTVNJLVggdG8gcmVxdWVzdCBzZXJ2aWNlIGFuZCBpcyBw
cm9oaWJpdGVkIGZyb20KPiAgICAgICAgdXNpbmcgSU5UeCBpbnRlcnJ1cHRzIChpZiBpbXBsZW1l
bnRlZCkuCj4gCj4gSSByZWFkIHRoYXQgdG8gbWVhbiBhIGRldmljZSBpcyBwcm9oaWJpdGVkIGZy
b20gdXNpbmcgTVNJL01TSS1YIGZvcgo+IHNvbWUgaW50ZXJydXB0cyBhbmQgSU5UeCBmb3Igb3Ro
ZXJzLiAgU2luY2UgVGVncmExOTQgY2Fubm90IHVzZQo+IE1TSS9NU0ktWCBmb3IgUE1FLCBpdCBz
aG91bGQgdXNlIElOVHggZm9yICphbGwqIGludGVycnVwdHMuICBUaGF0Cj4gbWFrZXMgdGhlIE1T
SS9NU0ktWCBDYXBhYmlsaXRpZXMgc3VwZXJmbHVvdXMsIGFuZCB0aGV5IHNob3VsZCBiZQo+IG9t
aXR0ZWQuCj4gCj4gSWYgd2Ugc2V0IHBkZXYtPm5vX21zaSBmb3IgVGVncmExOTQsIHdlJ2xsIGF2
b2lkIE1TSS9NU0ktWCBjb21wbGV0ZWx5LAo+IHNvIHdlJ2xsIGFzc3VtZSAqYWxsKiBpbnRlcnJ1
cHRzIGluY2x1ZGluZyBob3RwbHVnIHdpbGwgYmUgSU5UeC4gIFdpbGwKPiB0aGF0IHdvcms/Clll
cy4gV2UgYXJlIGZpbmUgd2l0aCBoYXZpbmcgYWxsIHJvb3QgcG9ydCBvcmlnaW5hdGVkIGludGVy
cnVwdHMgZ2V0dGluZyBnZW5lcmF0ZWQKdGhyb3VnaCBJTlR4IGluc3RlYWQgb2YgTVNJL01TSS1Y
LgoKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
