Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1EED180ED6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 05:04:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Bpeh4uJ0VOqS47qKsJXMLdnt+bRzZ6oY+ww64IUf9bM=; b=NM0Je2CfreJqXvdis1AOOHusX
	xW9O7BOkrKytmLwJeLFRh5YqLPMC+sDLvWRoL3Ce/OZGSUsVZI2SuETxNtYZTUFMTS0faCRQU7Awv
	qsItpKeGERTGb2fmiipggJLoaUmqPihYYcakufcMTCeZSIVWJMmZWfl24qERbogB769B00B4jWRxG
	7GXnW2eyTnaseDUSvB8Am04jECEgrHDqLrat1ksra0ZC1o1nTW5/1iruwfUAt5PJN0o8f3IUD5VVm
	MuLumSAf1hCQ97kQZdCzJTbUvOC2pw7Y3ouxQDXcjUuf0F6oelZ6IssrN4PwKq9kY+ntHdhAka9XJ
	NR2WNtcKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBsbu-00031z-Ct; Wed, 11 Mar 2020 04:04:46 +0000
Received: from gateway33.websitewelcome.com ([192.185.145.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBsbl-00030s-Qd
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 04:04:39 +0000
Received: from cm10.websitewelcome.com (cm10.websitewelcome.com [100.42.49.4])
 by gateway33.websitewelcome.com (Postfix) with ESMTP id 1B28A11B5F5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 23:04:25 -0500 (CDT)
Received: from br164.hostgator.com.br ([192.185.176.180]) by cmsmtp with SMTP
 id BsbZjYgFHEfyqBsbZjaxO0; Tue, 10 Mar 2020 23:04:25 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=castello.eng.br; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3mQ8efzp5o0AkNF9bZhfeVXit4yUM1qXe8Qn2DoH+uM=; b=M2w0nZx0+GhH4CQngfIEQ9sxdq
 dPBJpztWkuF97hxTB23jiqquuyEfWqRtGR/dz6LZfloO8lVT6HRJBDCzlEgubKv2IueRb5FraSCwc
 MZSd1X4ZFG8dJmaoRIn41Qh5FHZp4U4C1FQfc+zUnKbDr22t5pmLrfnPezI+nnvl5njb5lvQ2KWBm
 0S/z022YqNNU0omGKoOKzoDJRKsIUFNQKG8p6BFMh9sQFvWrh5rEp549fjZc5EcgtBUv/lyoaTcI+
 sZPFNjYuVX/3d4DFlVT75XME5sVGqYzR5Sc+yMA+NL5z9oCUri+zjNGywSZkWHU8uRqHuWv/7ptnK
 PQxQcQoQ==;
Received: from [191.31.204.9] (port=54190 helo=[192.168.15.3])
 by br164.hostgator.com.br with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <matheus@castello.eng.br>)
 id 1jBsbY-001Nn8-Lh; Wed, 11 Mar 2020 01:04:24 -0300
Subject: Re: [PATCH v2 1/3] dt-bindings: Add vendor prefix for Caninos Loucos
To: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
References: <20200229104358.GB19610@mani>
 <20200307002453.350430-1-matheus@castello.eng.br>
 <20200307002453.350430-2-matheus@castello.eng.br>
 <62e115af-9d8c-572a-a400-91bdef9d9292@suse.de>
From: Matheus Castello <matheus@castello.eng.br>
Message-ID: <143fea2e-3361-445a-a261-1860ffc435eb@castello.eng.br>
Date: Wed, 11 Mar 2020 01:04:20 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <62e115af-9d8c-572a-a400-91bdef9d9292@suse.de>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - br164.hostgator.com.br
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - castello.eng.br
X-BWhitelist: no
X-Source-IP: 191.31.204.9
X-Source-L: No
X-Exim-ID: 1jBsbY-001Nn8-Lh
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.15.3]) [191.31.204.9]:54190
X-Source-Auth: matheus@castello.eng.br
X-Email-Count: 5
X-Source-Cap: Y2FzdGUyNDg7Y2FzdGUyNDg7YnIxNjQuaG9zdGdhdG9yLmNvbS5icg==
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_210437_956319_E56E0C3F 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.145.9 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 manivannan.sadhasivam@linaro.org, igor.lima@lsitec.org.br,
 edgar.righi@lsitec.org.br, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmVhcywKCkVtIDMvNy8yMCA5OjM0IEFNLCBBbmRyZWFzIEbDpHJiZXIgZXNjcmV2ZXU6
Cj4gSGkgTWF0aGV1cywKPiAKPiBBbSAwNy4wMy4yMCB1bSAwMToyNCBzY2hyaWViIE1hdGhldXMg
Q2FzdGVsbG86Cj4+IFRoZSBDYW5pbm9zIExvdWNvcyBQcm9ncmFtIGRldmVsb3BzIFNpbmdsZSBC
b2FyZCBDb21wdXRlcnMgd2l0aCBhbiBvcGVuCj4+IHN0cnVjdHVyZS4gVGhlIFByb2dyYW0gd2Fu
dHMgdG8gZm9ybSBhIGNvbW11bml0eSBvZiBkZXZlbG9wZXJzIHRvIHVzZQo+PiB0aGUgSW9UIHRl
Y2hub2xvZ3kgYW5kIGRpc3NlbWluYXRlIHRoZSBsZWFybmluZyBvZiBlbWJlZGRlZCBzeXN0ZW1z
IGluCj4gCj4gSSB3b3VsZCBzdWdnZXN0ICJJb1QgdGVjaG5vbG9naWVzIiB3aXRob3V0ICJ0aGUi
Lgo+IAoKYWNrCgo+PiBCcmF6aWwuCj4+Cj4+IFRoZSBib2FyZHMgYXJlIGRlc2lnbmVkIGFuZCBt
YW51ZmFjdHVyZWQgYnkgTFNJLVRFQyBOUE8uCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IE1hdGhldXMg
Q2FzdGVsbG8gPG1hdGhldXNAY2FzdGVsbG8uZW5nLmJyPgo+PiAtLS0KPj4gwqAgRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3ZlbmRvci1wcmVmaXhlcy55YW1sIHwgMiArKwo+PiDC
oCAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwgCj4+IGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3ZlbmRvci1wcmVmaXhlcy55YW1sCj4+
IGluZGV4IDllNjc5NDRiZWM5Yy4uM2U5NzRkZDU2M2NmIDEwMDY0NAo+PiAtLS0gYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwKPj4gKysrIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3ZlbmRvci1wcmVmaXhlcy55YW1sCj4+
IEBAIC0xNjcsNiArMTY3LDggQEAgcGF0dGVyblByb3BlcnRpZXM6Cj4+IMKgwqDCoMKgwqAgZGVz
Y3JpcHRpb246IENhbHhlZGEKPj4gwqDCoMKgICJeY2FwZWxsYSwuKiI6Cj4+IMKgwqDCoMKgwqAg
ZGVzY3JpcHRpb246IENhcGVsbGEgTWljcm9zeXN0ZW1zLCBJbmMKPj4gK8KgICJeY2FuaW5vcywu
KiI6Cj4+ICvCoMKgwqAgZGVzY3JpcHRpb246IENhbmlub3MgTG91Y29zIExTSS1URUMgTlBPCj4g
CgpJIHdpbGwgY2hhbmdlIHRoaXMgdG8gIkNhbmlub3MgTG91Y29zIFByb2dyYW0iCgo+IEFscGhh
YmV0aWNhbCBvcmRlcjogbiBnb2VzIGJlZm9yZSBwLgo+IAo+IEknbSBjb25mdXNlZCBieSB0aGUg
ZGVzY3JpcHRpb24uLi4gRWl0aGVyIHRoaXMgQ2FuaW5vcyBMb3Vjb3MgaXMgYW4gCj4gaW5kZXBl
bmRlbnQgdmVuZG9yIGFuZCBnZXRzIGl0cyBvd24gcHJlZml4LCBvciBpdCdzIExTSS1UZWMgYW5k
IHVzZXMgCj4gc29tZXRoaW5nIGxpa2UgbHNpLXRlYyxjYW5pbm9zbG91Y29zLWZvby4gUGxlYXNl
IGNsYXJpZnkgY29tbWl0IG1lc3NhZ2UgCj4gYW5kL29yIGRlc2NyaXB0aW9uIGxpbmUsIGF0IGxl
YXN0IGJ5IGluc2VydGluZyBzb21ldGhpbmcgbGlrZSAicHJvZ3JhbSAKPiBieSIsICJicmFuZCBi
eSIgb3IgdGhlIGxpa2UgcmF0aGVyIHRoYW4ganVzdCBjb25jYXRlbmF0aW5nIG5hbWVzLiBNYXli
ZSAKPiBjb21wYXJlIFVET08gYnkgU0VDTy4gSXMgY2FuaW5vcyxmb28gdW5pcXVlIGVub3VnaCBv
ciBzaG91bGQgaXQgYmUgCj4gY2FuaW5vc2xvdWNvcyxmb28/IChjcmF6eSBjYW5pbmVzPykKPiAK
ClllcyAiQ2FuaW5vcyBMb3Vjb3MiIG1lYW5zIGNyYXp5IGNhbmluZXMgKG9yIG1hZCBkb2cpIGlu
IFBvcnR1Z3Vlc2UuIApUaGlzIGlzIGEgaW5pdGlhdGl2ZSB0aGF0IGhhdmUgYXMgY28tZm91bmRl
ciB0aGUgSm9uIE1hZGRvZyBIYWxsLCAKYmVjYXVzZSBvZiBKb24gd2UgaGF2ZSB0aGUgIm1hZGRv
ZyIsIGJ1dCBpbiBQb3J0dWd1ZXNlLCBvbiB0aGUgbmFtZSBvZiAKcHJvZ3JhbS4KCiBGcm9tIHRo
ZWlyIHdlYnNpdGU6IGh0dHBzOi8vY2FuaW5vc2xvdWNvcy5vcmcvZW4vcHJvZ3JhbS1lbi86CiJJ
dCBpcyBhbiBpbml0aWF0aXZlIG9mIHRoZSBUZWNobm9sb2dpY2FsIEludGVncmF0ZWQgU3lzdGVt
cyBMYWJvcmF0b3J5IAooTFNJLVRFQykgd2l0aCB0aGUgc3VwcG9ydCBvZiBQb2x5dGVjaG5pYyBT
Y2hvb2wgb2YgdGhlIFVuaXZlcnNpdHkgb2YgClPDo28gUGF1bG8gKFBvbGktVVNQKSBhbmQgSm9u
IOKAnE1hZGRvZ+KAnSBIYWxsIgoKU28gSSB0aGluayB3ZSBjYW4gcHV0IHRoaXMgaW5zdGVhZCAi
VGhlIGJvYXJkcyBhcmUgZGVzaWduZWQgYW5kIAptYW51ZmFjdHVyZWQgYnkgTFNJLVRFQyBOUE8u
IiBvbiBkZXNjcmlwdGlvbi4KCkxldCBtZSBrbm93IHdoYXQgeW91IHRoaW5rIGFib3V0IHRoaXMu
Cgo+IE5vdGUgdGhhdCBJIHVzdWFsbHkgYXR0ZW1wdCB0byBDQyB0aGUgb3JnYW5pemF0aW9ucyBJ
J20gYXNzaWduaW5nIGEgCj4gdmVuZG9yIHByZWZpeCBmb3IuIERvIHlvdSByZXByZXNlbnQgdGhl
bSBvciBjb29yZGluYXRlZCB3aXRoIHRoZW0/Cj4KClRoYW5rcyBmb3IgdGhlIHJldmlldyBhbmQg
dGlwcy4gSSBhbSBhZGRpbmcgRWRnYXIgQmVybmFyZGkgUmlnaGkgYW5kIApJZ29yIFJ1c2NoaSBm
cm9tIENhbmlub3MgdGVhbSBhcyBDQyBvbiB0aGlzIHBhdGNoIHNlcmllcy4KCkJlc3QgUmVnYXJk
cywKTWF0aGV1cyBDYXN0ZWxsbwoKPiBSZWdhcmRzLAo+IEFuZHJlYXMKPgo+PiDCoMKgwqAgIl5j
YXNjb2RhLC4qIjoKPj4gwqDCoMKgwqDCoCBkZXNjcmlwdGlvbjogQ2FzY29kYSwgTHRkLgo+PiDC
oMKgwqAgIl5jYXRhbHlzdCwuKiI6Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
