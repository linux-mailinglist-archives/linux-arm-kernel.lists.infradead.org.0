Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D65DC1C0E01
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 08:25:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zRDI2C+5oPLCakrqV+MciUGwcJN6JSmVMg7yROqLpEI=; b=OaaadzEquTE1+8
	rZvJZ0w4FTwFDYCNE3gl5ONMzcG9IgZCwPS0dugZR0XEs/cwQXV9fm4Udf+Nyi7OuPJv6psJTOFfc
	IE+L/S0/IXXqwc/nlv9vt18nFpL5IBRvguEeTUufKavHRj7JJI/Kij2Fkywnh0Z8EtrQCu2DFLRbU
	OTn0w8HFPcRa54NAHgu0KK0rsCAQ6TOL/PZemz35cXdVrhx9e82oQzjjqLtYrWthug5d4IIHJLeRL
	ICw9b1B629AEVh8Lplvp4czHI8Z+xfD1joBmp/hhdTS8pBpxNQ8DmvIIqSzHC6z8U9VV/5Rc8i7d7
	m0j3OERuWwprrXKUg4Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUP7A-0000Tu-LW; Fri, 01 May 2020 06:25:36 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUP6g-0007nv-VY; Fri, 01 May 2020 06:25:08 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0416OugS002304;
 Fri, 1 May 2020 01:24:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588314296;
 bh=73tKc+ETldbzW3BAv+WqBS3JLHEX+2BjpQ2Ml/mwjug=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=R4/mBC6kwGoQRi05Yhi1rKoejzpPdnlORsNlI7tr+U7wFENcLmdHh/64KI6fgNYi2
 gILYM0SHFEilB+djh+W6ZBS0ACv/F9BdxamdVqS4qQbJ6NgvB4Sda3kiGOoQUT9wSM
 77IZUgD/WDNj/vRRotfRku3RpHU5JfJ4CaYvj6as=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0416OunQ084531
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 1 May 2020 01:24:56 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 1 May
 2020 01:24:56 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 1 May 2020 01:24:56 -0500
Received: from [10.250.149.43] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0416Orm7064342;
 Fri, 1 May 2020 01:24:54 -0500
Subject: Re: [PATCH] mtd: cfi_cmdset_0001: Support the absence of protection
 registers
To: Catalin Marinas <catalin.marinas@arm.com>, Jean-Philippe Brucker
 <jean-philippe@linaro.org>
References: <20200417142325.2931423-1-jean-philippe@linaro.org>
 <20200430163245.GK2717@gaia>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <0159fa15-926a-05d3-ce5f-917b9af87c12@ti.com>
Date: Fri, 1 May 2020 11:54:53 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200430163245.GK2717@gaia>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_232507_180047_BF893C99 
X-CRM114-Status: GOOD (  10.75  )
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
Cc: richard@nod.at, sudeep.holla@arm.com, linux-mtd@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, miquel.raynal@bootlin.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiA0LzMwLzIwMjAgMTA6MDIgUE0sIENhdGFsaW4gTWFyaW5hcyB3cm90ZToKPiBPbiBG
cmksIEFwciAxNywgMjAyMCBhdCAwNDoyMzoyNlBNICswMjAwLCBKZWFuLVBoaWxpcHBlIEJydWNr
ZXIgd3JvdGU6Cj4+IFRoZSBmbGFzaCBjb250cm9sbGVyIGltcGxlbWVudGVkIGJ5IHRoZSBBcm0g
QmFzZSBwbGF0Zm9ybSBiZWhhdmVzIGxpa2UKPj4gdGhlIEludGVsIFN0cmF0YUZsYXNoIEozIGRl
dmljZSwgYnV0IG9taXRzIHNldmVyYWwgZmVhdHVyZXMuIEluCj4+IHBhcnRpY3VsYXIgaXQgZG9l
c24ndCBpbXBsZW1lbnQgYSBwcm90ZWN0aW9uIHJlZ2lzdGVyLCBzbyAiTnVtYmVyIG9mCj4+IFBy
b3RlY3Rpb24gcmVnaXN0ZXIgZmllbGRzIiBpbiB0aGUgUHJpbWFyeSBWZW5kb3ItU3BlY2lmaWMg
RXh0ZW5kZWQKPj4gUXVlcnksIGlzIDAuCj4+Cj4+IFRoZSBJbnRlbCBTdHJhdGFGbGFzaCBKMyBk
YXRhc2hlZXQgb25seSBsaXN0cyAxIGFzIGEgdmFsaWQgdmFsdWUgZm9yCj4+IE51bVByb3RlY3Rp
b25GaWVsZHMuIEl0IGRlc2NyaWJlcyB0aGUgZmllbGQgYXM6Cj4+Cj4+IAkiTnVtYmVyIG9mIFBy
b3RlY3Rpb24gcmVnaXN0ZXIgZmllbGRzIGluIEpFREVDIElEIHNwYWNlLgo+PiAJ4oCcMDBoLOKA
nSBpbmRpY2F0ZXMgdGhhdCAyNTYgcHJvdGVjdGlvbiBieXRlcyBhcmUgYXZhaWxhYmxlIgo+Pgo+
PiBXaGlsZSBhIHZhbHVlIG9mIDAgbWF5IGFyZ3VhYmx5IG5vdCBiZSBhcmNoaXRlY3R1cmFsbHkg
dmFsaWQsIHRoZQo+PiBkcml2ZXIncyBjdXJyZW50IGJlaGF2aW9yIGlzIGNlcnRhaW5seSB3cm9u
ZzogaWYgTnVtUHJvdGVjdGlvbkZpZWxkcyBpcwo+PiAwLCByZWFkX3ByaV9pbnRlbGV4dCgpIGFk
ZHMgYSBuZWdhdGl2ZSB2YWx1ZSB0byB0aGUgdW5zaWduZWQgZXh0cmFfc2l6ZSwKPj4gYW5kIGVu
ZHMgdXAgaW4gYW4gaW5maW5pdGUgbG9vcC4KPj4KPj4gRml4IGl0IGJ5IGlnbm9yaW5nIGEgTnVt
UHJvdGVjdGlvbkZpZWxkcyBvZiAwLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBKZWFuLVBoaWxpcHBl
IEJydWNrZXIgPGplYW4tcGhpbGlwcGVAbGluYXJvLm9yZz4KPiAKPiBJZiB5b3UgbmVlZCBhbm90
aGVyIGNvbmZpcm1hdGlvbjoKPiAKPiBUZXN0ZWQtYnk6IENhdGFsaW4gTWFyaW5hcyA8Y2F0YWxp
bi5tYXJpbmFzQGFybS5jb20+Cj4gCgpBcHBsaWVkIHRvIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcv
cHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L210ZC9saW51eC5naXQgY2ZpL25leHQKClRoYW5rcwpW
aWduZXNoCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
