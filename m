Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0C01C933
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 15:09:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VWbWlG9lwfCU9DXAv5BsPtCJuEe6GAtL8zC7OCtLe3s=; b=ZSCwCMJbBuuXRO
	FgHPgG+7/+9uz6jNMmvWP/dd5Nj7PlLY06eQT4QrymXs7JcBasNi65FCXSW3uGTXUiLY3A1BQucPJ
	pctcTKsrHS82RRusF4Ehhw1VAh6hdTrW2eF420v4RIS99r0EL0xzDwSt3+YT6kV1v/ZVx6S+lHZcK
	+f74dGh9cAx8sM6DOfwkNjIBEEfXsQU39oNYwdtLt66hNlgwmuZvZA+u/Y1lmbiwpsRzHE/neSOKW
	k6jt4RmlQCITURaYA8Ie203FtDbfGJz6Zd/HjCogwCzL6l8L3EwcBuZuCMlBFpfNakDtgW+CIsOnW
	uL7UTUc0TwO68/ywzKSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQXB9-0006Le-UX; Tue, 14 May 2019 13:09:11 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQXB1-0006LC-8v
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 13:09:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 92095341;
 Tue, 14 May 2019 06:09:02 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 01A013F6C4;
 Tue, 14 May 2019 06:08:57 -0700 (PDT)
Subject: Re: [PATCH v2 3/5] arm64: Fix incorrect irqflag restore for priority
 masking
To: Robin Murphy <robin.murphy@arm.com>, Marc Zyngier <marc.zyngier@arm.com>, 
 linux-arm-kernel@lists.infradead.org
References: <1556553607-46531-1-git-send-email-julien.thierry@arm.com>
 <1556553607-46531-4-git-send-email-julien.thierry@arm.com>
 <2b023ba4-b95b-f823-4635-6a75deef5386@arm.com>
 <1739c8ac-9073-798f-ed0b-0dc617c195d6@arm.com>
 <5e8a85f5-c837-3ce8-5830-f3ae7897e326@arm.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <0a0dfd57-af99-f603-a56f-ee05f5c7b98a@arm.com>
Date: Tue, 14 May 2019 14:08:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <5e8a85f5-c837-3ce8-5830-f3ae7897e326@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_060903_318878_794D84D6 
X-CRM114-Status: GOOD (  21.49  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, Suzuki K Pouloze <suzuki.poulose@arm.com>,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 rostedt@goodmis.org, Christoffer Dall <christoffer.dall@arm.com>,
 james.morse@arm.com, Oleg Nesterov <oleg@redhat.com>, yuzenghui@huawei.com,
 wanghaibin.wang@huawei.com, liwei391@huawei.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxNC8wNS8yMDE5IDEzOjAxLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4gT24gMTQvMDUvMjAx
OSAxMDoyNSwgSnVsaWVuIFRoaWVycnkgd3JvdGU6Cj4gWy4uLl0KPj4+PiArc3RhdGljIGlubGlu
ZSBpbnQgYXJjaF9pcnFzX2Rpc2FibGVkX2ZsYWdzKHVuc2lnbmVkIGxvbmcgZmxhZ3MpCj4+Pj4g
K3sKPj4+PiArwqDCoMKgIGludCByZXM7Cj4+Pj4gKwo+Pj4+ICvCoMKgwqAgYXNtIHZvbGF0aWxl
KEFMVEVSTkFUSVZFKAo+Pj4+ICvCoMKgwqDCoMKgwqDCoCAiYW5kwqDCoMKgICV3MCwgJXcxLCAj
IiBfX3N0cmluZ2lmeShQU1JfSV9CSVQpICJcbiIKPj4+PiArwqDCoMKgwqDCoMKgwqAgIm5vcCIs
Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgICJjbXDCoMKgwqAgJXcxLCAjIiBfX3N0cmluZ2lmeShHSUNf
UFJJT19JUlFPTikgIlxuIgo+Pj4+ICvCoMKgwqDCoMKgwqDCoCAiY3NldMKgwqDCoCAldzAsIG5l
IiwKPj4+PiArwqDCoMKgwqDCoMKgwqAgQVJNNjRfSEFTX0lSUV9QUklPX01BU0tJTkcpCj4+Pj4g
K8KgwqDCoMKgwqDCoMKgIDogIj0mciIgKHJlcykKPj4+PiArwqDCoMKgwqDCoMKgwqAgOiAiciIg
KChpbnQpIGZsYWdzKQo+Pj4+ICvCoMKgwqDCoMKgwqDCoCA6ICJtZW1vcnkiKTsKPj4+Cj4+PiBJ
IHdvbmRlciBpZiB0aGlzIHNob3VsZCBoYXZlICJjYyIgYXMgcGFydCBvZiB0aGUgY2xvYmJlciBs
aXN0Lgo+Pgo+PiBJcyB0aGVyZSBhbnkgc3BlY2lhbCBzZW1hbnRpYyB0byAiY2MiIG9uIGFybTY0
PyBBbGwgSSBjYW4gZmluZCBpcyB0aGF0Cj4+IGluIHRoZSBnZW5lcmFsIGNhc2UgaXQgaW5kaWNh
dGVzIHRoYXQgaXQgaXMgbW9kaWZ5aW5nIHRoZSAiZmxhZ3MiCj4+IHJlZ2lzdGVyLgo+Pgo+PiBJ
cyB5b3VyIHN1Z2dlc3Rpb24gb25seSBmb3IgdGhlIFBNUiBjYXNlPyBPciBpcyBpdCBzb21ldGhp
bmcgdGhhdCB3ZQo+PiBzaG91bGQgYWRkIHJlZ2FyZGxlc3Mgb2YgUE1SPwo+PiBUaGUgbGF0dGVy
IG1ha2VzIHNlbnNlIHRvIG1lLCBidXQgZm9yIHRoZSBmb3JtZXIsIEkgZmFpbCB0byB1bmRlcnN0
YW5kCj4+IHdoeSB0aGlzIHNob3VsZCBhZmZlY3Qgb25seSBQTVIuCj4gCj4gVGhlIFBNUiBjYXNl
IHJlYWxseSBvdWdodCB0byBoYXZlIGhhdmUgYSBjYyBjbG9iYmVyLCBiZWNhdXNlIHdobyBrbm93
cwo+IHdoYXQgdGhpcyBtYXkgZW5kIHVwIGlubGluZWQgaW50bywgYW5kIGNvbXBpbGVycyBjYW4g
Z2V0IHByZXR0eQo+IGFnZ3Jlc3NpdmUgd2l0aCBpbnN0cnVjdGlvbiBzY2hlZHVsaW5nIGluIHdh
eXMgd2hpY2ggbGVhdmUgYSBsaXZlIHZhbHVlCj4gaW4gQ1BTUiBhY3Jvc3Mgc2l6ZWFibGUgY2h1
bmtzIG9mIG90aGVyIGNvZGUuIEl0J3MgdHJ1ZSB0aGF0IHRoZSBub24tUE1SCj4gY2FzZSBkb2Vz
bid0IG5lZWQgaXQsIGJ1dCB0aGUgc3Vycm91bmRpbmcgY29kZSBzdGlsbCBuZWVkcyB0byBiZQo+
IGdlbmVyYXRlZCB0byBhY2NvbW1vZGF0ZSBib3RoIHBvc3NpYmxlIHZlcnNpb25zIG9mIHRoZSBh
bHRlcm5hdGl2ZS4gRnJvbQo+IHRoZSBsb29rIG9mIHRoZSByZXN0IG9mIHRoZSBwYXRjaCwgdGhl
IGV4aXN0aW5nIHBzZXVkby1OTUkgY29kZSBoYXMgdGhpcwo+IGJ1ZyBpbiBhIGZldyBwbGFjZXMu
Cj4gCj4gVGVjaG5pY2FsbHkgeW91IGNvdWxkIG9taXQgaXQgd2hlbiBBUk02NF9QU0VVRE9fTk1J
IGlzIGNvbmZpZ3VyZWQgb3V0Cj4gZW50aXJlbHksIGJ1dCBhdCB0aGF0IHBvaW50IHlvdSBtYXkg
YXMgd2VsbCBvbWl0IHRoZSB3aG9sZSBhbHRlcm5hdGl2ZQo+IGFzIHdlbGwuIEl0J3MgcHJvYmFi
bHkgbm90IHdvcnRoIHRoZSBib3RoZXIgdW5sZXNzIGl0IHByb3ZlcyB0byBoYXZlIGEKPiBzaWdu
aWZpY2FudCBpbXBhY3Qgb24gY29kZWdlbiBvdmVyYWxsLiBPbiB3aGljaCBub3RlIHRoZSBtZW1v
cnkgY2xvYmJlcgo+IGFsc28gc2VlbXMgc3VwZXJmbHVvdXMgZWl0aGVyIHdheSA6Lwo+IAoKUmln
aHQsIEkgc2VlLiBJIG1pc3VuZGVyc3Rvb2Qgd2hhdCB3YXMgbWVhbnQgYnkgImNjIiBpbmRpY2F0
aW5nIHRoYXQgdGhlCmFzc2VtYmx5IG1vZGlmaWVkIHRoZSBmbGFncy4KCkR1ZSB0byB0aGUgY29u
dGV4dCBJIGludGVycHJldGVkIGl0IGFzIGlycWZsYWdzIHdoZXJlYXMgaXQgY29uY2VybnMgdGhl
CmNvbmRpdGlvbiBmbGFncyAoaGVuY2UgdGhlICdjJyBJIHByZXN1bWUuLi4pLiBJdCBhbGwgbWFr
ZXMgbW9yZSBzZW5zZSBub3cuCgo+IFRoYXQgc2FpZCwgbm93IHRoYXQgSSd2ZSBiZWVuIGxvb2tp
bmcgYXQgaXQgZm9yIHRoaXMgbG9uZywgaWYgdGhlIGFpbSBpcwo+IGp1c3QgdG8gY3JlYXRlIGEg
emVyby9ub256ZXJvIHZhbHVlIHRoZW4gY291bGRuJ3QgdGhlIFBNUiBjYXNlIGp1c3QgYmUKPiAi
ZW9yICV3MCwgJXcxLCAjR0lDX1BSSU9fSVJRT04iIGFuZCBhdm9pZCB0aGUgbmVlZCBmb3IgY2xv
YmJlcnMgYXQgYWxsPwo+IAoKWWVzLCBkZWZpbml0ZWx5IHNlZW1zIGxpa2UgaXQgd291bGQgYmUg
YmV0dGVyISBJJ2xsIHRha2UgdGhhdApzdWdnZXN0aW9uLCB0aGFua3MuCgpDaGVlcnMsCgotLSAK
SnVsaWVuIFRoaWVycnkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
