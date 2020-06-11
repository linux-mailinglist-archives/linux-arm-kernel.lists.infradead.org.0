Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5831F66EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 13:38:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yIx0mcqK0sa8k2ZyItaNLXtDWOV2XN9Y2EPiGbhK228=; b=Vka/DWzlDdW+oTDhiXQZcgWhw
	6lRS535wQzgFeMd1Kh5GbpoX+2mKY84TadRZeV5whKeeWURx3rrHhXgSUggpLfDtxelTjKO24GXb6
	xybGftrksZD1QxDPInFP1b8a6rxLpCstGryh4+LcPD47cBcWdyHJ+Dd/IlAYfOxbwzPMLMxAZxmFa
	7WG3P4DeAwTZ7C0iUf9zcQeu3aWe/v41oRvlyL1E+i4RugcFLVXmISopYhj3P3MBQezvyUAZ5iT71
	3MQ73LsUUhQWR7G49ngLUyOhwHvE8CVtwMYiyVSmeBv4w15mNchOAGXANnnAJdIL6en+MtQUfz9C+
	trfH9V4XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjLXr-00019U-5s; Thu, 11 Jun 2020 11:38:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjLXk-00018f-Ca
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 11:38:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D9B891F1;
 Thu, 11 Jun 2020 04:38:45 -0700 (PDT)
Received: from [10.57.9.128] (unknown [10.57.9.128])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 54B153F66F;
 Thu, 11 Jun 2020 04:38:45 -0700 (PDT)
Subject: Re: arm64: el1_error when copy rawdata to a partition
To: Chris Ruehl <chris.ruehl@gtsys.com.hk>
References: <27a86dfd-e565-bbe0-423f-a9485d51ef43@gtsys.com.hk>
 <601da1b5-4137-4a5d-0d42-0d46af1045dd@arm.com>
 <75d4f767-7af2-dee1-a1a8-e9467651a4e3@gtsys.com.hk>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <83b058a6-9552-67ae-2994-1ca04519521f@arm.com>
Date: Thu, 11 Jun 2020 12:38:43 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <75d4f767-7af2-dee1-a1a8-e9467651a4e3@gtsys.com.hk>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_043848_468401_DEC7D127 
X-CRM114-Status: GOOD (  20.24  )
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wNi0xMSAwMzoyMSwgQ2hyaXMgUnVlaGwgd3JvdGU6Cj4gSGkgUm9iaW4sCj4gCj4g
T24gMTAvNi8yMDIwIDc6NTggcG0sIFJvYmluIE11cnBoeSB3cm90ZToKPj4gSGkgQ2hyaXMsCj4+
Cj4+IE9uIDIwMjAtMDYtMTAgMDQ6NDksIENocmlzIFJ1ZWhsIHdyb3RlOgo+Pj4gSGksCj4+Pgo+
Pj4ganVzdCBoaXQgYSBwYW5pYyBvbiBteSByazMzOTktb3JhbmdlcGkgd2hpbGUgcnVubmluZwo+
Pj4KPj4+IHh6IC1kIC1jIGltYWdlLnh6IHwgZGQgb2Y9L2Rldi9tbWNibGsycDIgYnM9MU0KPj4+
Cj4+PiBUaGlzIGNhbiByZXByb2R1Y2UuCj4+Cj4+IFdoYXQncyB5b3VyIGZpcm13YXJlIHNldHVw
PyBUaGVyZSdzIGEga25vd24gc25hZyB3aGVuIG1peGluZyBtYWlubGluZSAKPj4gVS1Cb290IHdp
dGggUm9ja2NoaXAncyBUcnVzdGVkIEZpcm13YXJlIGJpbmFyaWVzIC0gdGhlICJ0cnVzdC5pbWci
IAo+PiBibG9icyB0ZW5kIHRvIGluY2x1ZGUgYW4gT1AtVEVFIHBheWxvYWQgdGhhdCBjYXJ2ZXMg
b3V0IHNvbWUgRFJBTSBmb3IgCj4+IHRoZSBTZWN1cmUgd29ybGQsIGFuZCB0aGUgQlNQIFUtQm9v
dCBoYXMgc29tZSBoYXJkLWNvZGVkIGhhbmRsaW5nIGZvciAKPj4gdGhhdCB3aGVyZWFzIG1haW5s
aW5lIGRvZXNuJ3QuIEFzIGEgcmVzdWx0LCBpbiB0aGF0IGNvbmZpZ3VyYXRpb24gCj4+IExpbnV4
IGVuZHMgdXAgdW5hd2FyZSB0aGF0IHNvbWUgb2YgdGhlIG1lbW9yeSBpdCdzIGJlZW4gdG9sZCBh
Ym91dCAKPj4gaXNuJ3QgYWN0dWFsbHkgYWNjZXNzaWJsZSBhbmQgd2lsbCB0cmlnZ2VyIGFuIGV4
dGVybmFsIGFib3J0IGlmIAo+PiB0b3VjaGVkICh3aGljaCBkdWUgdG8gdGhlIG5hdHVyZSBvZiB0
aGUgcGFnZSBhbGxvY2F0b3IgdHlwaWNhbGx5IG9ubHkgCj4+IHNlZW1zIHRvIGhhcHBlbiB1bmRl
ciBtZW1vcnkgcHJlc3N1cmUsIGxpa2UgYSBsYXJnZSBjb3B5IG9wZXJhdGlvbiAKPj4gdGhhdCBj
aHVybnMgYSBsb3Qgb2YgZGF0YSB0aHJvdWdoIHRoZSBwYWdlIGNhY2hlKS4KPj4KPj4gUm9iaW4u
Cj4gWWVzLCBJJ20gdXNpbmcgdGhlIG1pbmktbG9hZGVyIGZyb20gUm9ja2NoaXAgYW5kIHRoZSB0
cnVzdGVkLmltZyB3aXRoIAo+IHRoZSBtYWlubGluZSB1Ym9vdCAyMDIwLjQKPiBhbmQgd2hhdCB5
b3UgdGVsbCBtZSBtYWtlcyBzZW5zZSEKPiAKPiBJIHRyaWVkIHRvIHVzZSB0aGUgb3Blbi1zb3Vy
Y2Ugb25seSBidXQgZmFpbGVkIGVuZCB1cCB3aXRoOgo+ICJUcnkgYm9vdGluZyBmcm9tIE1NQzEi
Cj4gYW5kIHRoZW4gdGltZW91dCBvbiB0aGUgU0QgJiBlTU1DLCBJIHRoaW5rIHRoZSBjbG9jayBu
b3QgY29tZSB1cAo+IG9yIGlzbid0IGluaXRpYWxpemVkIGluIHRoZSBTUEwuCj4gCj4gVUJPT1Qg
Y29uZmlnOgo+ICDCoExpc3Qgb2YgZGV2aWNlIHRyZWUgcHJvcGVydGllcyB0byBkcm9wIGZvciBT
UEw6Cj4gLi4uIGNsb2NrLW5hbWVzIC4uIGFzc2lnbmVkLWNsb2NrcyBhc3NpZ25lZC1jbG9jay1y
YXRlcyAKPiBhc3NpZ25lZC1jbG9jay1wYXJlbnRzCj4gCj4gd2hpbGUgSSB3cml0ZSB0aGlzLCBJ
IHJlYWQgYWJvdXQgdGhlICJ1LWJvb3QsZG0tcHJlLXJlbG9jIiBpbiB0aGUgaGVscCAKPiB0ZXh0
IC0gaG1tCj4gbGV0IG1lIGFkZCB0aGlzIHRvIHRoZSByazMzOTktb3JhbmdlcGkuZHRzIGFuZCBn
aXZlIHRoZSBwdXJlIG9wZW4tc291cmNlIAo+IHNvbHV0aW9uCj4gb25lIG1vcmUgdHJ5LgoKSSBk
byByZWNhbGwgaGF2aW5nIHRvIGRvIHNvbWUgZmlkZGxpbmcgdG8gZ2V0IFRQTC9TUEwgdG8gYm9v
dCBmcm9tIGVNTUMgCnJlbGlhYmx5IG9uIG15IE5hbm9QQy1UNCAtIHRoZSBvbmx5IGNoYW5nZSBJ
IGhhdmUgY29tbWl0dGVkIGxvY2FsbHkgaXMgCmFkZGluZyBhICJ1LWJvb3Qsc3BsLWJvb3Qtb3Jk
ZXIiIHByb3BlcnR5LCBidXQgSSBjYW4ndCBub3cgcmVtZW1iZXIgCndoZXRoZXIgdGhlIGltYWdl
IEknbSBjdXJyZW50bHkgdXNpbmcgaGFkIGFueSBmdXJ0aGVyIHRlbXBvcmFyeSBoYWNrcyBvbiAK
dG9wIG9mIHRoYXQuCgpBbiBhbHRlcm5hdGl2ZSB3b3JrYXJvdW5kIGlzIGp1c3QgdG8gaGFjayB0
aGUga2VybmVsIERUIHRvIGV4cGxpY2l0bHkgCnJlc2VydmUgdGhlIG9mZmVuZGluZyByZWdpb24g
LSB1bnRpbCBJIGdvdCBtYWlubGluZSBUUEwvU1BMIGFuZCBUcnVzdGVkIApGaXJtd2FyZSB3b3Jr
aW5nLCB0aGlzIGlzIHdoYXQgSSBoYWQ6CgoJcmVzZXJ2ZWQtbWVtb3J5IHsKCQkjYWRkcmVzcy1j
ZWxscyA9IDwyPjsKCQkjc2l6ZS1jZWxscyA9IDwyPjsKCQlyYW5nZXM7CgoJCWV4dGVybmFsLWFi
b3J0QDg0MDAwMDAgewoJCQlyZWcgPSA8MCAweDg0MDAwMDAgMCAweDEyMDAwMDA+OwoJCQluby1t
YXA7CgkJfTsKCX07CgpSb2Jpbi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
