Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD72B1BA1B8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 12:52:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h9U4NqVhDwod+BHNtK6ZxBx/4yQL6rT71u6yiqAMoCE=; b=Qo32LmJSrVo0On1vZgCQQSQb5
	amTIRWY12/cuReWNLHQ93NfD3Bk/kZSZlc5IWGm7iuT6b1fIP8gdqDH5Vb549C2NqV6hUjtef8ni0
	dxmQRK3hWHA+kTpTWNgYH/sBHV2ymfMql3dtxr3E0kezUNf+EZOX+Q/admUo29OO4zjJ7+1u6jcn/
	VkFMYWFL5JLZzW1ywkROvmx07IeLbFbjCt3zq5EyC5p+XTq9gqWTe6C269PoPqifN50LU2CBszhay
	4ZLDls6Sgbxvdc7QwgltSNGu9tsvfwOz/NolYbcD1+Fb9Uo27Ew492GhBjsiSRmJtnAorHLOo4C+z
	ZX3b0FStg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT1Mh-00028w-2W; Mon, 27 Apr 2020 10:51:55 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT1MV-00027z-JS
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 10:51:44 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03RApfpa004006;
 Mon, 27 Apr 2020 05:51:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587984702;
 bh=Cjngpto1bdxfvbm6mcOPybZ71JNeca68YPH88ilXTZE=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=yAtqkR2QOYabchegIZi8qh8hV31s/Ijsm8pVsg4EYazDw6/FPW+iOT0W6S7mdaBqf
 6HKyBJu9gSWCKk0Jm+/HPBjLQNi6CBPrO/lH1To6p7AJ2NVbQgfT7gdrQPPlc4dX4s
 yDQ8urqjUarxV4zRok06Vpec9cpoDwbza+XyHJVM=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03RApfk4089452
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 27 Apr 2020 05:51:41 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 27
 Apr 2020 05:51:41 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 27 Apr 2020 05:51:41 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03RApdJC027155;
 Mon, 27 Apr 2020 05:51:40 -0500
Subject: Re: [PATCH 2/3] arm64: dts: ti: k3-j721e-main.dtsi: Add DSS node
To: Jyri Sarha <jsarha@ti.com>, Tero Kristo <t-kristo@ti.com>, Nishanth Menon
 <nm@ti.com>, Rob Herring <robh+dt@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20200422091512.950-1-tomi.valkeinen@ti.com>
 <20200422091512.950-2-tomi.valkeinen@ti.com>
 <ade3a177-f060-bc40-bcc1-494093e3071d@ti.com>
 <47b7f858-a8d9-1c3b-4dca-2cc493f6730f@ti.com>
From: Tomi Valkeinen <tomi.valkeinen@ti.com>
Message-ID: <fa497e8d-7911-5f3d-cf91-347370f8edaa@ti.com>
Date: Mon, 27 Apr 2020 13:51:39 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <47b7f858-a8d9-1c3b-4dca-2cc493f6730f@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_035143_680365_E405B1BD 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjcvMDQvMjAyMCAxMzozNywgSnlyaSBTYXJoYSB3cm90ZToKPiBPbiAyNy8wNC8yMDIwIDEz
OjA5LCBUZXJvIEtyaXN0byB3cm90ZToKPj4+ICvCoMKgwqDCoMKgwqDCoCBzdGF0dXMgPSAiZGlz
YWJsZWQiOwo+Pgo+PiBBZ2Fpbiwgd2h5IGRpc2FibGVkIGJ5IGRlZmF1bHQ/Cj4+Cj4gCj4gdGlk
c3MgZGV2aWNlIGlzIG5vdCBmdW5jdGlvbmFsIHdpdGhvdXQgYSBkZWZpbmVkIHZpZGVvLXBvcnQu
IFRoZSBkcml2ZXIKPiBpcyBub3QgaW1wbGVtZW50ZWQgaW4gYSB3YXkgdGhhdCBpdCB3b3VsZCBo
YW5kbGUgYSBicm9rZW4gY29uZmlndXJhdGlvbgo+IGdyYWNlZnVsbHkuCgpUaGVuIHdlIG5lZWQg
dG8gZml4IGl0LiBUaGUgZHJpdmVyIHNob3VsZCBoYW5kbGUgdGhlIGNhc2Ugd2hlcmUgdGhlcmUg
YXJlIG5vIHBvcnRzIGRlZmluZWQganVzdCBmaW5lLgoKICBUb21pCgotLSAKVGV4YXMgSW5zdHJ1
bWVudHMgRmlubGFuZCBPeSwgUG9ya2thbGFua2F0dSAyMiwgMDAxODAgSGVsc2lua2kuClktdHVu
bnVzL0J1c2luZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlwYWlra2EvRG9taWNpbGU6IEhlbHNpbmtp
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
