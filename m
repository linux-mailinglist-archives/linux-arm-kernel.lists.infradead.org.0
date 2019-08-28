Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F9F9FA96
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 08:35:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=c5TTbxHH2Z446zdlK6gITuekFgxJRc31renl8T2l4Pc=; b=QOYhxKjoX+L1KMsYb3ymWY9ji
	F1H1b1mANw1l2NgmYs4LJ2zV5ViFk1hnvnujkJZzPe0KSuewVEVjuH/574LMb2Wd9n93HKu6VSe9P
	xmIdrvCSx36H9y6shui8Srau9X4dAqy8QC2ZklFZ6DeQGlz4aPPa59iuqnWMynzvDsp5HkmSO5PiJ
	wlN9HKDqC70+ATFjYLScd3aSGGyc5n9fd4QmqyLCd+M0+VWnJ6GnIXsdAPNmnX+rWAyNlINF7LODF
	vehIirikPrWWyWj6Oj9+S3iQMIDgWSZ9Hs9sGYUNjCk+T5TPD+3T+ik9BycavMrlViihPbrtGBD74
	U3bFH3uJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2rYP-0007zJ-DK; Wed, 28 Aug 2019 06:35:38 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2rYD-0007yL-VY; Wed, 28 Aug 2019 06:35:28 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 13AF85FA71;
 Wed, 28 Aug 2019 08:35:21 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="DzxTpOqP"; 
 dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id CD7891DA57A4;
 Wed, 28 Aug 2019 08:35:20 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com CD7891DA57A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1566974120;
 bh=+9RZEnPgX2ksESdB/bF+PT8GofXKlxNi+RpGRFBtU3s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DzxTpOqPdYiJOzKQH0sss7LLUa5wQ/g8SA9H/IZ4XGuoxWyJ0StvBJTwm+7ZdheUP
 fhb/yZcBl55A1yYRkQ7NBX1W/xknDwWRp/ZJqw7cRvFT09sFKeCC3f7ZAoYEIdX2mr
 xCKQXfM03RpibxtE/zRuWzDfHg9wUP6bXoAQfz4ogp1YHlSNdx1/M6US9A+73NZzl2
 Su50dLCGh2PJ39dHE+RAafG/4UNGHPNpvCP409FHIku4h39rjlpKhNi1kR4Gz+ErZp
 QnrSHcEIjFmw8coQwoxLqEUdO/jILB8dYj6MiCWI2lK4pwJs1B6UOjtadzF+gGmhTn
 EhU8Z+JBYunow==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Wed, 28 Aug 2019 06:35:20 +0000
Date: Wed, 28 Aug 2019 06:35:20 +0000
Message-ID: <20190828063520.Horde.4_ak7mcmFhVJlxZWWy2wo3V@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH net-next v2 2/3] dt-bindings: net: dsa: mt7530: Add
 support for port 5
References: <20190821144547.15113-1-opensource@vdorst.com>
 <20190821144547.15113-3-opensource@vdorst.com>
 <20190827222251.GA30507@bogus>
In-Reply-To: <20190827222251.GA30507@bogus>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_233526_305309_5C7D6C5C 
X-CRM114-Status: GOOD (  20.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Frank Wunderlich <frank-w@public-files.de>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, linux-mips@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, devicetree@vger.kernel.org,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iLAoKUXVvdGluZyBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPjoKCj4gT24gV2Vk
LCBBdWcgMjEsIDIwMTkgYXQgMDQ6NDU6NDZQTSArMDIwMCwgUmVuw6kgdmFuIERvcnN0IHdyb3Rl
Ogo+PiBNVDc1MzAgcG9ydCA1IGhhcyBtYW55IG1vZGVzL2NvbmZpZ3VyYXRpb25zLgo+PiBVcGRh
dGUgdGhlIGRvY3VtZW50YXRpb24gaG93IHRvIHVzZSBwb3J0IDUuCj4+Cj4+IFNpZ25lZC1vZmYt
Ynk6IFJlbsOpIHZhbiBEb3JzdCA8b3BlbnNvdXJjZUB2ZG9yc3QuY29tPgo+PiBDYzogZGV2aWNl
dHJlZUB2Z2VyLmtlcm5lbC5vcmcKPj4gQ2M6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+
Cj4KPj4gdjEtPnYyOgo+PiAqIEFkZGluZyBleHRyYSBub3RlIGFib3V0IFJHTUlJMiBhbmQgZ3Bp
byB1c2UuCj4+IHJmYy0+djE6Cj4+ICogTm8gY2hhbmdlCj4KPiBUaGUgY2hhbmdlbG9nIGdvZXMg
YmVsb3cgdGhlICctLS0nCj4KClRoYW5rcyBmb3IgdGhlIHJldmlldywKSSBzaGFsbCBmaXggdGhh
dC4KCj4+IC0tLQo+PiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2RzYS9tdDc1MzAudHh0
ICAgIHwgMjE4ICsrKysrKysrKysrKysrKysrKwo+PiAgMSBmaWxlIGNoYW5nZWQsIDIxOCBpbnNl
cnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvbmV0L2RzYS9tdDc1MzAudHh0ICAKPj4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvbmV0L2RzYS9tdDc1MzAudHh0Cj4+IGluZGV4IDQ3YWEyMDVlZTBiZC4uNDM5OTNh
YWUzZjljIDEwMDY0NAo+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
bmV0L2RzYS9tdDc1MzAudHh0Cj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9uZXQvZHNhL210NzUzMC50eHQKPj4gQEAgLTM1LDYgKzM1LDQyIEBAIFJlcXVpcmVkIHBy
b3BlcnRpZXMgZm9yIHRoZSBjaGlsZCBub2RlcyB3aXRoaW4gIAo+PiBwb3J0cyBjb250YWluZXI6
Cj4+ICAtIHBoeS1tb2RlOiBTdHJpbmcsIG11c3QgYmUgZWl0aGVyICJ0cmdtaWkiIG9yICJyZ21p
aSIgZm9yIHBvcnQgbGFiZWxlZAo+PiAgCSAiY3B1Ii4KPj4KPj4gK1BvcnQgNSBvZiB0aGUgc3dp
dGNoIGlzIG11eGVkIGJldHdlZW46Cj4+ICsxLiBHTUFDNTogR01BQzUgY2FuIGludGVyZmFjZSB3
aXRoIGFub3RoZXIgZXh0ZXJuYWwgTUFDIG9yIFBIWS4KPj4gKzIuIFBIWSBvZiBwb3J0IDAgb3Ig
cG9ydCA0OiBQSFkgaW50ZXJmYWNlcyB3aXRoIGFuIGV4dGVybmFsIE1BQyAgCj4+IGxpa2UgMm5k
IEdNQUMKPj4gKyAgIG9mIHRoZSBTT0MuIFVzZWQgaW4gbWFueSBzZXR1cHMgd2hlcmUgcG9ydCAw
LzQgYmVjb21lcyB0aGUgV0FOIHBvcnQuCj4+ICsgICBOb3RlOiBPbiBhIE1UNzYyMSBTT0Mgd2l0
aCBpbnRlZ3JhdGVkIHN3aXRjaDogMm5kIEdNQUMgY2FuIG9ubHkgIAo+PiBjb25uZWN0ZWQgdG8K
Pj4gKwkgR01BQzUgd2hlbiB0aGUgZ3Bpb3MgZm9yIFJHTUlJMiAoR1BJTyAyMi0zMykgYXJlIG5v
dCB1c2VkIGFuZCBub3QKPj4gKwkgY29ubmVjdGVkIHRvIGV4dGVybmFsIGNvbXBvbmVudCEKPj4g
Kwo+PiArUG9ydCA1IG1vZGVzL2NvbmZpZ3VyYXRpb25zOgo+PiArMS4gUG9ydCA1IGlzIGRpc2Fi
bGVkIGFuZCBpc29sYXRlZDogQW4gZXh0ZXJuYWwgcGh5IGNhbiBpbnRlcmZhY2UgIAo+PiB0byB0
aGUgMm5kCj4+ICsgICBHTUFDIG9mIHRoZSBTT0MuCj4+ICsgICBJbiB0aGUgY2FzZSBvZiBhIGJ1
aWxkLWluIE1UNzUzMCBzd2l0Y2gsIHBvcnQgNSBzaGFyZXMgdGhlICAKPj4gUkdNSUkgYnVzIHdp
dGggMm5kCj4+ICsgICBHTUFDIGFuZCBhbiBvcHRpb25hbCBleHRlcm5hbCBwaHkuIE1pbmQgdGhl
IEdQSU8vcGluY3RsICAKPj4gc2V0dGluZ3Mgb2YgdGhlIFNPQyEKPj4gKzIuIFBvcnQgNSBpcyBt
dXhlZCB0byBQSFkgb2YgcG9ydCAwLzQ6IFBvcnQgMC80IGludGVyZmFjZXMgd2l0aCAybmQgR01B
Qy4KPj4gKyAgIEl0IGlzIGEgc2ltcGxlIE1BQyB0byBQSFkgaW50ZXJmYWNlLCBwb3J0IDUgbmVl
ZHMgdG8gYmUgc2V0dXAgIAo+PiBmb3IgeE1JSSBtb2RlCj4+ICsgICBhbmQgUkdNSUkgZGVsYXku
Cj4+ICszLiBQb3J0IDUgaXMgbXV4ZWQgdG8gR01BQzUgYW5kIGNhbiBpbnRlcmZhY2UgdG8gYW4g
ZXh0ZXJuYWwgcGh5Lgo+PiArICAgUG9ydCA1IGJlY29tZXMgYW4gZXh0cmEgc3dpdGNoIHBvcnQu
Cj4+ICsgICBPbmx5IHdvcmtzIG9uIHBsYXRmb3JtIHdoZXJlIGV4dGVybmFsIHBoeSBUWDwtPlJY
IGxpbmVzIGFyZSBzd2FwcGVkLgo+PiArICAgTGlrZSBpbiB0aGUgVWJpcXVpdGkgRVItWC1TRlAu
Cj4+ICs0LiBQb3J0IDUgaXMgbXV4ZWQgdG8gR01BQzUgYW5kIGludGVyZmFjZXMgd2l0aCB0aGUg
Mm5kIEdBTUMgYXMgIAo+PiAybmQgQ1BVIHBvcnQuCj4+ICsgICBDdXJyZW50bHkgYSAybmQgQ1BV
IHBvcnQgaXMgbm90IHN1cHBvcnRlZCBieSBEU0EgY29kZS4KPj4gKwo+PiArRGVwZW5kaW5nIG9u
IGhvdyB0aGUgZXh0ZXJuYWwgUEhZIGlzIHdpcmVkOgo+PiArMS4gbm9ybWFsOiBUaGUgUEhZIGNh
biBvbmx5IGNvbm5lY3QgdG8gMm5kIEdNQUMgYnV0IG5vdCB0byB0aGUgc3dpdGNoCj4+ICsyLiBz
d2FwcGVkOiBSR01JSSBUWCwgUlggYXJlIHN3YXBwZWQ7IGV4dGVybmFsIHBoeSBpbnRlcmZhY2Ug
d2l0aCAgCj4+IHRoZSBzd2l0Y2ggYXMKPj4gKyAgIGEgZXRoZXJuZXQgcG9ydC4gQnV0IGNhbid0
IGludGVyZmFjZSB0byB0aGUgMm5kIEdNQUMuCj4+ICsKPj4gK0Jhc2VkIG9uIHRoZSBEVCB0aGUg
cG9ydCA1IG1vZGUgaXMgY29uZmlndXJlZC4KPj4gKwo+PiArRHJpdmVyIHRyaWVzIHRvIGxvb2t1
cCB0aGUgcGh5LWhhbmRsZSBvZiB0aGUgMm5kIEdNQUMgb2YgdGhlIG1hc3RlciBkZXZpY2UuCj4+
ICtXaGVuIHBoeS1oYW5kbGUgbWF0Y2hlcyBQSFkgb2YgcG9ydCAwIG9yIDQgdGhlbiBwb3J0IDUg
c2V0LXVwIGFzIG1vZGUgMi4KPj4gK3BoeS1tb2RlIG11c3QgYmUgc2V0LCBzZWUgYWxzbyBleGFt
cGxlIDIgYmVsb3chCj4+ICsgKiBtdDc2MjE6IHBoeS1tb2RlID0gInJnbWlpLXR4aWQiOwo+PiAr
ICogbXQ3NjIzOiBwaHktbW9kZSA9ICJyZ21paSI7Cj4+ICsKPj4gIFNlZSBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2RzYS9kc2EudHh0IGZvciBhIGxpc3QgIAo+PiBvZiBh
ZGRpdGlvbmFsCj4+ICByZXF1aXJlZCwgb3B0aW9uYWwgcHJvcGVydGllcyBhbmQgaG93IHRoZSBp
bnRlZ3JhdGVkIHN3aXRjaCBzdWJub2RlcyBtdXN0Cj4+ICBiZSBzcGVjaWZpZWQuCj4+IEBAIC05
NCwzICsxMzAsMTg1IEBAIEV4YW1wbGU6Cj4+ICAJCQl9Owo+PiAgCQl9Owo+PiAgCX07Cj4+ICsK
Pj4gK0V4YW1wbGUgMjogTVQ3NjIxOiBQb3J0IDQgaXMgV0FOIHBvcnQ6IDJuZCBHTUFDIC0+IFBv
cnQgNSAtPiBQSFkgcG9ydCA0Lgo+PiArCj4+ICsmZXRoIHsKPj4gKwlzdGF0dXMgPSAib2theSI7
Cj4KPiBEb24ndCBzaG93IHN0YXR1cyBpbiBleGFtcGxlcy4KCk9LLgoKPiBUaGlzIHNob3VsZCBz
aG93IHRoZSBjb21wbGV0ZSBub2RlLgo+CgpUbyBiZSBjbGVhciwgSSBzaG91bGQgdGFrZSBldGhl
cm5ldCBub2RlIGZyb20gdGhlIG10NzYyMS5kdHNpIFswXSBvciAgCm10NzYyMy5kdHNpClsxXSBh
bmQgaW5zZXJ0IHRoZSBleGFtcGxlIGJlbG93PywgcmlnaHQ/CgpHcmVhdHMsCgpSZW7DqQoKWzBd
OiAgCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2RhdmVt
L25ldC1uZXh0LmdpdC90cmVlL2RyaXZlcnMvc3RhZ2luZy9tdDc2MjEtZHRzL210NzYyMS5kdHNp
I24zOTcKWzFdOiAgCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwv
Z2l0L2RhdmVtL25ldC1uZXh0LmdpdC90cmVlL2FyY2gvYXJtL2Jvb3QvZHRzL210NzYyMy5kdHNp
I24xMDIzCgo+PiArCj4+ICsJZ21hYzA6IG1hY0AwIHsKPj4gKwkJY29tcGF0aWJsZSA9ICJtZWRp
YXRlayxldGgtbWFjIjsKPj4gKwkJcmVnID0gPDA+Owo+PiArCQlwaHktbW9kZSA9ICJyZ21paSI7
Cj4+ICsKPj4gKwkJZml4ZWQtbGluayB7Cj4+ICsJCQlzcGVlZCA9IDwxMDAwPjsKPj4gKwkJCWZ1
bGwtZHVwbGV4Owo+PiArCQkJcGF1c2U7Cj4+ICsJCX07Cj4+ICsJfTsKPj4gKwo+PiArCWdtYWMx
OiBtYWNAMSB7Cj4+ICsJCWNvbXBhdGlibGUgPSAibWVkaWF0ZWssZXRoLW1hYyI7Cj4+ICsJCXJl
ZyA9IDwxPjsKPj4gKwkJcGh5LW1vZGUgPSAicmdtaWktdHhpZCI7Cj4+ICsJCXBoeS1oYW5kbGUg
PSA8JnBoeTQ+Owo+PiArCX07Cj4+ICsKPj4gKwltZGlvOiBtZGlvLWJ1cyB7Cj4+ICsJCSNhZGRy
ZXNzLWNlbGxzID0gPDE+Owo+PiArCQkjc2l6ZS1jZWxscyA9IDwwPjsKPj4gKwo+PiArCQkvKiBJ
bnRlcm5hbCBwaHkgKi8KPj4gKwkJcGh5NDogZXRoZXJuZXQtcGh5QDQgewo+PiArCQkJcmVnID0g
PDQ+Owo+PiArCQl9Owo+PiArCj4+ICsJCW10NzUzMDogc3dpdGNoQDFmIHsKPj4gKwkJCWNvbXBh
dGlibGUgPSAibWVkaWF0ZWssbXQ3NjIxIjsKPj4gKwkJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+
PiArCQkJI3NpemUtY2VsbHMgPSA8MD47Cj4+ICsJCQlyZWcgPSA8MHgxZj47Cj4+ICsJCQlwaW5j
dHJsLW5hbWVzID0gImRlZmF1bHQiOwo+PiArCQkJbWVkaWF0ZWssbWNtOwo+PiArCj4+ICsJCQly
ZXNldHMgPSA8JnJzdGN0cmwgMj47Cj4+ICsJCQlyZXNldC1uYW1lcyA9ICJtY20iOwo+PiArCj4+
ICsJCQlwb3J0cyB7Cj4+ICsJCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4+ICsJCQkJI3NpemUt
Y2VsbHMgPSA8MD47Cj4+ICsKPj4gKwkJCQlwb3J0QDAgewo+PiArCQkJCQlyZWcgPSA8MD47Cj4+
ICsJCQkJCWxhYmVsID0gImxhbjAiOwo+PiArCQkJCX07Cj4+ICsKPj4gKwkJCQlwb3J0QDEgewo+
PiArCQkJCQlyZWcgPSA8MT47Cj4+ICsJCQkJCWxhYmVsID0gImxhbjEiOwo+PiArCQkJCX07Cj4+
ICsKPj4gKwkJCQlwb3J0QDIgewo+PiArCQkJCQlyZWcgPSA8Mj47Cj4+ICsJCQkJCWxhYmVsID0g
ImxhbjIiOwo+PiArCQkJCX07Cj4+ICsKPj4gKwkJCQlwb3J0QDMgewo+PiArCQkJCQlyZWcgPSA8
Mz47Cj4+ICsJCQkJCWxhYmVsID0gImxhbjMiOwo+PiArCQkJCX07Cj4+ICsKPj4gKy8qIENvbW1l
bnRlZCBvdXQuIFBvcnQgNCBpcyBoYW5kbGVkIGJ5IDJuZCBHTUFDLgo+PiArCQkJCXBvcnRANCB7
Cj4+ICsJCQkJCXJlZyA9IDw0PjsKPj4gKwkJCQkJbGFiZWwgPSAibGFuNCI7Cj4+ICsJCQkJfTsK
Pj4gKyovCj4+ICsKPj4gKwkJCQljcHVfcG9ydDA6IHBvcnRANiB7Cj4+ICsJCQkJCXJlZyA9IDw2
PjsKPj4gKwkJCQkJbGFiZWwgPSAiY3B1IjsKPj4gKwkJCQkJZXRoZXJuZXQgPSA8JmdtYWMwPjsK
Pj4gKwkJCQkJcGh5LW1vZGUgPSAicmdtaWkiOwo+PiArCj4+ICsJCQkJCWZpeGVkLWxpbmsgewo+
PiArCQkJCQkJc3BlZWQgPSA8MTAwMD47Cj4+ICsJCQkJCQlmdWxsLWR1cGxleDsKPj4gKwkJCQkJ
CXBhdXNlOwo+PiArCQkJCQl9Owo+PiArCQkJCX07Cj4+ICsJCQl9Owo+PiArCQl9Owo+PiArCX07
Cj4+ICt9Owo+PiArCj4+ICtFeGFtcGxlIDM6IE1UNzYyMTogUG9ydCA1IGlzIGNvbm5lY3RlZCB0
byBleHRlcm5hbCBQSFk6IFBvcnQgNSAtPiAgCj4+IGV4dGVybmFsIFBIWS4KPj4gKwo+PiArJmV0
aCB7Cj4+ICsJc3RhdHVzID0gIm9rYXkiOwo+PiArCj4+ICsJZ21hYzA6IG1hY0AwIHsKPj4gKwkJ
Y29tcGF0aWJsZSA9ICJtZWRpYXRlayxldGgtbWFjIjsKPj4gKwkJcmVnID0gPDA+Owo+PiArCQlw
aHktbW9kZSA9ICJyZ21paSI7Cj4+ICsKPj4gKwkJZml4ZWQtbGluayB7Cj4+ICsJCQlzcGVlZCA9
IDwxMDAwPjsKPj4gKwkJCWZ1bGwtZHVwbGV4Owo+PiArCQkJcGF1c2U7Cj4+ICsJCX07Cj4+ICsJ
fTsKPj4gKwo+PiArCW1kaW86IG1kaW8tYnVzIHsKPj4gKwkJI2FkZHJlc3MtY2VsbHMgPSA8MT47
Cj4+ICsJCSNzaXplLWNlbGxzID0gPDA+Owo+PiArCj4+ICsJCS8qIEV4dGVybmFsIHBoeSAqLwo+
PiArCQllcGh5NTogZXRoZXJuZXQtcGh5QDcgewo+PiArCQkJcmVnID0gPDc+Owo+PiArCQl9Owo+
PiArCj4+ICsJCW10NzUzMDogc3dpdGNoQDFmIHsKPj4gKwkJCWNvbXBhdGlibGUgPSAibWVkaWF0
ZWssbXQ3NjIxIjsKPj4gKwkJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+PiArCQkJI3NpemUtY2Vs
bHMgPSA8MD47Cj4+ICsJCQlyZWcgPSA8MHgxZj47Cj4+ICsJCQlwaW5jdHJsLW5hbWVzID0gImRl
ZmF1bHQiOwo+PiArCQkJbWVkaWF0ZWssbWNtOwo+PiArCj4+ICsJCQlyZXNldHMgPSA8JnJzdGN0
cmwgMj47Cj4+ICsJCQlyZXNldC1uYW1lcyA9ICJtY20iOwo+PiArCj4+ICsJCQlwb3J0cyB7Cj4+
ICsJCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4+ICsJCQkJI3NpemUtY2VsbHMgPSA8MD47Cj4+
ICsKPj4gKwkJCQlwb3J0QDAgewo+PiArCQkJCQlyZWcgPSA8MD47Cj4+ICsJCQkJCWxhYmVsID0g
ImxhbjAiOwo+PiArCQkJCX07Cj4+ICsKPj4gKwkJCQlwb3J0QDEgewo+PiArCQkJCQlyZWcgPSA8
MT47Cj4+ICsJCQkJCWxhYmVsID0gImxhbjEiOwo+PiArCQkJCX07Cj4+ICsKPj4gKwkJCQlwb3J0
QDIgewo+PiArCQkJCQlyZWcgPSA8Mj47Cj4+ICsJCQkJCWxhYmVsID0gImxhbjIiOwo+PiArCQkJ
CX07Cj4+ICsKPj4gKwkJCQlwb3J0QDMgewo+PiArCQkJCQlyZWcgPSA8Mz47Cj4+ICsJCQkJCWxh
YmVsID0gImxhbjMiOwo+PiArCQkJCX07Cj4+ICsKPj4gKwkJCQlwb3J0QDQgewo+PiArCQkJCQly
ZWcgPSA8ND47Cj4+ICsJCQkJCWxhYmVsID0gImxhbjQiOwo+PiArCQkJCX07Cj4+ICsKPj4gKwkJ
CQlwb3J0QDUgewo+PiArCQkJCQlyZWcgPSA8NT47Cj4+ICsJCQkJCWxhYmVsID0gImxhbjUiOwo+
PiArCQkJCQlwaHktbW9kZSA9ICJyZ21paSI7Cj4+ICsJCQkJCXBoeS1oYW5kbGUgPSA8JmVwaHk1
PjsKPj4gKwkJCQl9Owo+PiArCj4+ICsJCQkJY3B1X3BvcnQwOiBwb3J0QDYgewo+PiArCQkJCQly
ZWcgPSA8Nj47Cj4+ICsJCQkJCWxhYmVsID0gImNwdSI7Cj4+ICsJCQkJCWV0aGVybmV0ID0gPCZn
bWFjMD47Cj4+ICsJCQkJCXBoeS1tb2RlID0gInJnbWlpIjsKPj4gKwo+PiArCQkJCQlmaXhlZC1s
aW5rIHsKPj4gKwkJCQkJCXNwZWVkID0gPDEwMDA+Owo+PiArCQkJCQkJZnVsbC1kdXBsZXg7Cj4+
ICsJCQkJCQlwYXVzZTsKPj4gKwkJCQkJfTsKPj4gKwkJCQl9Owo+PiArCQkJfTsKPj4gKwkJfTsK
Pj4gKwl9Owo+PiArfTsKPj4gLS0KPj4gMi4yMC4xCj4+CgoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
