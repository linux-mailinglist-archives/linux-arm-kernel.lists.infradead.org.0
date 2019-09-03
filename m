Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C87EA6675
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 12:19:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9bUq4cL8qWtKCfMifM2mwc/AWpZVo71z5zVrxyVd/lU=; b=iW247vU+peEbQg
	6OfoA3UlHkxXpOqwq5hClMzeGKA0kn8f7zmDX7BX/6m9SPnKp4fHiKecATfCPGSFNRFeB9DT6tMf5
	i+slrS7UUTd5+zoPeO6Vx4E6SKmbVd6QbZHidOOWhqnJqmQ9CeIWKJI/7THf5+3OWkaUZGUSzugjC
	40VytyKElgV5hw8jHlEgV8OY/vPkO5pH/xL+Nxv34UJIzrEmT/drDAZ4uLpDi0qbJN+JxcvdEs0MW
	/6S0TQ7jzy64unc06RFLMtStyuzoa4tSBE3rKbXEQiaxr3QDf/a+47t1J5ljZHhPGUlUzHSEC7Khi
	m2e5EVzapX/ymbhjAHVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i55uT-00025A-J5; Tue, 03 Sep 2019 10:19:37 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i55uH-00024e-N5
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 10:19:27 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x83AJJrI043302;
 Tue, 3 Sep 2019 05:19:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567505959;
 bh=nRTqcKo/WxW5TqzAmvGzBhBJLV092AmqWAXRSgLL4HQ=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=MAVqHP5rCVzAK7qY2G2VaRwl+Eht1wf++tyKAUBDMpBXY1dqWnkSOasWdWuL3UJH0
 U1dTBLkeDz1xPdv8fjND7octTCvsoznIQlEEKIsiKu28tOdcGOTTPx52xwX7H2+Mlc
 7C8KTXqRqmsSup83zDK3uH75JreICd8llooyx7us=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x83AJJXP081861
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 3 Sep 2019 05:19:19 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 3 Sep
 2019 05:19:19 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 3 Sep 2019 05:19:19 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x83AJHVI102032;
 Tue, 3 Sep 2019 05:19:17 -0500
Subject: Re: [PATCH 4/5] dt-bindings: dma: ti-edma: Add option for reserved
 channel ranges
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: Rob Herring <robh@kernel.org>
References: <20190823125618.8133-1-peter.ujfalusi@ti.com>
 <20190823125618.8133-5-peter.ujfalusi@ti.com> <20190829224728.GA1198@bogus>
 <a4c5688b-cbeb-5059-5351-11d9ae1b25d5@ti.com>
Message-ID: <15d5dc03-d6ca-f438-f37a-e71298abda95@ti.com>
Date: Tue, 3 Sep 2019 13:19:45 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <a4c5688b-cbeb-5059-5351-11d9ae1b25d5@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_031925_860809_AE309C8C 
X-CRM114-Status: GOOD (  21.74  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, vkoul@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iLAoKT24gMzAvMDgvMjAxOSA4LjM3LCBQZXRlciBVamZhbHVzaSB3cm90ZToKPiBSb2Is
Cj4gCj4gT24gMzAvMDgvMjAxOSAxLjQ3LCBSb2IgSGVycmluZyB3cm90ZToKPj4gT24gRnJpLCBB
dWcgMjMsIDIwMTkgYXQgMDM6NTY6MTdQTSArMDMwMCwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4+
PiBTaW1pbGFybHkgdG8gcGFSQU0gc2xvdHMsIGNoYW5uZWxzIGNhbiBiZSB1c2VkIGJ5IG90aGVy
IGNvcmVzLgo+Pj4KPj4+IEFkZCBvcHRpb25hbCBwcm9wZXJ0eSB0byBjb25maWd1cmUgdGhlIHJl
c2VydmVkIGNoYW5uZWwgcmFuZ2VzLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IFBldGVyIFVqZmFs
dXNpIDxwZXRlci51amZhbHVzaUB0aS5jb20+Cj4+PiAtLS0KPj4+ICBEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvZG1hL3RpLWVkbWEudHh0IHwgNSArKysrKwo+Pj4gIDEgZmlsZSBj
aGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RtYS90aS1lZG1hLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9kbWEvdGktZWRtYS50eHQKPj4+IGluZGV4IDRiYmM5NGQ4MjljOC4u
MTE5ODY4MmFkYTk5IDEwMDY0NAo+Pj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2RtYS90aS1lZG1hLnR4dAo+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2RtYS90aS1lZG1hLnR4dAo+Pj4gQEAgLTQyLDYgKzQyLDkgQEAgT3B0aW9uYWwg
cHJvcGVydGllczoKPj4+ICAtIHRpLGVkbWEtcmVzZXJ2ZWQtc2xvdC1yYW5nZXM6IFBhUkFNIHNs
b3QgcmFuZ2VzIHdoaWNoIHNob3VsZCBub3QgYmUgdXNlZCBieQo+Pj4gIAkJdGhlIGRyaXZlciwg
dGhleSBhcmUgYWxsb2NhdGVkIHRvIGJlIHVzZWQgYnkgZm9yIGV4YW1wbGUgdGhlCj4+PiAgCQlE
U1AuIFNlZSBleGFtcGxlLgo+Pj4gKy0gdGksZWRtYS1yZXNlcnZlZC1jaGFuLXJhbmdlczogY2hh
bm5lbCByYW5nZXMgd2hpY2ggc2hvdWxkIG5vdCBiZSB1c2VkIGJ5Cj4+PiArCQl0aGUgZHJpdmVy
LCB0aGV5IGFyZSBhbGxvY2F0ZWQgdG8gYmUgdXNlZCBieSBmb3IgZXhhbXBsZSB0aGUKPj4+ICsJ
CURTUC4gU2VlIGV4YW1wbGUuCj4+Cj4+IEJhc2VkIG9uIHRoZSBvdGhlciB0aHJlYWQsIEkgdGhp
bmsgZXh0ZW5kaW5nIGRtYS1jaGFubmVsLW1hc2sgdG8gYSAKPj4gdWludDMyLWFycmF5IG1ha2Vz
IHNlbnNlIGhlcmUuCj4gCj4gWWVzLCB0aGF0IGlzIHRoZSByZWFzb24gSSBoYXZlIGFza2VkIG9u
IHRoYXQgYW5kIEknbSBpbiBwcm9ncmVzcyBvZgo+IGNvbnZlcnRpbmcgdGhlIGVkbWEgZHJpdmVy
IHRvIHVzZSB0aGUgZG1hLWNoYW5uZWwtbWFzay4KPiBKdXN0IG5lZWQgdG8gZG8gc29tZSBzaHVm
ZmxpbmcgaW4gdGhlIGRyaXZlciB0byBnZXQgdGhlIG1hc2sgaW4gYSBmb3JtCj4gdXNhYmxlIGJ5
IHRoZSBkcml2ZXIuCj4gCj4gSSdsbCBzZW5kIGFuIHVwZGF0ZWQgc2VyaWVzIGVhcmx5IG5leHQg
d2Vlay4KCkhvdyBzaG91bGQgdGhlIGRtYS1jaGFubmVsLW1hc2sgdWludDMxLWFycmF5IHNob3Vs
ZCBiZSBkb2N1bWVudGVkIGFuZCB1c2VkPwoKQmFzaWNhbGx5IHNvbWUgRURNQSBoYXZlIDMyLCBz
b21lIDY0IGNoYW5uZWxzLiBUaGlzIGlzIGZpbmUuCkxldCdzIHNheSBJIHdhbnQgdG8gbWFzayBv
dXQgY2hhbm5lbCAwLTQgYW5kIDI0LTI3CgpUaGlzIHdvdWxkIGxvb2sgbGlrZSBpbiBjYXNlIG9m
IEVETUEgd2l0aCAzMiBjaGFubmVsczoKJmVkbWEgewoJLyogY2hhbm5lbCAwLTQgYW5kIDI0LTI3
IGlzIG5vdCB0byBiZSB1c2VkICovCglkbWEtY2hhbm5lbC1tYXNrID0gPDB4ZjBmZmZmZjA+Owp9
OwoKSG93IHRoaXMgc2hvdWxkIGxvb2sgbGlrZSBpbiBjYXNlIHdoZW4gSSBoYXZlIDY0IGNoYW5u
ZWxzPwomZWRtYSB7CgkvKiBjaGFubmVsIDAtNCBhbmQgMjQtMjcgaXMgbm90IHRvIGJlIHVzZWQg
Ki8KCWRtYS1jaGFubmVsLW1hc2sgPSA8MHhmMGZmZmZmMD4sIDwweGZmZmZmZmZmPjsKfTsKCldo
ZW4gSSByZWFkIHRoZSB1MzJzIHRoZW4KY2hhbl9tYXNrWzBdIGlzIGZvciBjaGFubmVsIDAtMzEg
KExTQiBpcyBjaGFubmVsIDApCmNoYW5fbWFrc1sxXSBpcyBmb3IgY2hhbm5lbCAzMi02MyAoTFNC
IGlzIGNoYW5uZWwgMzIpCgpPcjoKJmVkbWEgewoJLyogY2hhbm5lbCAwLTQgYW5kIDI0LTI3IGlz
IG5vdCB0byBiZSB1c2VkICovCglkbWEtY2hhbm5lbC1tYXNrID0gPDB4ZmZmZmZmZmY+LCA8MHhm
MGZmZmZmMD47Cn07CgpjaGFuX21ha3NbMF0gaXMgZm9yIGNoYW5uZWwgMzItNjMgKExTQiBpcyBj
aGFubmVsIDMyKQpjaGFuX21hc2tbMV0gaXMgZm9yIGNoYW5uZWwgMC0zMSAoTFNCIGlzIGNoYW5u
ZWwgMCkKCkRvIHlvdSBoYXZlIHBvaW50ZXIgb24gYWxyZWFkeSBlc3RhYmxpc2hlZCBub3Rpb24g
b24gaG93IHRvIGRvY3VtZW50IGFuZApoYW5kbGUgdGhpcz8KCi0gUMOpdGVyCgpUZXhhcyBJbnN0
cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4KWS10
dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lu
a2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
