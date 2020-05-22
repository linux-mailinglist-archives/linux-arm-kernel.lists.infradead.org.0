Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B63EA1DEFFF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 21:29:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+cYAaV9bcW9CYdQSHFHxJtrCZA2zk9dK73fhhagiHU=; b=UqlF+M4fZHe2Vb
	xbQyPpFZC4BNnQNY4i0kRhDDIfvZH6aytiX1he8YAhJHaZFvkV5xWNj40SwAl8cxAFw+4vxaPmxvQ
	D9nUu0hOwSPPmbC0RGosf81k5n2DLcboY4GO5Q7aKWh9NGez3Ig84L3oZX5SwSFlX9R70Px/rH9LN
	62VjkK0UOXIQ7DTn4VW9Jpj3l1TnDU4jJfeZpzHW5np1OX7TRHH8/jsX/M2lCkvPHbIICX16PyHih
	5dyT1qRSW2oDga0q94YVJ95PI8GxZ6MtiFgfyBPm1zvijBZCUdJlatfJBjSDugzubz3Tw/wcQAjDi
	gI/IUbMSoJT9MG98xYuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcDLp-0003Xx-Tv; Fri, 22 May 2020 19:29:01 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcDLf-0003XT-H2
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 19:28:53 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 4885527E06AA;
 Fri, 22 May 2020 21:28:49 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id b6iUs8aZ7XqK; Fri, 22 May 2020 21:28:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 7AA1127E0840;
 Fri, 22 May 2020 21:28:48 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 7AA1127E0840
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1590175728;
 bh=QDZ1ILKwvaxO0MLvkYfaYFAn8N9kLymelXTd+ycIlxE=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=GBkI9Cu9fLJj52109XeakQoWI0EY29WAtHeKR3w7/2/GaQNq1yP5MftEo2SCvbnrt
 AERtuM/cjxdn/r3X8ID78iDNK3hUt0493g2/vswLS/1ZDZE+vYDM609p/WSV87sxaf
 8DzYEOw9eNjxWIzkGYA6EvHj6lan1jHYwrQJ2bY0=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id lBlZkvKX9U9Q; Fri, 22 May 2020 21:28:48 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 54F3C27E06AA;
 Fri, 22 May 2020 21:28:48 +0200 (CEST)
Date: Fri, 22 May 2020 21:28:47 +0200 (CEST)
From: =?utf-8?Q?Cl=C3=A9ment?= Leger <cleger@kalray.eu>
To: s-anna <s-anna@ti.com>
Message-ID: <811755772.4219337.1590175727911.JavaMail.zimbra@kalray.eu>
In-Reply-To: <4fab212b-a9d2-927e-d3d7-e591912fd6cf@ti.com>
References: <20200325204701.16862-1-s-anna@ti.com>
 <20200521180417.GJ408178@builder.lan>
 <997d6f9a-64ba-7a89-e909-9a5a474120b0@ti.com>
 <f15b0c6d-eee8-b839-0c79-a5316dbbfa7b@ti.com> <20200522173346.GJ11847@yoga>
 <1739080680.4218297.1590170621467.JavaMail.zimbra@kalray.eu>
 <1334263091.4218509.1590171014972.JavaMail.zimbra@kalray.eu>
 <4fab212b-a9d2-927e-d3d7-e591912fd6cf@ti.com>
Subject: Re: [PATCH 3/4] remoteproc: add support for a new 64-bit trace version
MIME-Version: 1.0
X-Originating-IP: [192.168.40.202]
X-Mailer: Zimbra 8.8.15_GA_3895 (ZimbraWebClient - GC81 (Linux)/8.8.15_GA_3895)
Thread-Topic: remoteproc: add support for a new 64-bit trace version
Thread-Index: EKz8Ma+TkCvCS/nH+JoP9C9wZLySvg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_122851_896135_D3FD89BD 
X-CRM114-Status: GOOD (  16.74  )
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
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Loic PALLARDY <loic.pallardy@st.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3VtYW4sCgotLS0tLSBPbiAyMiBNYXksIDIwMjAsIGF0IDIwOjU5LCBzLWFubmEgcy1hbm5h
QHRpLmNvbSB3cm90ZToKCj4gSGkgQ2xlbWVudCwKPiAKPj4gID4gLS0tLS0gT24gMjIgTWF5LCAy
MDIwLCBhdCAyMDowMywgQ2zDqW1lbnQgTGVnZXIgY2xlZ2VyQGthbHJheS5ldSB3cm90ZTo+Cj4+
PiBIaSBTdW1hbiwKPj4+Cj4+PiAtLS0tLSBPbiAyMiBNYXksIDIwMjAsIGF0IDE5OjMzLCBCam9y
biBBbmRlcnNzb24gYmpvcm4uYW5kZXJzc29uQGxpbmFyby5vcmcKPj4+IHdyb3RlOgo+Pj4KPj4+
PiBPbiBGcmkgMjIgTWF5IDA5OjU0IFBEVCAyMDIwLCBTdW1hbiBBbm5hIHdyb3RlOgo+Pj4+Cj4+
Pj4+IE9uIDUvMjEvMjAgMjo0MiBQTSwgU3VtYW4gQW5uYSB3cm90ZToKPj4+Pj4+IEhpIEJqb3Ju
LAo+Pj4+Pj4KPj4+Pj4+IE9uIDUvMjEvMjAgMTowNCBQTSwgQmpvcm4gQW5kZXJzc29uIHdyb3Rl
Ogo+Pj4+Pj4+IE9uIFdlZCAyNSBNYXIgMTM6NDcgUERUIDIwMjAsIFN1bWFuIEFubmEgd3JvdGU6
Cj4+Pj4gWy4uXQo+Pj4+Pj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9yZW1vdGVwcm9j
LmggYi9pbmNsdWRlL2xpbnV4L3JlbW90ZXByb2MuaAo+Pj4+IFsuLl0KPj4+Pj4+Pj4gK3N0cnVj
dCBmd19yc2NfdHJhY2UyIHsKPj4+Pj4+Pgo+Pj4+Pj4+IFNvdW5kcyBtb3JlIGxpa2UgZndfcnNj
X3RyYWNlNjQgdG8gbWUgLSBpbiBwYXJ0aWN1bGFyIHNpbmNlIHRoZSB2ZXJzaW9uCj4+Pj4+Pj4g
b2YgdHJhY2UyIGlzIDEuLi4KPj4+Pj4+Cj4+Pj4+PiBZZWFoLCB3aWxsIHJlbmFtZSB0aGlzLgo+
Pj4+Pj4KPj4+Pj4+Pgo+Pj4+Pj4+PiArwqDCoMKgIHUzMiBwYWRkaW5nOwo+Pj4+Pj4+PiArwqDC
oMKgIHU2NCBkYTsKPj4+Pj4+Pj4gK8KgwqDCoCB1MzIgbGVuOwo+Pj4+Pj4+PiArwqDCoMKgIHUz
MiByZXNlcnZlZDsKPj4+Pj4+Pgo+Pj4+Pj4+IFdoYXQncyB0aGUgcHVycG9zZSBvZiB0aGlzIHJl
c2VydmVkIGZpZWxkPwo+Pj4+Pj4KPj4+Pj4+IFBhcnRseSB0byBtYWtlIHN1cmUgdGhlIGVudGly
ZSByZXNvdXJjZSBpcyBhbGlnbmVkIG9uIGFuIDgtYnl0ZSwgYW5kCj4+Pj4+PiBwYXJ0bHkgY29w
aWVkIG92ZXIgZnJvbSBmd19yc2NfdHJhY2UgZW50cnkuIEkgZ3Vlc3MgMzItYml0cyBpcyBhbHJl
YWR5Cj4+Pj4+PiBsYXJnZSBlbm91Z2ggb2YgYSBzaXplIGZvciB0cmFjZSBlbnRyaWVzIGlycmVz
cGVjdGl2ZSBvZiAzMi1iaXQgb3IKPj4+Pj4+IDY0LWJpdCB0cmFjZXMsIHNvIEkgZG91YnQgaWYg
d2Ugd2FudCB0byBtYWtlIHRoZSBsZW4gZmllbGQgYWxzbyBhIHU2NC4KPj4+Pj4KPj4+Pj4gTG9v
a2luZyBhdCB0aGlzIGFnYWluLCBJIGNhbiBkcm9wIGJvdGggcGFkZGluZyBhbmQgcmVzZXJ2ZWQg
ZmllbGRzLCBpZiBJCj4+Pj4+IG1vdmUgdGhlIGxlbiBmaWVsZCBiZWZvcmUgZGEuIEFueSBwcmVm
ZXJlbmNlcy9jb21tZW50cz8KPj4+Cj4+IFNvcnJ5LCBteSBtZXNzYWdlIHdlbnQgYSBiaXQgdG9v
IGZhc3QuLi4gU28gYXMgSSB3YXMgc2F5aW5nOgo+PiAKPj4gTm90IG9ubHkgdGhlIGluLXN0cnVj
dHVyZSBhbGlnbm1lbnQgbWF0dGVycyBidXQgYWxzbyBpbiB0aGUgcmVzb3VyY2UgdGFibGUuCj4+
IFNpbmNlIHRoZSByZXNvdXJjZSB0YWJsZSBpcyBvZnRlbiBwYWNrZWQgKHNlZSBbMV0gZm9yIGlu
c3RhbmNlKSwgaWYgYSB0cmFjZQo+PiByZXNvdXJjZSBpcyBlbWJlZGRlZCBpbiB0aGUgcmVzb3Vy
Y2UgdGFibGUgYWZ0ZXIgYW5vdGhlciByZXNvdXJjZSBhbGlnbmVkCj4+IG9uIDMyIGJpdHMgb25s
eSwgeW91ciA2NCBiaXRzIHRyYWNlIGZpZWxkIHdpbGwgcG90ZW50aWFsbHkgZW5kIHVwCj4+IG1p
c2FsaWduZWQuCj4gCj4gUmlnaHQuIFNpbmNlIG9uZSBjYW4gbWl4IGFuZCBtYXRjaCB0aGUgcmVz
b3VyY2VzIG9mIGRpZmZlcmVudCBzaXplcyBhbmQKPiBpbmNsdWRlIHRoZW0gaW4gYW55IG9yZGVy
LCB0aGUgb251cyBpcyBnb2luZyB0byBiZSBvbiB0aGUgcmVzb3VyY2UgdGFibGUKPiBjb25zdHJ1
Y3RvcnMgdG8gZW5zdXJlIHRoZSBpbnRlci1yZXNvdXJjZSBhbGlnbm1lbnRzLCBpZiBhbnkgYXJl
Cj4gcmVxdWlyZWQuIFRoZSByZXNvdXJjZSB0YWJsZSBmb3JtYXQgYWxsb3dzIHlvdSB0byBhZGQg
cGFkZGluZyBmaWVsZHMgaW4KPiBiZXR3ZWVuIGlmIG5lZWRlZCwgYW5kIHRoZSByZW1vdGVwcm9j
IGNvcmUgcmVsaWVzIG9uIHRoZSBvZmZzZXRzLgoKQWdyZWVkCgo+IAo+IEkgY2FuIG9ubHkgZW5z
dXJlIHRoZSBhbGlnbm1lbnQgd2l0aGluIHRoaXMgcmVzb3VyY2Ugc3RydWN0dXJlIHdpdGgKPiBy
ZWFkeS1hdmFpbGFibGUgYWNjZXNzIGFuZCBjb252ZXJzaW9uIHRvL2Zyb20gYSA2NC1iaXQgdHlw
ZSwgYXMgbG9uZyBhcwo+IHRoZSByZXNvdXJjZSBpcyBzdGFydGluZyBvbiBhIDY0LWJpdCBib3Vu
ZGFyeS4KPiAKPj4gCj4+IFRvIG92ZXJjb21lIHRoaXMsIHRoZXJlIGlzIG11bHRpcGxlIHNvbHV0
aW9uczoKPj4gCj4+IC0gU3BsaXQgdGhlIDY0IGJpdHMgZmllbGRzIGludG8gMzJiaXRzIGxvdyBh
bmQgaGlnaCBwYXJ0czoKPj4gU2luY2UgYWxsIHJlc291cmNlcyBhcmUgYWxpZ25lZCBvbiAzMmJp
dHMsIGl0IHdpbGwgYmUgb2sKPiAKPiBZZXMsIHRoaXMgaXMgb25lIHNvbHV0aW9uLiBBdCB0aGUg
c2FtZSB0aW1lLCB0aGlzIG1lYW5zIHlvdSBuZWVkCj4gYWRkaXRpb25hbCBjb252ZXJzaW9uIGxv
Z2ljIGZvciBjb252ZXJ0aW5nIHRvIGFuZCBmcm9tIDY0LWJpdCBmaWVsZC4gSW4KPiB0aGlzIHBh
cnRpY3VsYXIgY2FzZSwgZGEgaXMgdGhlIGFkZHJlc3Mgb2YgdGhlIHRyYWNlIGJ1ZmZlciBwb2lu
dGVyIG9uIGEKPiA2NC1iaXQgcHJvY2Vzc29yLCBzbyB3ZSBjYW4gZGlyZWN0bHkgdXNlIHRoZSBh
ZGRyZXNzIG9mIHRoZSB0cmFjZQo+IGJ1ZmZlci4gR3Vlc3MgaXQgaXMgYSBxdWVzdGlvbiBvZiBl
YXNpZXIgdHJhbnNsYXRpb24gdnMgcGFja2luZyB0aGUKPiByZXNvdXJjZSB0YWJsZSBhcyB0aWdo
dCBhcyBwb3NzaWJsZS4KCllvdSBzaW1wbHkgaGF2ZSB0byBhZGQgdHdvIHdyYXBwZXIgc3VjaCBh
cyB0aGUgZm9sbG93aW5nOgoKc3RhdGljIGlubGluZSB2b2lkIHJwcm9jX3JzY19zZXRfYWRkcih1
MzIgKmxvdywgdTMyICpoaSwgdTY0IHZhbCkKewoJKmxvdyA9IGxvd2VyXzMyX2JpdHModmFsKTsK
CSpoaSA9IHVwcGVyXzMyX2JpdHModmFsKTsKfQoKc3RhdGljIGlubGluZSB1NjQgcnByb2NfcnNj
X2dldF9hZGRyKHUzMiBsb3csIHUzMiBoaSkKewoJcmV0dXJuICgodTY0KSBoaSA8PCAzMikgfCBs
b3c7Cn0KClRoaXMgaXMgbm90IHJlYWxseSBkaWZmaWN1bHQgdG8gdXNlIGFuZCB3aWxsIGVuc3Vy
ZSB5b3VyIG5ldyB0cmFjZQpyZXNvdXJjZSBjYW4gYmUgdXNlZCBlYXNpbHkgd2l0aG91dCBicmVh
a2luZyAzMiBiaXRzIGFsaWdubWVudC4KQnJlYWtpbmcgY29tcGF0aWJpbGl0eSBpcyBhbiBvcHRp
b24gYWxzbyBhbmQgaXQgaXMgcHJvYmFibHkgbmVlZGVkCnRvIGRvY3VtZW50IGl0IGNsZWFybHkg
aWYgaXQgaXMgY2hvc2VuIHRvIGRvIHNvLgoKPiAKPj4gCj4+IC0gVXNlIG1lbWNweV9mcm9tL3Rv
X2lvIHdoZW4gcmVhZGluZy93cml0aW5nIHN1Y2ggZmllbGRzCj4+IEFzIEkgc2FpZCBpbiBhIHBy
ZXZpb3VzIG1lc3NhZ2UgdGhpcyBzaG91bGQgcHJvYmFibHkgYmUgdXNlZCBzaW5jZQo+PiB0aGUg
bWVtb3JpZXMgdGhhdCBhcmUgYWNjZXNzZWQgYnkgcnByb2MgYXJlIGlvIG1lbSAoaW9yZW1hcCBp
biBhbG1vc3QKPj4gYWxsIGRyaXZlcnMpLgo+IAo+IEFueXRoaW5nIHJ1bm5pbmcgb3V0IG9mIERE
UiBhY3R1YWxseSBkb2Vzbid0IG5lZWQgdGhlIGlvIG1lbSBzZW1hbnRpY3MsCj4gc28gd2UgYWN0
dWFsbHkgbmVlZCB0byBiZSBmaXhpbmcgdGhlIGRyaXZlcnMuIEJsaW5kbHkgY2hhbmdpbmcgdGhl
Cj4gY3VycmVudCBtZW1jcHkgdG8gbWVtY3B5X3RvX2lvIGluIHRoZSBjb3JlIGxvYWRlciBpcyBh
bHNvIG5vdCByaWdodC4gQW55Cj4gaW50ZXJuYWwgbWVtb3JpZXMgcHJvcGVydGllcyB3aWxsIGFj
dHVhbGx5IGRlcGVuZCBvbiB0aGUgcHJvY2Vzc29yIGFuZAo+IFNvQy4gRWc6IFRoZSBSNSBUQ00g
aW50ZXJmYWNlcyBpbiBnZW5lcmFsIGNhbiBiZSB0cmVhdGVkIGFzIG5vcm1hbCBtZW1vcmllcy4K
CkFncmVlZCwgdGhpcyBpcyBtb3N0IG9mIHRoZSBjYXNlIGluZGVlZCB3aGVyZSB0aGUgbWVtb3Jp
ZXMgYXJlIGFjdHVhbGx5CmFjY2Vzc2libGUgZGlyZWN0bHkuIEJ1dCB1c2luZyBpb3JlbWFwIHBv
dGVudGlhbGx5IGNyZWF0ZXMgYSBtYXBwaW5nIHRoYXQKZG9lcyBub3Qgc3VwcG9ydCBtaXNhbGln
bmVkIGFjY2Vzc2VzIGFuZCBzbyBhY2Nlc3NlcyBzaG91bGQgYmUgYWx3YXlzIGFsaWduZWQuCm1l
bWNweV9mcm9tL3RvX2lvIGVuc3VyZXMgdGhhdC4KSU1ITywgdGhlcmUgaXMgcHJvYmFibHkgc29t
ZXRoaW5nIHRvIGJlIHJld29yayBzaW5jZSB0aGUgZHJpdmVycyBhcmUgbWFwcGluZwp0aGUgbWVt
b3JpZXMgYnV0IHRoZSBjb3JlIGlzIGFjY2Vzc2luZyB0aGlzIG1lbW9yeSwga25vd2luZyBub3Ro
aW5nIGFib3V0CmhvdyBpdCB3YXMgbWFwcGVkLgoKUmVnYXJkcywKCkNsw6ltZW50Cgo+IAo+IHJl
Z2FyZHMKPiBTdW1hbgo+IAo+PiAKPj4gUmVnYXJkcywKPj4gCj4+IENsw6ltZW50Cj4+IAo+PiBb
MV0KPj4gaHR0cHM6Ly9naXRodWIuY29tL09wZW5BTVAvb3Blbi1hbXAvYmxvYi9tYXN0ZXIvYXBw
cy9tYWNoaW5lL3p5bnFtcF9yNS9yc2NfdGFibGUuaAo+Pj4KPj4+Cj4+Pgo+Pj4KPj4+Pj4KPj4+
Pgo+Pj4+IFNvdW5kcyBnb29kIHRvIG1lLgo+Pj4+Cj4+Pj4gVGhhbmtzLAo+ID4+PiBCam9ybgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
