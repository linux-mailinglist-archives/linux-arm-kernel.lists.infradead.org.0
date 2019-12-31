Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF0812D707
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 09:15:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GghtTvoAj2EmkVO4F/7ZM+u0YBxXEptjjajokGZNBHs=; b=eNEx0QyAaY1W97
	elVa+EVZuBcX4uwA/EPZYMoZl+0XRj3SCBPtUOuJglLLEXjN/wS2ggGQ5gvxezLAq79G/qU6dh2Fu
	y8EpmO+jbzUc9BJ4t1M7UHMx3bWwpkfYxM7wf0WLCnc6wlRw3at4I6fHKJuRij9iAOP3Pngyku6rM
	WEdDYOZOED8TZWiLuD7DtzDbdiE6Eu4hwByUPBR91JCpzxoVdbt/lH3cM3DoO5pVWKt1a+YuCVXo1
	t76k5UczFT3LCqSrHF/yjSy5UAM4TmaVH/woCK5A4MgoK9YVdl6WawI2Kxo9l5TJxWUkmfaRHPPsI
	ExmL+gZG3Yj/80cISZuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imCgi-0007Z7-Dj; Tue, 31 Dec 2019 08:15:36 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imCgZ-0006Iv-CV
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 08:15:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1577780057;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=1zb1yyg45rffTMBSTY3brW53GCegT+pQHuPQHh8FR7E=;
 b=LF3mn8eccXNf8uXWfv2WXUsh//1zhZ/Hy8hSjFfWbSH9AyNbS8608uz4PUBCkcSgsG
 2To4XChlCJJ7qlBwQNVv7HdgeRQjgJcn8jEEtFycM+AHlQzQ213dG5eN+LoaaoPhx559
 jEMVc71v0DzlBYkpe/EcpPYKHl5d22eNPjxpoWKgAyw6mJsBCTfRJeryO2DcKWa8rzhY
 KTUgfi+pawOhjIR02Awp9ZLLKZhuCOhl6OIlm2IvmeA+G/WY3IRr5oPUB52yOJgVf7Wj
 QoZyNpyloLvI1eZWCBLyMmKZrYFRpWlLkpK4iMYnjAd7qEPHHSjaQ0E0EIfWuoDHbuPr
 rpzA==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj7wpz8NMGH/vswDOsxLg="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 46.1.3 DYNA|AUTH)
 with ESMTPSA id a09dafvBV8ECFj7
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Tue, 31 Dec 2019 09:14:12 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: [PATCH] ARM: dts: Add omap3-echo
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <20191230172948.GL35479@atomide.com>
Date: Tue, 31 Dec 2019 09:14:12 +0100
Message-Id: <55E6481C-2137-4086-ACDF-5F7D86E41A21@goldelico.com>
References: <20191224161005.28083-1-nerv@dawncrow.de>
 <20191224184503.GK35479@atomide.com>
 <60412339-53BF-4DC1-8AF6-4FB0E75D429C@goldelico.com>
 <53e6cbbd-1094-cba2-4942-981502a738d4@dawncrow.de>
 <20191230172948.GL35479@atomide.com>
To: Tony Lindgren <tony@atomide.com>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_001528_015791_417DDDA3 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5301:0:0:4 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, =?utf-8?Q?Andr=C3=A9_Hentschel?= <nerv@dawncrow.de>,
 linux@arm.linux.org.uk, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, bcousson@baylibre.com,
 linux-omap@vger.kernel.org, Adam Ford <aford173@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVG9ueSwKCj4gQW0gMzAuMTIuMjAxOSB1bSAxODoyOSBzY2hyaWViIFRvbnkgTGluZGdyZW4g
PHRvbnlAYXRvbWlkZS5jb20+Ogo+IAo+ICogQW5kcsOpIEhlbnRzY2hlbCA8bmVydkBkYXduY3Jv
dy5kZT4gWzE5MTIyNyAxNDoyOV06Cj4+IEFtIDI1LjEyLjE5IHVtIDE4OjAxIHNjaHJpZWIgSC4g
Tmlrb2xhdXMgU2NoYWxsZXI6Cj4+PiBJIHRoaW5rIHRoZSBhbTM3MDMgaXMgYSBkbTM3MzAgKG9t
YXAzNjMwKSB3aGVyZSB0aGUgU0dYIGFuZCB0aGUKPj4+IERTUCBoYXZlIG5vdCBwYXNzZWQgcHJv
ZHVjdGlvbiB0ZXN0IGFuZCBhcmUgImRpc2FibGVkIiBieSBlRnVzZXMuCj4+PiBUaGlzIGlzIGEg
Y29tbW9uIHByb2NlZHVyZSBpbiBzaWxpY29uIHByb2R1Y3Rpb24gdG8gaW5jcmVhc2UgeWllbGQu
Cj4+PiAKPj4+IFRoZXJlZm9yZSwgdGhlcmUgaXMgYSByZWdpc3RlciB3aGljaCBhbGxvd3MgdG8g
ZHluYW1pY2FsbHkgZGV0ZXJtaW5lCj4+PiB3aGF0IGNvbXBvbmVudHMgKFNHWCBhbmQgRFNQKSBh
cmUgYXZhaWxhYmxlIG9uIGEgc3BlY2lmaWMgU29DIGNoaXAuCj4+PiBTZWUgIlRhYmxlIDEtNi4g
Q2hpcCBJZGVudGlmaWNhdGlvbiIgaW4gdGhlIGNvbW1vbgo+Pj4gIkFNL0RNMzd4IE11bHRpbWVk
aWEgRGV2aWNlIFRSTSIuCj4+PiAKPj4+IFN1Y2ggYml0cyBleGlzdHMgZm9yIG9tYXAzNHh4IGFu
ZCBmb3Igb21hcDM2eHggKGFrYSBhbTM3eHgvZG0zN3h4KS4KPj4+IAo+Pj4gVGhhdCB3YXkgdGhl
cmUgaXMgbm8gbmVlZCB0byBkaXNhYmxlL2VuYWJsZSBzZ3ggdGhyb3VnaCBkZXZpY2UgdHJlZQo+
Pj4gdmFyaWF0aW9ucyBhbmQgaW50cm9kdWNpbmcgbW9yZSBjb21wbGV4aXR5IGJ5IGludHJvZHVj
aW5nIG1vcmUgYW5kIG1vcmUKPj4+IERUUyBmb3IgdmFyaWFudHMgKGFtMzcwMy5kdHNpLCBhbTM3
MTUuZHRzaSwgZG0zNzIwLmR0c2ksIGRtMzczMC5kdHNpPykuCj4+PiAKPj4+IEJUVzogd2hhdCBh
Ym91dCBhIGJvYXJkIHRoYXQgaXMvd2FzIHByb2R1Y2VkIGluIGVpdGhlciBhbTM3MDMgb3IgZG0z
NzMwCj4+PiB2YXJpYW50cz8gQ2FuIHRoZXkgc3RpbGwgc2hhcmUgYW4gb21hcDM2eHguZHRzaSBi
YXNlZCBEVEI/Cj4+PiAKPj4+IFNvIElNSE8gaWYgdGhlcmUgaXMgYW4gaXNzdWUgd2l0aCBzZ3gg
ZW5hYmxlZCBvbiBhbTM3MDMgYnV0IG5vIFNHWAo+Pj4gaGFyZHdhcmUgYXZhaWxhYmxlIG9uIGEg
c3BlY2lmaWMgU29DLCB0aGUgc3lzYyBzZXR1cCBzaG91bGQgc29tZWhvdyByZWFkCj4+PiB0aGUg
Yml0cyBhbmQgZWZmZWN0aXZlbHkgZGlzYWJsZSBhbGwgU0dYIHJlbGF0ZWQgc2V0dXAgaWYgaXQg
aXMgbm90Cj4+PiBhdmFpbGFibGUgb24gdGhlIFNvQy4gSWYgSSByZW1lbWJlciBjb3JyZWN0bHks
IHNvbWUgb2xkZXIgaHdtb2RzIGRpZAo+Pj4gc3VjaCB0aGluZ3MgYnkgY2hlY2tpbmcgU29DIHZh
cmlhbnQgYml0cy4KPj4gCj4+IEkgbGlrZSB0aGUgaWRlYSwgYnV0IEknbSBub3QgaW4gdGhlIHBv
c2l0aW9uIHRvIHZvdGUgZm9yIGl0IGFuZCBJIGRvbid0Cj4+IHVuZGVyc3RhbmQgdGhlIHN5c2Mg
Y29kZSBlbm91Z2ggdG8gaW1wbGVtZW50IHRoYXQuCj4gCj4gV2UgY2FuIGVhc2lseSBkbyBib3Ro
LiBTbyBubyB3b3JyaWVzLCBJIGNhbiBlYXNpbHkgYWRkIFNvQyBjYXBhYmlsaXRlcwo+IHN1cHBv
cnQgYXQgc29tZSBwb2ludC4KPiAKPj4gQW0gMjUuMTIuMTkgdW0gMTM6NTMgc2NocmllYiBBZGFt
IEZvcmQ6Cj4+PiBPbiBXZWQsIERlYyAyNSwgMjAxOSBhdCA2OjA1IEFNIEFuZHLDqSBIZW50c2No
ZWwgPG5lcnZAZGF3bmNyb3cuZGU+IHdyb3RlOgo+Pj4+IEFuZCB0aGVuIGluY2x1ZGUgYW0zNzAz
LmR0c2kgaW4gb21hcDM2eHguZHRzaSBiZWZvcmUgc2d4IHN1cHBvcnQ/Cj4+PiBJIGNhbiBzZWUg
dmFsdWUgaW4gaGF2aW5nIGEgMzcwMyBiYXNlIGFuZCBpbmNsdWRpbmcgdGhhdCBpbiB0aGUgMzZ4
eAo+Pj4gd2l0aCBTR1ggYW5kIERTUCBub2RlcywgYnV0IHdoeSBub3QganVzIG1ha2UgU0dYIGRp
c2FibGVkIGJ5IGRlZmF1bHQuCj4+PiBUaG9zZSB3aG8gd2FudC9uZWVkIGl0IGNhbiBlbmFibGUg
aXQgb24gYSBwZXItYm9hcmQgYmFzaXMuCj4+Pj4gT3Igd291bGQgaXQgYmUgYmV0dGVyIHRvIGhh
dmUgc2d4IHN1cHBvcnQgaW4gYSBzZXBhcmF0ZSBkdHNpPwo+Pj4gCj4+PiBJIGFtIG5vdCBzdXJl
IGhvdyBtdWNoIERTUCBzdHVmZiBpcyBpbiB0aGVyZSwgYnV0IHRoZSBETTM3MzAgaXMgdGhlCj4+
PiBBTTM3MDMgKyBEU1AgYW5kIDNELgo+PiAKPj4gRm9yIGNsYXJpZmljYXRpb24gdGhpcyByZWR1
Y2VkIHRhYmxlIHNob3VsZCBoZWxwOgo+PiAgICAgRE0zNzMwIHwgRE0zNzI1IHwgQU0zNzE1IHwg
QU0zNzAzCj4+IERTUCAgICBYICAgIHwgICBYICAgIHwgICAgICAgIHwgICAgCj4+IFNHWCAgICBY
ICAgIHwgICAgICAgIHwgICBYICAgIHwgICAgCj4+IAo+PiBXaGVyZSBYIGlzICJzdXBwb3J0ZWQi
Cj4gCj4gQW5kIGxldCdzIGFsc28gYWRkIG1pbmltYWwgZG0zNzI1LmR0c2ksIGFtMzcxNS5kdHNp
IGFuZCBhbTM3MDMuZHRzaQo+IHRvIG1ha2UgdGhpbmdzIHNpbXBsZS4KCldlbGwsIGlzIHRoYXQg
InNpbXBsZSI/CgpXZSBhbHNvIGhhdmUgdG8gYWRkIG9tYXAzNTAzLCBvbWFwMzUxNSwgb21hcDM1
MjAsIG9tYXAzNTMwLmR0c2kuCkFuZCBwcm9iYWJseSBhbTMzNTEsMiw0LDYsNyw4LDkgdmFyaWFu
dHMgd2l0aCBkaWZmZXJlbnQgY2FwYWJpbGl0aWVzCihQUlUsIFNHWCwgQ0FOLCBaQ1ogcG9ydHMg
dG8gbmFtZSBzb21lKS4KCkFuZCB0byBiZSBjb3JyZWN0LCB0aGVyZSBzaG91bGQgYmUgYSBkaWZm
ZXJlbnQgImNvbXBhdGlibGUiLgoKUm9iIGFza2VkIG1lIHdoZW4gcmV2aWV3aW5nIHRoZSBwdnJz
Z3ggYmluZGluZ3MgaWYgdGhlIGltZyw1eHggdmFyaWFudHMKY2FuIGJlIGF1dG9kZXRlY3RlZCB0
byByZWR1Y2UgYmluZGluZ3MgY29tcGxleGl0eS4KCj4gVGhlIGRldmljZSB0cmVlIGlzIHN1cHBv
c2VkIHRvIGRlc2NyaWJlIHRoZQo+IGhhcmR3YXJlLCBhbmQgaW4gbW9zdCBjYXNlcyB0aGUgU29D
IHZlcnNpb24gaXMgZml4ZWQgYW5kIG5lZWQgbm8KPiBkeW5hbWljIGRldGVjdGlvbi4KClRoZXJl
IG1heSBiZSBleGFjdGx5IHRoZSBzYW1lIGJvYXJkIHBvcHVsYXRlZCB3aXRoIGVpdGhlciBvbmUg
c2luY2UKdGhleSBhcmUgZHJvcC1pbiBwaW4gY29tcGF0aWJsZS4gU28gdGhpcyBtYXkgcHJvbGlm
ZXJhdGUgdG8gdGhlCmJvYXJkLmR0cyBmaWxlcyBhbmQgdS1ib290IGNhbiBoYXZlIHRvIGxvYWQg
ZGlmZmVyZW50IC5kdGIuCgo+IAo+IEFuZHLDqSwgY2FuIHlvdSBwbGVhc2UgYWRkIHRob3NlIHRo
cmVlIGR0c2kgZmlsZXMgc2luY2UgeW91IGhhdmUgYXQKPiBsZWFzdCBvbmUgdGVzdCBjYXNlPyA6
KQo+IAo+IFJlZ2FyZHMsCj4gCj4gVG9ueQoKQlIsCk5pa29sYXVzCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
