Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8E2181712
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 12:50:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GfFOOJa+LP2vj/0Zy63yG4sdVngWvYZAnXoVLnrBaqs=; b=KpKYH7NDHNB3C0
	K9oTu2Np/Bd/+LhJ54+VDWHivZ0tLQCOzB+tYyfPHXqka+NU7w5w7Ic5UBuPMii7oKINfr7kCvDsI
	t9JkY9yK0dybZEKyFa8o1H1P3EzLl7abctR5xBxTvwT5ouGcHMyRAXiQv/mDQE7lpHTkNBuKuxlL0
	7lMHK0cp8ioonYXvcE0INVuZSWFhx20lx86yDLkPtYKLDxhe8HFfpTRdYCCQ3Xedlc8Idu0659QVe
	ZAxyDsTkwIwnudhO3J6lEjM8BBFI8TrLYccAmNjjVo6P36WiH4+M5yIaq+BmJXsqfLR01akzIiWUc
	c1U/WTWQ/HWxnEvgxGfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBzs3-0008BR-7M; Wed, 11 Mar 2020 11:49:55 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBzru-0008AJ-KS; Wed, 11 Mar 2020 11:49:48 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 0450A634C87;
 Wed, 11 Mar 2020 13:48:48 +0200 (EET)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1jBzqy-0001Rt-6p; Wed, 11 Mar 2020 13:48:48 +0200
Date: Wed, 11 Mar 2020 13:48:48 +0200
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [v1 2/3] media: ov8856: Add devicetree support
Message-ID: <20200311114848.GJ2619@valkosipuli.retiisi.org.uk>
References: <20200310134603.30260-1-robert.foss@linaro.org>
 <20200310134603.30260-3-robert.foss@linaro.org>
 <20200310142652.GK1922688@smile.fi.intel.com>
 <CAG3jFyu5S1H=r6pV92tc_a2LoCUnhb0mDbOegP2BCO8a5C1nVg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAG3jFyu5S1H=r6pV92tc_a2LoCUnhb0mDbOegP2BCO8a5C1nVg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_044946_855777_535F5FE4 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, mchehab@kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, ben.kao@intel.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Jonathan.Cameron@huawei.com, matthias.bgg@gmail.com,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iZXJ0LAoKT24gVHVlLCBNYXIgMTAsIDIwMjAgYXQgMDQ6NTU6MjBQTSArMDEwMCwgUm9i
ZXJ0IEZvc3Mgd3JvdGU6Cj4gSGkgQW5keSwKPiAKPiBPbiBUdWUsIDEwIE1hciAyMDIwIGF0IDE1
OjI2LCBBbmR5IFNoZXZjaGVua28KPiA8YW5kcml5LnNoZXZjaGVua29AbGludXguaW50ZWwuY29t
PiB3cm90ZToKPiA+Cj4gPiBPbiBUdWUsIE1hciAxMCwgMjAyMCBhdCAwMjo0NjowMlBNICswMTAw
LCBSb2JlcnQgRm9zcyB3cm90ZToKPiA+ID4gQWRkIGRldmljZXRyZWUgbWF0Y2ggdGFibGUsIGFu
ZCBlbmFibGUgb3Y4ODU2X3Byb2JlKCkKPiA+ID4gdG8gaW5pdGlhbGl6ZSBwb3dlciwgY2xvY2tz
IGFuZCByZXNldCBwaW5zLgo+ID4KPiA+IC4uLgo+ID4KPiA+ID4gKyNkZWZpbmUgT1Y4ODU2X05V
TV9TVVBQTElFUyBBUlJBWV9TSVpFKG92ODg1Nl9zdXBwbHlfbmFtZXMpCj4gPgo+ID4gVXNlIEFS
UkFZX1NJWkUoKSBkaXJlY3RseS4KPiAKPiBBY2suCj4gCj4gPgo+ID4gSGF2ZSB5b3Ugc2VlbiBT
YWthcmkncyBjb21tZW50cz8KPiA+IFNha2FyaSwgZG8gSSBoYXZlIGTDqWrEhSB2dSBvciB5b3Ug
aW5kZWVkIGNvbW1lbnRlZCB0aGlzIGRyaXZlcj8KPiAKPiBZZXMsIEkgbWF5IGhhdmUgbWlzc2Vk
IHNvbWUgcGFydCBvZiBpdCwgc28gcGxlYXNlIHRlbGwgbWUgaWYgSSBoYXZlLgo+IAo+IFRoZXJl
IGlzIGEgcGF0Y2hzZXQgZmxvYXRpbmcgYXJvdW5kIHRoYXQgaW1wbGVtZW50cyBhIGxhcmdlciBj
aHVuayBvZgo+IGZ1bmN0aW9uYWxpdHksCj4gaW5jbHVkaW5nIGEgY291cGxlIG9mIG5ldyBtb2Rl
cy4gVGhpcyBpcyBiYXNlZCBvbiB0aGF0IHNlcmllcy4KClBsZWFzZSBzZWUgZWFybGllciBjb21t
ZW50cyBnaXZlbiBhZ2FpbnN0IGFuIGVhcmxpZXIgdmFyaWFudCBvZiB0aGlzIHNldC4KVGhleSdy
ZSBvbiBMTU1MLgoKPiAKPiA+Cj4gPiAuLi4KPiA+Cj4gPiA+ICsgICAgIGdwaW9kX3NldF92YWx1
ZV9jYW5zbGVlcChvdjg4NTYtPm5fc2h1dGRuX2dwaW8sIEdQSU9EX09VVF9MT1cpOwo+ID4KPiA+
ID4gKyAgICAgZ3Bpb2Rfc2V0X3ZhbHVlX2NhbnNsZWVwKG92ODg1Ni0+bl9zaHV0ZG5fZ3Bpbywg
R1BJT0RfT1VUX0hJR0gpOwo+ID4KPiA+IFllcywgc2VlbXMgdGhpcyBvbmUgaXMgaW52ZXJ0ZWQu
Cj4gPgo+ID4gLi4uCj4gPgo+ID4gPiArewo+ID4gPiArICAgICBncGlvZF9zZXRfdmFsdWVfY2Fu
c2xlZXAob3Y4ODU2LT5uX3NodXRkbl9ncGlvLCBHUElPRF9PVVRfTE9XKTsKPiA+ID4gKyAgICAg
cmVndWxhdG9yX2J1bGtfZGlzYWJsZShPVjg4NTZfTlVNX1NVUFBMSUVTLCBvdjg4NTYtPnN1cHBs
aWVzKTsKPiA+ID4gKyAgICAgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKG92ODg1Ni0+eHZjbGspOwo+
ID4gPiArfQo+ID4gPiArCj4gPiA+ICsKPiA+Cj4gPiBPbmUgYmxhbmsgbGluZSBpcyBlbm91Z2gu
Cj4gPgo+ID4gLi4uCj4gPgo+ID4gPiArICAgICBvdjg4NTYtPnh2Y2xrID0gZGV2bV9jbGtfZ2V0
KCZjbGllbnQtPmRldiwgInh2Y2xrIik7Cj4gPiA+ICsgICAgIGlmIChJU19FUlIob3Y4ODU2LT54
dmNsaykpIHsKPiA+ID4gKyAgICAgICAgICAgICBkZXZfZXJyKCZjbGllbnQtPmRldiwgImZhaWxl
ZCB0byBnZXQgeHZjbGtcbiIpOwo+ID4gPiArICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+
ID4gPiArICAgICB9Cj4gPgo+ID4gUHJldmlvdXNseSBpdCB3b3JrZWQgd2l0aG91dCBjbG9jayBw
cm92aWRlciwgbm93IHlvdSBtYWtlIGEgZGVwZW5kZW5jeS4KPiA+Cj4gPiBUaGlzIHdvbid0IHdv
cmsuCj4gCj4gU28gdGhlIGlkZWFsIGJlaGF2aW9yIHdvdWxkIGJlIHRvIG9ubHkgdXNlIHRoZSB4
Y2xrIGlmIGl0IGlzIHByb3ZpZGVkPwoKU2VlIGUuZy4gdGhlIHNtaWFwcCBkcml2ZXIgb24gaG93
IHRvIGRvIHRoaXMgc28gaXQgY29udGludWVzIHRvIHdvcmsgb24KQUNQSS4KCkkgdGhpbmsgaXQn
ZCBiZSBhbHNvIGFwcHJvcHJpYXRlIHRvIGFkZCB0aGUgdXNsZWVwKCkgYWZ0ZXIgbGlmdGluZyBy
ZXNldApvbmx5IGlmIHRoZSByZXNldCBHUElPIGlzIGRlZmluZWQgZm9yIHRoZSBkZXZpY2UuCgpB
bHNvIGRvIGNvbnNpZGVyIGRyb3BwaW5nIHNvbWUgcGVvcGxlIGZyb20gdGhlIGRpc3RyaWJ1dGlv
bi4gRm9yIG1hbnkgdGhpcwppcyBqdXN0IG5vaXNlLgoKLS0gCktpbmQgcmVnYXJkcywKClNha2Fy
aSBBaWx1cwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
