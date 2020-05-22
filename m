Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF7C1DEF93
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 20:59:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Lr70FxWJLbbKdHsUS7yP3dvFg7QKYNE1XqPha1mzRok=; b=LPLvBKgrjYGozjU6P0JoEx7at
	eIXT0bJ0+DMRTogzwiSuDvM+u8tlE8L0HWhWvuWh6aUj2OciWMONDW8DNWZitbrV0N7S0/50XI3l5
	tjifu0FaMKnGZt/xPB7o8tFKM7h4DoMQeAe5hxVqPEeGHs+lJcwyVl5jqRw1ekBsEbfj2uCQODqPH
	TMha8i5sorXCS0RpHHzaUmB9KFT44YjUOmoNm4A1d9BEMyBqY5ssFHrmOJXP0/B90bngeoZQo5xeq
	GrDPg1zwgfqwHWowGAPSb9Boq+tRhjyi6J6FEYJI0y+T5g2vKjkFizbNmvKn/oIpwkrhdeDBQ1NLm
	NUjM1l0Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcCt6-0001de-2W; Fri, 22 May 2020 18:59:20 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcCsv-0001d6-UK
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 18:59:11 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04MIx5tD018590;
 Fri, 22 May 2020 13:59:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590173945;
 bh=cWQVyiUOGA6CdUt5XXyh7cFJsbmK3Mc23pxMgj5Hzmg=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=pni8T/B83UwO2WLa8S+nfay+6qWJQQptvGZT3X7n5c1MIJ+gmrNnuPD3C83kR6dh/
 Xt6Bn01NtTd7CRym4xhSIj9g5lCr3TCZHr5w73XqHtXiuLIROFz2pTlK+qI/ZAYLnP
 GnL/xnvtxdZ0Z5gtUC39tpxV77IHwSn/pXFHtiNk=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04MIx55t032460
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 22 May 2020 13:59:05 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 22
 May 2020 13:59:04 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 22 May 2020 13:59:04 -0500
Received: from [10.250.48.148] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04MIx414059462;
 Fri, 22 May 2020 13:59:04 -0500
Subject: Re: [PATCH 3/4] remoteproc: add support for a new 64-bit trace version
To: =?UTF-8?Q?Cl=c3=a9ment_Leger?= <cleger@kalray.eu>, Bjorn Andersson
 <bjorn.andersson@linaro.org>
References: <20200325204701.16862-1-s-anna@ti.com>
 <20200325204701.16862-4-s-anna@ti.com> <20200521180417.GJ408178@builder.lan>
 <997d6f9a-64ba-7a89-e909-9a5a474120b0@ti.com>
 <f15b0c6d-eee8-b839-0c79-a5316dbbfa7b@ti.com> <20200522173346.GJ11847@yoga>
 <1739080680.4218297.1590170621467.JavaMail.zimbra@kalray.eu>
 <1334263091.4218509.1590171014972.JavaMail.zimbra@kalray.eu>
From: Suman Anna <s-anna@ti.com>
Message-ID: <4fab212b-a9d2-927e-d3d7-e591912fd6cf@ti.com>
Date: Fri, 22 May 2020 13:59:04 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1334263091.4218509.1590171014972.JavaMail.zimbra@kalray.eu>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_115910_058202_E2E20B37 
X-CRM114-Status: GOOD (  20.76  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Loic PALLARDY <loic.pallardy@st.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2xlbWVudCwKCj4gID4gLS0tLS0gT24gMjIgTWF5LCAyMDIwLCBhdCAyMDowMywgQ2zDqW1l
bnQgTGVnZXIgY2xlZ2VyQGthbHJheS5ldSB3cm90ZTo+Cj4+IEhpIFN1bWFuLAo+Pgo+PiAtLS0t
LSBPbiAyMiBNYXksIDIwMjAsIGF0IDE5OjMzLCBCam9ybiBBbmRlcnNzb24gYmpvcm4uYW5kZXJz
c29uQGxpbmFyby5vcmcKPj4gd3JvdGU6Cj4+Cj4+PiBPbiBGcmkgMjIgTWF5IDA5OjU0IFBEVCAy
MDIwLCBTdW1hbiBBbm5hIHdyb3RlOgo+Pj4KPj4+PiBPbiA1LzIxLzIwIDI6NDIgUE0sIFN1bWFu
IEFubmEgd3JvdGU6Cj4+Pj4+IEhpIEJqb3JuLAo+Pj4+Pgo+Pj4+PiBPbiA1LzIxLzIwIDE6MDQg
UE0sIEJqb3JuIEFuZGVyc3NvbiB3cm90ZToKPj4+Pj4+IE9uIFdlZCAyNSBNYXIgMTM6NDcgUERU
IDIwMjAsIFN1bWFuIEFubmEgd3JvdGU6Cj4+PiBbLi5dCj4+Pj4+Pj4gZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvbGludXgvcmVtb3RlcHJvYy5oIGIvaW5jbHVkZS9saW51eC9yZW1vdGVwcm9jLmgKPj4+
IFsuLl0KPj4+Pj4+PiArc3RydWN0IGZ3X3JzY190cmFjZTIgewo+Pj4+Pj4KPj4+Pj4+IFNvdW5k
cyBtb3JlIGxpa2UgZndfcnNjX3RyYWNlNjQgdG8gbWUgLSBpbiBwYXJ0aWN1bGFyIHNpbmNlIHRo
ZSB2ZXJzaW9uCj4+Pj4+PiBvZiB0cmFjZTIgaXMgMS4uLgo+Pj4+Pgo+Pj4+PiBZZWFoLCB3aWxs
IHJlbmFtZSB0aGlzLgo+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+PiArwqDCoMKgIHUzMiBwYWRkaW5nOwo+
Pj4+Pj4+ICvCoMKgwqAgdTY0IGRhOwo+Pj4+Pj4+ICvCoMKgwqAgdTMyIGxlbjsKPj4+Pj4+PiAr
wqDCoMKgIHUzMiByZXNlcnZlZDsKPj4+Pj4+Cj4+Pj4+PiBXaGF0J3MgdGhlIHB1cnBvc2Ugb2Yg
dGhpcyByZXNlcnZlZCBmaWVsZD8KPj4+Pj4KPj4+Pj4gUGFydGx5IHRvIG1ha2Ugc3VyZSB0aGUg
ZW50aXJlIHJlc291cmNlIGlzIGFsaWduZWQgb24gYW4gOC1ieXRlLCBhbmQKPj4+Pj4gcGFydGx5
IGNvcGllZCBvdmVyIGZyb20gZndfcnNjX3RyYWNlIGVudHJ5LiBJIGd1ZXNzIDMyLWJpdHMgaXMg
YWxyZWFkeQo+Pj4+PiBsYXJnZSBlbm91Z2ggb2YgYSBzaXplIGZvciB0cmFjZSBlbnRyaWVzIGly
cmVzcGVjdGl2ZSBvZiAzMi1iaXQgb3IKPj4+Pj4gNjQtYml0IHRyYWNlcywgc28gSSBkb3VidCBp
ZiB3ZSB3YW50IHRvIG1ha2UgdGhlIGxlbiBmaWVsZCBhbHNvIGEgdTY0Lgo+Pj4+Cj4+Pj4gTG9v
a2luZyBhdCB0aGlzIGFnYWluLCBJIGNhbiBkcm9wIGJvdGggcGFkZGluZyBhbmQgcmVzZXJ2ZWQg
ZmllbGRzLCBpZiBJCj4+Pj4gbW92ZSB0aGUgbGVuIGZpZWxkIGJlZm9yZSBkYS4gQW55IHByZWZl
cmVuY2VzL2NvbW1lbnRzPwo+Pgo+IFNvcnJ5LCBteSBtZXNzYWdlIHdlbnQgYSBiaXQgdG9vIGZh
c3QuLi4gU28gYXMgSSB3YXMgc2F5aW5nOgo+IAo+IE5vdCBvbmx5IHRoZSBpbi1zdHJ1Y3R1cmUg
YWxpZ25tZW50IG1hdHRlcnMgYnV0IGFsc28gaW4gdGhlIHJlc291cmNlIHRhYmxlLgo+IFNpbmNl
IHRoZSByZXNvdXJjZSB0YWJsZSBpcyBvZnRlbiBwYWNrZWQgKHNlZSBbMV0gZm9yIGluc3RhbmNl
KSwgaWYgYSB0cmFjZQo+IHJlc291cmNlIGlzIGVtYmVkZGVkIGluIHRoZSByZXNvdXJjZSB0YWJs
ZSBhZnRlciBhbm90aGVyIHJlc291cmNlIGFsaWduZWQKPiBvbiAzMiBiaXRzIG9ubHksIHlvdXIg
NjQgYml0cyB0cmFjZSBmaWVsZCB3aWxsIHBvdGVudGlhbGx5IGVuZCB1cAo+IG1pc2FsaWduZWQu
CgpSaWdodC4gU2luY2Ugb25lIGNhbiBtaXggYW5kIG1hdGNoIHRoZSByZXNvdXJjZXMgb2YgZGlm
ZmVyZW50IHNpemVzIGFuZCAKaW5jbHVkZSB0aGVtIGluIGFueSBvcmRlciwgdGhlIG9udXMgaXMg
Z29pbmcgdG8gYmUgb24gdGhlIHJlc291cmNlIHRhYmxlIApjb25zdHJ1Y3RvcnMgdG8gZW5zdXJl
IHRoZSBpbnRlci1yZXNvdXJjZSBhbGlnbm1lbnRzLCBpZiBhbnkgYXJlIApyZXF1aXJlZC4gVGhl
IHJlc291cmNlIHRhYmxlIGZvcm1hdCBhbGxvd3MgeW91IHRvIGFkZCBwYWRkaW5nIGZpZWxkcyBp
biAKYmV0d2VlbiBpZiBuZWVkZWQsIGFuZCB0aGUgcmVtb3RlcHJvYyBjb3JlIHJlbGllcyBvbiB0
aGUgb2Zmc2V0cy4KCkkgY2FuIG9ubHkgZW5zdXJlIHRoZSBhbGlnbm1lbnQgd2l0aGluIHRoaXMg
cmVzb3VyY2Ugc3RydWN0dXJlIHdpdGggCnJlYWR5LWF2YWlsYWJsZSBhY2Nlc3MgYW5kIGNvbnZl
cnNpb24gdG8vZnJvbSBhIDY0LWJpdCB0eXBlLCBhcyBsb25nIGFzIAp0aGUgcmVzb3VyY2UgaXMg
c3RhcnRpbmcgb24gYSA2NC1iaXQgYm91bmRhcnkuCgo+IAo+IFRvIG92ZXJjb21lIHRoaXMsIHRo
ZXJlIGlzIG11bHRpcGxlIHNvbHV0aW9uczoKPiAKPiAtIFNwbGl0IHRoZSA2NCBiaXRzIGZpZWxk
cyBpbnRvIDMyYml0cyBsb3cgYW5kIGhpZ2ggcGFydHM6Cj4gU2luY2UgYWxsIHJlc291cmNlcyBh
cmUgYWxpZ25lZCBvbiAzMmJpdHMsIGl0IHdpbGwgYmUgb2sKClllcywgdGhpcyBpcyBvbmUgc29s
dXRpb24uIEF0IHRoZSBzYW1lIHRpbWUsIHRoaXMgbWVhbnMgeW91IG5lZWQgCmFkZGl0aW9uYWwg
Y29udmVyc2lvbiBsb2dpYyBmb3IgY29udmVydGluZyB0byBhbmQgZnJvbSA2NC1iaXQgZmllbGQu
IEluIAp0aGlzIHBhcnRpY3VsYXIgY2FzZSwgZGEgaXMgdGhlIGFkZHJlc3Mgb2YgdGhlIHRyYWNl
IGJ1ZmZlciBwb2ludGVyIG9uIGEgCjY0LWJpdCBwcm9jZXNzb3IsIHNvIHdlIGNhbiBkaXJlY3Rs
eSB1c2UgdGhlIGFkZHJlc3Mgb2YgdGhlIHRyYWNlIApidWZmZXIuIEd1ZXNzIGl0IGlzIGEgcXVl
c3Rpb24gb2YgZWFzaWVyIHRyYW5zbGF0aW9uIHZzIHBhY2tpbmcgdGhlIApyZXNvdXJjZSB0YWJs
ZSBhcyB0aWdodCBhcyBwb3NzaWJsZS4KCj4gCj4gLSBVc2UgbWVtY3B5X2Zyb20vdG9faW8gd2hl
biByZWFkaW5nL3dyaXRpbmcgc3VjaCBmaWVsZHMKPiBBcyBJIHNhaWQgaW4gYSBwcmV2aW91cyBt
ZXNzYWdlIHRoaXMgc2hvdWxkIHByb2JhYmx5IGJlIHVzZWQgc2luY2UKPiB0aGUgbWVtb3JpZXMg
dGhhdCBhcmUgYWNjZXNzZWQgYnkgcnByb2MgYXJlIGlvIG1lbSAoaW9yZW1hcCBpbiBhbG1vc3QK
PiBhbGwgZHJpdmVycykuCgpBbnl0aGluZyBydW5uaW5nIG91dCBvZiBERFIgYWN0dWFsbHkgZG9l
c24ndCBuZWVkIHRoZSBpbyBtZW0gc2VtYW50aWNzLCAKc28gd2UgYWN0dWFsbHkgbmVlZCB0byBi
ZSBmaXhpbmcgdGhlIGRyaXZlcnMuIEJsaW5kbHkgY2hhbmdpbmcgdGhlIApjdXJyZW50IG1lbWNw
eSB0byBtZW1jcHlfdG9faW8gaW4gdGhlIGNvcmUgbG9hZGVyIGlzIGFsc28gbm90IHJpZ2h0LiBB
bnkgCmludGVybmFsIG1lbW9yaWVzIHByb3BlcnRpZXMgd2lsbCBhY3R1YWxseSBkZXBlbmQgb24g
dGhlIHByb2Nlc3NvciBhbmQgClNvQy4gRWc6IFRoZSBSNSBUQ00gaW50ZXJmYWNlcyBpbiBnZW5l
cmFsIGNhbiBiZSB0cmVhdGVkIGFzIG5vcm1hbCBtZW1vcmllcy4KCnJlZ2FyZHMKU3VtYW4KCj4g
Cj4gUmVnYXJkcywKPiAKPiBDbMOpbWVudAo+IAo+IFsxXSAgaHR0cHM6Ly9naXRodWIuY29tL09w
ZW5BTVAvb3Blbi1hbXAvYmxvYi9tYXN0ZXIvYXBwcy9tYWNoaW5lL3p5bnFtcF9yNS9yc2NfdGFi
bGUuaAo+Pgo+Pgo+Pgo+Pgo+Pj4+Cj4+Pgo+Pj4gU291bmRzIGdvb2QgdG8gbWUuCj4+Pgo+Pj4g
VGhhbmtzLAo+Pj4gQmpvcm4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
