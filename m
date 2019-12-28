Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53BAE12BDC5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 15:26:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m9LXeSlt/OePhQKC9JWKf9qbnLHh6NlzZNuX6JSL5Q4=; b=u9dTjNHm19RmiDFTp8v6uQCv/
	p4okmOBISpnIq59NuB1oyWhDCMdT5bOH9LfGyU6DczyS+336EnGRczrIAi3zXwFpI1XQGmHFGKzgR
	C7ZiKp6tsY46ZvmMa/lEfCtLHEFSpSS64ZImIxukIqG0W3ecsLLks0mDWarXYCZAMWr6WXqr7zRuT
	kUx+l4w2KGipLxIZRzzCoMxajX89cYrUBzSjAQHZHmwKsJVBZqyj6fEk4QuC3i3USTVMCozQfCHTW
	iKMJcdLG4aWpS+4fJclYCVOJO5kKalBnPs821lWBKELFTSE0NeYuEuCtXxLQWpS0hMljgMVdceP0j
	1Dtz1zAtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilD2Y-0002Sf-AZ; Sat, 28 Dec 2019 14:26:02 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilD2P-0002SC-E2; Sat, 28 Dec 2019 14:25:54 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 10526AC46;
 Sat, 28 Dec 2019 14:25:52 +0000 (UTC)
Subject: Re: [PATCH v3 2/2] arm64: dts: realtek: Add RTD1619 SoC and Realtek
 Mjolnir EVB
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
To: James Tai <james.tai@realtek.com>
References: <73fb8106ec1a4665b59a2d187a576b71@realtek.com>
 <9cadb78c-99af-8948-e76f-c26f263693b3@suse.de>
 <fbc4dee61c2547458fa0791f38abaed2@realtek.com>
 <610ad23f-d133-8fd9-1741-80eb47157929@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <7bf764cb-a2d0-3fa3-8873-763ebfc0f93a@suse.de>
Date: Sat, 28 Dec 2019 15:25:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <610ad23f-d133-8fd9-1741-80eb47157929@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_062553_618022_58C2C663 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, 'DTML' <devicetree@vger.kernel.org>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMTUuMTEuMTkgdW0gMTY6Mjkgc2NocmllYiBBbmRyZWFzIEbDpHJiZXI6Cj4gQW0gMTUuMTEu
MTkgdW0gMTU6NTIgc2NocmllYiBKYW1lcyBUYWk6Cj4+Pj4gQWRkIERldmljZSBUcmVlcyBmb3Ig
UmVhbHRlayBSVEQxNjE5IFNvQyBmYW1pbHksIFJURDE2MTkgU29DIGFuZAo+Pj4+IFJlYWx0ZWsg
TWpvbG5pciBFVkIuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBKYW1lcyBUYWkgPGphbWVzLnRh
aUByZWFsdGVrLmNvbT4KPj4+PiAtLS0KPj4+Cj4+PiBMYWNraW5nIHRoZSByZXF1ZXN0ZWQgY2hh
bmdlbG9nLgo+Pj4KPj4+PiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9NYWtlZmlsZSAg
ICAgICAgICB8ICAgMiArCj4+Pj4gICAuLi4vYm9vdC9kdHMvcmVhbHRlay9ydGQxNjE5LW1qb2xu
aXIuZHRzICAgICAgfCAgNDAgKysrKysKPj4+PiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRl
ay9ydGQxNjE5LmR0c2kgICAgICB8ICAxMiArKwo+Pj4+ICAgYXJjaC9hcm02NC9ib290L2R0cy9y
ZWFsdGVrL3J0ZDE2eHguZHRzaSAgICAgIHwgMTYzCj4+PiArKysrKysrKysrKysrKysrKysKPj4+
PiAgIDQgZmlsZXMgY2hhbmdlZCwgMjE3IGluc2VydGlvbnMoKykKPj4+PiAgIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTYxOS1tam9sbmlyLmR0cwo+
Pj4+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQx
NjE5LmR0c2kKPj4+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3Jl
YWx0ZWsvcnRkMTZ4eC5kdHNpCj4+Pgo+Pj4gU29tZWhvdyB0aGUgbGFzdCBodW5rIChydGQxNnh4
LmR0c2kpIGRpZG4ndCBhcHBseSB3aXRoIGdpdC1hbSBvciBwYXRjaCAtcDEsIG5vdAo+Pj4gc3Vy
ZSB3aHkuIEkgaGF2ZSBtYW51YWxseSBjb3BpZWQgdGhlIGZpbGUgaW50byBwbGFjZSBhbmQgZml4
ZWQgdXAgc29tZSBtb3JlCj4+PiBuaXRzIGJlbG93OgpbLi4uXQo+PiBJJ2xsIGNvcnJlY3QgdGhl
c2UgbWlzdGFrZXMgaW4gbmV4dCB2ZXJzaW9uLgo+IAo+IE5vIG5lZWQgZm9yIGEgdjQsIEkgYWxy
ZWFkeSBoYXZlIGl0IHF1ZXVlZC4KCkFuZCBhcHBsaWVkIHRvIGxpbnV4LXJlYWx0ZWsuZ2l0IHY1
LjYvZHQgbm93OgoKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9n
aXQvYWZhZXJiZXIvbGludXgtcmVhbHRlay5naXQvbG9nLz9oPXY1LjYvZHQKClRoYW5rcywKQW5k
cmVhcwoKLS0gClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSApNYXhmZWxkc3Ry
LiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlcgpIUkIg
MzY4MDkgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
