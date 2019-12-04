Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04AF6112A03
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 12:20:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vwmh4n62HjoA/+lBNKpDdDJ6FFwt1njBIbe+qZX6ay8=; b=Le1EIVQ6F/pJBbY4UW+2kPPcP
	jzWhJI1fDJ5LjYE3bpOcXk6LApQwBQj3CRJdU6xitrMASEnF0cN9tO09YHKg7k1XE+iUIVuwUOHl0
	sO9oxtEOdLMZmyvY+fKWeHphmmcS1Exfttieq57597AXB11ys6W2xbuLiWKiQzlQ2W9hLMI5gAoWy
	ZBFSqw94AxBD6JfIXQfIOPEFjLP45pWasZOnpUilF1RzBGkxtu6mnMyUGgQFG80jDRxrKkOBDDg3u
	CUNKXwJ4RbpGavKw46mmeaFTPKRkxGrrHWlVuX6lcQvthgqEFGPLG+eDmNjgmc0H/4hT8VinZYYPr
	9jEAPK0+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icShp-0001kI-IP; Wed, 04 Dec 2019 11:20:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icShi-0001im-Tq; Wed, 04 Dec 2019 11:20:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5B02D31B;
 Wed,  4 Dec 2019 03:20:20 -0800 (PST)
Received: from [192.168.1.124] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A28093F68E;
 Wed,  4 Dec 2019 03:20:18 -0800 (PST)
Subject: Re: perf record doesn't work on rtd129x SoC
To: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>,
 Wang YanQing <udknight@gmail.com>
References: <20191204045559.GA10458@udknight>
 <f90748d0-8112-3aa8-0c88-e35a8d6e72d3@suse.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <1b2d2bc3-afcf-02c3-ccd6-e2a227c23fd3@arm.com>
Date: Wed, 4 Dec 2019 11:20:14 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <f90748d0-8112-3aa8-0c88-e35a8d6e72d3@suse.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_032023_010413_E0CE79BA 
X-CRM114-Status: GOOD (  19.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-realtek-soc@lists.infradead.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 linux-soc@vger.kernel.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0xMi0wNCA3OjI4IGFtLCBBbmRyZWFzIEbDpHJiZXIgd3JvdGU6Cj4gSGkgWWFuUWlu
ZywKPiAKPiArIExBS01MICsgTWFyayArIFdpbGwKPiAKPiBBbSAwNC4xMi4xOSB1bSAwNTo1NSBz
Y2hyaWViIFdhbmcgWWFuUWluZzoKPj4gSSB1c2UgInBlcmYgcmVjb3JkIiB0byBkZWJ1ZyBwZXJm
b3JtYW5jZSBpc3N1ZSBvbiBSVEQxMjk2IFNPQywgaXQgZG9lcyd0IHdvcmssIGJ1dAo+PiB0aGUg
InBlcmYgc3RhdCIgaXMgb2shCj4gCj4gVGhhbmtzIGZvciB0aGUgcmVwb3J0IC0gd2hpY2ggYm9h
cmQsIGJyYW5jaCBhbmQgKGJhc2UpIHRhZyBhcmUgeW91Cj4gdGVzdGluZyBhZ2FpbnN0PyBBbmQg
YXJlIHlvdSBidWlsZGluZyBwZXJmIHlvdXJzZWxmIGZyb20ga2VybmVsIHNvdXJjZXMsCj4gb3Ig
YXJlIHlvdSB1c2luZyBzb21lIGRpc3RybyBwYWNrYWdlPwo+IAo+IEkgb25seSBoYXZlIEJ1c3li
b3ggaW4gbXkgaW5pdHJkIG9uIERTNDE4OyBJIGhhdmUgbm90IHRlc3RlZCBwZXJmLgo+IAo+PiBB
ZnRlciBzb21lIGRpZyBpbiB0aGUga2VybmVsLCBJIGZpbmQgdGhlIHJlYXNvbiBpcyBubyBwbXUg
b3ZlcmZsb3cgaW50ZXJydXB0LCBJIHRoaW5rCj4+IGJlbG93IHBtdSBjb25maWd1cmF0aW9uIGlz
bid0IHJpZ2h0IGZvciBSVEQxMjk2Ogo+PiAiCj4+ICAgICAgICAgIGFybV9wbXU6IGFybS1wbXUg
ewo+PiAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiYXJtLGNvcnRleC1hNTMtcG11IjsK
Pj4gICAgICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgNDggSVJRX1RZUEVfTEVW
RUxfSElHSD47Cj4+ICAgICAgICAgIH07Cj4+ICIKPj4KPj4gV2UgbmVlZCA0IFBNVSBTUEkgZm9y
IFJURDEyOTYgKDQgY29yZXMpLCBhbmQgSSBndWVzcyB0aGUgNDggaXNuJ3QgcmlnaHQgdG9vLgo+
IAo+IE5vdGUgdGhhdCBhYm92ZSBydGQxMjl4LmR0c2kgc25pcHBldCBpcyBub3QgY29tcGxldGUu
IFNlZSBydGQxMjk2LmR0c2k6Cj4gCj4gJmFybV9wbXUgewo+IAlpbnRlcnJ1cHQtYWZmaW5pdHkg
PSA8JmNwdTA+LCA8JmNwdTE+LCA8JmNwdTI+LCA8JmNwdTM+Owo+IH07CgpUaGF0IGRvZXNuJ3Qg
aGVscCBtdWNoLCBzaW5jZSA0IGFmZmluaXRpZXMgZm9yIG9uZSBTUEkgaXMgcmF0aGVyIApub25z
ZW5zaWNhbC4KCj4gNDggYW5kIGhpZ2gvNCBtYXRjaCB3aGF0IEkgc2VlIGluIHRoZSBsYXRlc3Qg
QlNQOgo+IAo+IGh0dHBzOi8vZ2l0aHViLmNvbS9CUEktU0lOT1ZPSVAvQlBJLU00LWJzcC9ibG9i
L21hc3Rlci9saW51eC1ydGsvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOXgvcnRk
LTEyOTYuZHRzaSNMMTE2Cj4gCj4+IEFueSBzdWdnZXN0aW9uIGlzIHdlbGNvbWUuCj4+Cj4+IFRo
YW5rcyEKPiAKPiBUaGUgb25seSBkaWZmZXJlbmNlIEkgc2VlIGlzICJhcm0sY29ydGV4LWE1My1w
bXUiIHZzLiAiYXJtLGFybXY4LXBtdXYzIi4KPiBCeSBteSByZWFkaW5nIG9mIGFyY2gvYXJtNjQv
a2VybmVsL3BlcmZfZXZlbnQuYyB0aGUgb25seSBkaWZmZXJlbmNlCj4gYmV0d2VlbiB0aGUgdHdv
IHNob3VsZCBiZSB0aGUgbmFtZSBhbmQgYW4gZXh0cmEgY2FjaGVfbWFwLiBZb3UgY291bGQgdHJ5
Cj4gdGhlIG90aGVyIGNvbXBhdGlibGUgc3RyaW5nIGluIHlvdXIgLmR0cywgYnV0IEkgZG91YnQg
aXQnbGwgaGVscC4KPiAKPiBIb3BlZnVsbHkgdGhlIFJlYWx0ZWsgb3IgQXJtIGd1eXMgY2FuIHNo
ZWQgc29tZSBsaWdodC4KCklmIHRoZSBTb0MgcmVhbGx5IGhhcyBhbGwgNCBvdmVyZmxvdyBpbnRl
cnJ1cHRzIGNvbWJpbmVkIGludG8gYSBzaW5nbGUgClNQSSBsaW5lLCB0aGVuIHNhbXBsaW5nIGp1
c3QgaXNuJ3QgZ29pbmcgdG8gYmUgc3VwcG9ydGVkIC0gaXQncyAKdW5yZWFzb25hYmx5IGRpZmZp
Y3VsdCB0byBoYW5kbGUgb3ZlcmZsb3cgd2hlbiB0aGUgSVJRIG1heSBiZSB0YWtlbiBvbiAKdGhl
IHdyb25nIENQVS4KClJvYmluLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
