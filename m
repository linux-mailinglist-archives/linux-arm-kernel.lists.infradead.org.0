Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 016C637B51
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 19:44:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hrsvv9xPhuLrJrkDOYxPka/BhsKoFxZQGzV9L4RhwCI=; b=jlAV61K0ENQvk0
	W9+D+85CcS+jg2RtZ7bB+Va9JkdLbVg6/4NwFQ6jQHa6kTi0Xhg1xF0YDu1F1LwdWp0ATRwFsfvax
	B+371beIaoFpgBuNl4WlCN8i1S5OVwCI07V16GanxVE554agbxMgz6ESXWAeYBbv19qO39mew/3ff
	eUvFsyzb9/9GDDfne/MDyWUAVmv7CAn9x3/CEcUgU3qB+M/XuPL+ByFDT7F/5kJFr3hxgz7vj0MoH
	AU3Ls/e0DV8pYgb76kYzegSfXLPBzRWWwx9bV32I6PPY8C80nFk9qFa5hwI/UfpLHS3Q7zl7Fr7bm
	NDcQ8fQunwjH+0WQDVYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYwQt-0008Bm-RH; Thu, 06 Jun 2019 17:44:11 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYwQm-0008BR-Sp
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 17:44:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F3117374;
 Thu,  6 Jun 2019 10:44:02 -0700 (PDT)
Received: from [10.1.197.21] (usa-sjc-imap-foss1.foss.arm.com [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 95FAE3F690; Thu,  6 Jun 2019 10:44:00 -0700 (PDT)
From: Kristina Martsenko <kristina.martsenko@arm.com>
Subject: Re: [RFC v2 0/7] arm64: return address signing
To: Luke Cheeseman <Luke.Cheeseman2@arm.com>,
 Will Deacon <Will.Deacon@arm.com>, Kees Cook <keescook@chromium.org>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <201905292004.3809FBAA66@keescook>
 <DB7PR08MB3865C4AA36C9C465B2A687DABF180@DB7PR08MB3865.eurprd08.prod.outlook.com>
 <201905300851.4A68705B0@keescook>
 <DB7PR08MB3865A83066179CE419D171EDBF180@DB7PR08MB3865.eurprd08.prod.outlook.com>
 <201905301058.CA55245A0@keescook>
 <20190531092202.GA19208@fuggles.cambridge.arm.com>
 <201906020843.140EC55FB@keescook>
 <20190603104018.GA27947@fuggles.cambridge.arm.com>
 <DB7PR08MB386551397577B574DBA7F874BF150@DB7PR08MB3865.eurprd08.prod.outlook.com>
Message-ID: <a264152a-19b8-dd33-2371-756ceb8ba86a@arm.com>
Date: Thu, 6 Jun 2019 18:43:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <DB7PR08MB386551397577B574DBA7F874BF150@DB7PR08MB3865.eurprd08.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_104404_946137_C150CE7A 
X-CRM114-Status: GOOD (  23.63  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Diogo Sampaio <Diogo.Sampaio@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 Luke Cheeseman <luke.cheeseman@arm.com>,
 Christof Douma <Christof.Douma@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Amit Kachhap <Amit.Kachhap@arm.com>, Kristof Beyls <Kristof.Beyls@arm.com>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Dave P Martin <Dave.Martin@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDQvMDYvMjAxOSAxNDo1MiwgTHVrZSBDaGVlc2VtYW4gd3JvdGU6Cj4gSGksCj4gCj4gSXQg
d2FzIHN1Z2dlc3RlZCB0byBtZSB0aGF0IGZvcmNpbmcgdGhlIGNvbXBpbGVyIHRvIGlubGluZSB0
aGUgZnVuY3Rpb24gbWF5IGJlIGFub3RoZXIgd2F5IHRvIGF2b2lkIHdyaXRpbmcgdGhlIGZ1bmN0
aW9uIGluIGEgc2VwYXJhdGUgZmlsZSBhbmQgbm90IGhhdmUgdGhlIGNvbmNlcm5zIG9mIHN3aXRj
aGluZyBrZXlzIGluIGEgZnVuY3Rpb24uIEZvciBleGFtcGxlOgo+IAo+IHZvaWQgX19hdHRyaWJ1
dGVfXygoYWx3YXlzX2lubGluZSkpIHN3aXRjaF9rZXlzKCkgewo+IMKgIC8vIGRvIHNvbWV0aGlu
Zwo+IH0KPiAKPiAKPiBpbnQgbWFpbigpIHsKPiDCoCBzd2l0Y2hfa2V5cyg0Mik7Cj4gfQo+IAo+
IAo+IHN3aXRjaF9rZXlzIGlzIGFsd2F5cyBpbmxpbmVkIHNvIHlvdSBkb24ndCBnZXQgdGhlIHBh
Yy9hdXQgcGFpci4gSXMgdGhpcyBzb21ldGhpbmcgdGhhdCBpcyB1c2VmdWw/CgpUaGlzIGlzIHVz
ZWZ1bCBpbiBzb21lIGNhc2VzLCBidXQgbm90IHdoZW4gdGhlIGZ1bmN0aW9uIGFuZCBpdHMgY2Fs
bGVyCmFyZSBpbiBkaWZmZXJlbnQgY29tcGlsYXRpb24gdW5pdHMuIFVuZm9ydHVuYXRlbHkgd2Ug
aGF2ZSBjYXNlcyB3aGVyZQphcm02NC1zcGVjaWZpYyBjb2RlICh0aGF0IHNldHMgdXAgdGhlIGtl
eXMpIGlzIGJlaW5nIGNhbGxlZCBmcm9tIGNvcmUKa2VybmVsIGNvZGUsIHdoaWNoIGlzIGluIGEg
ZGlmZmVyZW50IGZpbGUuIEZvciB0aGlzIGNhc2Ugd2UnZCBzdGlsbCBuZWVkCnRoZSBhdHRyaWJ1
dGUgdG8gZGlzYWJsZSByZXR1cm4gYWRkcmVzcyBzaWduaW5nLgoKVGhhbmtzLApLcmlzdGluYQoK
PiAKPiBGb3IgdGhlIGZlYXR1cmUgcmVxdWVzdCBmb3IgZGlzYWJsaW5nIGJyYW5jaCBwcm90ZWN0
aW9uIChodHRwczovL2J1Z3MubGx2bS5vcmcvc2hvd19idWcuY2dpP2lkPTQyMDk1KSBpcyB0aGVy
ZSBhIHRpbWUgZnJhbWUgeW91IG5lZWQgdGhpcyB3aXRoaW4/Cj4gCj4gVGhhbmtzLAo+IEx1a2UK
PiAKPiAKPiBGcm9tOiBXaWxsIERlYWNvbiA8d2lsbC5kZWFjb25AYXJtLmNvbT4KPiBTZW50OiAw
MyBKdW5lIDIwMTkgMTE6NDAKPiBUbzogS2VlcyBDb29rCj4gQ2M6IEx1a2UgQ2hlZXNlbWFuOyBL
cmlzdGluYSBNYXJ0c2Vua287IEx1a2UgQ2hlZXNlbWFuOyBEaW9nbyBTYW1wYWlvOyBsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IEFtaXQgS2FjaGhhcDsgQXJkIEJpZXNoZXV2
ZWw7IENhdGFsaW4gTWFyaW5hczsgRGF2ZSBQIE1hcnRpbjsgTWFyayBSdXRsYW5kOyBSYW1hbmEg
UmFkaGFrcmlzaG5hbjsgU3V6dWtpIFBvdWxvc2U7IEtyaXN0b2YgQmV5bHM7IENocmlzdG9mIERv
dW1hCj4gU3ViamVjdDogUmU6IFtSRkMgdjIgMC83XSBhcm02NDogcmV0dXJuIGFkZHJlc3Mgc2ln
bmluZwo+IMKgIAo+IAo+IE9uIFN1biwgSnVuIDAyLCAyMDE5IGF0IDA4OjQzOjU1QU0gLTA3MDAs
IEtlZXMgQ29vayB3cm90ZToKPj4gT24gRnJpLCBNYXkgMzEsIDIwMTkgYXQgMTA6MjI6MDJBTSAr
MDEwMCwgV2lsbCBEZWFjb24gd3JvdGU6Cj4+PiBPbiBUaHUsIE1heSAzMCwgMjAxOSBhdCAxMTow
NToxNUFNIC0wNzAwLCBLZWVzIENvb2sgd3JvdGU6Cj4+Pj4gT24gVGh1LCBNYXkgMzAsIDIwMTkg
YXQgMDQ6NTU6MDhQTSArMDAwMCwgTHVrZSBDaGVlc2VtYW4gd3JvdGU6Cj4+Pj4+IFRoZSBzZW1h
bnRpY3Mgb2YgdGhpcyBhdHRyaWJ1dGUgYXJlIHN0cmFpZ2h0Zm9yd2FyZCBlbm91Z2ggYnV0IGl0
Cj4+Pj4+IHJhaXNlcyBzb21lIHF1ZXN0aW9ucy4gT25lIHF1ZXN0aW9uIGJlaW5nIHdoeSB3b3Vs
ZCBJIHdhbnQgdG8gdHVybiBvZmYKPj4+Pj4gQlRJIChhbHNvIGNvbnRyb2xsZWQgYnkgdGhpcyBv
cHRpb24pIGZvciBvbmUgZnVuY3Rpb24gaW4gYSBmaWxlPyBXaGljaAo+Pj4+PiBnZXRzIGEgYml0
IG9kZC4KPj4+Pgo+Pj4+IEl0J3MgYWJvdXQgbGVhdmluZyB2ZXJ5IGVhcmx5IENQVSBzdGFydHVw
IGZ1bmN0aW9ucyBpbiB0aGUga2VybmVsIGZyb20KPj4+PiBnZXR0aW5nIG1hcmtlZCB1cCAoc2lu
Y2UgdGhleSBhcmUgcnVubmluZyBiZWZvcmUgb3IgZHVyaW5nIHRoZSBQQUMgc2V0dXApLgo+Pj4+
Cj4+Pj4+IEkgZG9uJ3Qga25vdyBpZiB0aGUgYWx0ZXJuYXRpdmVzIGhhdmUgYmVlbiBzdWdnZXN0
ZWQgYnV0IGl0J3MKPj4+Pj4gcG9zc2libGUgdG8gYWNoaWV2ZSB0aGUgcmVzdWx0IHlvdSBzZWVt
IHRvIGJlIGFmdGVyIChhIGZ1bmN0aW9uIHdpdGhvdXQKPj4+Pj4gcmV0dXJuIGFkZHJlc3Mgc2ln
bmluZykgaW4gYSBjb3VwbGUgb2Ygd2F5cy4gRmlyc3QgYW5kIGZvcmVtb3N0LAo+Pj4+PiBzZXBh
cmF0aW5nIHRoZSBmdW5jdGlvbiBvdXQgaW50byBpdCdzIG93biBmaWxlIGFuZCBjb21waWxpbmcg
d2l0aAo+Pj4+PiAtbWJyYW5jaC1wcm90ZWN0aW9uPW5vbmUuIEFsdGVybmF0aXZlbHksIHdyaXRp
bmcgdGhlIGZ1bmN0aW9uIGluIGFzc2VtYmx5Cj4+Pj4+IG9yIHBlcmhhcHMgZXZlbiBhIG5ha2Vk
IGZ1bmN0aW9uIHdpdGggaW5saW5lIGFzc2VtYmx5Lgo+Pj4+Cj4+Pj4gRmFpciBlbm91Z2guIDop
IFRoYW5rcyBmb3IgdGhlIGNsYXJpZmljYXRpb24uIFllYWgsIHNwbGl0IG9uIGNvbXBpbGF0aW9u
Cj4+Pj4gdW5pdCBjb3VsZCB3b3JrLiAoSW4gdGhlIGZ1dHVyZSwgdGhvdWdoLCBoYXZpbmcgdGhl
IGF0dHJpYnV0ZSBmbGV4aWJpbGl0eQo+Pj4+IHdvdWxkIGJlIG5pY2UuKQo+Pj4+Cj4+Pj4gS3Jp
c3RpbmEsIHdvdWxkIGl0IGJlIGZlYXNpYmxlIHRvIHNwbGl0IHRoZXNlIGZ1bmN0aW9ucyBpbnRv
IGEgc2VwYXJhdGUKPj4+PiBzb3VyY2UgZmlsZT8gKFRoZXJlIGRvZXNuJ3Qgc2VlbSB0byBiZSBh
IG5lZWQgdG8gaW5saW5lIHRoZW0sIGdpdmVuCj4+Pj4gdGhleSdyZSBub3QgcGVyZm9ybWFuY2Ug
c2Vuc2l0aXZlIGFuZCBvbmx5IHVzZWQgb25jZSwgZXRjPykKPj4+Cj4+PiBSaWdodCwgYW5kIHdl
IGNvdWxkIGNhbGwgaXQga2VybmVsLmMKPj4+Cj4+PiBTYXJjYXNtIGFzaWRlLCBwbGVhc2UgZml4
IHRoaXMgaW4gdGhlIHRvb2xjaGFpbi4gTW92aW5nIGxvZ2ljYWxseSB1bnJlbGF0ZWQKPj4+IGZ1
bmN0aW9ucyBpbnRvIG9uZSBmaWxlIGp1c3QgYmVjYXVzZSB0aGUgdG9vbGNoYWluIGRvZXNuJ3Qg
eWV0IHN1cHBvcnQgdGhpcwo+Pj4gZmVhdHVyZSBqdXN0IG1lc3NlcyB1cCB0aGUgY29kZWJhc2Ug
YW5kIHJlbW92ZXMgdGhlIGluY2VudGl2ZSB0byBnZXQgdGhpcwo+Pj4gaW1wbGVtZW50ZWQgcHJv
cGVybHkuIEFmdGVyIGFsbCwgeW91IG5lZWQgc29tZXRoaW5nIHRvIGRvIG5vdyB0aGF0IGFzbSBn
b3RvCj4+PiBpcyBvdXQgb2YgdGhlIHdheSwgcmlnaHQ/IDspCj4+Cj4+IExMVk0gdHJhY2tpbmcg
YnVnIGNyZWF0ZWQuLi4KPj4gaHR0cHM6Ly9idWdzLmxsdm0ub3JnL3Nob3dfYnVnLmNnaT9pZD00
MjA5NQo+IAo+IFRoYW5rcywgS2VlcyEKPiAKPiBXaWxsCj4gICAgIAo+IAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
