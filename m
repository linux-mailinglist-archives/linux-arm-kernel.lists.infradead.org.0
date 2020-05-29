Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DDE1E713C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 02:23:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NnRsLvGoc3CIhUz1CSQ5bvxBOrt/42qLuxeD4ynOz88=; b=I7dsnAz4/ovweIRIbubHXNMzO
	ine+1knf6Bq9OM5/igrTHqWI4B3FaoZ3lmfmZJtOBHQnL+qY8oYxH9lvPUWkG6LSlzkre+OiK7nCW
	L1oLhtssgtWT3a4di6r3Uik1G1bEuVBhs7ry1giEm4aM//s864wP8QL5WbmyTAmAn87eujFKz9pUj
	rL9/6RQtUY8hCC7L+HD+2H9c502dp7e/jW8EN+c2bWfV5fHVKx2hHG7yan8LscCHANvgzxAgJ3vHB
	TQ+O/iydCeYRCZAnQ/uXyElKNd0oDpWJ0//lz/vxzFTB+eC6wuLVXzvR1jw9bfaL6s7bK3A2rV8/F
	/dgaOHK1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeSoD-0002hx-5M; Fri, 29 May 2020 00:23:37 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeSo4-0002hP-CE
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 00:23:30 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04T0NMtD029760;
 Thu, 28 May 2020 19:23:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590711802;
 bh=aHNu/nBir3IZGHHHmcRbtuDPSMKgqYMMsI/tOJtCbqk=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=YYxA8WvQWaBwiecc/4Zz6fwql7gDQvB+szY+QZmfvkU7xQycSHi2onjQ7yWS3z5t9
 dRJEnXnfZ0WdUgaP+njuuTldJf4uMIrrjne/+iFRfAwrr+RhoGqS7XCxswIrs1AX5P
 RCzmL6M9bLr6YI2+5U0kUV8elZAyUgAwqmcCZl3M=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04T0NM3l071729
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 28 May 2020 19:23:22 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 28
 May 2020 19:23:21 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 28 May 2020 19:23:21 -0500
Received: from [10.250.48.148] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04T0NLrA076843;
 Thu, 28 May 2020 19:23:21 -0500
Subject: Re: [PATCH v2 2/4] dt-bindings: remoteproc: Add bindings for C66x
 DSPs on TI K3 SoCs
From: Suman Anna <s-anna@ti.com>
To: Rob Herring <robh@kernel.org>
References: <20200521001006.2725-1-s-anna@ti.com>
 <20200521001006.2725-3-s-anna@ti.com> <20200528223228.GA785633@bogus>
 <594b649d-eca6-1cd4-3621-c8297a6a9492@ti.com>
Message-ID: <12a97fce-9246-18c4-78e9-e25c76b5abdd@ti.com>
Date: Thu, 28 May 2020 19:23:16 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <594b649d-eca6-1cd4-3621-c8297a6a9492@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_172328_506077_4B0E5F00 
X-CRM114-Status: GOOD (  32.26  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iLAoKT24gNS8yOC8yMCA1OjQ3IFBNLCBTdW1hbiBBbm5hIHdyb3RlOgo+IEhpIFJvYiwK
PiAKPiBPbiA1LzI4LzIwIDU6MzIgUE0sIFJvYiBIZXJyaW5nIHdyb3RlOgo+PiBPbiBXZWQsIE1h
eSAyMCwgMjAyMCBhdCAwNzoxMDowNFBNIC0wNTAwLCBTdW1hbiBBbm5hIHdyb3RlOgo+Pj4gU29t
ZSBUZXhhcyBJbnN0cnVtZW50cyBLMyBmYW1pbHkgb2YgU29DcyBoYXZlIG9uZSBvZiBtb3JlIERp
Z2l0YWwgU2lnbmFsCj4+PiBQcm9jZXNzb3IgKERTUCkgc3Vic3lzdGVtcyB0aGF0IGFyZSBjb21w
cmlzZWQgb2YgZWl0aGVyIGEgVE1TMzIwQzY2eAo+Pj4gQ29yZVBhYyBhbmQvb3IgYSBuZXh0LWdl
bmVyYXRpb24gVE1TMzIwQzcxeCBDb3JlUGFjIHByb2Nlc3NvciBzdWJzeXN0ZW0uCj4+PiBBZGQg
dGhlIGRldmljZSB0cmVlIGJpbmRpbmdzIGRvY3VtZW50IGZvciB0aGUgQzY2eCBEU1AgZGV2aWNl
cyBvbiB0aGVzZQo+Pj4gU29Dcy4gVGhlIGFkZGVkIGV4YW1wbGUgaWxsdXN0cmF0ZXMgdGhlIERU
IG5vZGVzIGZvciB0aGUgZmlyc3QgQzY2eCBEU1AKPj4+IGRldmljZSBwcmVzZW50IG9uIHRoZSBL
MyBKNzIxRSBmYW1pbHkgb2YgU29Dcy4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBTdW1hbiBBbm5h
IDxzLWFubmFAdGkuY29tPgo+Pj4gLS0tCj4+PiB2MjoKPj4+IMKgIC0gVXBkYXRlZCB0aGUgZXhh
bXBsZSB0byBpbmNsdWRlIHRoZSByb290LW5vZGUgdG8gZml4IHRoZSBib3QgCj4+PiBlcnJvcnMg
ZnJvbSB2MQo+Pgo+PiBQcmV0dHkgc3VyZSB0aGF0IHdhcyBub3Qgd2h5IHlvdSBoYWQgZXJyb3Jz
Lgo+IAo+IEl0IGlzIGJlY2F1c2Ugb2YgdGhlIGRlZmF1bHQgdmFsdWVzIHVzZWQgZm9yICNhZGRy
ZXNzLWNlbGxzIGFuZCAKPiAjc2l6ZS1jZWxscyBpbiB0aGUgZXhhbXBsZV90ZW1wbGF0ZSBhbmQg
ZXhhbXBsZV9zdGFydCB2YXJpYWJsZXMgdXNlZCBpbiAKPiB0aGUgZHQtZXh0cmFjdC1leGFtcGxl
IHNjcmlwdC4gVGhleSBhcmUgMSBieSBkZWZhdWx0LCBzbyB0aGUgZ2VuZXJhdGVkIAo+IHRlbXBs
YXRlIGVuZGVkIHVwIHdpdGggdGhlIHJvb3Qtbm9kZSB1c2luZyAxLCBhbmQgdGhlIGFjdHVhbCBl
eGFtcGxlIAo+IHVzaW5nIDIgcmVzdWx0aW5nIGluIHRoZSBtaXNtYXRjaC4KPiAKPiBXaGVuIEkg
dXBkYXRlZCB0aGUgc2NyaXB0IHRvIHVzZSAyIGZvciBib3RoICNhZGRyZXNzLWNlbGxzIGFuZCAK
PiAjc2l6ZS1jZWxscywgdGhlbiB0aGUgd2FybmluZ3MgZ28gYXdheS4gVGhpcyBpcyB0aGUgcmVh
c29uLCBkdGJzX2NoZWNrIAo+IG9uIG15IGFjdHVhbCBkdHMgZmlsZXMgZ29lcyB0aHJvdWdoIGZp
bmUuCgpKdXN0IHRvIGNsYXJpZnksIHRoZSB3YXJuaW5ncyB3ZXJlIG9ubHkgYmVjYXVzZSBvZiB0
aGUgbWlzbWF0Y2hlZCAKJ3JhbmdlcycuIElmIEkgbGltaXQgdGhlIGV4YW1wbGUgdG8ganVzdCB0
aGUgZHNwIG5vZGUsIGVsaW1pbmF0aW5nIGFsbCAKcmFuZ2VzIHVzYWdlLCB0aGVuIGl0IHBhc3Nl
cyBmaW5lLgoKU28sIHlvdSB3b3VsZCBzZWUgdGhpcyB3aXRoIGFueSBleGFtcGxlIHRoYXQgdXNl
cyByYW5nZXMgd2l0aCAKI2FkZHJlc3MtY2VsbHMgYW5kICNzaXplLWNlbGxzIGFzIDIgd2l0aG91
dCBleHBsaWNpdGx5IHVzaW5nIHRoZSAKYXBwcm9wcmlhdGUgdG9wLWxldmVsICNhZGRyZXNzLWNl
bGxzIGFuZCAjc2l6ZS1jZWxscy4KCj4gCj4+Cj4+PiDCoCAtIEFkZGVkIG1heEl0ZW1zIHRvIHJl
c2V0cywgbWJveGVzLCBtZW1vcnktcmVnaW9uLCBzcmFtIHByb3BlcnRpZXMKPj4+IMKgIC0gQ2hh
bmdlZCB0aGUgdGksc2NpLXByb2MtaWRzICRyZWYgdG8gdWludC1hcnJheSBmcm9tIHVpbnQtbWF0
cml4Cj4+PiDCoCAtIEFkZHJlc3NlZCB0aGUgbWlub3IgcmV2aWV3IGNvbW1lbnRzIGZyb20gTWF0
aGlldQo+Pj4gdjE6IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTE0NTg1NzEv
Cj4+Pgo+Pj4gwqAgLi4uL2JpbmRpbmdzL3JlbW90ZXByb2MvdGksazMtZHNwLXJwcm9jLnlhbWzC
oCB8IDE5MCArKysrKysrKysrKysrKysrKysKPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxOTAgaW5z
ZXJ0aW9ucygrKQo+Pj4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0IAo+Pj4gRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3JlbW90ZXByb2MvdGksazMtZHNwLXJwcm9jLnlhbWwKPj4+Cj4+
PiBkaWZmIC0tZ2l0IAo+Pj4gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcmVt
b3RlcHJvYy90aSxrMy1kc3AtcnByb2MueWFtbCAKPj4+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3JlbW90ZXByb2MvdGksazMtZHNwLXJwcm9jLnlhbWwKPj4+IG5ldyBmaWxl
IG1vZGUgMTAwNjQ0Cj4+PiBpbmRleCAwMDAwMDAwMDAwMDAuLmNkZjY0OTY1NTgzOAo+Pj4gLS0t
IC9kZXYvbnVsbAo+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jl
bW90ZXByb2MvdGksazMtZHNwLXJwcm9jLnlhbWwKPj4+IEBAIC0wLDAgKzEsMTkwIEBACj4+PiAr
IyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb25seSBvciBCU0QtMi1DbGF1c2Up
Cj4+PiArJVlBTUwgMS4yCj4+PiArLS0tCj4+PiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcv
c2NoZW1hcy9yZW1vdGVwcm9jL3RpLGszLWRzcC1ycHJvYy55YW1sIwo+Pj4gKyRzY2hlbWE6IGh0
dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+Pj4gKwo+Pj4gK3Rp
dGxlOiBUSSBLMyBEU1AgZGV2aWNlcwo+Pj4gKwo+Pj4gK21haW50YWluZXJzOgo+Pj4gK8KgIC0g
U3VtYW4gQW5uYSA8cy1hbm5hQHRpLmNvbT4KPj4+ICsKPj4+ICtkZXNjcmlwdGlvbjogfAo+Pj4g
K8KgIFRoZSBUSSBLMyBmYW1pbHkgb2YgU29DcyB1c3VhbGx5IGhhdmUgb25lIG9yIG1vcmUgVEkg
RFNQIENvcmUgCj4+PiBzdWItc3lzdGVtcwo+Pj4gK8KgIHRoYXQgYXJlIHVzZWQgdG8gb2ZmbG9h
ZCBzb21lIG9mIHRoZSBwcm9jZXNzb3ItaW50ZW5zaXZlIHRhc2tzIG9yIAo+Pj4gYWxnb3JpdGht
cywKPj4+ICvCoCBmb3IgYWNoaWV2aW5nIHZhcmlvdXMgc3lzdGVtIGxldmVsIGdvYWxzLgo+Pj4g
Kwo+Pj4gK8KgIFRoZXNlIHByb2Nlc3NvciBzdWItc3lzdGVtcyB1c3VhbGx5IGNvbnRhaW4gYWRk
aXRpb25hbCBzdWItbW9kdWxlcyAKPj4+IGxpa2UKPj4+ICvCoCBMMSBhbmQvb3IgTDIgY2FjaGVz
L1NSQU1zLCBhbiBJbnRlcnJ1cHQgQ29udHJvbGxlciwgYW4gZXh0ZXJuYWwgCj4+PiBtZW1vcnkK
Pj4+ICvCoCBjb250cm9sbGVyLCBhIGRlZGljYXRlZCBsb2NhbCBwb3dlci9zbGVlcCBjb250cm9s
bGVyIGV0Yy4gVGhlIERTUCAKPj4+IHByb2Nlc3Nvcgo+Pj4gK8KgIGNvcmVzIGluIHRoZSBLMyBT
b0NzIGFyZSB1c3VhbGx5IGVpdGhlciBhIFRNUzMyMEM2NnggQ29yZVBhYyAKPj4+IHByb2Nlc3Nv
ciBvciBhCj4+PiArwqAgVE1TMzIwQzcxeCBDb3JlUGFjIHByb2Nlc3Nvci4KPj4+ICsKPj4+ICvC
oCBFYWNoIERTUCBDb3JlIHN1Yi1zeXN0ZW0gaXMgcmVwcmVzZW50ZWQgYXMgYSBzaW5nbGUgRFQg
bm9kZS4gRWFjaCAKPj4+IG5vZGUgaGFzIGEKPj4+ICvCoCBudW1iZXIgb2YgcmVxdWlyZWQgb3Ig
b3B0aW9uYWwgcHJvcGVydGllcyB0aGF0IGVuYWJsZSB0aGUgT1MgCj4+PiBydW5uaW5nIG9uIHRo
ZQo+Pj4gK8KgIGhvc3QgcHJvY2Vzc29yIChBcm0gQ29yZVBhYykgdG8gcGVyZm9ybSB0aGUgZGV2
aWNlIG1hbmFnZW1lbnQgb2YgCj4+PiB0aGUgcmVtb3RlCj4+PiArwqAgcHJvY2Vzc29yIGFuZCB0
byBjb21tdW5pY2F0ZSB3aXRoIHRoZSByZW1vdGUgcHJvY2Vzc29yLgo+Pj4gKwo+Pj4gK3Byb3Bl
cnRpZXM6Cj4+PiArwqAgY29tcGF0aWJsZToKPj4+ICvCoMKgwqAgY29uc3Q6IHRpLGo3MjFlLWM2
Ni1kc3AKPj4+ICvCoMKgwqAgZGVzY3JpcHRpb246Cj4+PiArwqDCoMKgwqDCoCBVc2UgInRpLGo3
MjFlLWM2Ni1kc3AiIGZvciBDNjZ4IERTUHMgb24gSzMgSjcyMUUgU29Dcwo+Pgo+PiBXaGF0IGVs
c2UgYXJlIHlvdSBnb2luZyB0byB1c2U/IFRoZXJlJ3Mgb25seSBvbmUgY29tcGF0aWJsZSBzdHJp
bmcuIERyb3AKPj4gZGVzY3JpcHRpb24uCj4gCj4gSXMgdXBkYXRlZCBpbiBhIHN1YnNlcXVlbnQg
YmluZGluZyB1cGRhdGUgd2hlcmUgSSBhZGRlZCB0aGUgQzcxIHN1cHBvcnQuCgpTZWUgaHR0cHM6
Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMTU2MzIzMS8uCgpMZXQgbWUga25vdyBpZiB5
b3UgcHJlZmVyIHRoYXQgSSBjb21iaW5lIGJvdGggb2YgdGhlbS4gQW55IGNoYW5nZXMgdG8gCnRo
aXMgcGF0Y2ggd2lsbCBhbHNvIGFmZmVjdCB0aGUgb3RoZXIuCgo+IAo+Pgo+Pj4gKwo+Pj4gK8Kg
IHJlZzoKPj4+ICvCoMKgwqAgZGVzY3JpcHRpb246IHwKPj4+ICvCoMKgwqDCoMKgIFNob3VsZCBj
b250YWluIGFuIGVudHJ5IGZvciBlYWNoIHZhbHVlIGluICdyZWctbmFtZXMnLgo+Pj4gK8KgwqDC
oMKgwqAgRWFjaCBlbnRyeSBzaG91bGQgaGF2ZSB0aGUgbWVtb3J5IHJlZ2lvbidzIHN0YXJ0IGFk
ZHJlc3MKPj4+ICvCoMKgwqDCoMKgIGFuZCB0aGUgc2l6ZSBvZiB0aGUgcmVnaW9uLCB0aGUgcmVw
cmVzZW50YXRpb24gbWF0Y2hpbmcKPj4+ICvCoMKgwqDCoMKgIHRoZSBwYXJlbnQgbm9kZSdzICcj
YWRkcmVzcy1jZWxscycgYW5kICcjc2l6ZS1jZWxscycgdmFsdWVzLgo+Pgo+PiBEb24ndCBuZWVk
IGdlbmVyaWMgZGVzY3JpcHRpb25zLiBUaGF0J3MgZXZlcnkgJ3JlZycuCj4+Cj4+IFdoYXQgeW91
IGNhbiBkbyBpcyBhbiAnaXRlbXMnIGxpc3QgZGVzY3JpYmluZyB3aGF0IGVhY2ggcmVnaW9uIGlz
Lgo+IAo+IE9LLCBJIGFtIGJpdCBjb25mdXNlZCBoZXJlLiBJIGhhdmUgbGlzdGVkIHRoZSBpdGVt
cyB1bmRlciB0aGUgcmVnLW5hbWVzLCAKPiB3aGlsZSB1c2luZyBqdXN0IHRoZSBtaW5JdGVtcyBv
ciBtYXhJdGVtcyBoZXJlLiBXaGF0IGlzIHRoZSBjb252ZW50aW9uLCAKPiBhcmVuJ3QgcmVnIGFu
ZCByZWctbmFtZXMgYXNzb2NpYXRpdmUuCj4gCj4+Cj4+PiArwqDCoMKgIG1pbkl0ZW1zOiAzCj4+
PiArwqDCoMKgIG1heEl0ZW1zOiAzCj4+PiArCj4+PiArwqAgcmVnLW5hbWVzOgo+Pj4gK8KgwqDC
oCBkZXNjcmlwdGlvbjogfAo+Pj4gK8KgwqDCoMKgwqAgU2hvdWxkIGNvbnRhaW4gc3RyaW5ncyB3
aXRoIHRoZSBuYW1lcyBvZiB0aGUgc3BlY2lmaWMgaW50ZXJuYWwKPj4+ICvCoMKgwqDCoMKgIG1l
bW9yeSByZWdpb25zLCBhbmQgc2hvdWxkIGJlIGRlZmluZWQgaW4gdGhpcyBvcmRlcgo+Pgo+PiBB
Z2FpbiwgZHJvcC4KPiAKPiBPSwo+IAo+Pgo+Pj4gK8KgwqDCoCBtYXhJdGVtczogMwo+Pj4gK8Kg
wqDCoCBpdGVtczoKPj4+ICvCoMKgwqDCoMKgIC0gY29uc3Q6IGwyc3JhbQo+Pj4gK8KgwqDCoMKg
wqAgLSBjb25zdDogbDFwcmFtCj4+PiArwqDCoMKgwqDCoCAtIGNvbnN0OiBsMWRyYW0KPj4+ICsK
Pj4+ICvCoCB0aSxzY2k6Cj4+PiArwqDCoMKgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2Rl
ZmluaXRpb25zL3BoYW5kbGUKPj4+ICvCoMKgwqAgZGVzY3JpcHRpb246Cj4+PiArwqDCoMKgwqDC
oCBTaG91bGQgYmUgYSBwaGFuZGxlIHRvIHRoZSBUSS1TQ0kgU3lzdGVtIENvbnRyb2xsZXIgbm9k
ZQo+Pj4gKwo+Pj4gK8KgIHRpLHNjaS1kZXYtaWQ6Cj4+PiArwqDCoMKgICRyZWY6IC9zY2hlbWFz
L3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3VpbnQzMgo+Pj4gK8KgwqDCoCBkZXNjcmlwdGlvbjog
fAo+Pj4gK8KgwqDCoMKgwqAgU2hvdWxkIGNvbnRhaW4gdGhlIFRJLVNDSSBkZXZpY2UgaWQgY29y
cmVzcG9uZGluZyB0byB0aGUgRFNQIAo+Pj4gY29yZS4KPj4+ICvCoMKgwqDCoMKgIFBsZWFzZSBy
ZWZlciB0byB0aGUgY29ycmVzcG9uZGluZyBTeXN0ZW0gQ29udHJvbGxlciBkb2N1bWVudGF0aW9u
Cj4+PiArwqDCoMKgwqDCoCBmb3IgdmFsaWQgdmFsdWVzIGZvciB0aGUgRFNQIGNvcmVzLgo+Pj4g
Kwo+Pj4gK8KgIHRpLHNjaS1wcm9jLWlkczoKPj4+ICvCoMKgwqAgZGVzY3JpcHRpb246IFNob3Vs
ZCBjb250YWluIGEgc2luZ2xlIHR1cGxlIG9mIDxwcm9jX2lkIGhvc3RfaWQ+Lgo+Pj4gK8KgwqDC
oCBhbGxPZjoKPj4+ICvCoMKgwqDCoMKgIC0gJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVm
aW5pdGlvbnMvdWludDMyLWFycmF5Cj4+PiArwqDCoMKgwqDCoCAtIG1heEl0ZW1zOiAxCj4+PiAr
wqDCoMKgwqDCoMKgwqAgaXRlbXM6Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgIGl0ZW1zOgo+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBkZXNjcmlwdGlvbjogVEktU0NJIHByb2Nlc3NvciBp
ZCBmb3IgdGhlIERTUCBjb3JlIGRldmljZQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBk
ZXNjcmlwdGlvbjogVEktU0NJIGhvc3QgaWQgdG8gd2hpY2ggcHJvY2Vzc29yIGNvbnRyb2wKPj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG93
bmVyc2hpcCBzaG91bGQgYmUgdHJhbnNmZXJyZWQgdG8KPj4KPj4gSSBhc3N1bWUgdGhlc2UgcHJv
cGVydGllcyBhcHBlYXIgaW4gbXVsdGlwbGUgVEkgbm9kZXM/IFdlIGRvbid0IG5lZWQKPj4gdGhl
bSBkZWZpbmVkIG11bHRpcGxlIHRpbWVzLiBDcmVhdGUgYSBzY2hlbWEgZm9yIHRoZW0gdGhhdCB5
b3UgY2FuCj4+IGluY2x1ZGUgaGVyZS4KPiAKPiBPbmx5IHRoZSByZW1vdGVwcm9jcywgc28gdGhl
eSBhcmUgbGltaXRlZCB0byB0aGlzIGJpbmRpbmcgYW5kIG9uZSBtb3JlIAo+IFI1RiByZW1vdGVw
cm9jIGJpbmRpbmcuCgpDYW4geW91IGNvbmZpcm0gaWYgdGhlc2UgYXJlIHRoZSBwcm9wZXJ0aWVz
IHlvdSB3YW50IG1vdmVkIC0gdGksc2NpLCAKdGksc2NpLWRldi1pZCBhbmQgdGksc2NpLXByb2Mt
aWRzPyBBbnkgcmVjb21tZW5kZWQgcGF0aCBJIHNob3VsZCBiZSAKdXNpbmcsIGlzIHJlbW90ZXBy
b2MgZm9sZGVyIHN0aWxsIGZpbmUgZm9yIHRoaXM/CgpyZWdhcmRzClN1bWFuCgo+IAo+Pgo+Pj4g
Kwo+Pj4gK8KgIHJlc2V0czoKPj4+ICvCoMKgwqAgZGVzY3JpcHRpb246IHwKPj4+ICvCoMKgwqDC
oMKgIFNob3VsZCBjb250YWluIHRoZSBwaGFuZGxlIHRvIHRoZSByZXNldCBjb250cm9sbGVyIG5v
ZGUKPj4+ICvCoMKgwqDCoMKgIG1hbmFnaW5nIHRoZSBsb2NhbCByZXNldHMgZm9yIHRoaXMgZGV2
aWNlLCBhbmQgYSByZXNldAo+Pj4gK8KgwqDCoMKgwqAgc3BlY2lmaWVyLiBQbGVhc2UgcmVmZXIg
dG8gdGhlIGZvbGxvd2luZyByZXNldCBiaW5kaW5ncwo+Pj4gK8KgwqDCoMKgwqAgZm9yIHRoZSBy
ZXNldCBhcmd1bWVudCBzcGVjaWZpZXIsCj4+PiArwqDCoMKgwqDCoCBEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcmVzZXQvdGksc2NpLXJlc2V0LnR4dAo+Pgo+PiBEcm9wLgo+IAo+
IEVudGlyZSBkZXNjcmlwdGlvbiBvciBqdXN0IHRoZSByZWZlcmVuY2UgdG8gdGhlIHJlc2V0IGJp
bmRpbmdzIGZpbGU/Cj4gCj4+Cj4+PiArwqDCoMKgIG1heEl0ZW1zOiAxCj4+PiArCj4+PiArwqAg
ZmlybXdhcmUtbmFtZToKPj4+ICvCoMKgwqAgZGVzY3JpcHRpb246IHwKPj4+ICvCoMKgwqDCoMKg
IFNob3VsZCBjb250YWluIHRoZSBuYW1lIG9mIHRoZSBkZWZhdWx0IGZpcm13YXJlIGltYWdlCj4+
PiArwqDCoMKgwqDCoCBmaWxlIGxvY2F0ZWQgb24gdGhlIGZpcm13YXJlIHNlYXJjaCBwYXRoCj4+
PiArCj4+PiArwqAgbWJveGVzOgo+Pj4gK8KgwqDCoCBkZXNjcmlwdGlvbjogfAo+Pj4gK8KgwqDC
oMKgwqAgT01BUCBNYWlsYm94IHNwZWNpZmllciBkZW5vdGluZyB0aGUgc3ViLW1haWxib3gsIHRv
IGJlIHVzZWQgZm9yCj4+PiArwqDCoMKgwqDCoCBjb21tdW5pY2F0aW9uIHdpdGggdGhlIHJlbW90
ZSBwcm9jZXNzb3IuIFRoaXMgcHJvcGVydHkgc2hvdWxkIAo+Pj4gbWF0Y2gKPj4+ICvCoMKgwqDC
oMKgIHdpdGggdGhlIHN1Yi1tYWlsYm94IG5vZGUgdXNlZCBpbiB0aGUgZmlybXdhcmUgaW1hZ2Uu
IFRoZSAKPj4+IHNwZWNpZmllcgo+Pj4gK8KgwqDCoMKgwqAgZm9ybWF0IGlzIGFzIHBlciB0aGUg
YmluZGluZ3MsCj4+PiArwqDCoMKgwqDCoCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvbWFpbGJveC9vbWFwLW1haWxib3gudHh0Cj4+Cj4+IERyb3AuIFdoYXQgbWFpbGJveCBwcm92
aWRlciBpcyB1c2VkIGlzIG91dHNpZGUgdGhlIHNjb3BlIG9mIHRoaXMKPj4gYmluZGluZy4KPiAK
PiBPSy4KPiAKPj4KPj4+ICvCoMKgwqAgbWF4SXRlbXM6IDEKPj4+ICsKPj4+ICvCoCBtZW1vcnkt
cmVnaW9uOgo+Pj4gK8KgwqDCoCBtaW5JdGVtczogMgo+Pj4gK8KgwqDCoCBtYXhJdGVtczogOAo+
Pj4gK8KgwqDCoCBkZXNjcmlwdGlvbjogfAo+Pj4gK8KgwqDCoMKgwqAgcGhhbmRsZSB0byB0aGUg
cmVzZXJ2ZWQgbWVtb3J5IG5vZGVzIHRvIGJlIGFzc29jaWF0ZWQgd2l0aCB0aGUgCj4+PiByZW1v
dGVwcm9jCj4+PiArwqDCoMKgwqDCoCBkZXZpY2UuIFRoZXJlIHNob3VsZCBiZSBhdCBsZWFzdCB0
d28gcmVzZXJ2ZWQgbWVtb3J5IG5vZGVzIAo+Pj4gZGVmaW5lZCAtIHRoZQo+Pj4gK8KgwqDCoMKg
wqAgZmlyc3Qgb25lIHdvdWxkIGJlIHVzZWQgZm9yIGR5bmFtaWMgRE1BIGFsbG9jYXRpb25zIGxp
a2UgCj4+PiB2cmluZ3MgYW5kIHZyaW5nCj4+PiArwqDCoMKgwqDCoCBidWZmZXJzLCBhbmQgdGhl
IHJlbWFpbmluZyBvbmVzIHVzZWQgZm9yIHRoZSBmaXJtd2FyZSBpbWFnZSAKPj4+IHNlY3Rpb25z
LiBUaGUKPj4+ICvCoMKgwqDCoMKgIHJlc2VydmVkIG1lbW9yeSBub2RlcyBzaG91bGQgYmUgY2Fy
dmVvdXQgbm9kZXMsIGFuZCBzaG91bGQgYmUgCj4+PiBkZWZpbmVkIGFzCj4+PiArwqDCoMKgwqDC
oCBwZXIgdGhlIGJpbmRpbmdzIGluCj4+PiArICAgICAgCj4+PiBEb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcmVzZXJ2ZWQtbWVtb3J5L3Jlc2VydmVkLW1lbW9yeS50eHQKPj4KPj4g
aXRlbXM6Cj4+IMKgwqAgLSBkZXNjcmlwdGlvbjogZHluYW1pYyBETUEgYWxsb2NhdGlvbnMgbGlr
ZSB2cmluZ3MgYW5kIHZyaW5nIGJ1ZmZlcnMKPj4gwqDCoCAtIGRlc2NyaXB0aW9uOiBmaXJtd2Fy
ZSBpbWFnZSBzZWN0aW9uID8/Pwo+PiDCoMKgIC0gZGVzY3JpcHRpb246IGZpcm13YXJlIGltYWdl
IHNlY3Rpb24gPz8/Cj4gCj4gWWVhaCwgdGhpcyBpcyBzY2FsYWJsZSBpZiB3ZSB3aWxsIGhhdmUg
bXVsdGlwbGUgc2VwYXJhdGUgRERSIHJlZ2lvbnMuIEkgCj4gaGFkIHRvIGNob29zZSBhIGRlY2Vu
dCBtYXhJdGVtcyB2YWx1ZSwgc28gSSBjaG9zZSA4LiBXb3VsZG4ndCBsaXN0aW5nIAo+IHRoZSBp
bmRpdmlkdWFsIGl0ZW1zIG92ZXJyaWRlIHRoZSBudW1iZXIgb2YgbWluSXRlbXMvbWF4SXRlbXM/
Cj4gCj4+Cj4+PiArCj4+PiArIyBPcHRpb25hbCBwcm9wZXJ0aWVzOgo+Pj4gKyMgLS0tLS0tLS0t
LS0tLS0tLS0tLS0KPj4+ICsKPj4+ICvCoCBzcmFtOgo+Pj4gK8KgwqDCoCAkcmVmOiAvc2NoZW1h
cy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9waGFuZGxlLWFycmF5Cj4+PiArwqDCoMKgIG1pbkl0
ZW1zOiAxCj4+PiArwqDCoMKgIG1heEl0ZW1zOiA0Cj4+PiArwqDCoMKgIGRlc2NyaXB0aW9uOiB8
Cj4+PiArwqDCoMKgwqDCoCBwaGFuZGxlcyB0byBvbmUgb3IgbW9yZSByZXNlcnZlZCBvbi1jaGlw
IFNSQU0gcmVnaW9ucy4gVGhlIAo+Pj4gcmVnaW9ucwo+Pj4gK8KgwqDCoMKgwqAgc2hvdWxkIGJl
IGRlZmluZWQgYXMgY2hpbGQgbm9kZXMgb2YgdGhlIHJlc3BlY3RpdmUgU1JBTSBub2RlLCBhbmQK
Pj4+ICvCoMKgwqDCoMKgIHNob3VsZCBiZSBkZWZpbmVkIGFzIHBlciB0aGUgZ2VuZXJpYyBiaW5k
aW5ncyBpbiwKPj4+ICvCoMKgwqDCoMKgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9zcmFtL3NyYW0ueWFtbAo+Pj4gKwo+Pj4gK3JlcXVpcmVkOgo+Pj4gKyAtIGNvbXBhdGlibGUK
Pj4+ICsgLSByZWcKPj4+ICsgLSByZWctbmFtZXMKPj4+ICsgLSB0aSxzY2kKPj4+ICsgLSB0aSxz
Y2ktZGV2LWlkCj4+PiArIC0gdGksc2NpLXByb2MtaWRzCj4+PiArIC0gcmVzZXRzCj4+PiArIC0g
ZmlybXdhcmUtbmFtZQo+Pj4gKyAtIG1ib3hlcwo+Pj4gKyAtIG1lbW9yeS1yZWdpb24KPj4+ICsK
Pj4+ICthZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKPj4+ICsKPj4+ICtleGFtcGxlczoKPj4+
ICvCoCAtIHwKPj4+ICvCoMKgwqAgLyB7Cj4+PiArwqDCoMKgwqDCoMKgwqAgbW9kZWwgPSAiVGV4
YXMgSW5zdHJ1bWVudHMgSzMgSjcyMUUgU29DIjsKPj4+ICvCoMKgwqDCoMKgwqDCoCBjb21wYXRp
YmxlID0gInRpLGo3MjFlIjsKPj4+ICvCoMKgwqDCoMKgwqDCoCAjYWRkcmVzcy1jZWxscyA9IDwy
PjsKPj4+ICvCoMKgwqDCoMKgwqDCoCAjc2l6ZS1jZWxscyA9IDwyPjsKPj4+ICsKPj4+ICvCoMKg
wqDCoMKgwqDCoCAvKiBEU1AgQ2FydmVvdXQgcmVzZXJ2ZWQgbWVtb3J5IG5vZGVzICovCj4+PiAr
wqDCoMKgwqDCoMKgwqAgcmVzZXJ2ZWQtbWVtb3J5IHsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgICNhZGRyZXNzLWNlbGxzID0gPDI+Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgI3Np
emUtY2VsbHMgPSA8Mj47Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByYW5nZXM7Cj4+PiAr
Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjNjZfMF9kbWFfbWVtb3J5X3JlZ2lvbjogYzY2
LWRtYS1tZW1vcnlAYTYwMDAwMDAgewo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBjb21wYXRpYmxlID0gInNoYXJlZC1kbWEtcG9vbCI7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHJlZyA9IDwweDAwIDB4YTYwMDAwMDAgMHgwMCAweDEwMDAwMD47Cj4+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG5vLW1hcDsKPj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIH07Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjNjZfMF9tZW1v
cnlfcmVnaW9uOiBjNjYtbWVtb3J5QGE2MTAwMDAwIHsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJzaGFyZWQtZG1hLXBvb2wiOwo+Pj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcgPSA8MHgwMCAweGE2MTAwMDAwIDB4MDAgMHhmMDAw
MDA+Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBuby1tYXA7Cj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+Pj4gK8KgwqDCoMKgwqDCoMKgIH07Cj4+Cj4+IERyb3Ag
YWxsIG9mIHRoaXMuIE91dHNpZGUgdGhlIHNjb3BlIG9mIHRoaXMgYmluZGluZy4gQW5kIHdpbGwg
bGlrZWx5Cj4+IHN0YXJ0IGZhaWxpbmcgdmFsaWRhdGlvbiBhcyBzY2hlbWFzIGJlY29tZSBtb3Jl
IGNvbXBsZXRlLgo+IAo+IFRoaXMgaXMgYSBjb21wbGV0ZSBleGFtcGxlIGJlY2F1c2Ugb2YgdGhl
IG1lbW9yeS1yZWdpb24gcmVmZXJlbmNlcyBiZWxvdy4KPiAKPj4KPj4+ICsKPj4+ICvCoMKgwqDC
oMKgwqDCoCBjYmFzc19tYWluOiBidXNAMTAwMDAwIHsKPj4KPj4gRHJvcCB1bnVzZWQgbGFiZWxz
Lgo+IAo+IE9LLgo+IAo+IHJlZ2FyZHMKPiBTdW1hbgo+IAo+Pgo+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgY29tcGF0aWJsZSA9ICJzaW1wbGUtYnVzIjsKPj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgICNhZGRyZXNzLWNlbGxzID0gPDI+Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
I3NpemUtY2VsbHMgPSA8Mj47Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByYW5nZXMgPSA8
MHgwMCAweDAwMTAwMDAwIDB4MDAgMHgwMDEwMDAwMCAweDAwIAo+Pj4gMHgwMDAyMDAwMD4sIC8q
IGN0cmwgbW1yICovCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCA8MHg0ZCAweDgwODAwMDAwIDB4NGQgMHg4MDgwMDAwMCAweDAwIAo+Pj4gMHgwMDgwMDAwMD4s
IC8qIEM2Nl8wICovCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCA8MHg0ZCAweDgxODAwMDAwIDB4NGQgMHg4MTgwMDAwMCAweDAwIAo+Pj4gMHgwMDgwMDAwMD47
IC8qIEM2Nl8xICovCj4+PiArCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvKiBKNzIxRSBD
NjZfMCBEU1Agbm9kZSAqLwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYzY2XzA6IGRzcEA0
ZDgwODAwMDAwIHsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJs
ZSA9ICJ0aSxqNzIxZS1jNjYtZHNwIjsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcmVnID0gPDB4NGQgMHg4MDgwMDAwMCAweDAwIDB4MDAwNDgwMDA+LAo+Pj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8MHg0ZCAweDgwZTAwMDAwIDB4MDAg
MHgwMDAwODAwMD4sCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIDwweDRkIDB4ODBmMDAwMDAgMHgwMCAweDAwMDA4MDAwPjsKPj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgcmVnLW5hbWVzID0gImwyc3JhbSIsICJsMXByYW0iLCAibDFkcmFt
IjsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdGksc2NpID0gPCZkbXNjPjsK
Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdGksc2NpLWRldi1pZCA9IDwxNDI+
Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0aSxzY2ktcHJvYy1pZHMgPSA8
MHgwMyAweEZGPjsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVzZXRzID0g
PCZrM19yZXNldCAxNDIgMT47Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZp
cm13YXJlLW5hbWUgPSAiajctYzY2XzAtZnciOwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBtZW1vcnktcmVnaW9uID0gPCZjNjZfMF9kbWFfbWVtb3J5X3JlZ2lvbj4sCj4+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgPCZjNjZfMF9tZW1vcnlfcmVnaW9uPjsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgbWJveGVzID0gPCZtYWlsYm94MF9jbHVzdGVyMyAmbWJveF9jNjZfMD47Cj4+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+Pj4gK8KgwqDCoMKgwqDCoMKgIH07Cj4+PiArwqDC
oMKgIH07Cj4+PiAtLSAKPj4+IDIuMjYuMAo+Pj4KPiAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
