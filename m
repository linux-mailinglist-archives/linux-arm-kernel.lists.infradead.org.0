Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3167F43B8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 10:43:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rb+/TKam65ILi2O5aBQ2UUZWgohjTzEgsaiJ40qPo/I=; b=EG0vtbU+Y1Dp371E7Uc7a+F9Z
	J71p4WHF987rp/C4qRgC3khSEIhfF+N+gbuxVvCLMWrAs8WjkuA1sHaJo9KZAv6Cz8MyhFecqLoSH
	8mut5xl/sSrMI28oPj+CwkYhvjFyoUCPPrxS2oLpaxBJJXVL7b0iLN5nbnQ9l6wS9fdApwJIpeq8O
	taYDRRzsWAVjzVsBe9Yg9glzbUo6QKOW4DIeZ2HCW4saK6DOWP1V20CXHDd5YFu6nka3Ozy/z2mAA
	15ZMVxQ193yR+tQwi3eDhhIwpY0SCCfBwaUcReZZ3Z4lIZPqKMDx57jiV4oTV0cY8hypq4ajYOJZ2
	LGtBBQ3Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT0nW-0007DU-Ob; Fri, 08 Nov 2019 09:43:18 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT0nM-0007CA-Gd
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 09:43:10 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xA89h7LY009895;
 Fri, 8 Nov 2019 03:43:07 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573206187;
 bh=zg2/YsSCFq1t3f5hSt6q03ptxWCQAUh7f+bW6P8stAs=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Y0L9JuW5ZD12pWvXHrDXdO7hfwos33vF1est1rE6Aj2KJ3W6fhvz+vhmZqygZb27/
 iTqIpafdZyBaUW983A3OFcs/e4aV+5fCrIRf0qpMEcgu8VJBwZOOXFK6klsFchO92E
 WD2ey3DLQCtVegH8qWi4tVpQdG7EmyqIC4F0ujhw=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA89h7Wd063362;
 Fri, 8 Nov 2019 03:43:07 -0600
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 8 Nov
 2019 03:42:51 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 8 Nov 2019 03:42:50 -0600
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA89h4eo032802;
 Fri, 8 Nov 2019 03:43:05 -0600
Subject: Re: [PATCH 0/2] [PATCH 0/2] arm64: dts: ti: k3-j721e: Add USB ports
To: Roger Quadros <rogerq@ti.com>, <nm@ti.com>
References: <20191028093730.23094-1-rogerq@ti.com>
 <d684ada8-5a98-b02e-be0b-c133e2f44b1f@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <5d1e233b-ada9-d5b6-f8fe-0922df8a5030@ti.com>
Date: Fri, 8 Nov 2019 11:43:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <d684ada8-5a98-b02e-be0b-c133e2f44b1f@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_014308_634045_287A68C2 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjkvMTAvMjAxOSAxMzozNCwgUm9nZXIgUXVhZHJvcyB3cm90ZToKPiBUZXJvLAo+IAo+IE9u
IDI4LzEwLzIwMTkgMTE6MzcsIFJvZ2VyIFF1YWRyb3Mgd3JvdGU6Cj4+IEhpLAo+Pgo+PiBUaGlz
IHNlcmllcyBlbmFibGVzIFVTQiAyLjAgc3VwcG9ydCBvbiBqNzIxZS1jb21tb24tcHJvYy1ib2Fy
ZC4KPj4KPj4gVGhlIFVTQjAgaXMgYXZhaWxhYmxlIGFzIGEgdHlwZS1DIHBvcnQuIEFsdGhvdWdo
IGl0IGlzIHN1cGVyLXNwZWVkCj4+IGNhcGFibGUsIHdlIGxpbWl0IGl0IHRvIGhpZ2gtc3BlZWQg
Zm9yIG5vdyB0aWxsIFNFUkRFUyBQSFkKPj4gc3VwcG9ydCBpcyBhZGRlZC4KPj4KPj4gVVNCMSBp
cyByb3V0ZWQgdmlhIG9uLWJvYXJkIFVTQjIuMCBodWIgdG8gMiB0eXBlLUEgcG9ydHMuIFVTQjEK
Pj4gaXMgdXNlZCBhcyBoaWdoLXNwZWVkIGhvc3QuCj4+Cj4+IENvbnRyb2xsZXIgc2lkZSBEVCBi
aW5kaW5nIGlzIGFwcHJvdmVkIFsxXS4gRHJpdmVyIFsyXSBpcyB5ZXQgdG8gYmUKPj4gaW4gVVNC
IHRyZWUuIFRoaXMgc2VyaWVzIGlzIHNhZmUgdG8gYmUgcGlja2VkIGZvciAtbmV4dC4KPiAKPiBE
cml2ZXIgaXMgbm93IGluIE1haW50YWluZXIncyB0cmVlLgo+IAo+IGh0dHBzOi8vZ2l0Lmtlcm5l
bC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2JhbGJpL3VzYi5naXQvY29tbWl0Lz9oPXRl
c3RpbmcvbmV4dCZpZD0zODdjMzU5Yjg0ZjcxY2EyOWMxYTlmYTI0MjkzYzY1YTI1N2Y2YmY1IAo+
IAo+IAo+Pgo+PiBbMV0gaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvMTAvMjUvMTAzNgo+PiBb
Ml0gaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvMTAvMjQvMzcxCj4+Cj4+IFNlcmllcyBpcyBi
YXNlZCBvbiB0b3Agb2YgVGVybydzIHRpLWszLW5leHQgYnJhbmNoLgoKUXVldWVkIHVwIHRvd2Fy
ZHMgNS41LCB0aGFua3MuCgotVGVybwoKPj4KPj4gY2hlZXJzLAo+PiAtcm9nZXIKPj4KPj4gUm9n
ZXIgUXVhZHJvcyAoMik6Cj4+IMKgwqAgYXJtNjQ6IGR0czogdGk6IGszLWo3MjFlLW1haW46IGFk
ZCBVU0IgY29udHJvbGxlciBub2Rlcwo+PiDCoMKgIGFybTY0OiBkdHM6IHRpOiBrMy1qNzIxZS1j
b21tb24tcHJvYy1ib2FyZDogQWRkIFVTQiBwb3J0cwo+Pgo+PiDCoCAuLi4vZHRzL3RpL2szLWo3
MjFlLWNvbW1vbi1wcm9jLWJvYXJkLmR0c8KgwqDCoMKgIHwgMzUgKysrKysrKysrKysKPj4gwqAg
YXJjaC9hcm02NC9ib290L2R0cy90aS9rMy1qNzIxZS1tYWluLmR0c2nCoMKgwqDCoCB8IDYwICsr
KysrKysrKysrKysrKysrKysKPj4gwqAgYXJjaC9hcm02NC9ib290L2R0cy90aS9rMy1qNzIxZS5k
dHNpwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAyICsKPj4gwqAgMyBmaWxlcyBjaGFuZ2VkLCA5NyBp
bnNlcnRpb25zKCspCj4+Cj4gCgotLQpUZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jr
a2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4gWS10dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1
MjEtNC4gS290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
