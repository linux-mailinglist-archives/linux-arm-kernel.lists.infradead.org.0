Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D65FDC20FE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 14:55:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2CvU7QVqXFX8EF+uo77Jq14jhjBVv/k9zMKBVm73qDo=; b=KFVtcOaC7f4xS/
	EH3Nsc4oqJ4ZqkLHpjLlVoA6G8RY7o14QGyYhZgNl2g+uJzKglap8QmxbinEaEncwvNK2F60RtS4n
	p6rYP+RTnxESu0wwKI6C/KVGYIbUSHZtWporE8GikISskHsRn246Y2tWph52m1ACI18fhTcgdL80c
	nYDMMvbXC2fxWBBan4lrtk1R9La5xzu3oDAM9TF7cNy00iMqPhMl0+wpRRxJz///SAjkn/brKOYOn
	XOTLdIyP+QfmKcRKQfOOMflbXpEgk1/mzc0Pzh2eaaRmiLOxvUa9R27q9eQFxc2xHD/n/vK9dP6C+
	wKXcfs52Skjw8ZzfMNXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEvCt-0006Mo-Ib; Mon, 30 Sep 2019 12:55:15 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEvCd-0006Lo-UG
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 12:55:01 +0000
Received: by mail-wr1-x443.google.com with SMTP id n14so11179095wrw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 05:54:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=6mCv5fi+GRWpdJskKXORsVKeMYlozu0f/SDuZJ27kK8=;
 b=o4m0k0ZWFgdgA6s3VsEERB+TNxTG0CvI2PRVkm3Je9EqeWNLbI4U750n58x/iRlC6i
 cwonjl4pIvyMo+hGfb7ytfWRYRQiIVvLa9QTECkj9LE/R/KSaunDjVITz3zI2qnOFdSB
 WxgVvCue7g7YFKbP/YsrmTGDIDNgldNZjxFw2qo1nCXgJkFw8d3QdE7sGlbHF7ARwntd
 L3uAXMueXWPxbQS3+bkyr+7vCV+zFe2mxnJHofcmi8TclWE+TF5w1lU5ISJHRLQWOt2K
 M1JQPM8BUkSeF/jJjHH7g2wbRlJZl40dJYjMom6KuHYAmBVUFpoZYFfkT96rMFrQTCyy
 lQuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6mCv5fi+GRWpdJskKXORsVKeMYlozu0f/SDuZJ27kK8=;
 b=cEWXhGx/3O3luOQcnDX+zmngslw2mA47CGCHRDnUUHndKK5RBX4XCGUR6yQk0qAe0I
 RG0LjEveh3S7FGHdQcq3qvMYbmEw9aggROJoxkNHezkllJTrRJo3SvNFA2cTlOnAdhxz
 9JjMFLw4Tlw2eWOa8DBFtEZsks1BiwMu2AhEiKgn1schIswM8/tiWuiAVhuk3r8u68K2
 5kLKQTPmOjVfq1HRuSgbPPv9oAOQegM34raSx+grXzn0LbZYeXv00vwm2eiV1zI0acjK
 YyHbwtk6Y2GjyTuaiHYyCLJ/PRGBLdkHC/bx5qqG+hTf9qN5Kh6akA4xV2+3tG0VqvZu
 kAUQ==
X-Gm-Message-State: APjAAAVbrKsmRtdDVfx9FOUiBTXZwr4IIUt8uzY+565araIdtsCcTVpm
 JkoJlrjsxVPsTox7KDxWkZk=
X-Google-Smtp-Source: APXvYqwUvwaVg/NEeDGQ5s3ewPwwOXZjrkE007ZG6fFaraB6M9/880T6xeJPoy8WFduAy81+EqvUig==
X-Received: by 2002:a5d:620d:: with SMTP id y13mr12587225wru.86.1569848098680; 
 Mon, 30 Sep 2019 05:54:58 -0700 (PDT)
Received: from [192.168.1.4] (ip-86-49-35-8.net.upcbroadband.cz. [86.49.35.8])
 by smtp.gmail.com with ESMTPSA id
 v64sm13868550wmf.12.2019.09.30.05.54.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Sep 2019 05:54:57 -0700 (PDT)
Subject: Re: [PATCH 00/11] of: dma-ranges fixes and improvements
To: Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20190927002455.13169-1-robh@kernel.org>
 <106d5b37-5732-204f-4140-8d528256a59b@gmail.com>
 <40bdf7cf-3bb1-24f8-844d-3eefbc761aba@arm.com>
From: Marek Vasut <marek.vasut@gmail.com>
Message-ID: <807a4f96-cbda-da4d-a3f1-2bfe5788105b@gmail.com>
Date: Mon, 30 Sep 2019 14:54:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <40bdf7cf-3bb1-24f8-844d-3eefbc761aba@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_055500_002068_FD37225D 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marek.vasut[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Oza Pawandeep <oza.oza@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 Simon Horman <horms+renesas@verge.net.au>,
 Frank Rowand <frowand.list@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gOS8zMC8xOSAyOjUyIFBNLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4gT24gMzAvMDkvMjAxOSAx
Mzo0MCwgTWFyZWsgVmFzdXQgd3JvdGU6Cj4+IE9uIDkvMjcvMTkgMjoyNCBBTSwgUm9iIEhlcnJp
bmcgd3JvdGU6Cj4+PiBUaGlzIHNlcmllcyBmaXhlcyBzZXZlcmFsIGlzc3VlcyByZWxhdGVkIHRv
ICdkbWEtcmFuZ2VzJy4gUHJpbWFyaWx5LAo+Pj4gJ2RtYS1yYW5nZXMnIGluIGEgUENJIGJyaWRn
ZSBub2RlIGRvZXMgY29ycmVjdGx5IHNldCBkbWEgbWFza3MgZm9yIFBDSQo+Pj4gZGV2aWNlcyBu
b3QgZGVzY3JpYmVkIGluIHRoZSBEVC4gQSBjb21tb24gY2FzZSBuZWVkaW5nIGRtYS1yYW5nZXMg
aXMgYQo+Pj4gMzItYml0IFBDSWUgYnJpZGdlIG9uIGEgNjQtYml0IHN5c3RlbS4gVGhpcyBhZmZl
Y3RzIHNldmVyYWwgcGxhdGZvcm1zCj4+PiBpbmNsdWRpbmcgQnJvYWRjb20sIE5YUCwgUmVuZXNh
cywgYW5kIEFybSBKdW5vLiBUaGVyZSdzIGJlZW4gc2V2ZXJhbAo+Pj4gYXR0ZW1wdHMgdG8gZml4
IHRoZXNlIGlzc3VlcywgbW9zdCByZWNlbnRseSBlYXJsaWVyIHRoaXMgd2Vla1sxXS4KPj4+Cj4+
PiBJbiB0aGUgcHJvY2VzcywgSSBmb3VuZCBzZXZlcmFsIGJ1Z3MgaW4gdGhlIGFkZHJlc3MgdHJh
bnNsYXRpb24uIEl0Cj4+PiBhcHBlYXJzIHRoYXQgdGhpbmdzIGhhdmUgaGFwcGVuZWQgdG8gd29y
ayBhcyB2YXJpb3VzIERUcyBoYXBwZW4gdG8gdXNlCj4+PiAxOjEgYWRkcmVzc2VzLgo+Pj4KPj4+
IEZpcnN0IDMgcGF0Y2hlcyBhcmUganVzdCBzb21lIGNsZWFuLXVwLiBUaGUgNHRoIHBhdGNoIGFk
ZHMgYSB1bml0dGVzdAo+Pj4gZXhoaWJpdGluZyB0aGUgaXNzdWVzLiBQYXRjaGVzIDUtOSByZXdv
cmsgaG93IG9mX2RtYV9jb25maWd1cmUoKSB3b3Jrcwo+Pj4gbWFraW5nIGl0IHdvcmsgb24gZWl0
aGVyIGEgc3RydWN0IGRldmljZSBjaGlsZCBub2RlIG9yIGEgc3RydWN0Cj4+PiBkZXZpY2Vfbm9k
ZSBwYXJlbnQgbm9kZSBzbyB0aGF0IGl0IHdvcmtzIG9uIGJ1cyBsZWFmIG5vZGVzIGxpa2UgUENJ
Cj4+PiBicmlkZ2VzLiBQYXRjaGVzIDEwIGFuZCAxMSBmaXggMiBpc3N1ZXMgd2l0aCBhZGRyZXNz
IHRyYW5zbGF0aW9uIGZvcgo+Pj4gZG1hLXJhbmdlcy4KPj4+Cj4+PiBNeSB0ZXN0aW5nIG9uIHRo
aXMgaGFzIGJlZW4gd2l0aCBRRU1VIHZpcnQgbWFjaGluZSBoYWNrZWQgdXAgdG8gc2V0IFBDSQo+
Pj4gZG1hLXJhbmdlcyBhbmQgdGhlIHVuaXR0ZXN0LiBOaWNvbGFzIHJlcG9ydHMgdGhpcyBzZXJp
ZXMgcmVzb2x2ZXMgdGhlCj4+PiBpc3N1ZXMgb24gUnBpNCBhbmQgTlhQIExheWVyc2NhcGUgcGxh
dGZvcm1zLgo+Pgo+PiBXaXRoIHRoZSBmb2xsb3dpbmcgcGF0Y2hlcyBhcHBsaWVkOgo+PiDCoMKg
wqDCoMKgwqAgaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wYXRjaC8xMTQ0ODcwLwo+PiDC
oMKgwqDCoMKgwqAgaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wYXRjaC8xMTQ0ODcxLwo+
IAo+IENhbiB5b3UgdHJ5IGl0IHdpdGhvdXQgdGhvc2UgYWRkaXRpb25hbCBwYXRjaGVzPyBUaGlz
IHNlcmllcyBhaW1zIHRvCj4gbWFrZSB0aGUgcGFyc2luZyB3b3JrIHByb3Blcmx5IGdlbmVyaWNh
bGx5LCBzdWNoIHRoYXQgd2Ugc2hvdWxkbid0IG5lZWQKPiB0byBhZGQgYW4gYWRkaXRpb25hbCBQ
Q0ktc3BlY2lmaWMgdmVyc2lvbiBvZiBhbG1vc3QgdGhlIHNhbWUgY29kZS4KClNlZW1zIHRvIHdv
cmsgZXZlbiB3aXRob3V0IHRob3NlLgoKLS0gCkJlc3QgcmVnYXJkcywKTWFyZWsgVmFzdXQKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
