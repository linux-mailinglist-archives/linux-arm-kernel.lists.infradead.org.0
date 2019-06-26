Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2859561F4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 08:00:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nG8mSsmT6r24qwYMg7fE8fmH2Mr3P0TIPgXn76e6A+Y=; b=WroCl6yYJ3OKz7
	SQF4YNWxtItGSCJsemd7IUTpH7aDpp30pSYxpIUkJW2t8/jQhDtM+KsS/LkcY4XrR92CYJ2btMahW
	8kyn7/p+7fIfma1kLFGhJmZQyUOzNlhyKeeyMtMXDOofkm1QWEh8ckiLHNCHM/e0NPCGBASEjhCEk
	7j3Q5TSFhGrBRyEtdxtg1NLD4UPCX1UT5k7gaOL1+NGILJ+p4ZRz8LtycFaZsAa+83jiu2geh3qLm
	YCOE191FqzB7qzXZHiMSETNdnSFu0o6kfqUd9Nnl7yLGR0r8+tYqO/qayZmQzlVWa3wqfDECEIayw
	9CR6CZ6nqzPgW7tmzqmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg0z8-0001qf-RY; Wed, 26 Jun 2019 06:00:46 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg0yo-0001p0-3S; Wed, 26 Jun 2019 06:00:28 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5Q60FSI085347;
 Wed, 26 Jun 2019 01:00:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561528815;
 bh=HVUML4z+0uJ3/8NRfZVvuXjLtrK+2oCxRsdfu2L1a6M=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=CWpQiyUrkMBOHsPtmLblyp5/OJuonzQnj2fMi494DDmBzu19N58HhjR094H07ThD0
 WdazApgdj2HdhNHDu4mXZzg96r3Ug3SL2h0YHliiTN3RNNJscmrCoMJKdwSAxS5FhM
 hDa8XZg88rrN8st2CNYwc5hLgprqNF7+g0fH9I+k=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5Q60Fhj077983
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 26 Jun 2019 01:00:15 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 26
 Jun 2019 01:00:14 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 26 Jun 2019 01:00:14 -0500
Received: from [172.24.190.89] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5Q60B6h031555;
 Wed, 26 Jun 2019 01:00:12 -0500
Subject: Re: [PATCH v7 3/5] mtd: Add support for HyperBus memory devices
To: <masonccyang@mxic.com.tw>
References: <20190620172250.9102-1-vigneshr@ti.com>
 <20190620172250.9102-4-vigneshr@ti.com>
 <OF97D41CEB.1200A9E4-ON48258425.0006AA42-48258425.000700E5@mxic.com.tw>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <1131067e-a86d-f794-f6ae-be0a2b3e5832@ti.com>
Date: Wed, 26 Jun 2019 11:30:56 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <OF97D41CEB.1200A9E4-ON48258425.0006AA42-48258425.000700E5@mxic.com.tw>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_230026_254415_9E9E3353 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyNi8wNi8xOSA2OjQ2IEFNLCBtYXNvbmNjeWFuZ0BteGljLmNvbS50dyB3cm90ZToKPiBI
aSBWaWduZXNoLAo+IAo+Pgo+PiBTdWJqZWN0Cj4+Cj4+IFtQQVRDSCB2NyAzLzVdIG10ZDogQWRk
IHN1cHBvcnQgZm9yIEh5cGVyQnVzIG1lbW9yeSBkZXZpY2VzCj4+Cj4+IEN5cHJlc3MnIEh5cGVy
QnVzIGlzIExvdyBTaWduYWwgQ291bnQsIEhpZ2ggUGVyZm9ybWFuY2UgRG91YmxlIERhdGEgUmF0
ZQo+PiBCdXMgaW50ZXJmYWNlIGJldHdlZW4gYSBob3N0IHN5c3RlbSBtYXN0ZXIgYW5kIG9uZSBv
ciBtb3JlIHNsYXZlCj4+IGludGVyZmFjZXMuIEh5cGVyQnVzIGlzIHVzZWQgdG8gY29ubmVjdCBt
aWNyb3Byb2Nlc3NvciwgbWljcm9jb250cm9sbGVyLAo+PiBvciBBU0lDIGRldmljZXMgd2l0aCBy
YW5kb20gYWNjZXNzIE5PUiBmbGFzaCBtZW1vcnkgKGNhbGxlZCBIeXBlckZsYXNoKQo+PiBvciBz
ZWxmIHJlZnJlc2ggRFJBTSAoY2FsbGVkIEh5cGVyUkFNKS4KPj4KPj4gSXRzIGEgOC1iaXQgZGF0
YSBidXMgKERRWzc6MF0pIHdpdGggIFJlYWQtV3JpdGUgRGF0YSBTdHJvYmUgKFJXRFMpCj4+IHNp
Z25hbCBhbmQgZWl0aGVyIFNpbmdsZS1lbmRlZCBjbG9jaygzLjBWIHBhcnRzKSBvciBEaWZmZXJl
bnRpYWwgY2xvY2sKPj4gKDEuOFYgcGFydHMpLiBJdCB1c2VzIENoaXBTZWxlY3QgbGluZXMgdG8g
c2VsZWN0IGIvdyBtdWx0aXBsZSBzbGF2ZXMuCj4+IEF0IGJ1cyBsZXZlbCwgaXQgZm9sbG93cyBh
IHNlcGFyYXRlIHByb3RvY29sIGRlc2NyaWJlZCBpbiBIeXBlckJ1cwo+PiBzcGVjaWZpY2F0aW9u
WzFdLgo+Pgo+PiBIeXBlckZsYXNoIGZvbGxvd3MgQ0ZJIEFNRC9GdWppdHN1IEV4dGVuZGVkIENv
bW1hbmQgU2V0ICgweDAwMDIpIHNpbWlsYXIKPj4gdG8gdGhhdCBvZiBleGlzdGluZyBwYXJhbGxl
bCBOT1JzLiBTaW5jZSBIeXBlckJ1cyBpcyB4OCBERFIgYnVzLAo+PiBpdHMgZXF1aXZhbGVudCB0
byB4MTYgcGFyYWxsZWwgTk9SIGZsYXNoIHdydCBiaXRzIHBlciBjbG9jayBjeWNsZS4gQnV0Cj4+
IEh5cGVyQnVzIG9wZXJhdGVzIGF0ID4xNjZNSHogZnJlcXVlbmNpZXMuCj4+IEh5cGVyUkFNIHBy
b3ZpZGVzIGRpcmVjdCByYW5kb20gcmVhZC93cml0ZSBhY2Nlc3MgdG8gZmxhc2ggbWVtb3J5Cj4+
IGFycmF5Lgo+Pgo+PiBCdXQsIEh5cGVyQnVzIG1lbW9yeSBjb250cm9sbGVycyBzZWVtIHRvIGFi
c3RyYWN0IGltcGxlbWVudGF0aW9uIGRldGFpbHMKPj4gYW5kIGV4cG9zZSBhIHNpbXBsZSBNTUlP
IGludGVyZmFjZSB0byBhY2Nlc3MgY29ubmVjdGVkIGZsYXNoLgo+Pgo+PiBBZGQgc3VwcG9ydCBm
b3IgcmVnaXN0ZXJpbmcgSHlwZXJGbGFzaCBkZXZpY2VzIHdpdGggTVREIGZyYW1ld29yay4gTVRE
Cj4+IG1hcHMgZnJhbWV3b3JrIGFsb25nIHdpdGggQ0ZJIGNoaXAgc3VwcG9ydCBmcmFtZXdvcmsg
YXJlIHVzZWQgdG8gc3VwcG9ydAo+PiBjb21tdW5pY2F0aW5nIHdpdGggZmxhc2guCj4+Cj4+IEZy
YW1ld29yayBpcyBtb2RlbGxlZCBhbG9uZyB0aGUgbGluZXMgb2Ygc3BpLW5vciBmcmFtZXdvcmsu
IEh5cGVyQnVzCj4+IG1lbW9yeSBjb250cm9sbGVyIChIQk1DKSBkcml2ZXJzIGNhbGxzIGh5cGVy
YnVzX3JlZ2lzdGVyX2RldmljZSgpIHRvCj4+IHJlZ2lzdGVyIGEgc2luZ2xlIEh5cGVyRmxhc2gg
ZGV2aWNlLiBIeXBlckZsYXNoIGNvcmUgcGFyc2VzIE1NSU8gYWNjZXNzCj4+IGluZm9ybWF0aW9u
IGZyb20gRFQsIHNldHMgdXAgdGhlIG1hcF9pbmZvIHN0cnVjdCwgcHJvYmVzIENGSSBmbGFzaCBh
bmQKPj4gcmVnaXN0ZXJzIGl0IHdpdGggTVREIGZyYW1ld29yay4KPj4KPj4gU29tZSBIQk1DIG1h
c3RlcnMgbmVlZCBjYWxpYnJhdGlvbi90cmFpbmluZyBzZXF1ZW5jZVszXSB0byBiZSBjYXJyaWVk
Cj4+IG91dCwgaW4gb3JkZXIgZm9yIERMTCBpbnNpZGUgdGhlIGNvbnRyb2xsZXIgdG8gbG9jaywg
YnkgcmVhZGluZyBhIGtub3duCj4+IHN0cmluZy9wYXR0ZXJuLiBUaGlzIGlzIGRvbmUgYnkgcmVw
ZWF0ZWRseSByZWFkaW5nIENGSSBRdWVyeQo+PiBJZGVudGlmaWNhdGlvbiBTdHJpbmcuIENhbGli
cmF0aW9uIG5lZWRzIHRvIGJlIGRvbmUgYmVmb3JlIHRyeWluZyB0byAKPiBkZXRlY3QKPj4gZmxh
c2ggYXMgcGFydCBvZiBDRkkgZmxhc2ggcHJvYmUuCj4+Cj4+IEh5cGVyUkFNIGlzIG5vdCBzdXBw
b3J0ZWQgYXQgdGhlIG1vbWVudC4KPj4KPj4gSHlwZXJCdXMgc3BlY2lmaWNhdGlvbiBjYW4gYmUg
Zm91bmQgYXRbMV0KPj4gSHlwZXJGbGFzaCBkYXRhc2hlZXQgY2FuIGJlIGZvdW5kIGF0WzJdCj4+
Cj4+IFsxXSBodHRwczovL3d3dy5jeXByZXNzLmNvbS9maWxlLzIxMzM1Ni9kb3dubG9hZAo+PiBb
Ml0gaHR0cHM6Ly93d3cuY3lwcmVzcy5jb20vZmlsZS8yMTMzNDYvZG93bmxvYWQKPj4gWzNdIGh0
dHA6Ly93d3cudGkuY29tL2xpdC91Zy9zcHJ1aWQ3Yi9zcHJ1aWQ3Yi5wZGYKPj4gICAgIFRhYmxl
IDEyLTU3NDEuIEh5cGVyRmxhc2ggQWNjZXNzIFNlcXVlbmNlCj4+Cj4+IFNpZ25lZC1vZmYtYnk6
IFZpZ25lc2ggUmFnaGF2ZW5kcmEgPHZpZ25lc2hyQHRpLmNvbT4KPiAKPiBDeXByZXNzIGhhcyBh
bm5vdW5jZWQgdGhlIGluY2x1c2lvbiBvZiBDeXByZXNz4oCZIGhpZ2gtYmFuZHdpZHRoIAo+IEh5
cGVyQnVz4oSiIDgtYml0IHNlcmlhbCBtZW1vcnkgaW50ZXJmYWNlIGludG8gdGhlIG5ldyBlWHBh
bmRlZCBTUEkgKHhTUEkpIAo+IGVsZWN0cmljYWwgaW50ZXJmYWNlIHN0YW5kYXJkIGZyb20gdGhl
IEpFREVDIFNvbGlkIFN0YXRlIFRlY2hub2xvZ3kgCj4gQXNzb2NpYXRpb24gCj4gCj4gZm9yIGRl
dGFpbCwgcGxlYXNlIGdvZXMgdG8KPiBodHRwczovL3d3dy5jeXByZXNzLmNvbS9uZXdzL2N5cHJl
c3MtaHlwZXJidXMtbWVtb3J5LWludGVyZmFjZS1pbnN0YW50LWFwcGxpY2F0aW9ucy1pbmNvcnBv
cmF0ZWQtamVkZWMteHNwaS1lbGVjdHJpY2FsIAo+IAoKVGhhbmtzIGZvciB0aGUgbGluayEKQW5u
b3VuY2VtZW50IHNlZW1zIHRvIGJlIGZyb20gTWFyY2ggMjAxOCBzaW5jZSB0aGVuIEN5cHJlc3Mg
aGFzCnB1Ymxpc2hlZCBkZXRhaWxlZCBIeXBlckJ1cyBwcm90b2NvbCBpbiBwdWJsaWMgZG9tYWlu
IC4gQ29tcGFyaW5nIEpFREVDCnhTUEkgc3BlY2lmaWNhdGlvbiBhbmQgSHlwZXJCdXMgcHJvdG9j
b2wgdGhhdCBDeXByZXNzIGhhcyBwdWJsaXNoZWQsCnRoZXkgc2VlbSB0byBiZSBmb2xsb3dpbmcg
OEQtOEQtOEQgUHJvZmlsZSAyLjAgd2l0aCBFeHRlbmRlZCBDb21tYW5kCk1vZGlmaWVyIG9mIEpF
REVDIHhTUEkgc3BlYy4KRGlkIHlvdSBzZWUgYW55dGhpbmcgbWlzc2luZy9kaWZmZXJlbnQ/CgpJ
IG5lZWQgdG8gc3R1ZHkgeFNQSSBzcGVjIGluIG1vcmUgZGV0YWlsLCBidXQgc2VlbXMgbGlrZSBh
cyBsb25nIGFzIHdlCnN1cHBvcnQgSHlwZXJCdXMgUHJvdG9jb2wgc3BlYyBmcm9tIEN5cHJlc3Mg
d2Ugc2hvdWxkIGJlIHNhZmUuCgotLSAKUmVnYXJkcwpWaWduZXNoCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
