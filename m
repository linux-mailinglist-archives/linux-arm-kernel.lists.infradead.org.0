Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D282138BBA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 07:18:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B/OVhcMSPVKGxe5XYQ4dQYPFJnw9zfA+nDC8FzC4Z/k=; b=ORMXfX0yV6agETzXueZZKV7Sy
	6f9L9zT6qjdu2qWRn8zel3fd1UyYNEkObIvV+3EjVc/3miTH30UvgsNY4npU4ZcKqpi7eShVBflR8
	WdCeJiwBOhfqDnTgWGMFqTzGiZP2bHn+rcKIMcFkkVh84FuJUcTlnPDbBZyMAzlQtz2o/q71QQUzF
	p0oJ0a82GJE0ZLdj07VRPq2MWj6vonVoHjPY5eAiQzXEkQc/Wu6BF+3We0vkrY7vTw6Fez1d6p0HN
	pYn725NTMvsY519XDlg0v93vgTTbsx1qDAqbGZuhctciPZVZk71IY6ndKVLxM5bX+xE8x4ra62a6f
	9V9+AxFpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqt3o-000358-0i; Mon, 13 Jan 2020 06:18:48 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqt3d-00034G-LW
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 06:18:39 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id AABD8CDEBF98212D63B5;
 Mon, 13 Jan 2020 14:18:25 +0800 (CST)
Received: from [127.0.0.1] (10.133.217.236) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0;
 Mon, 13 Jan 2020 14:18:15 +0800
Subject: Re: [RFC PATCH] arm64/ftrace: support dynamically allocated
 trampolines
To: Mark Rutland <mark.rutland@arm.com>
References: <20200109142736.1122-1-cj.chengjian@huawei.com>
 <20200109164858.GH3112@lakrids.cambridge.arm.com>
 <b0457ef0-f1b2-e258-b59d-aa9af8e48c5d@huawei.com>
 <20200110121234.GA31707@lakrids.cambridge.arm.com>
From: "chengjian (D)" <cj.chengjian@huawei.com>
Message-ID: <5fd602dd-a909-5209-56b6-39c7a34dfcff@huawei.com>
Date: Mon, 13 Jan 2020 14:18:14 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200110121234.GA31707@lakrids.cambridge.arm.com>
Content-Language: en-US
X-Originating-IP: [10.133.217.236]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_221837_875206_896730E5 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: xiexiuqi@huawei.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 bobo.shaobowang@huawei.com, duwe@lst.de, huawei.libin@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC8xLzEwIDIwOjEyLCBNYXJrIFJ1dGxhbmQgd3JvdGU6Cj4gT24gRnJpLCBKYW4gMTAs
IDIwMjAgYXQgMDc6Mjg6MTdQTSArMDgwMCwgY2hlbmdqaWFuIChEKSB3cm90ZToKPj4gT24gMjAy
MC8xLzEwIDA6NDgsIE1hcmsgUnV0bGFuZCB3cm90ZToKPj4+IE9uIFRodSwgSmFuIDA5LCAyMDIw
IGF0IDAyOjI3OjM2UE0gKzAwMDAsIENoZW5nIEppYW4gd3JvdGU6Cj4+Pj4gKwkvKgo+Pj4+ICsJ
ICogVXBkYXRlIHRoZSB0cmFtcG9saW5lIG9wcyBSRUYKPj4+PiArCSAqCj4+Pj4gKwkgKiBPTEQg
SU5TTlMgOiBsZHJfbCB4MiwgZnVuY3Rpb25fdHJhY2Vfb3AKPj4+PiArCSAqCWFkcnAJeDIsIHN5
bQo+Pj4+ICsJICoJbGRyCXgyLCBbeDIsIDpsbzEyOlxzeW1dCj4+Pj4gKwkgKgo+Pj4+ICsJICog
TkVXIElOU05TOgo+Pj4+ICsJICoJbm9wCj4+Pj4gKwkgKglsZHIgeDIsIDxmdHJhY2Vfb3BzPgo+
Pj4+ICsJICovCj4+Pj4gKwlvcF9vZmZzZXQgLT0gc3RhcnRfb2Zmc2V0X2NvbW1vbjsKPj4+PiAr
CWlwID0gKHVuc2lnbmVkIGxvbmcpdHJhbXBvbGluZSArIGNhbGxlcl9zaXplICsgb3Bfb2Zmc2V0
Owo+Pj4+ICsJbm9wID0gYWFyY2g2NF9pbnNuX2dlbl9ub3AoKTsKPj4+PiArCW1lbWNweSgodm9p
ZCAqKWlwLCAmbm9wLCBBQVJDSDY0X0lOU05fU0laRSk7Cj4+Pj4gKwo+Pj4+ICsJb3Bfb2Zmc2V0
ICs9IEFBUkNINjRfSU5TTl9TSVpFOwo+Pj4+ICsJaXAgPSAodW5zaWduZWQgbG9uZyl0cmFtcG9s
aW5lICsgY2FsbGVyX3NpemUgKyBvcF9vZmZzZXQ7Cj4+Pj4gKwlvZmZzZXQgPSAodW5zaWduZWQg
bG9uZylwdHIgLSBpcDsKPj4+PiArCWlmIChXQVJOX09OKG9mZnNldCAlIEFBUkNINjRfSU5TTl9T
SVpFICE9IDApKQo+Pj4+ICsJCWdvdG8gZnJlZTsKPj4+PiArCW9mZnNldCA9IG9mZnNldCAvIEFB
UkNINjRfSU5TTl9TSVpFOwo+Pj4+ICsJcGNfbGRyIHw9IChvZmZzZXQgJiBtYXNrKSA8PCBzaGlm
dDsKPj4+PiArCW1lbWNweSgodm9pZCAqKWlwLCAmcGNfbGRyLCBBQVJDSDY0X0lOU05fU0laRSk7
Cj4+PiBJIHRoaW5rIGl0IHdvdWxkIGJlIG11Y2ggYmV0dGVyIHRvIGhhdmUgYSBzZXBhcmF0ZSB0
ZW1wbGF0ZSBmb3IgdGhlCj4+PiB0cmFtcG9saW5lIHdoaWNoIHdlIGRvbid0IGhhdmUgdG8gcGF0
Y2ggaW4gdGhpcyB3YXkuIEl0IGNhbiBldmVuIGJlCj4+PiBwbGFjZWQgaW50byBhIG5vbi1leGVj
dXRhYmxlIFJPIHNlY3Rpb24sIHNpbmNlIHRoZSB0ZW1wbGF0ZSBzaG91bGRuJ3QgYmUKPj4+IGV4
ZWN1dGVkIGRpcmVjdGx5Lgo+PiBBIHNlcGFyYXRlIHRlbXBsYXRlICEKPj4KPj4gVGhpcyBtYXkg
YmUgYSBnb29kIHdheSwgYW5kIEkgdGhpbmsgdGhlIHBhdGNoaW5nIGhlcmUgaXMgdmVyeSBIQUNL
IHRvbyhOb3QKPj4gdmVyeSBmcmllbmRseSkuCj4+Cj4+IEkgaGFkIHRob3VnaHQgb2Ygb3RoZXIg
d2F5cyBiZWZvcmUsIHNpbWlsYXIgdG8gdGhlIG1ldGhvZCBvbiBYODZfNjQsCj4+IHJlbW92ZSB0
aGUgZnRyYWNlX2NvbW1vbigpLCBkaXJlY3RseSBtb2RpZnlpbmcKPj4gZnRyYWNlX2NhbGxlci9m
dHJhY2VfcmVnX2NhbGxlciwgV2Ugd2lsbCBvbmx5IG5lZWQgdG8gY29weSB0aGUgY29kZQo+PiBv
bmNlIGluIHRoaXMgd2F5LCBhbmQgdGhlc2UgaXMgbm8gbmVlZCB0byBtb2RpZnkgY2FsbCBmdHJh
Y2VfY29tbW9uIHRvCj4+IE5PUC4KPj4KPj4gVXNpbmcgYSB0cmFtcG9saW5lIHRlbXBsYXRlIHNv
dW5kcyBncmVhdC4gYnV0IHRoaXMgYWxzbyBtZWFucyB0aGF0IHdlCj4+IG5lZWQgdG8gYWludGFp
biBhIHRlbXBsYXRlKG9yIG1heWJlIHR3byB0ZW1wbGF0ZXM6IG9uZSBmb3IgY2FsbGVyLAo+PiBh
bm90aGVyIGZvciByZWdzX2NhbGxlcikuCj4+Cj4+IEhpLCBNYXJrLCB3aGF0IGRvIHlvdSB0aGlu
ayBhYm91dCBpdCA/Cj4gSSB0aGluayB0aGF0IGhhdmluZyB0d28gdGVtcGxhdGVzIGlzIGZpbmUu
IFdlIGNhbiBmYWN0b3IKPiBmdHJhY2VfY29tbW9uX3JldHVybiBpbnRvIGEgbWFjcm8gbWlycm9y
aW5nIGZ0cmFjZV9yZWdzX2VudHJ5LCBhbmQgSQo+IHN1c3BlY3Qgd2UgY2FuIHByb2JhYmx5IGZp
Z3VyZSBvdXQgc29tZSB3YXkgdG8gZmFjdG9yIHRoZSBjb21tb24KPiBwb3J0aW9uLgo+Cj4gVGhh
bmtzLAo+IE1hcmsuCj4KPiAuCgoKT0ssIEkgd2lsbCBkbyBpdC4KClRoYW5rIHlvdSwgTWFyay4K
CgoKIMKgIC0tQ2hlbmcgSmlhbgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
