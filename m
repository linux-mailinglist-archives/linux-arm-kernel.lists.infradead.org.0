Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B75C4868CE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 20:31:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BDTQQMCEFHRclGktvOWpKZxMrQTangadBoe+LqKre9Q=; b=ullL/mN7TVCYn48YesS+V2rUo
	DMLqxnJ1lrESKFRoE9z0YowDxy+2SZ/79PsviQRy95Vs00jjxJnkebTQYWMAXfUau1q78PYVCQwqO
	JP702ZGcDTyB+8i1V1e6JZ6q6fwLNpl8b/C5Wpyg688A6816XNw6aajnSEdNaIGfEahWboflWXizh
	azuaylTKGvzhn5oSq9t3XeQbv8vp0fDkcyBDEUInEyLslvs0ukWCfxKynLTZS3SpphxAfaZOe6OrG
	MUBI2ykBeprkbuigSLguE6huoU3YmblArGQfZczYMYr1cuJAprlbWE+Apm6X06cBZj62XejIw+tkQ
	G68qkFeRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvnCD-00025e-Ry; Thu, 08 Aug 2019 18:31:29 +0000
Received: from vern.gendns.com ([98.142.107.122])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvnC1-00025C-6F
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 18:31:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lechnology.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:References:Cc:To:From:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=k+1f28Co3TjdHmZl1rlhm+kOz4AR49O/Mpi9garM/o8=; b=T253WssJdV+B1/qYDP8IDrHEMd
 Mc6yBdZbZIQqgPGnOIeJ5G8d2lXC+B4pkxwIKQBHZ/6lB8RIVb/++nLJIKkLcmLIiKfBKnAiiN/fd
 pY/VaBNVxtXkW7dCp0DqLrSXFnPkDCmJNp25WI5fyRsJuRtqUmdRltBJI8eONdf6OKoEl3SN1HrgP
 dly1x9y4ewxybRxSAacJOJCZgDpEVW1HjLiyuVJwX4wjEikHSOx6FPkuzzS87a8agpEMSkYn1BQym
 a6lXtn/oKyVemLh8uZhlEcfHeNuznzzmi1imzw0qNPkzBySo/iRG2EOtBH0O6I87k8k4yzso9YDg5
 3ZqsCAdg==;
Received: from 108-198-5-147.lightspeed.okcbok.sbcglobal.net
 ([108.198.5.147]:34972 helo=[192.168.0.134])
 by vern.gendns.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <david@lechnology.com>)
 id 1hvnBs-0001Fi-VV; Thu, 08 Aug 2019 14:31:09 -0400
Subject: Re: [PATCH v2 4/6] irqchip/irq-pruss-intc: Add helper functions to
 configure internal mapping
From: David Lechner <david@lechnology.com>
To: Suman Anna <s-anna@ti.com>, Marc Zyngier <maz@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>
References: <20190731224149.11153-1-s-anna@ti.com>
 <20190731224149.11153-5-s-anna@ti.com>
 <1a63eb50-7c5c-eb3d-3cbe-bd1cc59ce3fe@kernel.org>
 <89abc27f-5d02-a8ce-df0e-b185c2a647cd@ti.com>
 <1ac233f6-f3a3-6cec-9ad2-49e985fdfaca@lechnology.com>
 <6c17875e-496d-1277-278f-239d3a9d8ca2@ti.com>
 <124b03b8-f8e7-682b-8767-13a739329da2@lechnology.com>
Message-ID: <5a81f82a-2cba-7ec5-ced2-714516319d6a@lechnology.com>
Date: Thu, 8 Aug 2019 13:31:06 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <124b03b8-f8e7-682b-8767-13a739329da2@lechnology.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - vern.gendns.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lechnology.com
X-Get-Message-Sender-Via: vern.gendns.com: authenticated_id:
 davidmain+lechnology.com/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: vern.gendns.com: davidmain@lechnology.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_113117_390058_9775B1AC 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
 Tony Lindgren <tony@atomide.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, "Andrew F. Davis" <afd@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Murali Karicheri <m-karicheri2@ti.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gOC84LzE5IDEyOjA5IFBNLCBEYXZpZCBMZWNobmVyIHdyb3RlOgo+IAo+IFRoZW4gd2UgY2Fu
IHByb3ZpZGUgYSB2ZW5kb3IgcmVzb3VyY2UgaG9vayBpbiB0aGUgcmVtb3RlcHJvYyBkcml2ZXIg
dG8gaGFuZGxlCj4gdGhlc2UgcmVzb3VyY2VzOgo+IAo+IHN0YXRpYyBpbnQgdGlfcHJ1X3Jwcm9j
X2hhbmRsZV9yc2Moc3RydWN0IHJwcm9jICpycHJvYywgdTMyIHJzY190eXBlLCB2b2lkICpyc2Ms
Cj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnQgb2Zmc2V0LCBpbnQg
YXZhaWwpCj4gewo+ICDCoMKgwqDCoHN0cnVjdCB0aV9wcnVfZGF0YSAqcHJ1ID0gcnByb2MtPnBy
aXY7Cj4gIMKgwqDCoMKgc3RydWN0IGlycV9md3NwZWMgZndzcGVjOwo+ICDCoMKgwqDCoHVuc2ln
bmVkIGludCB2aXJxOwo+IAo+ICDCoMKgwqDCoHN3aXRjaCAocnNjX3R5cGUpIHsKPiAgwqDCoMKg
wqBjYXNlIFRJX1BSVV9WRU5ET1JfUkVTT1VSQ0VfSVJROgo+ICDCoMKgwqDCoHsKPiAgwqDCoMKg
wqDCoMKgwqAgc3RydWN0IHRpX3BydV92ZW5kb3JfcmVzb3VyY2VfaXJxICpyc2NfaXJxID0gcnNj
Owo+IAo+ICDCoMKgwqDCoMKgwqDCoCBmd3NwZWMuZndub2RlID0gcHJ1LT5pbnRjX2Z3bm9kZTsK
PiAgwqDCoMKgwqDCoMKgwqAgZndzcGVjLnBhcmFtWzBdID0gbGUzMl90b19jcHUocnNjX2lycS0+
ZXZlbnQpOwo+ICDCoMKgwqDCoMKgwqDCoCBmd3NwZWMucGFyYW1bMV0gPSBsZTMyX3RvX2NwdShy
c2NfaXJxLT5jaGFubmVsKTsKPiAgwqDCoMKgwqDCoMKgwqAgZndzcGVjLnBhcmFtWzJdID0gbGUz
Ml90b19jcHUocnNjX2lycS0+aG9zdCk7Cj4gIMKgwqDCoMKgwqDCoMKgIGZ3c3BlYy5wYXJhbVsz
XSA9IGxlMzJfdG9fY3B1KHJzY19pcnEtPmRvbWFpbik7Cj4gIMKgwqDCoMKgwqDCoMKgIGZ3c3Bl
Yy5wYXJhbV9jb3VudCA9IDQ7Cj4gIMKgwqDCoMKgfQo+ICDCoMKgwqDCoMKgwqDCoCBicmVhazsK
PiAgwqDCoMKgwqBjYXNlIFRJX1BSVV9WRU5ET1JfUkVTT1VSQ0VfSVJRMjoKPiAgwqDCoMKgwqB7
Cj4gIMKgwqDCoMKgwqDCoMKgIHN0cnVjdCB0aV9wcnVfdmVuZG9yX3Jlc291cmNlX2lycTIgKnJz
Y19pcnEyID0gcnNjOwo+IAo+ICDCoMKgwqDCoMKgwqDCoCBmd3NwZWMuZndub2RlID0gcHJ1LT5p
bnRjX2Z3bm9kZTsKPiAgwqDCoMKgwqDCoMKgwqAgZndzcGVjLnBhcmFtWzBdID0gbGUzMl90b19j
cHUocnNjX2lycTItPmV2ZW50KTsKPiAgwqDCoMKgwqDCoMKgwqAgZndzcGVjLnBhcmFtWzFdID0g
bGUzMl90b19jcHUocnNjX2lycTItPmV2dF9zZWwpOwo+ICDCoMKgwqDCoMKgwqDCoCBmd3NwZWMu
cGFyYW1bMl0gPSBsZTMyX3RvX2NwdShyc2NfaXJxMi0+Y2hhbm5lbCk7Cj4gIMKgwqDCoMKgwqDC
oMKgIGZ3c3BlYy5wYXJhbVszXSA9IGxlMzJfdG9fY3B1KHJzY19pcnEyLT5ob3N0KTsKPiAgwqDC
oMKgwqDCoMKgwqAgZndzcGVjLnBhcmFtWzRdID0gbGUzMl90b19jcHUocnNjX2lycTItPmRvbWFp
bik7Cj4gIMKgwqDCoMKgwqDCoMKgIGZ3c3BlYy5wYXJhbV9jb3VudCA9IDU7Cj4gIMKgwqDCoMKg
wqDCoMKgIGJyZWFrOwo+ICDCoMKgwqDCoH0KPiAgwqDCoMKgwqBkZWZhdWx0Ogo+ICDCoMKgwqDC
oMKgwqDCoCByZXR1cm4gUlNDX0lHTk9SRUQ7Cj4gIMKgwqDCoMKgfQo+IAo+ICDCoMKgwqDCoHZp
cnEgPSBpcnFfY3JlYXRlX2Z3c3BlY19tYXBwaW5nKCZmd3NwZWMpOwo+ICDCoMKgwqDCoGlmICgh
dmlycSkKPiAgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7Cj4gCj4gIMKgwqDCoMKgLyog
VE9ETzogc2F2ZSB2aXJxIChhbmQgb3RoZXIgbWV0YWRhdGEpIGZvciBsYXRlciB1c2UgKi8KPiAK
PiAgwqDCoMKgwqByZXR1cm4gUlNDX0hBTkRMRUQ7Cj4gfQo+IAo+IHN0YXRpYyBjb25zdCBzdHJ1
Y3QgcnByb2Nfb3BzIHRpX3BydV9ycHJvY19vcHMgPSB7Cj4gIMKgwqDCoMKgLnN0YXJ0ID0gdGlf
cHJ1X3Jwcm9jX3N0YXJ0LAo+ICDCoMKgwqDCoC5zdG9wID0gdGlfcHJ1X3Jwcm9jX3N0b3AsCj4g
IMKgwqDCoMKgLmtpY2sgPSB0aV9wcnVfcnByb2Nfa2ljaywKPiAgwqDCoMKgwqAuZGFfdG9fdmEg
PSB0aV9wcnVfcnByb2NfZGFfdG9fdmEsCj4gIMKgwqDCoMKgLmhhbmRsZV9yc2MgPSB0aV9wcnVf
cnByb2NfaGFuZGxlX3JzYywKPiB9Owo+IAoKQWZ0ZXIgcmUtcmVhZGluZyBzb21lIG9mIHRoZSBw
cmV2aW91cyBkaXNjdXNzaW9ucywgaXQgc291bmRzIGxpa2UKd2Ugd291bGRuJ3Qgd2FudCB0byBh
bHdheXMgbWFwIGV2ZXJ5IElSUSBpbiB0aGUgZmlybXdhcmUgcmVzb3VyY2UKdGFibGUuCgpJbiB0
aGF0IGNhc2UsIHdlIGNvdWxkIGltcGxlbWVudCB0aGUgcnByb2Nfb3BzIHBhcnNlX2Z3IGNhbGxi
YWNrCmluc3RlYWQuIEFsbCBmaXJtd2FyZSBub2RlcyBjb3VsZCBiZSBjb2xsZWN0ZWQgKGZyb20g
Ym90aCB0aGUKZmlybXdhcmUgcmVzb3VyY2UgdGFibGUgYW5kIGRldmljZSB0cmVlKSBhbmQgdGhl
IHJlbW90ZXByb2MgZHJpdmVyCmNvdWxkIGRlY2lkZSB3aGljaCBvbmVzIG5lZWQgdG8gYmUgbWFw
cGVkIGFuZCB3aGljaCBvbmVzIGRvbid0LgpUaGVuIGl0IGNvdWxkIGNhbGwgaXJxX2NyZWF0ZV9m
d3NwZWNfbWFwcGluZygpIG9ubHkgdGhlIG5vZGVzCnRoYXQgbmVlZCB0byBiZSBtYXBwZWQgYmFz
ZWQgb24gdGhlIGN1cnJlbnQgYXBwbGljYXRpb24uCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
