Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A35E1C6AB0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 10:01:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YViXDtpUb7TyC536OjXjFhZSDW4Tgs6QWkfJc1/I0LM=; b=duFwChCvVFF0gzqXLfV/tXKoc
	IM1RQpccH5PgcibRvdsmXzPwTezA4uwJp7tsUNzoGWXeq4Qiral09QdpRRQx9OUPUnqr6qkO6Y/yc
	EPrKCJcKI7n/DpRgXpe0KqjtqerKoVOyHSL+sjOmntmphiqq7WrTZlJGCOiw8ST46BczE+OXzUsfx
	0oY95Ks2VHNPhL5VAEK4VckwXMnKw/K4OXF4LtbQ44lvm4YoEB2FE+o6ugCmkEzmScdcEIu2//bbw
	DDdt/dwixfmwVbTjnS3HqURHvVkYrDVIarEpB2saSZavZBPSxKpy5iHaktFuyvowrJZf0zyou9M39
	qrnxcSO3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWEzm-0006sH-0x; Wed, 06 May 2020 08:01:34 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWEzd-0006rH-0I
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 08:01:26 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04681AAp085965;
 Wed, 6 May 2020 03:01:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588752070;
 bh=fBYH/OX0qOF7iUC5jWzL2Vp1Y/k89aTRhZ5X4WhtbVQ=;
 h=Subject:To:References:From:CC:Date:In-Reply-To;
 b=SH5rp8H6na/BZ2COWCJ33YYXkVuSiZG9LAsdvD2sQ4mA6+y9W05Z7J64OJkPjkapV
 5xslt58ms22BNBr+0RKUUddBHlzz9nCamW3YypoxOLZGzZ2AcwXIT/nyHkrkQVWAgQ
 I6UGuipTdXpM/rUgxLt6xdVtepEkXb2wEE44O/wQ=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04681AEP016756
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 6 May 2020 03:01:10 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 6 May
 2020 03:01:09 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 6 May 2020 03:01:10 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 046818LP058281;
 Wed, 6 May 2020 03:01:08 -0500
Subject: Re: [RFC PATCH] dt-bindings: display: ti,tfp410.txt: convert to yaml
To: =?UTF-8?Q?Ricardo_Ca=c3=b1uelo?= <ricardo.canuelo@collabora.com>
References: <20200428092048.14939-1-ricardo.canuelo@collabora.com>
 <3e377c73-25a3-a7b3-0604-41c54d70039e@ti.com>
 <20200506072155.6dmj35zdnr3to5ib@rcn-XPS-13-9360>
From: Tomi Valkeinen <tomi.valkeinen@ti.com>
Message-ID: <1cee742a-c16a-fb32-5caa-c6ac71689ab9@ti.com>
Date: Wed, 6 May 2020 11:01:07 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200506072155.6dmj35zdnr3to5ib@rcn-XPS-13-9360>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_010125_150659_48ACDA5B 
X-CRM114-Status: GOOD (  16.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net,
 dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUmljYXJkbywKCk9uIDA2LzA1LzIwMjAgMTA6MjEsIFJpY2FyZG8gQ2HDsXVlbG8gd3JvdGU6
Cj4gSGkgVG9taSwgdGhhbmtzIGZvciByZXZpZXdpbmcgdGhlIHBhdGNoLgo+IAo+IE9uIG1hciAy
OC0wNC0yMDIwIDEyOjQ5OjI4LCBUb21pIFZhbGtlaW5lbiB3cm90ZToKPj4gSSBkb24ndCBxdWl0
ZSB1bmRlcnN0YW5kIHRoaXMuIFdlIGNhbm5vdCBoYXZlIG5lZ2F0aXZlIG51bWJlcnMgaW4gZHRz
IGZpbGVzPwo+PiBPciB3ZSBjYW4sIGJ1dCBkdF9iaW5kaW5nX2NoZWNrIGRvZXNuJ3QgaGFuZGxl
IHRoZW0gY29ycmVjdGx5PyBPciB0aGF0IGludDMyCj4+IGlzIG5vdCBzdXBwb3J0ZWQgaW4geWFt
bCBiaW5kaW5ncz8KPiAKPiBBRkFJQ1QsIHlvdSBjYW4gaGF2ZSBuZWdhdGl2ZSBudW1iZXJzIGlu
IGR0cyBmaWxlcyAoc2VlIFsxXSBhbmQgWzJdKSBhbmQKClRoaXMgaXMgYWxzbyBteSB1bmRlcnN0
YW5kaW5nIGFmdGVyIHNvbWUgZ29vZ2xpbmcuIEFuZCB0aGVyZSdzIGV2ZW4gb2ZfcHJvcGVydHlf
cmVhZF9zMzIoKSBpbiB0aGUgCmtlcm5lbC4KCj4gdGhlIERUIHNjaGVtYSBjZXJ0YWlubHkgc3Vw
cG9ydHMgc2lnbmVkIGludGVnZXJzLCBidXQgZHRfYmluZGluZ19jaGVjawo+IHNlZW1zIHRvIGlu
dGVycHJldCBhbGwgY2VsbHMgYXMgdW5zaWduZWQgMzJiaXQgaW50ZWdlcnMgYmVjYXVzZSB0aGF0
J3MKPiB3aGF0IHRoZXkgYXJlLCByZWFsbHkuIEluIGtlcm5lbCBjb2RlIHRoaXMgaXMgbm90IGEg
cHJvYmxlbSBiZWNhdXNlIHlvdQoKV2VsbCwgdGhpcyBpcyBpbiB0aGUgbml0cGljayBjYXRlZ29y
eSwgYW5kIG1heWJlIG5vdCBldmVuIHJlbGV2YW50LCBidXQgSSBkb24ndCB0aGluayB0aGF0J3Mg
CmNvcnJlY3QuIFRoZXkncmUganVzdCBiaXRzLiBTb21lIHBpZWNlcyBvZiBTVyBoYXBwZW4gdG8g
dXNlIHUzMiBjb250YWluZXJzIHRvIHN0b3JlIHRoZSBiaXRzLiBCdXQgCndoYXQgdGhlIGJpdHMg
bWVhbiBpcyBub3QgcmVsYXRlZCB0byB0aGUgY29udGFpbmVyLgoKPiBjYW4gY2FzdCB0aGUgdmFs
dWUgYmFjayB0byBhIHNpZ25lZCBpbnQgYmVmb3JlIHlvdSBydW4geW91ciBvd24gc2FuaXR5Cj4g
Y2hlY2tzIG9uIHRoZW0uCgpEb2Vzbid0IGFsbCB0aGlzIGp1c3QgcG9pbnQgdG8gYSBidWcgb3Ig
bWlzc2luZyBmZWF0dXJlIGluIGR0X2JpbmRpbmdfY2hlY2s/IFRoYXQncyBub3QgYSByZWFzb24g
dG8gCmNoYW5nZSB0aGUgQUJJLgoKICBUb21pCgotLSAKVGV4YXMgSW5zdHJ1bWVudHMgRmlubGFu
ZCBPeSwgUG9ya2thbGFua2F0dSAyMiwgMDAxODAgSGVsc2lua2kuClktdHVubnVzL0J1c2luZXNz
IElEOiAwNjE1NTIxLTQuIEtvdGlwYWlra2EvRG9taWNpbGU6IEhlbHNpbmtpCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
