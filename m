Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3B11DEED9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 20:04:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v6YmZaQmCcNUqXv/TG3l9OmNQZWQFnJU/DIG5W8Bv+A=; b=MgF2A2iFPdT/dV
	LuuizpzQ4J++iRe+6yOEIP3QRLrmXJBnkTxSBqrav7yItt8JVXfO0paPK4yeC6Pj1zl6l3uRXHFJj
	6ejI25otgTdVwr5A0fdqMI+8HTBrSpvjObb+3w63vszvLH2cyca29uUf155mCSCWQvjd8cLKdhl+q
	WPjsETOzDDikCwryZpsf2SEsrje2H1MiHqqzoIRB5CT83zbiK8AMWagWvzhP1aOBWbVMTIZfKcZ70
	wLZcwyS+qbvNKEqiijUFv+iPwytjsZ3JEF1zsvF6vy4Dehxd5vk7nWbh93Bj9sOoFwU5hZQbeP47b
	PWSuyHvNMzbOfCqJluKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcC1W-0008FE-6m; Fri, 22 May 2020 18:03:58 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcC1M-0008EC-OA
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 18:03:51 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 5B1F627E06AA;
 Fri, 22 May 2020 20:03:42 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id IaL2CMJpeGDJ; Fri, 22 May 2020 20:03:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id B4DCE27E1552;
 Fri, 22 May 2020 20:03:41 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu B4DCE27E1552
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1590170621;
 bh=67U1V6rCy7YUc6UpgjCDmhVN9IIhQuAA6TSa+JbplFo=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=kKAQad8RhOyvwXbgXoN5NUfFaKRc9usZvBnKkjrLZeYCPZJSTkf/8I3hFGjDNyPCd
 5ySQh0kGU50F5FS9vxQFi78aMazxHqgwQuPyy+oN0sxP8EtZIavliQZ716JWicvSPt
 /pPGP2TfnLHMj8QB76Lg0PYV47rgn9cfNyV8q/zY=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id L9kMkSqF4DrI; Fri, 22 May 2020 20:03:41 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 9AAE627E06AA;
 Fri, 22 May 2020 20:03:41 +0200 (CEST)
Date: Fri, 22 May 2020 20:03:41 +0200 (CEST)
From: =?utf-8?Q?Cl=C3=A9ment?= Leger <cleger@kalray.eu>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Message-ID: <1739080680.4218297.1590170621467.JavaMail.zimbra@kalray.eu>
In-Reply-To: <20200522173346.GJ11847@yoga>
References: <20200325204701.16862-1-s-anna@ti.com>
 <20200325204701.16862-4-s-anna@ti.com> <20200521180417.GJ408178@builder.lan>
 <997d6f9a-64ba-7a89-e909-9a5a474120b0@ti.com>
 <f15b0c6d-eee8-b839-0c79-a5316dbbfa7b@ti.com> <20200522173346.GJ11847@yoga>
Subject: Re: [PATCH 3/4] remoteproc: add support for a new 64-bit trace version
MIME-Version: 1.0
X-Originating-IP: [192.168.40.202]
X-Mailer: Zimbra 8.8.15_GA_3895 (ZimbraWebClient - GC81 (Linux)/8.8.15_GA_3895)
Thread-Topic: remoteproc: add support for a new 64-bit trace version
Thread-Index: L30XW51sgsk7NRKU7I+TV4VplJ8G6Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_110349_119812_1DDE8B80 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Loic PALLARDY <loic.pallardy@st.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Lokesh Vutla <lokeshvutla@ti.com>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 s-anna <s-anna@ti.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3VtYW4sCgotLS0tLSBPbiAyMiBNYXksIDIwMjAsIGF0IDE5OjMzLCBCam9ybiBBbmRlcnNz
b24gYmpvcm4uYW5kZXJzc29uQGxpbmFyby5vcmcgd3JvdGU6Cgo+IE9uIEZyaSAyMiBNYXkgMDk6
NTQgUERUIDIwMjAsIFN1bWFuIEFubmEgd3JvdGU6Cj4gCj4+IE9uIDUvMjEvMjAgMjo0MiBQTSwg
U3VtYW4gQW5uYSB3cm90ZToKPj4gPiBIaSBCam9ybiwKPj4gPiAKPj4gPiBPbiA1LzIxLzIwIDE6
MDQgUE0sIEJqb3JuIEFuZGVyc3NvbiB3cm90ZToKPj4gPiA+IE9uIFdlZCAyNSBNYXIgMTM6NDcg
UERUIDIwMjAsIFN1bWFuIEFubmEgd3JvdGU6Cj4gWy4uXQo+PiA+ID4gPiBkaWZmIC0tZ2l0IGEv
aW5jbHVkZS9saW51eC9yZW1vdGVwcm9jLmggYi9pbmNsdWRlL2xpbnV4L3JlbW90ZXByb2MuaAo+
IFsuLl0KPj4gPiA+ID4gK3N0cnVjdCBmd19yc2NfdHJhY2UyIHsKPj4gPiA+IAo+PiA+ID4gU291
bmRzIG1vcmUgbGlrZSBmd19yc2NfdHJhY2U2NCB0byBtZSAtIGluIHBhcnRpY3VsYXIgc2luY2Ug
dGhlIHZlcnNpb24KPj4gPiA+IG9mIHRyYWNlMiBpcyAxLi4uCj4+ID4gCj4+ID4gWWVhaCwgd2ls
bCByZW5hbWUgdGhpcy4KPj4gPiAKPj4gPiA+IAo+PiA+ID4gPiArwqDCoMKgIHUzMiBwYWRkaW5n
Owo+PiA+ID4gPiArwqDCoMKgIHU2NCBkYTsKPj4gPiA+ID4gK8KgwqDCoCB1MzIgbGVuOwo+PiA+
ID4gPiArwqDCoMKgIHUzMiByZXNlcnZlZDsKPj4gPiA+IAo+PiA+ID4gV2hhdCdzIHRoZSBwdXJw
b3NlIG9mIHRoaXMgcmVzZXJ2ZWQgZmllbGQ/Cj4+ID4gCj4+ID4gUGFydGx5IHRvIG1ha2Ugc3Vy
ZSB0aGUgZW50aXJlIHJlc291cmNlIGlzIGFsaWduZWQgb24gYW4gOC1ieXRlLCBhbmQKPj4gPiBw
YXJ0bHkgY29waWVkIG92ZXIgZnJvbSBmd19yc2NfdHJhY2UgZW50cnkuIEkgZ3Vlc3MgMzItYml0
cyBpcyBhbHJlYWR5Cj4+ID4gbGFyZ2UgZW5vdWdoIG9mIGEgc2l6ZSBmb3IgdHJhY2UgZW50cmll
cyBpcnJlc3BlY3RpdmUgb2YgMzItYml0IG9yCj4+ID4gNjQtYml0IHRyYWNlcywgc28gSSBkb3Vi
dCBpZiB3ZSB3YW50IHRvIG1ha2UgdGhlIGxlbiBmaWVsZCBhbHNvIGEgdTY0Lgo+PiAKPj4gTG9v
a2luZyBhdCB0aGlzIGFnYWluLCBJIGNhbiBkcm9wIGJvdGggcGFkZGluZyBhbmQgcmVzZXJ2ZWQg
ZmllbGRzLCBpZiBJCj4+IG1vdmUgdGhlIGxlbiBmaWVsZCBiZWZvcmUgZGEuIEFueSBwcmVmZXJl
bmNlcy9jb21tZW50cz8KCk5vdCBvbmx5IHRoZSBpbiBzdHJ1Y3R1cmUgYWxpZ25tZW50IG1hdHRl
cnMgYnV0IGFsc28gaW4gdGhlIHJlc291cmNlIHRhYmxlLgpTaW5jZSB0aGUgcmVzb3VyY2UgdGFi
bGUgaXMgb2Z0ZW4gcGFja2VkIChzZWUgWzFdIGZvciBpbnN0YW5jZSksIGlmIGEKCgpbMV0gaHR0
cHM6Ly9naXRodWIuY29tL09wZW5BTVAvb3Blbi1hbXAvYmxvYi9tYXN0ZXIvYXBwcy9tYWNoaW5l
L3p5bnFtcF9yNS9yc2NfdGFibGUuaAoKPj4gCj4gCj4gU291bmRzIGdvb2QgdG8gbWUuCj4gCj4g
VGhhbmtzLAo+IEJqb3JuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
