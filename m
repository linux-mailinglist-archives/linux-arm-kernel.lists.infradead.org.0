Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FEFD195BCD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 18:03:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0mEGvcVphDWqLmB82qZ+ngf9fDyHmcnapMGCLKcijVQ=; b=N39gMJZk020GfV
	mTGf20H10NmYtjKFP9bm0RDJUJ4kR/1W/0ERCeEfXA/mA6MGmBeQcOG2si+EBDk1Uo5T3LssV0/GS
	peWIuTiBgTi6YgFniWbLCdxkNTQSpsiOxdSzNb8mztJQR4fnU2IqEx7k+G7hdZFSlefuBsT646i7N
	Bc0o8JCNl3/COuw3t7d540bbI1jiBq3xMfnb93HQ8fNDS7BmE8I0HUWXEb7dQrvMANR/NO0cCFoq2
	H5IOgYyb4UIJuXfDNhl3c2Uss8wnqgU7E98040iH+rBrG37Ur3UGD0st3p3XYsIv5ct9+WQk6m691
	dbIyDNfmMBhUeFAtzPFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHsNx-0008Se-4B; Fri, 27 Mar 2020 17:03:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHsNh-0008Rr-5G
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 17:02:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 836921FB;
 Fri, 27 Mar 2020 10:02:52 -0700 (PDT)
Received: from C02TD0UTHF1T.local (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2C0123F71E;
 Fri, 27 Mar 2020 10:02:50 -0700 (PDT)
Date: Fri, 27 Mar 2020 17:02:48 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: "Wang, Li" <li.wang@windriver.com>
Subject: Re: [PATCH] arm64: mmu: no write cache for O_SYNC flag
Message-ID: <20200327170248.GC94838@C02TD0UTHF1T.local>
References: <20200326163625.30714-1-li.wang@windriver.com>
 <20200327142937.GB94838@C02TD0UTHF1T.local>
 <6fc201bf-ad0c-3dae-783e-c9c9e4ac034e@windriver.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6fc201bf-ad0c-3dae-783e-c9c9e4ac034e@windriver.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_100253_243133_33B156E1 
X-CRM114-Status: GOOD (  18.95  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCBNYXIgMjgsIDIwMjAgYXQgMTI6NDc6MzJBTSArMDgwMCwgV2FuZywgTGkgd3JvdGU6
Cj4gCj4g5ZyoIDIwMjAvMy8yNyAyMjoyOSwgTWFyayBSdXRsYW5kIOWGmemBkzoKPiA+IE9uIFRo
dSwgTWFyIDI2LCAyMDIwIGF0IDA5OjM2OjI1QU0gLTA3MDAsIExpIFdhbmcgd3JvdGU6Cj4gPiA+
IHJlcHJvZHVjZSBzdGVwczoKPiA+ID4gMS4KPiA+ID4gZGlzYWJsZSBDT05GSUdfU1RSSUNUX0RF
Vk1FTSBpbiBsaW51eCBrZXJuZWwKPiA+ID4gMi4KPiA+ID4gUHJvY2VzcyBBIGdldHMgYSBQaHlz
aWNhbCBBZGRyZXNzIG9mIGdsb2JhbCB2YXJpYWJsZSBieQo+ID4gPiAiL3Byb2Mvc2VsZi9wYWdl
bWFwIi4KPiA+ID4gMy4KPiA+ID4gUHJvY2VzcyBCIHdyaXRlcyBhIHZhbHVlIHRvIHRoZSBzYW1l
IFBoeXNpY2FsIEFkZHJlc3MgYnkgbW1hcCgpOgo+ID4gPiBmZD1vcGVuKCIvZGV2L21lbSIsT19T
WU5DKTsKPiA+ID4gVmlydHVhbCBBZGRyZXNzPW1tYXAoZmQpOwo+ID4gSXMgdGhpcyBqdXN0IHRv
IGRlbW9uc3RyYXRlIHRoZSBiZWhhdmlvdXIsIG9yIGlzIHRoaXMgbWVhbnQgdG8gYmUKPiA+IGlu
ZGljYXRpdmUgb2YgYSByZWFsIHVzZS1jYXNlPyBJJ20gc3RydWdnbGluZyB0byBzZWUgdGhlIGxh
dHRlci4KPiA+IAo+ID4gPiBwcm9ibGVtIHN5bXB0b206Cj4gPiA+IGFmdGVyIFByb2Nlc3MgQiB3
cml0ZSBhIHZhbHVlIHRvIHRoZSBQaHlzaWNhbCBBZGRyZXNzLAo+ID4gPiBQcm9jZXNzIEEgb2Yg
dGhlIHZhbHVlIG9mIGdsb2JhbCB2YXJpYWJsZSBkb2VzIG5vdCBjaGFuZ2UuCj4gPiA+IFRoZXkg
Ym90aCBXL1IgdGhlIHNhbWUgUGh5c2ljYWwgQWRkcmVzcy4KPiA+IElmIFByb2Nlc3MgQSBpcyBu
b3QgdXNpbmcgdGhlIHNhbWUgYXR0cmlidXRlcyBhcyBwcm9jZXNzIEIsIHRoZXJlIGlzIG5vCj4g
PiBndWFyYW50ZWUgb2YgY29oZXJlbmN5LiBIb3cgZGlkIHByb2Nlc3MgQSBtYXAgdGhpcyBtZW1v
cnk/Cj4gCj4gCj4gYWJvdXQgMiBQcm9jZXNzOgo+IAo+IFByb2Nlc3MgQToKPiAKPiB0aGUgbWVt
b3J5IGlzIG5vdCBkZWNsYXJlZCBieSBtYXAgZnVuY3Rpb24sIGl0IGlzIGp1c3QgYSBnbG9iYWwg
dmFyaWFibGUuCgpUaGVuIGl0IGlzIGV4YWN0bHkgYXMgSSBkZXNjcmliZWQgcHJldmlvdXNseSwg
YW5kIFByb2Nlc3MgQSBoYXMgaXQKbWFwcGVkIHdpdGggYSBOb3JtYWwgV3JpdGUtQmFjayBDYWNo
ZWFibGUgbWFwcHBpbmcuCgpQcm9jZXNzIEIgcmVxdWVzdHMgYSBtYXBwaW5nIG9mIHRoYXQgbWVt
b3J5IHZpYSAvZGV2L21lbS4gSXQgcGFzc2VzIHRoZQpPX1NZTkMgZmxhZywgYW5kIHRvIGVuc3Vy
ZSB0aGF0IGFjY2Vzc2VzIGdvIHRvICJ0aGUgdW5kZXJseWluZyBoYXJkd2FyZSIKdGhlIGtlcm5l
bCBtYWtlcyB0aGlzIG1hcHBpbmcgTm9ybWFsIE5vbi1DYWNoZWFibGUgKHdoaWNoIG1lYW5zIGl0
CnNob3VsZCBub3QgbG9vayBpbiBhIGNhY2hlLCBvciBiZSBhbGxvY2F0ZWQgaW50byBvbmUpLgoK
VGhlIHR3byBtYXBwaW5ncyBhcmUgbm90IGNvaGVyZW50IGJlY2F1c2UgcHJvY2VzcyBBIHVzZXMg
dGhlIGNhY2hlLCBidXQKcHJvY2VzcyBCIGRvZXMgbm90LiBUaGlzIGlzIHRoZSBleHBlY3RlZCBi
ZWhhdmlvdXIsIGNvbnNpc3RlbnQgd2l0aCB0aGUKc2VtYW50aWMgb2YgT19TWU5DLiBJZiB5b3Ug
bmVlZCB0aGUgdHdvIHRvIGJlIGNvaGVyZW50LCB0aGV5IG11c3QgYm90aAp1c2UgdGhlIHNhbWUg
YXR0cmlidXRlcy4KClByb2Nlc3MgQiBjYW4gYmUgY29oZXJlbnQgd2l0aCBwcm9jZXNzIEEgaWYg
aXQgZG9lcyAqbm90KiBwYXNzIE9fU1lOQywKd2hpY2ggd291bGQgZ2l2ZSBpdCBhIE5vcm1hbCBX
cml0ZS1CYWNrIENhY2hlYWJsZSBtYXBwaW5nIHRoYXQgd2FzCmNvaGVyZW50IHdpdGggcHJvY2Vz
cyBBLgoKPiBpZiB5b3UgYWdyZWUgdGhhdCBPX1NZTkMgZmxhZyBtZWFucyAiaXMgdHJhbnNmZXJy
ZWQgdG8gdGhlIHVuZGVybHlpbmcKPiBoYXJkd2FyZSIsCj4gCj4gdGhlIGFybTY0IGRvZXMgbm90
IGRvIHRoYXQ6Cj4gCj4gd2hlbiB1c2UgT19TWU5DIGZsYWcgdW5kZXIgYXJtNjQgYXJjaCwgaXQg
YWRkcyB3cml0ZSBjYWNoZSBmZWF0dXJlLAoKQXMgYWJvdmUsIHRoaXMgaXMgbm90IHRoZSBjYXNl
LiBPX1NZTkMgY2F1c2VzIHRoZSBrZXJuZWwgdG8gdXNlIGEKbm9uLWNhY2hlYWJsZSBtYXBwaW5n
LCB3aGVyZSBpdCB3b3VsZCBub3JtYWxseSBjcmVhdGUgYSBjYWNoZWFibGUKbWFwcGluZy4gaS5l
LiBPX1NZTkMgKnJlbW92ZXMqIGNhY2hlYWJpbGl0eS4KCkl0IGp1c3QgaGFwcGVucyB0aGF0IHBy
b2Nlc3MgQSBpcyB1c2luZyBhIGNhY2hlYWJsZSBtYXBwaW5nLCB3aGljaCBpcwp0aGUgY2FzZSBy
ZWdhcmRsZXNzIG9mIHdoYXQgcHJvY2VzcyBCIGRvZXMuCgpUaGFua3MsCk1hcmsuCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
