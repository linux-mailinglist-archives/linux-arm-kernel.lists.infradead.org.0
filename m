Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 727C5201E9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 11:01:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OqAihL1xlMzYSmb0vKV/8uQS0b3hB/j97vr5I8VwJCc=; b=feWX9yiehCB+PqHmQKW1178j7
	JdFLjP3NIenVR/nOJlbyh2D8qCbqxE4CjNtJqsyraYTZKsKSTO5O5jyZcF+jpCyCBdjTOx67GgqEc
	h/Yg4qbA4hge3qnOL7PwWugiVAxZLjuxqKNeRfTgdTmxrXCl2VNlYkDa/xodyETilQTtnHnTNCWQG
	MBLrvoCQexCUWGmfAMylJweTQqZK1cCTZ08zrX3JP61FZkLbnGENq6JggrkmjSSpclpYvKeR2WuAE
	xQcnsFe5m4uxN8mCUaCc0/fAD4xOHcN9W8q719dUyXCPCUktub8rEd6/GIwnf36viub01PmZTEMJk
	mi9Qg3aAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRCGi-0004Pa-9k; Thu, 16 May 2019 09:01:40 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRCGY-0004P1-SU
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 09:01:34 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cdd26e50000>; Thu, 16 May 2019 02:01:25 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Thu, 16 May 2019 02:01:29 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Thu, 16 May 2019 02:01:29 -0700
Received: from [10.19.108.132] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 16 May
 2019 09:01:26 +0000
Subject: Re: [PATCH V3 1/8] dt-bindings: memory: tegra: Add external memory
 controller binding for Tegra210
To: Dmitry Osipenko <digetx@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
References: <20190510084719.18902-1-josephl@nvidia.com>
 <20190510084719.18902-2-josephl@nvidia.com>
 <fd68f906-79b4-6eda-b1fa-abaf3b4c6a12@gmail.com>
 <63360b18-6a17-ab3f-6c54-6e11e24885d0@nvidia.com>
 <c3909c66-5aa4-161b-98d4-02ad20e02c88@gmail.com>
From: Joseph Lo <josephl@nvidia.com>
Message-ID: <f1e4ab1e-11b9-ba65-20b8-35c6459d2410@nvidia.com>
Date: Thu, 16 May 2019 17:01:19 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <c3909c66-5aa4-161b-98d4-02ad20e02c88@gmail.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL106.nvidia.com (172.18.146.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1557997285; bh=Y2N0TfbKD02hhOmQQ7rvVEpY9Sslkmcqd1sYqbZs/kQ=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=Bsi2IhEROXO3MZTG+Q3FfZjly3adYJk/H74ruWLUXt+SnQpa+G+ayZPF3rU4upVcP
 Putpy7xGYpD7aBWdGpRLQkabXBVlk2bFcvFi5EdTinlex9qZKxmw9OpiZISCdZPyhs
 nf/6r7k9xpyaI5tcqZCcFp994CNiSc3zzLDf3PV8p8rBrJGRM/P2eYZ5k/AbcXiPhu
 d60niaLHKxS14f6acYltEry/yUBc5Kuu2vlgTMei5noxODo59n3kZkfOE7jhLSobGV
 Ha+m8l8EXZEymEvcBhPE8HdQuVm59jfzeDhMPvkAFpJos/YDJon3As36APxHQwc20L
 1ftXiqzWjpmBg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_020130_962679_9A225CE9 
X-CRM114-Status: GOOD (  21.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNS8xNS8xOSA5OjUwIFBNLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4gMTUuMDUuMjAxOSAx
MDoxNywgSm9zZXBoIExvINC/0LjRiNC10YI6Cj4+IE9uIDUvMTUvMTkgMTI6MjggQU0sIERtaXRy
eSBPc2lwZW5rbyB3cm90ZToKPj4+IDEwLjA1LjIwMTkgMTE6NDcsIEpvc2VwaCBMbyDQv9C40YjQ
tdGCOgo+Pj4+IEFkZCB0aGUgYmluZGluZyBkb2N1bWVudCBmb3IgdGhlIGV4dGVybmFsIG1lbW9y
eSBjb250cm9sbGVyIChFTUMpIHdoaWNoCj4+Pj4gY29tbXVuaWNhdGVzIHdpdGggZXh0ZXJuYWwg
TFBERFI0IGRldmljZXMuIEl0IGluY2x1ZGVzIHRoZSBiaW5kaW5ncyBvZgo+Pj4+IHRoZSBFTUMg
bm9kZSBhbmQgYSBzdWItbm9kZSBvZiBFTUMgdGFibGUgd2hpY2ggdW5kZXIgdGhlIHJlc2VydmVk
IG1lbW9yeQo+Pj4+IG5vZGUuIFRoZSBFTUMgdGFibGUgY29udGFpbnMgdGhlIGRhdGEgb2YgdGhl
IHJhdGVzIHRoYXQgRU1DIHN1cHBvcnRlZC4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEpvc2Vw
aCBMbyA8am9zZXBobEBudmlkaWEuY29tPgo+Pj4+IC0tLQo+Pj4+IHYzOgo+Pj4+IC0gZHJvcCB0
aGUgYmluZGluZ3Mgb2YgRU1DIHRhYmxlCj4+Pj4gLSBhZGQgbWVtb3J5LXJlZ2lvbiBhbmQgcmVz
ZXJ2ZWQtbWVtb3J5IG5vZGUgZm9yIEVNQyB0YWJsZQo+Pj4+IC0tLQo+Pj4+ICDCoCAuLi4vbnZp
ZGlhLHRlZ3JhMjEwLWVtYy50eHTCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
fCA1NSArKysrKysrKysrKysrKysrKysrCj4+Pj4gIMKgIDEgZmlsZSBjaGFuZ2VkLCA1NSBpbnNl
cnRpb25zKCspCj4+Pj4gIMKgIGNyZWF0ZSBtb2RlIDEwMDY0NAo+Pj4+IERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9tZW1vcnktY29udHJvbGxlcnMvbnZpZGlhLHRlZ3JhMjEwLWVt
Yy50eHQKPj4+Pgo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdAo+Pj4+IGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL21lbW9yeS1jb250cm9sbGVycy9udmlkaWEsdGVncmEyMTAtZW1jLnR4
dAo+Pj4+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lbW9yeS1jb250cm9s
bGVycy9udmlkaWEsdGVncmEyMTAtZW1jLnR4dAo+Pj4+Cj4+Pj4gbmV3IGZpbGUgbW9kZSAxMDA2
NDQKPj4+PiBpbmRleCAwMDAwMDAwMDAwMDAuLmQ2NWFlZWYyMzI5Ywo+Pj4+IC0tLSAvZGV2L251
bGwKPj4+PiArKysKPj4+PiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZW1v
cnktY29udHJvbGxlcnMvbnZpZGlhLHRlZ3JhMjEwLWVtYy50eHQKPj4+Pgo+Pj4+IEBAIC0wLDAg
KzEsNTUgQEAKPj4+PiArTlZJRElBIFRlZ3JhMjEwIFNvQyBFTUMgKGV4dGVybmFsIG1lbW9yeSBj
b250cm9sbGVyKQo+Pj4+ICs9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09Cj4+Pj4gKwo+Pj4+ICtEZXZpY2Ugbm9kZQo+Pj4+ICs9PT09PT09PT09PQo+
Pj4+ICtSZXF1aXJlZCBwcm9wZXJ0aWVzIDoKPj4+PiArLSBjb21wYXRpYmxlIDogc2hvdWxkIGJl
ICJudmlkaWEsdGVncmEyMTAtZW1jIi4KPj4+PiArLSByZWcgOiBwaHlzaWNhbCBiYXNlIGFkZHJl
c3MgYW5kIGxlbmd0aCBvZiB0aGUgY29udHJvbGxlcidzIHJlZ2lzdGVycy4KPj4+PiArLSBjbG9j
a3MgOiBwaGFuZGxlcyBvZiB0aGUgcG9zc2libGUgc291cmNlIGNsb2Nrcy4KPj4+PiArLSBjbG9j
ay1uYW1lcyA6IG5hbWVzIG9mIHRoZSBwb3NzaWJsZSBzb3VyY2UgY2xvY2tzLgo+Pj4+ICstIGlu
dGVycnVwdHMgOiBTaG91bGQgY29udGFpbiB0aGUgRU1DIGdlbmVyYWwgaW50ZXJydXB0Lgo+Pj4+
ICstIG1lbW9yeS1yZWdpb24gOiBwaGFuZGxlIHRvIHRoZSByZXNlcnZlZCBtZW1vcnkgKHNlZQo+
Pj4+ICsKPj4+PiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcmVzZXJ2ZWQtbWVt
b3J5L3Jlc2VydmVkLW1lbW9yeS50eHQpIHdoaWNoCj4+Pj4KPj4+PiArwqAgY29udGFpbnMgYSBz
dWItbm9kZSBvZiBFTUMgdGFibGUuCj4+Pj4gKy0gbnZpZGlhLG1lbW9yeS1jb250cm9sbGVyIDog
cGhhbmRsZSBvZiB0aGUgbWVtb3J5IGNvbnRyb2xsZXIuCj4+Pj4gKwo+Pj4+ICtSZXNlcnZlZCBt
ZW1vcnkgbm9kZQo+Pj4+ICs9PT09PT09PT09PT09PT09PT09PQo+Pj4+ICtTaG91bGQgY29udGFp
biBhIHN1Yi1ub2RlIG9mIEVNQyB0YWJsZSB3aXRoIHJlcXVpcmVkIHByb3BlcnRpZXM6Cj4+Pj4g
Ky0gY29tcGF0aWJsZSA6IHNob3VsZCBiZSAibnZpZGlhLHRlZ3JhMjEwLWVtYy10YWJsZSIuCj4+
Pj4gKy0gcmVnIDogcGh5c2ljYWwgYWRkcmVzcyBhbmQgbGVuZ3RoIG9mIHRoZSBsb2NhdGlvbiBv
ZiBFTUMgdGFibGUuCj4+Pj4gKwo+Pj4+ICtFeGFtcGxlOgo+Pj4+ICvCoMKgwqAgcmVzZXJ2ZWQt
bWVtb3J5IHsKPj4+PiArwqDCoMKgwqDCoMKgwqAgI2FkZHJlc3MtY2VsbHMgPSA8Mj47Cj4+Pj4g
K8KgwqDCoMKgwqDCoMKgICNzaXplLWNlbGxzID0gPDI+Owo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBy
YW5nZXM7Cj4+Pj4gKwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBlbWNfdGFibGU6IGVtYy10YWJsZUA4
YmUwMDAwMCB7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJudmlk
aWEsdGVncmEyMTAtZW1jLXRhYmxlIjsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcg
PSA8MHgwIDB4OGJlMDAwMDAgMHgwIDB4MTAwMDA+Owo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHN0YXR1cyA9ICJva2F5IjsKPj4+PiArwqDCoMKgwqDCoMKgwqAgfTsKPj4+Cj4+PiBZb3Ug
ZXNzZW50aWFsbHkgbW92ZWQgdGhlIHYxIGJpbmRpbmcgaW50byBvYnNjdXJlIGFuZCB1bmRvY3Vt
ZW50ZWQgYmxvYiwKPj4+IGlnbm9yaW5nIHByZXZpb3VzIHJldmlldyBjb21tZW50cy4gVGhpcyBp
cyBhIHZlcnkgb2RkIG1vdmUuLi4gcGxlYXNlCj4+PiBleHBsYWluIHdoYXQgaXMgZ29pbmcgb24u
Cj4+Pgo+Pgo+PiBEaXNjdXNzZWQgd2l0aCBUaGllcnJ5IG9mZmxpbmUgd2hpY2ggd2F5IHdlIHBy
ZWZlciB0byBwYXNzIHRoZSBFTUMgdGFibGUKPj4gdG8gdGhlIGtlcm5lbC4gU29tZSByZWFzb25z
IGJlbG93IHdlIGRlY2lkZSB0byBjaG9zZSB0aGlzIG9uZSAodmlhCj4+IGJpbmFyeSBibG9iKS4K
Pj4KPj4gLSBUaGUgRU1DIHRhYmxlIGlzIG11Y2ggYmlnZ2VyIHRoYW4gdGhlIHByZXZpb3VzIFRl
Z3JhIGdlbmVyYXRpb25zCj4+IChMUEREUjQgdi5zLiBMUEREUjIvMykuIEl0J3MgaGFyZGVyIHRv
IHNldHRsZSBpbiB0aGUgcmV2aWV3IHByb2Nlc3MuIEFuZAo+PiBpZiB0aGVyZSBpcyBhIG5ldyBm
aXggb2YgdGhlIHRhYmxlIGluIHRoZSBmdXR1cmUsIHdlJ2xsIG5lZWQgdG8gZ28KPj4gdGhyb3Vn
aCB0aGF0IGFnYWluLgo+IAo+IEkgZG9uJ3QgdGhpbmsgdGhhdCB0aGlzIGEgdmVyeSBnb29kIGV4
Y3VzZSBmb3Igbm90IGRvY3VtZW50aW5nIHRoZQo+IGJsb2IncyBzdHJ1Y3R1cmUuCgpUaGUgYmxv
YidzIHN0cnVjdHVyZSBpcyBpbiBwYXRjaCA0IG5vdyB0aGF0IHdlIG9yaWdpbmFsbHkgd2FudGVk
IHRvIApkZXNjcmliZSBiZWxvdy4gQmFzaWNhbGx5LCB0aGUgY29udGVudCBpcyB0aGUgc2FtZS4K
aHR0cDovL3BhdGNod29yay5vemxhYnMub3JnL3BhdGNoLzEwODQ0NjcvCmh0dHA6Ly9wYXRjaHdv
cmsub3psYWJzLm9yZy9wYXRjaC8xMDYzODc5LwoKPiAKPj4gLSBCZWNhdXNlIGl0J3MgTFBERFI0
IHdlIHdhbnQgdG8gc3VwcG9ydCBoZXJlLCB0byBzdXBwb3J0IGhpZ2hlciByYXRlcywKPj4gdGhl
IGRldmljZXMgaGF2ZSBtdXN0IGJlIGdvbmUgdGhyb3VnaCB0aGUgdHJhaW5pbmcgcHJvY2Vzcywg
d2hpY2ggaXMKPj4gZG9uZSBpbiB0aGUgZmlybXdhcmUuIFdoaWNoIG1lYW5zIFdlIGFscmVhZHkg
aGF2ZSB0aGUgdGFibGUgc29tZXdoZXJlIGluCj4+IHRoZSBtZW1vcnkgYW5kIGtlcm5lbCBjYW4g
anVzdCByZS11c2UgdGhhdC4gTm8gbmVlZCB0byBjb252ZXJ0IHRoZW0gYmFjawo+PiB0byBEVCBh
bmQgcGFzcyB0byB0aGUga2VybmVsLiBUaGlzIGlzIG11Y2ggZWFzaWVyIHRvIG1haW50YWluIGlu
IHRoZQo+PiBmdXR1cmUgaWYgdGhlcmUgaXMgc29tZXRoaW5nIG5lZWRzIHRvIGZpeC4KPj4gLSBX
aXRoIHRoZSBtZWNoYW5pc20gYWJvdmUsIHdlIGRvbid0IG5lZWQgdG8gbWFpbnRhaW4gdGhlIGh1
Z2UgRU1DIHRhYmxlCj4+IGluIHRoZSBEVCBmaWxlIGxpa2UgYmVsb3cuCj4+IGh0dHA6Ly9wYXRj
aHdvcmsub3psYWJzLm9yZy9wYXRjaC8xMDYzODg2Lwo+PiBodHRwOi8vcGF0Y2h3b3JrLm96bGFi
cy5vcmcvcGF0Y2gvMTA2Mzg4OS8KPiAKPiBUaGUgYmxvYidzIEVNQyB0YWJsZSBjb250YWlucyBz
dHVmZiBzcGVjaWZpYyB0byBkb3duc3RyZWFtIGtlcm5lbCwgaGVuY2UKPiBpdCdzIGEgbm90IHZl
cnkgcmUtdXNhYmxlIGRvd25zdHJlYW0gc29mdHdhcmUgQUJJIG1peGVkIHdpdGggSFcKPiBkZXNj
cmlwdGlvbiB0aGF0IHlvdSdyZSBicmluZ2luZyBpbnRvIHVwc3RyZWFtLiBUaGlzIGlzIG5vdCB2
ZXJ5Cj4gd2VsY29tZWQsIGFsdGhvdWdoIEkgZG9uJ3Qgc2VlIGl0IGFzIGEgYmlnIHByb2JsZW0g
aWYgeW91J2xsIHN0YXRlIHRoYXQKPiBhbGwgY2xlYXJseSBpbiB0aGUgY29tbWl0IG1lc3NhZ2Ug
d2l0aCBhIHNvbGlkIGV4cGxhbmF0aW9uIHdoeSBpdCBpcyB0aGUKPiBiZXN0IHBvc3NpYmxlIG9w
dGlvbi4KPiAKPj4gQW5kIHNvcnJ5LCBtYXliZSBpdCdzIG5vdCBjbGVhciBhdCB0aGF0IG1vbWVu
dCwgYnV0IEkgZGlkIG1lbnRpb24gdGhhdAo+PiB3ZSB3YW50IHRvIGdvIHdpdGggdGhlIG5ldyBt
ZXRob2QgKHZpYSBiaW5hcnkgYmxvYikgaW4gdGhlIHByZXZpb3VzIHJldmlldy4KPj4gUGxlYXNl
IHNlZSBodHRwOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcGF0Y2gvMTA4NDQ2Ny8KPiAKPiBPa2F5
LiBJdCB3aWxsIGJlIGJldHRlciBpZiB0aGUgZGlzY3Vzc2lvbiBoYXBwZW5lZCBwdWJsaWNseSwg
YXQgbGVhc3QgSQo+IGhvcGUgdGhhdCBSb2IgaXMgaW52b2x2ZWQgaW4gaXQuCj4gCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
