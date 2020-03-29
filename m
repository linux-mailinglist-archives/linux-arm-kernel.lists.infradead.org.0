Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD8F196DE5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 16:22:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2TbiJ5//d/cWD7EOsblGvvdU5UEnxxY08ugDrZLS5KY=; b=iNu+eP193B2a78
	ArszZz1bSgXFxCdddhNYEADJ4D+LziEpl3PBzSFjhF0dQZqGtrQKaQ1VyjxRaPGJRbubm3EGiGz2z
	mva/IM8Ni584Mm7ezqSm3qcoW9LuPnjvwYBkRAz8eTFgJKUNxIgmb6lwoMizlNc7MPAIZ75uE4PX7
	k3Ou2ri2P/yTvnffQE+qVEWQ5pzMKBHcn9G6OG04M2lQ1JTsno1fLzAOxYDrTKaQIt/OlcNeLY9/s
	rdQV4+9gklM6aQ3uYVQ5/VtO77I1tkwmQl/xbsqsuB4S3Mg6GsKEs2Xs0ky8/OTPnEAOvgcp3ewk6
	cSmYFbYNwm+wAPJHVzyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIYpX-0005pR-Ly; Sun, 29 Mar 2020 14:22:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIYpJ-0005oM-B2; Sun, 29 Mar 2020 14:22:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A5D9C31B;
 Sun, 29 Mar 2020 07:22:10 -0700 (PDT)
Received: from [10.163.1.70] (unknown [10.163.1.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 542D63F68F;
 Sun, 29 Mar 2020 07:22:01 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V2 0/3] mm/debug: Add more arch page table helper tests
To: Christophe Leroy <christophe.leroy@c-s.fr>, linux-mm@kvack.org
References: <1585027375-9997-1-git-send-email-anshuman.khandual@arm.com>
 <2bb4badc-2b7a-e15d-a99b-b1bd38c9d9bf@arm.com>
 <a46d18ed-8911-1ec3-c32f-58b6e0d959d7@c-s.fr>
 <9675882f-0ec5-5e46-551f-dd3aa38bf8d8@arm.com>
 <ef28cb75-40b8-5ab5-83ba-84fd4384c7c5@c-s.fr>
Message-ID: <bf4558b2-1fe9-f0cc-3e6f-34bdf3734056@arm.com>
Date: Sun, 29 Mar 2020 19:51:54 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <ef28cb75-40b8-5ab5-83ba-84fd4384c7c5@c-s.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_072213_876864_CEC08416 
X-CRM114-Status: GOOD (  20.40  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-doc@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-snps-arc@lists.infradead.org,
 Vasily Gorbik <gor@linux.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Vineet Gupta <vgupta@synopsys.com>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDAzLzI3LzIwMjAgMTI6MzAgUE0sIENocmlzdG9waGUgTGVyb3kgd3JvdGU6Cj4gCj4gCj4g
T24gMDMvMjcvMjAyMCAwNjo0NiBBTSwgQW5zaHVtYW4gS2hhbmR1YWwgd3JvdGU6Cj4+Cj4+IE9u
IDAzLzI2LzIwMjAgMDg6NTMgUE0sIENocmlzdG9waGUgTGVyb3kgd3JvdGU6Cj4+Pgo+Pj4KPj4+
IExlIDI2LzAzLzIwMjAgw6AgMDM6MjMsIEFuc2h1bWFuIEtoYW5kdWFsIGEgw6ljcml0wqA6Cj4+
Pj4KPj4+Pgo+Pj4+IE9uIDAzLzI0LzIwMjAgMTA6NTIgQU0sIEFuc2h1bWFuIEtoYW5kdWFsIHdy
b3RlOgo+Pj4+PiBUaGlzIHNlcmllcyBhZGRzIG1vcmUgYXJjaCBwYWdlIHRhYmxlIGhlbHBlciB0
ZXN0cy4gVGhlIG5ldyB0ZXN0cyBoZXJlIGFyZQo+Pj4+PiBlaXRoZXIgcmVsYXRlZCB0byBjb3Jl
IG1lbW9yeSBmdW5jdGlvbnMgYW5kIGFkdmFuY2VkIGFyY2ggcGd0YWJsZSBoZWxwZXJzLgo+Pj4+
PiBUaGlzIGFsc28gY3JlYXRlcyBhIGRvY3VtZW50YXRpb24gZmlsZSBlbmxpc3RpbmcgYWxsIGV4
cGVjdGVkIHNlbWFudGljcyBhcwo+Pj4+PiBzdWdnZXN0ZWQgYnkgTWlrZSBSYXBvcG9ydCAoaHR0
cHM6Ly9sa21sLm9yZy9sa21sLzIwMjAvMS8zMC80MCkuCj4+Pj4+Cj4+Pj4+IFRoaXMgc2VyaWVz
IGhhcyBiZWVuIHRlc3RlZCBvbiBhcm02NCBhbmQgeDg2IHBsYXRmb3Jtcy4KPj4+Pgo+Pj4+IElm
IGZvbGtzIGNhbiB0ZXN0IHRoZXNlIHBhdGNoZXMgb3V0IG9uIHJlbWFpbmluZyBBUkNIX0hBU19E
RUJVR19WTV9QR1RBQkxFCj4+Pj4gZW5hYmxlZCBwbGF0Zm9ybXMgaS5lIHMzOTAsIGFyYywgcG93
ZXJwYyAoMzIgYW5kIDY0KSwgdGhhdCB3aWxsIGJlIHJlYWxseQo+Pj4+IGFwcHJlY2lhdGVkLiBU
aGFuayB5b3UuCj4+Pj4KPj4+Cj4+PiBPbiBwb3dlcnBjIDh4eCAoUFBDMzIpLCBJIGdldDoKPj4+
Cj4+PiBbwqDCoCA1My4zMzgzNjhdIGRlYnVnX3ZtX3BndGFibGU6IGRlYnVnX3ZtX3BndGFibGU6
IFZhbGlkYXRpbmcgYXJjaGl0ZWN0dXJlIHBhZ2UgdGFibGUgaGVscGVycwo+Pj4gW8KgwqAgNTMu
MzQ3NDAzXSAtLS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0KPj4+IFvCoMKgIDUz
LjM1MTgzMl0gV0FSTklORzogQ1BVOiAwIFBJRDogMSBhdCBtbS9kZWJ1Z192bV9wZ3RhYmxlLmM6
NjQ3IGRlYnVnX3ZtX3BndGFibGUrMHgyODAvMHgzZjQKPj4KPj4gbW0vZGVidWdfdm1fcGd0YWJs
ZS5jOjY0NyA/Cj4+Cj4+IFdpdGggdGhlIGZvbGxvd2luZyBjb21taXRzIGluIHBsYWNlCj4+Cj4+
IDUzYTgzMzhjZSAoSEVBRCkgRG9jdW1lbnRhdGlvbi9tbTogQWRkIGRlc2NyaXB0aW9ucyBmb3Ig
YXJjaCBwYWdlIHRhYmxlIGhlbHBlcgo+PiA1ZDQ5MTNmYzEgbW0vZGVidWc6IEFkZCB0ZXN0cyB2
YWxpZGF0aW5nIGFyY2ggYWR2YW5jZWQgcGFnZSB0YWJsZSBoZWxwZXJzCj4+IGJjYWYxMjBhNyBt
bS9kZWJ1ZzogQWRkIHRlc3RzIHZhbGlkYXRpbmcgYXJjaCBwYWdlIHRhYmxlIGhlbHBlcnMgZm9y
IGNvcmUgZmVhdHVyZXMKPj4gZDZlZDVhNGE1IHg4Ni9tZW1vcnk6IERyb3AgcHVkX21rbm90cHJl
c2VudCgpCj4+IDA3MzlkMWY4ZCBtbS9kZWJ1ZzogQWRkIHRlc3RzIHZhbGlkYXRpbmcgYXJjaGl0
ZWN0dXJlIHBhZ2UgdGFibGUgaGVscGVycwo+PiAxNmZiZjc5YjAgKHRhZzogdjUuNi1yYzcpIExp
bnV4IDUuNi1yYzcKPiAKPiBJIGhhdmU6Cj4gCj4gZmFjYWE1ZWI1OTA5IChIRUFEIC0+IGhlbHBl
cnMwKSBtbS9kZWJ1ZzogQWRkIHRlc3RzIHZhbGlkYXRpbmcgYXJjaCBhZHZhbmNlZCBwYWdlIHRh
YmxlIGhlbHBlcnMKPiA2Mzg5ZmVkNTE1ZmMgbW0vZGVidWc6IEFkZCB0ZXN0cyB2YWxpZGF0aW5n
IGFyY2ggcGFnZSB0YWJsZSBoZWxwZXJzIGZvciBjb3JlIGZlYXR1cmVzCj4gZGMxNGVjYzhiOTRl
IG1tL2RlYnVnOiBhZGQgdGVzdHMgdmFsaWRhdGluZyBhcmNoaXRlY3R1cmUgcGFnZSB0YWJsZSBo
ZWxwZXJzCj4gYzY2MjQwNzFjMzM4IChvcmlnaW4vbWVyZ2UsIG1lcmdlKSBBdXRvbWF0aWMgbWVy
Z2Ugb2YgYnJhbmNoZXMgJ21hc3RlcicsICduZXh0JyBhbmQgJ2ZpeGVzJyBpbnRvIG1lcmdlCj4g
NThlMDVjNTUwOGU2IEF1dG9tYXRpYyBtZXJnZSBvZiBicmFuY2hlcyAnbWFzdGVyJywgJ25leHQn
IGFuZCAnZml4ZXMnIGludG8gbWVyZ2UKPiAxYjY0OWUwYmNhZTcgKG9yaWdpbi9tYXN0ZXIsIG9y
aWdpbi9IRUFEKSBNZXJnZSBnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5l
bC9naXQvbmV0ZGV2L25ldAo+IAo+IG9yaWdpbiBpcyBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1
Yi9zY20vbGludXgva2VybmVsL2dpdC9wb3dlcnBjL2xpbnV4LmdpdAo+IAo+IEkgY2FuJ3Qgc2Vl
IHlvdXIgbGFzdCBwYXRjaCBpbiBwb3dlcnBjIG1haWxpbmcgbGlzdCAoaHR0cHM6Ly9wYXRjaHdv
cmsub3psYWJzLm9yZy9wcm9qZWN0L2xpbnV4cHBjLWRldi9saXN0Lz9zZXJpZXM9MTY2MjM3KQoK
TXkgYmFkLCBkaWQgbm90IHVwZGF0ZSB0aGUgbGFzdCBwYXRjaCB3aXRoIHJlcXVpcmVkIGxpc3Rz
ICh3aWxsIGZpeCkuCgo+IAo+Pgo+PiBtbS9kZWJ1Z192bV9wZ3RhYmxlLmM6NjQ3IGlzIGhlcmUu
Cj4gCj4gTGluZSA2NDcgaXM6Cj4gCj4gwqDCoMKgwqBXQVJOX09OKCFwdGVfc2FtZShwdGUsIF9f
c3dwX2VudHJ5X3RvX3B0ZShzd3ApKSk7CgpCb3RoIHNldCBvZiBkZWZpbml0aW9ucyBzdWdnZXN0
IHRoYXQgdGhlIGxhc3QgdGhyZWUgYml0cyAoaWYgcHJlc2VudCkKb24gdGhlIFBURSB3aWxsIGJl
IGRpc2NhcmRlZCBkdXJpbmcgUFRFLT5TV1AtPlBURSBjb252ZXJzaW9uIHdoaWNoCm1pZ2h0IGJl
IGxlYWRpbmcgdG8gdGhpcyBtaXNtYXRjaCBhbmQgc3Vic2VxdWVudCBmYWlsdXJlLgoKYXJjaC9w
b3dlcnBjL2luY2x1ZGUvYXNtL25vaGFzaC8zMi9wZ3RhYmxlLmgKYXJjaC9wb3dlcnBjL2luY2x1
ZGUvYXNtL2Jvb2szcy8zMi9wZ3RhYmxlLmgKCiNkZWZpbmUgX19wdGVfdG9fc3dwX2VudHJ5KHB0
ZSkgICAgICAgICAoKHN3cF9lbnRyeV90KSB7IHB0ZV92YWwocHRlKSA+PiAzIH0pCiNkZWZpbmUg
X19zd3BfZW50cnlfdG9fcHRlKHgpICAgICAgICAgICAoKHB0ZV90KSB7ICh4KS52YWwgPDwgMyB9
KQoKQWxzbyB0aGVyZSBhcmUgc29tZSBtb3JlIGFyY2hpdGVjdHVyZXMgKG1pY3JvYmxhemUsIHNo
LCBldGMpIHdoZXJlIHRoZXNlCmNvbnZlcnNpb25zIGFyZSBub3QgYWx3YXlzIHByZXNlcnZpbmcu
IE9uIHBvd2VycGM2NCwgaXQgc2V0cyBiYWNrIF9QQUdFX1BURQppcnJlc3BlY3RpdmUgb2Ygd2hl
dGhlciB0aGUgYml0IHdhcyBvcmlnaW5hbGx5IHNldCBvciBub3QuCgpQcm9iYWJseSBpdCBpcyB3
cm9uZyB0byBleHBlY3QgdGhhdCBQVEUtPlNXUC0+UFRFIGNvbnZlcnNpb24gd2lsbCBiZSBhbHdh
eXMKcHJlc2VydmluZy4gU28gd29uZGVyaW5nIGlmIGl0IGlzIHdvcnRoIGNoYW5naW5nIHRoaXMg
dGVzdCB0byBhY2NvbW1vZGF0ZQphbGwgc3VjaCBhcmNoaXRlY3R1cmVzIG9yIGp1c3QgZHJvcCBp
dCBpbnN0ZWFkLgoKPiAKPiAKPj4KPj4gI2lmZGVmIENPTkZJR19BUkNIX0VOQUJMRV9USFBfTUlH
UkFUSU9OCj4+IHN0YXRpYyB2b2lkIF9faW5pdCBwbWRfc3dhcF90ZXN0cyh1bnNpZ25lZCBsb25n
IHBmbiwgcGdwcm90X3QgcHJvdCkKPj4gewo+PiDCoMKgwqDCoMKgwqDCoMKgIHN3cF9lbnRyeV90
IHN3cDsKPj4gwqDCoMKgwqDCoMKgwqDCoCBwbWRfdCBwbWQ7wqAgLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0+IExpbmUgIzY0Nwo+Pgo+PiDCoMKgwqDCoMKgwqDCoMKgIHBtZCA9IHBmbl9w
bWQocGZuLCBwcm90KTsKPj4gwqDCoMKgwqDCoMKgwqDCoCBzd3AgPSBfX3BtZF90b19zd3BfZW50
cnkocG1kKTsKPj4gwqDCoMKgwqDCoMKgwqDCoCBXQVJOX09OKCFwbWRfc2FtZShwbWQsIF9fc3dw
X2VudHJ5X3RvX3BtZChzd3ApKSk7Cj4+IH0KPj4gI2Vsc2UKPj4gc3RhdGljIHZvaWQgX19pbml0
IHBtZF9zd2FwX3Rlc3RzKHVuc2lnbmVkIGxvbmcgcGZuLCBwZ3Byb3RfdCBwcm90KSB7IH0KPj4g
I2VuZAo+Pgo+PiBEaWQgSSBtaXNzIHNvbWV0aGluZyA/Cj4+Cj4gCj4gWy4uLl0KPiAKPj4gQ291
bGQgeW91IHBsZWFzZSBwb2ludCBtZSB0byB0aGUgZXhhY3QgdGVzdCB3aGljaCBpcyBmYWlsaW5n
ID8KPj4KPj4+IFvCoMKgIDUzLjUxOTc3OF0gRnJlZWluZyB1bnVzZWQga2VybmVsIG1lbW9yeTog
NjA4Swo+Pj4KPj4+Cj4+IFNvIEkgYXNzdW1lIHRoYXQgdGhlIHN5c3RlbSBzaG91bGQgaGF2ZSBj
b21lIHRpbGwgcnVudGltZSBqdXN0IGZpbmUgYXBhcnQgZnJvbQo+PiB0aGUgYWJvdmUgd2Fybmlu
ZyBtZXNzYWdlIGJlY2F1c2UuCj4+Cj4gCj4gWWVzIGl0IGJvb3RzIGZpbmUgb3RoZXJ3aXNlLgoK
Q29vbCwgdGhhdCBpcyBnb29kIHRvIGtub3cuCgo+IAo+IENocmlzdG9waGUKPiAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
