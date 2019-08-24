Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D859A9BC63
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 09:41:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Rc8Mvc6bMrgZ2InAURjBnXCKArJlv1hJE+RxVW9MbVI=; b=Bp61lOVU6gFLcWKPhkh7R8eSo
	HUmg8ybEgC1RZa50jkUMlhpNqC7Wv1uL7YsFJewbqY0B7sZq+0gXT6zGZgw2iFATNcgWjK3elpnx+
	gakZW62Dt1O5+1pjXc/YaduC1O9EqK1Oyh1eDiknsVEt8wsGHzJ0PEhfSeg5NXGpVHpyWTm2hNcQU
	3/qi7DsDHH3i1OVV8KSc2zVHAuOXepdwXiNM5xRYoPp/60JcdgmZyWeHgrxayAb9O5ZPPlVVt/qmc
	Iq9pjWcdELvyCpDdwmrW1zXZAEoXWNmSUv+iTqDmPudL9nzXHsER+5RDoaGebuSe4CRGxbwNdCwL+
	vrFUyw4Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Qg4-0002qP-Jb; Sat, 24 Aug 2019 07:41:36 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Qfe-0002q2-Lf; Sat, 24 Aug 2019 07:41:13 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id B91985FBFB;
 Sat, 24 Aug 2019 09:41:03 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="NB/3M+Pc"; 
 dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id 73B691D8AB7C;
 Sat, 24 Aug 2019 09:41:03 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 73B691D8AB7C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1566632463;
 bh=qIA9b/hnzdc6JPIQXZGuy0VUvB2oMhN3+uI0Vi3Y2S8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NB/3M+PccmfTsXHEG8/Dt6nXF+TorTmYyddrD5jtILMDoXxmAL2rjVqx0GE9r2hR0
 VjF97jks+woX3OuhAfM399NVCfBaGsQ+iqG15fMmKwKb7uw7tYn8JMZp0nog/nfx1e
 6GT1iWi3yX1Q3CvMdMuCgXbz8UK1ZAlSxyJFRCrtvAIDHdmMh2KiHLM7CHTKIr847R
 0BKs1lYe31LmPVlqlEI0mlnKvxlaEkVReteoKHZ5wYC7bWN+MwNjZtgbe6Hb/LuiNr
 B8fHGlRq1zFSLzCG4UqQyy2nGUFYgZPGO3FeQWOVhi5Ikqhq/Lxs7eIjrAmHi6MpGw
 X18MxL+T5IIJQ==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Sat, 24 Aug 2019 07:41:03 +0000
Date: Sat, 24 Aug 2019 07:41:03 +0000
Message-ID: <20190824074103.Horde.ytG2fquC9xJKq5TL79l6J0M@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: Aw: [PATCH net-next v3 0/3] net: ethernet: mediatek: convert to
 PHYLINK
References: <20190823134516.27559-1-opensource@vdorst.com>
 <trinity-df75d11a-c27f-4941-a880-b017ebabd3dc-1566583013438@3c-app-gmx-bs75>
In-Reply-To: <trinity-df75d11a-c27f-4941-a880-b017ebabd3dc-1566583013438@3c-app-gmx-bs75>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_004111_406918_0C24D0BC 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Nelson Chang <nelson.chang@mediatek.com>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, linux-mips@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Stefan Roese <sr@denx.de>, "David S . Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRnJhbmssCgpRdW90aW5nIEZyYW5rIFd1bmRlcmxpY2ggPGZyYW5rLXdAcHVibGljLWZpbGVz
LmRlPjoKCj4gdGVzdGVkIG9uIGJwaS1yMiAobXQ3NjIzL210NzUzMCkgYW5kIGJwaS1yNjQgKG10
NzYyMi9ydGw4MzY3KQo+CgpUaGFua3MgZm9yIHRlc3RpbmchCgo+IGFzIHJlcG9ydGVkIHRvIHJl
bmUgZGlyZWN0bHkgcngtcGF0aCBuZWVkcyBzb21lIHJld29yayBiZWNhdXNlICAKPiBjdXJyZW50
IHJ4LXNwZWVkCj4gb24gYnBpLXIyIGlzIDg2NSBNYml0cy9zZWMgaW5zdGVhZCBvZiB+OTQwIE1i
aXRzL3NlYwoKSSBzdGlsbCB0aGluayBpdCBpcyBhIHJlc3VsdCBvZiB0aGUgZXh0cmEgY29kZSBp
biB0aGUgcnggcGF0aCB3aGVuIG10NzZ4OAp3YXMgaW50cm9kdWNlZC4KCkdyZWF0cywKClJlbsOp
Cgo+Cj4gVGVzdGVkLWJ5OiBGcmFuayBXdW5kZXJsaWNoIDxmcmFuay13QHB1YmxpYy1maWxlcy5k
ZT4KPgo+IHJlZ2FyZHMgRnJhbmsKPgo+Cj4+IEdlc2VuZGV0OiBGcmVpdGFnLCAyMy4gQXVndXN0
IDIwMTkgdW0gMTU6NDUgVWhyCj4+IFZvbjogIlJlbsOpIHZhbiBEb3JzdCIgPG9wZW5zb3VyY2VA
dmRvcnN0LmNvbT4KPj4gQW46ICJKb2huIENyaXNwaW4iIDxqb2huQHBocm96ZW4ub3JnPiwgIlNl
YW4gV2FuZyIgIAo+PiA8c2Vhbi53YW5nQG1lZGlhdGVrLmNvbT4sICJOZWxzb24gQ2hhbmciICAK
Pj4gPG5lbHNvbi5jaGFuZ0BtZWRpYXRlay5jb20+LCAiRGF2aWQgUyAuIE1pbGxlciIgIAo+PiA8
ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4sICJNYXR0aGlhcyBCcnVnZ2VyIiA8bWF0dGhpYXMuYmdnQGdt
YWlsLmNvbT4KPj4gQ2M6IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmcsIGxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZywgIAo+PiBsaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQu
b3JnLCBsaW51eC1taXBzQHZnZXIua2VybmVsLm9yZywgIAo+PiAiUnVzc2VsbCBLaW5nIiA8bGlu
dXhAYXJtbGludXgub3JnLnVrPiwgIkZyYW5rIFd1bmRlcmxpY2giICAKPj4gPGZyYW5rLXdAcHVi
bGljLWZpbGVzLmRlPiwgIlN0ZWZhbiBSb2VzZSIgPHNyQGRlbnguZGU+LCAiUmVuw6kgdmFuICAK
Pj4gRG9yc3QiIDxvcGVuc291cmNlQHZkb3JzdC5jb20+Cj4+IEJldHJlZmY6IFtQQVRDSCBuZXQt
bmV4dCB2MyAwLzNdIG5ldDogZXRoZXJuZXQ6IG1lZGlhdGVrOiBjb252ZXJ0IHRvIFBIWUxJTksK
Pj4KPj4gVGhlc2UgcGF0Y2hlcyBjb252ZXJ0cyBtZWRpYXRlayBkcml2ZXIgdG8gUEhZTElOSyBB
UEkuCj4+Cj4+IHYyLT52MzoKPj4gKiBQaHlsaW5rIGltcHJvdmVtZW50cyBhbmQgY2xlYW4tdXBz
IGFmdGVyIHJldmlldwo+PiB2MS0+djI6Cj4+ICogUmViYXNlIGZvciBtdDc2eDggY2hhbmdlcwo+
PiAqIFBoeWxpbmsgaW1wcm92ZW1lbnRzIGFuZCBjbGVhbi11cHMgYWZ0ZXIgcmV2aWV3Cj4+ICog
U0dNSUkgcG9ydCBkb2Vzbid0IHN1cHBvcnQgMi41R2JpdCBpbiBTR01JSSBtb2RlIG9ubHkgaW4g
QkFTRS1YIG1vZGUuCj4+ICAgUmVmYWN0b3IgdGhlIGNvZGUuCj4+Cj4+IFJlbsOpIHZhbiBEb3Jz
dCAoMyk6Cj4+ICAgbmV0OiBldGhlcm5ldDogbWVkaWF0ZWs6IEFkZCBiYXNpYyBQSFlMSU5LIHN1
cHBvcnQKPj4gICBuZXQ6IGV0aGVybmV0OiBtZWRpYXRlazogUmUtYWRkIHN1cHBvcnQgU0dNSUkK
Pj4gICBkdC1iaW5kaW5nczogbmV0OiBldGhlcm5ldDogVXBkYXRlIG10NzYyMiBkb2NzIGFuZCBk
dHMgdG8gcmVmbGVjdCB0aGUKPj4gICAgIG5ldyBwaHlsaW5rIEFQSQo+Pgo+PiAgLi4uL2FybS9t
ZWRpYXRlay9tZWRpYXRlayxzZ21paXN5cy50eHQgICAgICAgIHwgICAyIC0KPj4gIC4uLi9kdHMv
bWVkaWF0ZWsvbXQ3NjIyLWJhbmFuYXBpLWJwaS1yNjQuZHRzICB8ICAyOCArLQo+PiAgYXJjaC9h
cm02NC9ib290L2R0cy9tZWRpYXRlay9tdDc2MjIuZHRzaSAgICAgIHwgICAxIC0KPj4gIGRyaXZl
cnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL0tjb25maWcgICAgICAgICB8ICAgMiArLQo+PiAgZHJp
dmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9wYXRoLmMgIHwgIDc1ICstLQo+PiAg
ZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9zb2MuYyAgIHwgNTI5ICsrKysr
KysrKysrKy0tLS0tLQo+PiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9z
b2MuaCAgIHwgIDY4ICsrLQo+PiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX3Nn
bWlpLmMgICAgIHwgIDY1ICsrLQo+PiAgOCBmaWxlcyBjaGFuZ2VkLCA0NzcgaW5zZXJ0aW9ucygr
KSwgMjkzIGRlbGV0aW9ucygtKQo+Pgo+PiAtLQo+PiAyLjIwLjEKPj4KPj4KCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
