Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F3035811
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 09:51:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d3VCO69gr5y46QiZ8JuGeVJ5QEYKT5YHO1hgB6H3zVA=; b=VpK/idQOBahl72rjJ8+QHbS4/
	B77DhSyJBDTds6uCxcVvHseILx3DhJFA9dgxHjXEu0vusb0EQZ5BRBIImet4bHG9x6Dg+VHrHHo35
	oAgG1xO4YCEd6O3+XqGVZpsvZKZpuswC7GyTsVTF9f/5f9EgT8e/KXnDWEcSVTQYt8fQBUCfw00I2
	Y/E5VZ4n9VO2DrdfdaaZ6gxl2OmDILcrygtCGnoK2sbRmlG/srWR8GMe4pOG/+NL1pgTc1CVM26Vc
	ZvaZmOGj2D0Rd5dJaM13hz9yNGDCag5X2QBecH/4AxyOr4AKpWg8IqmiNwNaCn82q/h99F3Llj+B4
	qB8pq8IgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYQhU-0003E4-70; Wed, 05 Jun 2019 07:51:12 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYQhL-0003DM-PK
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 07:51:05 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x557p12c084053;
 Wed, 5 Jun 2019 02:51:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559721061;
 bh=Uii2Xjx5BpE3QqLNIntmpZQ4yu4iSLNPZaKQtbxCiAY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Hc88SVJme67yYSFUQ8AZ4LQgi9Hmix2GgByP9AO6xlpDX7E+/b6lUai8mZ8R4+9Pu
 TxFisOHqqlmSdRsUj8CYvFRgXNC90okDCcntgmQd356oZtxFInbWdtIUstOHRk678P
 UINevnyr1FUuzPXtxSBrqieqzT/FiyFCxya3mUQc=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x557p1Lt115807
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 5 Jun 2019 02:51:01 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 5 Jun
 2019 02:51:00 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 5 Jun 2019 02:51:00 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x557owC0084384;
 Wed, 5 Jun 2019 02:50:59 -0500
Subject: Re: [PATCHv2 0/5] clk: keystone: clock optimizations / fixes
To: <santosh.shilimkar@oracle.com>, <linux-clk@vger.kernel.org>,
 <sboyd@kernel.org>, <mturquette@baylibre.com>, <ssantosh@kernel.org>,
 <nm@ti.com>
References: <1559049024-30872-1-git-send-email-t-kristo@ti.com>
 <7d97db9a-71fd-0c44-a4ef-ef4d726cdb20@oracle.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <a0f19a9a-e06a-324b-82fe-ec0024f56fe0@ti.com>
Date: Wed, 5 Jun 2019 10:50:57 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <7d97db9a-71fd-0c44-a4ef-ef4d726cdb20@oracle.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_005103_876740_3B9271C8 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDQvMDYvMjAxOSAyMDo1NSwgc2FudG9zaC5zaGlsaW1rYXJAb3JhY2xlLmNvbSB3cm90ZToK
PiBPbiA1LzI4LzE5IDY6MTAgQU0sIFRlcm8gS3Jpc3RvIHdyb3RlOgo+PiBIaSwKPj4KPj4gVGhp
cyBpcyBhIHJlLWJhc2UgLyByZS1zcGluIG9mIHRoZSBLZXlzdG9uZSBjbG9jayBvcHRpbWl6YXRp
b24gc2VyaWVzIAo+PiBbMV0uCj4+Cj4+IENoYW5nZXMgZnJvbSB2MToKPj4gLSByZWJhc2VkIG9u
IHRvcCBvZiA1LjItcmMxCj4+IC0gYWRkZWQgc3VwcG9ydCBmb3IgY2xrLWlkcyAyNTUrCj4+IC0g
Y2hhbmdlZCBwYXRjaCAjMyB0byBwYXJzZSBhbHNvICdhc3NpZ25lZC1jbG9ja3MnIGluIGFkZGl0
aW9uIHRvIAo+PiAnY2xvY2tzJwo+PiDCoMKgIERUIG5vZGVzIG9ubHkuIFRoaXMgYWxsb3dzIGF1
dG9tYXRpYyAoRFQgYmFzZWQpIHByb2dyYW1taW5nIG9mIGNsb2Nrcwo+PiDCoMKgIHRoYXQgYXJl
IG5vdCBkaXJlY3RseSB0b3VjaGVkIGJ5IGFueSBkcml2ZXIuCj4+Cj4+IFBsZWFzZSBub3RlIHRo
YXQgdGhlcmUgaXMgaGFyZCBkZXBlbmRlbmN5IGJldHdlZW4gcGF0Y2hlcyA0ICYgNSwgcGF0Y2gg
IzUKPj4gbXVzdCBiZSBhcHBsaWVkIGFmdGVyIHBhdGNoICM0LCBvdGhlcndpc2UgYmFkIHRoaW5n
cyB3aWxsIGhhcHBlbiAKPj4gKGJhc2ljYWxseQo+PiBib290IGJyZWFrcy4pIFRoZSBjYXN0IG1h
Z2ljIGluIHBhdGNoICM0IGlzIGRvbmUgYWxzbyBzbyB0aGF0IHRoaXMgb3JkZXIKPj4gb2YgcGF0
Y2hlcyBjYW4gYmUgdXNlZCBhbmQgYmlzZWN0YWJpbGl0eSBpcyByZXRhaW5lZC4KPj4KPiBBY2tl
ZC1ieTogU2FudG9zaCBTaGlsaW1rYXIgPHNzYW50b3NoQGtlcm5lbC5vcmc+CgpUaGFua3MgU2Fu
dG9zaCwKClN0ZXBoZW4sIGFyZSB5b3UgZ29pbmcgdG8gYmUgcGlja2luZyB0aGVzZSB1cCBkaXJl
Y3RseSBvciBkbyB5b3Ugd2FudCBtZSAKdG8gc2VuZCBhIHB1bGwtcmVxPwoKLVRlcm8KLS0KVGV4
YXMgSW5zdHJ1bWVudHMgRmlubGFuZCBPeSwgUG9ya2thbGFua2F0dSAyMiwgMDAxODAgSGVsc2lu
a2kuIFktdHVubnVzL0J1c2luZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlwYWlra2EvRG9taWNpbGU6
IEhlbHNpbmtpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
