Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80772850EE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 18:20:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LPZhZgMzVGuT+yJq+9l89lPKkO8/+PYd4Krb4+6MILE=; b=UV2n0rYGyjTBnB
	x4JalSEVwg2pYAcbi+X1zLkDCVi7PU0W8wmTxoS5Kx+h2vjLh3A7KgsT6OuDLRhAZNweFfnQjUM1n
	m/hpcrXyDm69a3MKkBc3/c0qvBBhicjNhWAb24IDimuKjP63Is/my++pZ0r0RqVrhdctMRXhg5/ch
	bI0rb3YY4Rh2rHyHyJlUzaLyCu6t1iRRWLpJmPom/tyXoFst5MTn3/oMpnd7lwCs6PZLfR2LB1E6g
	wajgi1h7hE15MtmZPVza+azfeILDm09h7zkh+lIwhXNHdD0E3iuNZFUIlpfwTX/33wzWCSLhbzf+B
	Iak3WxtMneaCRz2bouXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvOfR-0004OJ-IH; Wed, 07 Aug 2019 16:20:01 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOfE-0004Nh-7k
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 16:19:50 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x77GJf7I067099;
 Wed, 7 Aug 2019 11:19:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565194781;
 bh=Zb8W9EuN9h+ioKpDhDbW8AsmcjUEyy8dsKXf060zWuM=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=P0uPmYZpjT3lslMFU9rmNZDlKcspm94fWdIbgfnTqy+QUW27VO9oWdvXFMJJsXAr7
 +lnkn+w2pDVhq0hdGJhKW3rX7D/258xuMD6SsqVRYEgMBqZsxwRYGHSNjq4vXrwT6P
 iBnicme/oQVnDrTFoii0DGlrC1TbtrZ6ROyljvk0=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x77GJfBw056200
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 7 Aug 2019 11:19:41 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 7 Aug
 2019 11:19:41 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 7 Aug 2019 11:19:41 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x77GJfwg110878;
 Wed, 7 Aug 2019 11:19:41 -0500
Subject: Re: [PATCH 0/6] hwspinlock: allow sharing of hwspinlocks
To: Fabien DESSENNE <fabien.dessenne@st.com>, Bjorn Andersson
 <bjorn.andersson@linaro.org>
References: <1552492237-28810-1-git-send-email-fabien.dessenne@st.com>
 <20190801191403.GA7234@tuxbook-pro>
 <1a057176-81ab-e302-4375-2717ceef6924@st.com>
 <20190805174659.GA23928@tuxbook-pro>
 <dcd1aeea-cffe-d5fb-af5a-e52efcc2e046@ti.com>
 <20190806182128.GD26807@tuxbook-pro>
 <1aea3d28-29dc-f9de-3b86-cf777e0d5caa@ti.com>
 <02329102-5571-c6c1-b78c-693747133f0e@st.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <f0893b3f-0124-007a-3ca2-831f60ad9a80@ti.com>
Date: Wed, 7 Aug 2019 11:19:41 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <02329102-5571-c6c1-b78c-693747133f0e@st.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_091948_383257_E320E1E2 
X-CRM114-Status: GOOD (  33.81  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Mark Rutland <mark.rutland@arm.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>, Jonathan Corbet <corbet@lwn.net>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRmFiaWVuLAoKT24gOC83LzE5IDM6MzkgQU0sIEZhYmllbiBERVNTRU5ORSB3cm90ZToKPiBI
aQo+IAo+IE9uIDA2LzA4LzIwMTkgMTE6MzAgUE0sIFN1bWFuIEFubmEgd3JvdGU6Cj4+IE9uIDgv
Ni8xOSAxOjIxIFBNLCBCam9ybiBBbmRlcnNzb24gd3JvdGU6Cj4+PiBPbiBUdWUgMDYgQXVnIDEw
OjM4IFBEVCAyMDE5LCBTdW1hbiBBbm5hIHdyb3RlOgo+Pj4KPj4+PiBIaSBGYWJpZW4sCj4+Pj4K
Pj4+PiBPbiA4LzUvMTkgMTI6NDYgUE0sIEJqb3JuIEFuZGVyc3NvbiB3cm90ZToKPj4+Pj4gT24g
TW9uIDA1IEF1ZyAwMTo0OCBQRFQgMjAxOSwgRmFiaWVuIERFU1NFTk5FIHdyb3RlOgo+Pj4+Pgo+
Pj4+Pj4gT24gMDEvMDgvMjAxOSA5OjE0IFBNLCBCam9ybiBBbmRlcnNzb24gd3JvdGU6Cj4+Pj4+
Pj4gT24gV2VkIDEzIE1hciAwODo1MCBQRFQgMjAxOSwgRmFiaWVuIERlc3Nlbm5lIHdyb3RlOgo+
Pj4gWy4uXQo+Pj4+Pj4gQi8gVGhpcyB3b3VsZCBpbnRyb2R1Y2Ugc29tZSBpbmNvbnNpc3RlbmN5
IGJldHdlZW4gdGhlIHR3byAncmVxdWVzdCcgQVBJCj4+Pj4+PiB3aGljaCBhcmUgaHdzcGluX2xv
Y2tfcmVxdWVzdCgpIGFuZCBod3NwaW5fbG9ja19yZXF1ZXN0X3NwZWNpZmljKCkuCj4+Pj4+PiBo
d3NwaW5fbG9ja19yZXF1ZXN0KCkgbG9va3MgZm9yIGFuIHVudXNlZCBsb2NrLCBzbyByZXF1ZXN0
cyBmb3IgYW4gZXhjbHVzaXZlCj4+Pj4+PiB1c2FnZS4gT24gdGhlIG90aGVyIHNpZGUsIHJlcXVl
c3Rfc3BlY2lmaWMoKSB3b3VsZCByZXF1ZXN0IHNoYXJlZCBsb2Nrcy4KPj4+Pj4+IFdvcnN0IHRo
ZSBmb2xsb3dpbmcgc2VxdWVuY2UgY2FuIHRyYW5zZm9ybSBhbiBleGNsdXNpdmUgdXNhZ2UgaW50
byBhIHNoYXJlZAo+Pj4+Pj4KPj4+Pj4gVGhlcmUgaXMgYWxyZWFkeSBhbiBpbmNvbnNpc3RlbmN5
IGluIGJldHdlZW4gdGhlc2U7IGFzIHdpdGggYWJvdmUgYW55Cj4+Pj4+IHN5c3RlbSB0aGF0IHVz
ZXMgYm90aCByZXF1ZXN0KCkgYW5kIHJlcXVlc3Rfc3BlY2lmaWMoKSB3aWxsIGJlIHN1ZmZlcmlu
Zwo+Pj4+PiBmcm9tIGludGVybWl0dGVudCBmYWlsdXJlcyBkdWUgdG8gcHJvYmUgb3JkZXJpbmcu
Cj4+Pj4+Cj4+Pj4+PiBvbmU6Cj4+Pj4+PiAgIMKgIC1od3NwaW5fbG9ja19yZXF1ZXN0KCkgLT4g
cmV0dXJucyBJZCMwIChleGNsdXNpdmUpCj4+Pj4+PiAgIMKgIC1od3NwaW5fbG9ja19yZXF1ZXN0
KCkgLT4gcmV0dXJucyBJZCMxIChleGNsdXNpdmUpCj4+Pj4+PiAgIMKgIC1od3NwaW5fbG9ja19y
ZXF1ZXN0X3NwZWNpZmljKDApIC0+IHJldHVybnMgSWQjMCBhbmQgbWFrZXMgSWQjMCBzaGFyZWQK
Pj4+Pj4+IEhvbmVzdGx5IEkgYW0gbm90IHN1cmUgdGhhdCB0aGlzIGlzIGEgcmVhbCBpc3N1ZSwg
YnV0IGl0J3MgYmV0dGVyIHRvIGhhdmUgaXQKPj4+Pj4+IGluIG1pbmQgYmVmb3JlIHdlIHRha2Ug
YXkgZGVjaXNpb24KPj4+PiBXb3VsZG4ndCBpdCBiZSBhY3R1YWxseSBzaW1wbGVyIHRvIGp1c3Qg
aW50cm9kdWNlIGEgbmV3IHNwZWNpZmljIEFQSQo+Pj4+IHZhcmlhbnQgZm9yIHRoaXMsIHNpbWls
YXIgdG8gdGhlIHJlc2V0IGNvcmUgZm9yIGV4YW1wbGUgKGl0IHVzZXMgYQo+Pj4+IHNlcGFyYXRl
IGV4Y2x1c2l2ZSBBUEkpLCB3aXRob3V0IGhhdmluZyB0byBtb2RpZnkgdGhlIGJpbmRpbmdzIGF0
IGFsbC4KPj4+PiBJdCBpcyBqdXN0IGEgY2FzZSBvZiB5b3VyIGRyaXZlciB1c2luZyB0aGUgcmln
aHQgQVBJLCBhbmQgdGhlIGNvcmUgY2FuCj4+Pj4gYmUgbW9kaWZpZWQgdG8gdXNlIHRoZSBhZGRp
dGlvbmFsIHRhZyBzZW1hbnRpY3MgYmFzZWQgb24gdGhlIEFQSS4gSXQKPj4+PiBzaG91bGQgYXZv
aWQgYW55IGNvbmZ1c2lvbiB3aXRoIHNheSB1c2luZyBhIGRpZmZlcmVudCBzZWNvbmQgY2VsbCB2
YWx1ZQo+Pj4+IGZvciB0aGUgc2FtZSBsb2NrIGluIHR3byBkaWZmZXJlbnQgbm9kZXMuCj4+Pj4K
Pj4+IEJ1dCB0aGlzIGltcGxpZXMgdGhhdCB0aGVyZSBpcyBhbiBhY3R1YWwgbmVlZCB0byBob2xk
IHRoZXNlIGxvY2tzCj4+PiBleGNsdXNpdmVseS4gR2l2ZW4gdGhhdCB0aGV5IGFyZSAoZXhjZXB0
IGZvciB0aGUgcmF3IGNhc2UpIGFsbCB3cmFwcGVkCj4+PiBieSBMaW51eCBsb2NraW5nIHByaW1p
dGl2ZXMgdGhlcmUgc2hvdWxkbid0IGJlIGEgcHJvYmxlbSBzaGFyaW5nIGEgbG9jawo+Pj4gKGV4
Y2VwdCBwb3NzaWJseSBmb3IgdGhlIHJhdyBjYXNlKS4KPj4gWWVzIGFncmVlZCwgdGhlIEhXTE9D
S19SQVcgYW5kIEhXTE9DS19JTl9BVE9NSUMgY2FzZXMgYXJlIHVucHJvdGVjdGVkLiBJCj4+IGFt
IHN0aWxsIHRyeWluZyB0byB1bmRlcnN0YW5kIGJldHRlciB0aGUgdXNlY2FzZSB0byBzZWUgaWYg
dGhlIHNhbWUgbG9jawo+PiBpcyBiZWluZyBtdWx0aXBsZXhlZCBmb3IgZGlmZmVyZW50IHByb3Rl
Y3Rpb24gY29udGV4dHMsIG9yIGlmIGFsbCBvZgo+PiB0aGVtIGFyZSBwcm90ZWN0aW5nIHRoZSBz
YW1lIGNvbnRleHQuCj4gCj4gCj4gSGVyZSBhcmUgdHdvIGRpZmZlcmVudCBleGFtcGxlcyB0aGF0
IGV4cGxhaW4gdGhlIG5lZWQgZm9yIGNoYW5nZXMuCj4gSW4gYm90aCBjYXNlcyB0aGUgTGludXgg
Y2xpZW50cyBhcmUgdGFsa2luZyB0byBhIHNpbmdsZSBlbnRpdHkgb24gdGhlCj4gcmVtb3RlLXNp
ZGUuCj4gCj4gRXhhbXBsZSAxOgo+ICDCoMKgwqAgZXh0aTogaW50ZXJydXB0LWNvbnRyb2xsZXJA
NTAwMGQwMDAgewo+ICDCoMKgwqAgwqDCoMKgIGNvbXBhdGlibGUgPSAic3Qsc3RtMzJtcDEtZXh0
aSIsICJzeXNjb24iOwo+ICDCoMKgwqAgwqDCoMKgIGludGVycnVwdC1jb250cm9sbGVyOwo+ICDC
oMKgwqAgwqDCoMKgICNpbnRlcnJ1cHQtY2VsbHMgPSA8Mj47Cj4gIMKgwqDCoCDCoMKgwqAgcmVn
ID0gPDB4NTAwMGQwMDAgMHg0MDA+Owo+ICDCoMKgwqAgwqDCoMKgIGh3bG9ja3MgPSA8JmhzZW0g
MT47Cj4gIMKgwqDCoCB9Owo+IFRoZSB0d28gZHJpdmVycyAoc3RtMzJtcDEtZXh0aSBhbmQgc3lz
Y29uKSByZWZlciB0byB0aGUgc2FtZSBod2xvY2suCj4gV2l0aCB0aGUgY3VycmVudCBod3NwaW5s
b2NrIGltcGxlbWVudGF0aW9uLCBvbmx5IHRoZSBmaXJzdCBkcml2ZXIgc3VjY2VlZHMKPiBpbiBy
ZXF1ZXN0aW5nIChod3NwaW5fbG9ja19yZXF1ZXN0X3NwZWNpZmljKSB0aGUgaHdsb2NrLiBUaGUg
c2Vjb25kIHJlcXVlc3QKPiBmYWlscy4KPiBIZXJlLCB3ZSByZWFsbHkgbmVlZCB0byBzaGFyZSB0
aGUgaHdsb2NrIGJldHdlZW4gdGhlIHR3byBkcml2ZXJzLgo+IE5vdGU6IGhhcmR3YXJlIHNwaW5s
b2NrIHN1cHBvcnQgZm9yIHJlZ21hcCB3YXMgJ3JlY2VudGx5JyBpbnRyb2R1Y2VkIGluIDQuMTUK
PiBzZWUgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvcGF0Y2h3b3JrL3BhdGNoLzg0NTk0MS8KPiAK
PiAKPiAKPiBFeGFtcGxlIDI6Cj4gSGVyZSBpdCBpcyBtb3JlIGEgcXVlc3Rpb24gb2Ygb3B0aW1p
emF0aW9uIDogd2Ugd2FudCB0byBzYXZlIHRoZSBudW1iZXIgb2YKPiBod2xvY2tzIHVzZWQgdG8g
cHJvdGVjdCByZXNvdXJjZXMsIHVzaW5nIGFuIHVuaXF1ZSBod2xvY2sgdG8gcHJvdGVjdCBhbGwK
PiBwaW5jdHJsIHJlc291cmNlczoKPiAgwqDCoMKgIMKgwqDCoCBwaW5jdHJsOiBwaW4tY29udHJv
bGxlckA1MDAwMjAwMCB7Cj4gIMKgwqDCoCDCoMKgwqAgwqDCoMKgIGNvbXBhdGlibGUgPSAic3Qs
c3RtMzJtcDE1Ny1waW5jdHJsIjsKPiAgwqDCoMKgIMKgwqDCoCDCoMKgwqAgcmFuZ2VzID0gPDAg
MHg1MDAwMjAwMCAweGE0MDA+Owo+ICDCoMKgwqAgwqDCoMKgIMKgwqDCoCBod2xvY2tzID0gPCZo
c2VtIDAgMT47Cj4gCj4gIMKgwqDCoCDCoMKgwqAgcGluY3RybF96OiBwaW4tY29udHJvbGxlci16
QDU0MDA0MDAwIHsKPiAgwqDCoMKgIMKgwqDCoCDCoMKgwqAgY29tcGF0aWJsZSA9ICJzdCxzdG0z
Mm1wMTU3LXotcGluY3RybCI7Cj4gIMKgwqDCoCDCoMKgwqAgwqDCoMKgIHJhbmdlcyA9IDwwIDB4
NTQwMDQwMDAgMHg0MDA+Owo+ICDCoMKgwqAgwqDCoMKgIMKgwqDCoCBwaW5zLWFyZS1udW1iZXJl
ZDsKPiAgwqDCoMKgIMKgwqDCoCDCoMKgwqAgaHdsb2NrcyA9IDwmaHNlbSAwIDE+OwoKVGhhbmtz
IGZvciB0aGUgZXhhbXBsZXMuCgo+IAo+Pgo+Pj4gSSBhZ3JlZSB0aGF0IHdlIHNob3VsZG4ndCBz
cGVjaWZ5IHRoaXMgcHJvcGVydHkgaW4gRFQgLSBpZiBhbnl0aGluZyBpdAo+Pj4gc2hvdWxkIGJl
IGEgdmFyaWFudCBvZiB0aGUgQVBJLgo+IAo+IAo+IElmIHdlIGRlY2lkZSB0byBhZGQgYSAnc2hh
cmVkJyBBUEksIHRoZW4sIHdoYXQgYWJvdXQgdGhlIGdlbmVyaWMgcmVnbWFwIAo+IGRyaXZlcj8K
PiAKPiBJbiB0aGUgY29udGV4dCBvZiBhYm92ZSBleGFtcGxlMSwgdGhpcyB3b3VsZCByZXF1aXJl
IHRvIHVwZGF0ZSB0aGUgCj4gcmVnbWFwIGRyaXZlci4KPiAKPiBCdXQgd291bGQgdGhpcyBiZSBh
Y2NlcHRhYmxlIGZvciBhbnkgZHJpdmVyIHVzaW5nIHN5c2Nvbi9yZWdtYXA/Cj4gCj4gCj4gSSB0
aGluayBpdCBpcyBiZXR0ZXIgdG8ga2VlcCB0aGUgZXhpc3RpbmcgQVBJIChtb2RpZnlpbmcgaXQg
c28gaXQgYWx3YXlzIAo+IGFsbG93cwo+IAo+IGh3bG9ja3Mgc2hhcmluZywgc28gbm8gbmVlZCBm
b3IgYmluZGluZ3MgdXBkYXRlKSB0aGFuIGFkZGluZyBhbm90aGVyIEFQSS4KCkZvciB5b3VyIHVz
ZWNhc2VzLCB5b3Ugd291bGQgZGVmaW5pdGVseSBuZWVkIHRoZSBzeXNjb24vcmVnbWFwIGJlaGF2
aW9yCnRvIGJlIHNoYXJlZCByaWdodC4gV2hldGhlciB3ZSBpbnRyb2R1Y2UgYSAnc2hhcmVkJyBB
UEkgb3IgYW4KJ2V4Y2x1c2l2ZScgQVBJIGFuZCBjaGFuZ2UgdGhlIGN1cnJlbnQgQVBJIGJlaGF2
aW9yIHRvIHNoYXJlZCwgaXQgaXMKZGVmaW5pdGVseSBhIGNhc2UtYnktY2FzZSB1c2FnZSBzY2Vu
YXJpbyBmb3IgdGhlIGV4aXN0aW5nIGRyaXZlcnMgYW5kCnVzYWdlIHJpZ2h0LiBUaGUgbWFpbiBj
b250ZW50aW9uIHBvaW50IGlzIHdoYXQgdG8gZG8gd2l0aCB0aGUKdW5wcm90ZWN0ZWQgdXNlY2Fz
ZXMgbGlrZSBCam9ybiBvcmlnaW5hbGx5IHBvaW50ZWQgb3V0LgoKcmVnYXJkcwpTdW1hbgoKPiAK
PiAKPiAKPj4+Cj4+Pj4gSWYgeW91IGFyZSBzaGFyaW5nIGEgaHdsb2NrIG9uIHRoZSBMaW51eCBz
aWRlLCBzdXJlbHkgeW91ciBkcml2ZXIgc2hvdWxkCj4+Pj4gYmUgYXdhcmUgdGhhdCBpdCBpcyBh
IHNoYXJlZCBsb2NrLiBUaGUgdGFnIGNhbiBiZSBzZXQgZHVyaW5nIHRoZSBmaXJzdAo+Pj4+IHJl
cXVlc3QgQVBJLCBhbmQgeW91IGxvb2sgdGhyb3VnaCBib3RoIHRhZ3Mgd2hlbiBnaXZpbmcgb3V0
IGEgaGFuZGxlLgo+Pj4+Cj4+PiBXaHkgd291bGQgdGhlIGRyaXZlciBuZWVkIHRvIGtub3cgYWJv
dXQgaXQ/Cj4+IEp1c3QgdGhlIHNlbWFudGljcyBpZiB3ZSB3ZXJlIHRvIHN1cHBvcnQgc2luZ2xl
IHVzZXIgdnMgbXVsdGlwbGUgdXNlcnMKPj4gb24gTGludXgtc2lkZSB0byBldmVuIGdldCBhIGhh
bmRsZS4gWW91ciBwb2ludCBpcyB0aGF0IHRoaXMgbWF5IGJlIG1vb3QKPj4gc2luY2Ugd2UgaGF2
ZSBwcm90ZWN0aW9uIGFueXdheSBvdGhlciB0aGFuIHRoZSByYXcgY2FzZXMuIEJ1dCB3ZSBuZWVk
IHRvCj4+IGJlIGFibGUgdG8gaGF2ZSB0aGUgc2FtZSBBUEkgd29yayBhY3Jvc3MgYWxsIGNhc2Vz
Lgo+Pgo+PiBTbyBmYXIsIGl0IGhhZCBtb3N0bHkgYmVlbiB0aGF0IHRoZXJlIHdvdWxkIGJlIG9u
ZSB1c2VyIG9uIExpbnV4Cj4+IGNvbXBldGluZyB3aXRoIG90aGVyIGVxdWl2YWxlbnQgcGVlciBl
bnRpdGllcyBvbiBkaWZmZXJlbnQgcHJvY2Vzc29ycy4KPj4gSXQgaXMgbm90IGNvbW1vbiB0byBo
YXZlIG11bHRpcGxlIHVzZXJzIHNpbmNlIHRoZXNlIHByb3RlY3Rpb24gc2NoZW1lcwo+PiBhcmUg
dXN1YWxseSBuZWVkZWQgb25seSBhdCB0aGUgbG93ZXN0IGxldmVscyBvZiBhIHN0YWNrLCBzbyB0
aGUKPj4gZXhjbHVzaXZlIGhhbmRsZSBzdHVmZiBoYWQgYmVlbiBzdWZmaWNpZW50Lgo+Pgo+Pj4+
IE9idmlvdXNseSwgdGhlIGh3c3Bpbl9sb2NrX3JlcXVlc3QoKSBBUEkgdXNhZ2Ugc2VtYW50aWNz
IGFsd2F5cyBoYWQgdGhlCj4+Pj4gaW1wbGllZCBhZGRpdGlvbmFsIG5lZWQgZm9yIGNvbW11bmlj
YXRpbmcgdGhlIGxvY2sgaWQgdG8gdGhlIG90aGVyIHBlZXIKPj4+PiBlbnRpdHksIHNvIGEgcmVh
bGlzdGljIHVzYWdlIGlzIG1vc3QgYWx3YXlzIHRoZSBzcGVjaWZpYyBBUEkgdmFyaWFudC4gSQo+
Pj4+IGRvdWJ0IHRoaXMgQVBJIHdvdWxkIGJlIG9mIG11Y2ggdXNlIGZvciB0aGUgc2hhcmVkIGRy
aXZlciB1c2FnZS4gVGhpcwo+Pj4+IGFsc28gaW1wbGllcyB0aGF0IHRoZSBjbGllbnQgdXNlciBk
b2VzIG5vdCBjYXJlIGFib3V0IHNwZWNpZnlpbmcgYSBsb2NrCj4+Pj4gaW4gRFQuCj4+Pj4KPj4+
IEFmYWljdCBpZiB0aGUgbG9jayBhcmUgc2hhcmVkIHRoZW4gdGhlcmUgc2hvdWxkbid0IGJlIGEg
cHJvYmxlbSB3aXRoCj4+PiBzb21lIGNsaWVudHMgdXNpbmcgdGhlIHJlcXVlc3QgQVBJIGFuZCBv
dGhlcnMgcmVxdWVzdF9zcGVjaWZpYygpLiBBcyBhbnkKPj4+IGNvbGxpc2lvbnMgd291bGQgc2lt
cGx5IG1lYW4gdGhhdCB0aGVyZSBhcmUgbW9yZSBjb250ZW50aW9uIG9uIHRoZSBsb2NrLgo+Pj4K
Pj4+IFdpdGggdGhlIGN1cnJlbnQgZXhjbHVzaXZlIG1vZGVsIHRoYXQgaXMgbm90IHBvc3NpYmxl
IGFuZCB0aGUgc3VjY2VzcyBvZgo+Pj4gdGhlIHJlcXVlc3Rfc3BlY2lmaWMgd2lsbCBkZXBlbmQg
b24gcHJvYmUgb3JkZXIuCj4+Pgo+Pj4gQnV0IHBlcmhhcHMgaXQgc2hvdWxkIGJlIGV4cGxpY2l0
bHkgcHJvaGliaXRlZCB0byB1c2UgYm90aCBBUElzIG9uIHRoZQo+Pj4gc2FtZSBod3NwaW5sb2Nr
IGluc3RhbmNlPwo+PiBZZWFoLCB0aGV5IGFyZSBtZWFudCB0byBiZSBjb21wbGltZW50YXJ5IHVz
YWdlLCB0aG91Z2ggSSBkb3VidCB3ZSB3aWxsCj4+IGV2ZXIgaGF2ZSBhbnkgcmVhbGlzdGljIHVz
ZXJzIGZvciB0aGUgZ2VuZXJpYyBBUEkgaWYgd2UgaGF2ZW4ndCBoYWQgYQo+PiB1c2FnZSBzbyBm
YXIuIEkgaGFkIHBvc3RlZCBhIGNvbmNlcHQgb2YgcmVzZXJ2ZWQgbG9ja3MgbG9uZyBiYWNrIFsx
XSB0bwo+PiBrZWVwIGF3YXkgY2VydGFpbiBsb2NrcyBmcm9tIHRoZSBnZW5lcmljIHJlcXVlc3Rv
ciwgYnV0IGRyb3BwZWQgaXQgc2luY2UKPj4gd2UgZGlkIG5vdCBoYXZlIGFuIGFjdHVhbCB1c2Ut
Y2FzZSBuZWVkaW5nIGl0Lgo+Pgo+PiByZWdhcmRzCj4+IFN1bWFuCj4+Cj4+IFsxXSBodHRwczov
L2x3bi5uZXQvQXJ0aWNsZXMvNjExOTQ0LwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
