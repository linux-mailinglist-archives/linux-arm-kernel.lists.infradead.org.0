Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C56B1BA188
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 12:41:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JyNTxSIrDLHIBSTBje+vx0RhVulIDXDKHCMP+xQ8d3w=; b=Jx/zYIJTLRstY0w0bcUHs/Ckn
	WTzFBYD7Q//5ho6hR6umn5mY9iVRn/ZiOBCTRZ31s583WtcPfme1U3gOfiQHRxVN3NSrXtN7w3Uob
	rYsG/eDIO+9KmGiW90Je3tUdJRNoTkiBslLvKBQXOqSCBjjLVzSCgkanJhY6zmHfUJwffi5oaMaFr
	FRDwxG4zlkJdJBHcAxlg4dyBLfgdfeqi7v8eqr9JxO1XSJ55a2e4NgGZcKHoC2wP2xUIEGq3TEok5
	hjiQmYKdcNljmdy9hG3XqGjGCRhZ37FRvROHynDmqPT6OMpRuVRAesqufocqXb6WBtVsP5yAiSie1
	w3RihRKRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT1CR-0002mq-G6; Mon, 27 Apr 2020 10:41:19 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT1CF-0002mO-Ld
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 10:41:08 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03RAf6ME098168;
 Mon, 27 Apr 2020 05:41:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587984066;
 bh=+e9snjuVn8/9SAIvEDXDG4BktGSSOERgBnlvNMxv+ZU=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=ZFzjLXB4pT1g/ASFlNO+oxvU14by/GfQqc+5rQb1XLLTe/zWsxnu75t2+Ihzi6Y5E
 SCsy52iQSNX1G6QgaGoTXEri2PqJQ6pjYnXWnh3hJ1AEPDMCEJh/seAsIAqjYqXues
 AIO2Hdk8qmfX75Dt1AKvj9GLN7CLxWzxZ0zqBNFE=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03RAf6Hk074046
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 27 Apr 2020 05:41:06 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 27
 Apr 2020 05:41:05 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 27 Apr 2020 05:41:06 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03RAf337009038;
 Mon, 27 Apr 2020 05:41:04 -0500
Subject: Re: [PATCH 2/3] arm64: dts: ti: k3-j721e-main.dtsi: Add DSS node
To: Jyri Sarha <jsarha@ti.com>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Nishanth Menon <nm@ti.com>, Rob Herring <robh+dt@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20200422091512.950-1-tomi.valkeinen@ti.com>
 <20200422091512.950-2-tomi.valkeinen@ti.com>
 <ade3a177-f060-bc40-bcc1-494093e3071d@ti.com>
 <47b7f858-a8d9-1c3b-4dca-2cc493f6730f@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <df93da78-132a-d02e-6561-5bb5fdfe7e53@ti.com>
Date: Mon, 27 Apr 2020 13:41:02 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <47b7f858-a8d9-1c3b-4dca-2cc493f6730f@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_034107_747790_0C21D6EE 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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
YW5kbGUgYSBicm9rZW4gY29uZmlndXJhdGlvbgo+IGdyYWNlZnVsbHkuCgpXaGF0L3doZXJlL3do
ZW4gaXMgdGhlIHZpZGVvLXBvcnQgZ29pbmcgdG8gYmUgZGVmaW5lZCB0aGVuPyBJcyB0aGlzIApn
b2luZyB0byBiZSBkb25lIGluIGFuIG92ZXJsYXk/CgotVGVybwotLQpUZXhhcyBJbnN0cnVtZW50
cyBGaW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4gWS10dW5udXMv
QnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
