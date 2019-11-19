Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E5721021D9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 11:17:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d9Mp3LpiluCdrDfzPEfyA5c+eTu3WQ2SkBSfoWyaX90=; b=iBShFdbYcD+B+e
	6UrfudH7PLyZhHEYh53CALg9STOxCP/jbxq40WmrtiZxP0ibh3KNRcVlY6uD21hj9E1c7953crPxN
	PydL01vrlICmRxWQ2l0PNHG9ohgblDuoZIsTNgBnWq1X6XOSjACOJQvnzT7kubDT3vUq1YgeIQsMA
	Oyvq6fUtHhrM/WJOHLQY3TMVO6Pe8SqiLbi9WtE8QkGnCjo1u0RQfsOlAqHcxXSqckMzLgceYvxwT
	q2bs0XEa72MAag+scjaTRbadAqbB3tvLqrtgnV4/pUhVCWVFyBh194EumIxlopu6pn7tYLREQ5fW/
	mLG4h/Lp9wmqYRCvAfwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX0ZV-0002Sc-P8; Tue, 19 Nov 2019 10:17:21 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX0ZC-0002Qz-RH; Tue, 19 Nov 2019 10:17:07 +0000
Received: by mail-ed1-x541.google.com with SMTP id a24so16577647edt.0;
 Tue, 19 Nov 2019 02:17:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=9hbii1rvXe3OjAU+9EET7g3kuyKDkNC5l9tGGg3Rr0w=;
 b=Zak8ug59k2O1p0roRgoyW1n9sY288ZxRAFM6l3LASPNE2bU1tEjWuX/tkz4flnMmAu
 N0deW1GLG9hcW5axTEBU/FSyf5vpihs92jZkxdcOnP2Bs18i6UXzaVoL22WNrxgopVFh
 /eCKelOOPTL7GpSotCpSbTckD9pen8uMfHdorYfpqLBBbUhtSk8DvuBqkAc6tEW713Jn
 QIomHlDALijSRIvcJDh5PLwBesumZ8L9GG7AgVe0UObwBRt8Sb3VtH1Gd8ev3Z8X0uxU
 ZLbm60b4pdgJw593iGuqzjlXul3EkyHy8SUUMD4LBbJnpmJ55onltqIei/mu27INlGOh
 yy8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=9hbii1rvXe3OjAU+9EET7g3kuyKDkNC5l9tGGg3Rr0w=;
 b=ZgfgizPoe9qxfNGSrqHqg6eFkR+UUn4crkejRPnsAgO8VbVDHRrZiXXZ8iZefzpGmI
 blmRpyWPllB057LTwEgzu1koFQOC4bcfjFumkuH2IAVw8mPGou6Y+cpL9PSaoZfHTLeG
 5Hay96dqciuRGIpA4sV55a4mB6qfSX37IylQ98pLXtOUUYr+YFdvCdGCOqxs+iwTeEjD
 prcopUKLatIoST+fdi7qwWS8M4m+qPtYJJSJSO+rXTQD/JzU2Q5gnKM7i96pzI49ZA2u
 A/lIElc1fyxqWGw8W5e/7QLS7anHHGLLhzx1ar4qNJEd25fmWMDukfqecy0h8BZS+LGd
 mPDg==
X-Gm-Message-State: APjAAAXytIJDp3CEeJSlPYtaZQpqm0EXZUD2Bs+e1ICZpEP5NSJ3LDvi
 uB4crmWOTW6/xb16IGW+4RvE2msUc4t3ACyzrYY=
X-Google-Smtp-Source: APXvYqwkJxMqmg7ZsnrggMatLowQzCcmg0Qlbo3LHEuSiv/RFL5kc0e6TZc+eBNriQcNnlF72ydXy+R3Gn5WHvKUDNg=
X-Received: by 2002:a17:906:6b01:: with SMTP id
 q1mr34046962ejr.162.1574158620629; 
 Tue, 19 Nov 2019 02:17:00 -0800 (PST)
MIME-Version: 1.0
References: <20191114051242.14651-1-helen.koike@collabora.com>
 <20191114051242.14651-3-helen.koike@collabora.com>
 <09d4f683-d03d-46c9-e9d2-b8cceb72446e@xs4all.nl>
 <9cb116f6-64f4-1510-b128-8657d6d4889b@collabora.com>
In-Reply-To: <9cb116f6-64f4-1510-b128-8657d6d4889b@collabora.com>
From: Jacob Chen <jacobchen110@gmail.com>
Date: Tue, 19 Nov 2019 18:16:49 +0800
Message-ID: <CAFLEztRQfYE_Mssiq4KxK-QyJEe+KT4eTsvnLZQK5T=uVADUqA@mail.gmail.com>
Subject: Re: [PATCH v11 02/11] media: staging: rkisp1: add document for rkisp1
 meta buffer format
To: Helen Koike <helen.koike@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_021702_916985_D5E937F9 
X-CRM114-Status: GOOD (  19.73  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jacobchen110[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jacobchen110[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, Eddie Cai <eddie.cai.linux@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hverkuil@xs4all.nl>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 =?UTF-8?B?6ZKf5Lul5bSH?= <zyc@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Hans Verkuil <hans.verkuil@cisco.com>, Shunqian Zheng <zhengsq@rock-chips.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 devicetree@vger.kernel.org, Jeffy Chen <jeffy.chen@rock-chips.com>,
 robh+dt@kernel.org, Jacob Chen <jacob-chen@rock-chips.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGVsZW4gLAoKSGVsZW4gS29pa2UgPGhlbGVuLmtvaWtlQGNvbGxhYm9yYS5jb20+IOS6jjIw
MTnlubQxMeaciDE05pel5ZGo5ZubIOS4i+WNiDY6NTnlhpnpgZPvvJoKPgo+Cj4KPiBPbiAxMS8x
NC8xOSA2OjIxIEFNLCBIYW5zIFZlcmt1aWwgd3JvdGU6Cj4gPiBPbiAxMS8xNC8xOSA2OjEyIEFN
LCBIZWxlbiBLb2lrZSB3cm90ZToKPiA+PiBGcm9tOiBKYWNvYiBDaGVuIDxqYWNvYjIuY2hlbkBy
b2NrLWNoaXBzLmNvbT4KPiA+Pgo+ID4+IFRoaXMgY29tbWl0IGFkZCBkb2N1bWVudCBmb3Igcmtp
c3AxIG1ldGEgYnVmZmVyIGZvcm1hdAo+ID4+Cj4gPj4gU2lnbmVkLW9mZi1ieTogSmFjb2IgQ2hl
biA8amFjb2ItY2hlbkByb2NrLWNoaXBzLmNvbT4KPiA+PiBbcmVmYWN0b3JlZCBmb3IgdXBzdHJl
YW1dCj4gPj4gU2lnbmVkLW9mZi1ieTogSGVsZW4gS29pa2UgPGhlbGVuLmtvaWtlQGNvbGxhYm9y
YS5jb20+Cj4gPgo+ID4gY2hlY2twYXRjaCBnaXZlcyBtZToKPiA+Cj4gPiBXQVJOSU5HOiBNaXNz
aW5nIFNpZ25lZC1vZmYtYnk6IGxpbmUgYnkgbm9taW5hbCBwYXRjaCBhdXRob3IgJ0phY29iIENo
ZW4gPGphY29iMi5jaGVuQHJvY2stY2hpcHMuY29tPicKPiA+Cj4gPiBMb29raW5nIGF0IHRoaXMg
c2VyaWVzIEkgc2VlIGR1cGxpY2F0ZSBTaWduZWQtb2ZmLWJ5IGVudHJpZXMgZm9yIEphY29iIENo
ZW4gYW5kIGEgdG90YWwKPiA+IG9mIHRocmVlIGRpZmZlcmVudCBlbWFpbCBhZGRyZXNzZXM6Cj4g
Pgo+ID4gamFjb2IyLmNoZW5Acm9jay1jaGlwcy5jb20KPiA+IGphY29iLWNoZW5Acm9jay1jaGlw
cy5jb20KPiA+IGNjQHJvY2stY2hpcHMuY29tCj4KPiBBbmQgSSBzZWUgYSBuYW1lIGluIHRoZSBN
YWludGFpbmVycyBmaWxlIGFzIEphY29iIENoZW4gPGphY29iLWNoZW5AaW90d3J0LmNvbT4uCj4g
SSB3YXMgd29uZGVyaW5nIGlmIEkgY291bGQgcmVwbGFjZSB0aGUgZW1haWwgYnkgamFjb2ItY2hl
bkBpb3R3cnQuY29tLCBvciBpZiBJIHNob3VsZAo+IGtlZXAgdGhlIG9yaWdpbmFsIG9uZXMuCj4K
PiBIZWxlbgo+CgoiamFjb2IyLmNoZW5Acm9jay1jaGlwcy5jb20iLyJqYWNvYi1jaGVuQHJvY2st
Y2hpcHMuY29tIiBpcyBtZSBhbmQKImNjQHJvY2stY2hpcHMuY29tIiBpcyBhbm90aGVyIG9uZS4K
JyBqYWNvYi1jaGVuQHJvY2stY2hpcHMuY29tJyBpcyBpbnZhbGlkIG5vdywgIHNvIHlvdSBjb3Vs
ZCByZXBsYWNlIHRoZQplbWFpbCBieSAnamFjb2ItY2hlbkBpb3R3cnQuY29tJy4KCj4gPgo+ID4g
SXQncyBjb25mdXNpbmcuCj4gPgo+ID4gUmVnYXJkcywKPiA+Cj4gPiAgICAgICBIYW5zCj4gPgo+
ID4+Cj4gPj4gLS0tCj4gPj4KPiA+PiBDaGFuZ2VzIGluIHYxMTogTm9uZQo+ID4+IENoYW5nZXMg
aW4gdjEwOgo+ID4+IC0gdW5zcXVhc2gKPiA+Pgo+ID4+IENoYW5nZXMgaW4gdjk6Cj4gPj4gLSBz
cXVhc2gKPiA+PiAtIG1pZ3JhdGUgdG8gc3RhZ2luZwo+ID4+IC0gcmVtb3ZlIG1ldGEtZm9ybWF0
cy5yc3QgdXBkYXRlCj4gPj4KPiA+PiBDaGFuZ2VzIGluIHY4Ogo+ID4+IC0gQWRkIFNQRFggaW4g
dGhlIGhlYWRlcgo+ID4+IC0gUmVtb3ZlIGVtYWNzIGNvbmZpZ3MKPiA+PiAtIEZpeCBkb2Mgc3R5
bGUKPiA+Pgo+ID4+IENoYW5nZXMgaW4gdjc6Cj4gPj4gLSBzL2NvcnJlc3BvbmQvY29ycmVzcG9u
ZGluZwo+ID4+IC0gcy91c2UvdXNlcwo+ID4+IC0gcy9kb2N1ZW1udC9kb2N1bWVudAo+ID4+Cj4g
Pj4gIC4uLi91YXBpL3Y0bC9waXhmbXQtbWV0YS1ya2lzcDEtcGFyYW1zLnJzdCAgICB8IDIzICsr
KysrKysrKysrKysrKysrKysKPiA+PiAgLi4uL3VhcGkvdjRsL3BpeGZtdC1tZXRhLXJraXNwMS1z
dGF0LnJzdCAgICAgIHwgMjIgKysrKysrKysrKysrKysrKysrCj4gPj4gIDIgZmlsZXMgY2hhbmdl
ZCwgNDUgaW5zZXJ0aW9ucygrKQo+ID4+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zdGFn
aW5nL21lZGlhL3JraXNwMS9Eb2N1bWVudGF0aW9uL21lZGlhL3VhcGkvdjRsL3BpeGZtdC1tZXRh
LXJraXNwMS1wYXJhbXMucnN0Cj4gPj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdp
bmcvbWVkaWEvcmtpc3AxL0RvY3VtZW50YXRpb24vbWVkaWEvdWFwaS92NGwvcGl4Zm10LW1ldGEt
cmtpc3AxLXN0YXQucnN0Cj4gPj4KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21l
ZGlhL3JraXNwMS9Eb2N1bWVudGF0aW9uL21lZGlhL3VhcGkvdjRsL3BpeGZtdC1tZXRhLXJraXNw
MS1wYXJhbXMucnN0IGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9Eb2N1bWVudGF0aW9u
L21lZGlhL3VhcGkvdjRsL3BpeGZtdC1tZXRhLXJraXNwMS1wYXJhbXMucnN0Cj4gPj4gbmV3IGZp
bGUgbW9kZSAxMDA2NDQKPiA+PiBpbmRleCAwMDAwMDAwMDAwMDAuLjEwM2I1Y2I3OWI3Ywo+ID4+
IC0tLSAvZGV2L251bGwKPiA+PiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL0Rv
Y3VtZW50YXRpb24vbWVkaWEvdWFwaS92NGwvcGl4Zm10LW1ldGEtcmtpc3AxLXBhcmFtcy5yc3QK
PiA+PiBAQCAtMCwwICsxLDIzIEBACj4gPj4gKy4uIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAo
R1BMLTIuMCsgT1IgTUlUKQo+ID4+ICsKPiA+PiArLi4gX3Y0bDItbWV0YS1mbXQtcmtpc3AxLXBh
cmFtczoKPiA+PiArCj4gPj4gKz09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPiA+PiArVjRM
Ml9NRVRBX0ZNVF9SS19JU1AxX1BBUkFNUwo+ID4+ICs9PT09PT09PT09PT09PT09PT09PT09PT09
PT09Cj4gPj4gKwo+ID4+ICtSb2NrY2hpcCBJU1AxIFBhcmFtZXRlcnMgRGF0YQo+ID4+ICsKPiA+
PiArRGVzY3JpcHRpb24KPiA+PiArPT09PT09PT09PT0KPiA+PiArCj4gPj4gK1RoaXMgZm9ybWF0
IGRlc2NyaWJlcyBpbnB1dCBwYXJhbWV0ZXJzIGZvciB0aGUgUm9ja2NoaXAgSVNQMS4KPiA+PiAr
Cj4gPj4gK0l0IHVzZXMgYy1zdHJ1Y3QgOmM6dHlwZTpgcmtpc3AxX2lzcF9wYXJhbXNfY2ZnYCwg
d2hpY2ggaXMgZGVmaW5lZCBpbgo+ID4+ICt0aGUgYGBsaW51eC9ya2lzcDEtY29uZmlnLmhgYCBo
ZWFkZXIgZmlsZS4KPiA+PiArCj4gPj4gK1RoZSBwYXJhbWV0ZXJzIGNvbnNpc3Qgb2YgbXVsdGlw
bGUgbW9kdWxlcy4KPiA+PiArVGhlIG1vZHVsZSB3b24ndCBiZSB1cGRhdGVkIGlmIHRoZSBjb3Jy
ZXNwb25kaW5nIGJpdCB3YXMgbm90IHNldCBpbiBtb2R1bGVfKl91cGRhdGUuCj4gPj4gKwo+ID4+
ICsuLiBrZXJuZWwtZG9jOjogaW5jbHVkZS91YXBpL2xpbnV4L3JraXNwMS1jb25maWcuaAo+ID4+
ICsgICA6ZnVuY3Rpb25zOiBya2lzcDFfaXNwX3BhcmFtc19jZmcKPiA+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9Eb2N1bWVudGF0aW9uL21lZGlhL3VhcGkvdjRs
L3BpeGZtdC1tZXRhLXJraXNwMS1zdGF0LnJzdCBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lz
cDEvRG9jdW1lbnRhdGlvbi9tZWRpYS91YXBpL3Y0bC9waXhmbXQtbWV0YS1ya2lzcDEtc3RhdC5y
c3QKPiA+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4+IGluZGV4IDAwMDAwMDAwMDAwMC4uNGFk
MzAzZjk2NDIxCj4gPj4gLS0tIC9kZXYvbnVsbAo+ID4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9t
ZWRpYS9ya2lzcDEvRG9jdW1lbnRhdGlvbi9tZWRpYS91YXBpL3Y0bC9waXhmbXQtbWV0YS1ya2lz
cDEtc3RhdC5yc3QKPiA+PiBAQCAtMCwwICsxLDIyIEBACj4gPj4gKy4uIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQo+ID4+ICsKPiA+PiArLi4gX3Y0bDItbWV0YS1m
bXQtcmtpc3AxLXN0YXQ6Cj4gPj4gKwo+ID4+ICs9PT09PT09PT09PT09PT09PT09PT09PT09PT09
PQo+ID4+ICtWNEwyX01FVEFfRk1UX1JLX0lTUDFfU1RBVF8zQQo+ID4+ICs9PT09PT09PT09PT09
PT09PT09PT09PT09PT09PQo+ID4+ICsKPiA+PiArCj4gPj4gK1JvY2tjaGlwIElTUDEgU3RhdGlz
dGljcyBEYXRhCj4gPj4gKwo+ID4+ICtEZXNjcmlwdGlvbgo+ID4+ICs9PT09PT09PT09PQo+ID4+
ICsKPiA+PiArVGhpcyBmb3JtYXQgZGVzY3JpYmVzIGltYWdlIGNvbG9yIHN0YXRpc3RpY3MgaW5m
b3JtYXRpb24gZ2VuZXJhdGVkIGJ5IHRoZSBSb2NrY2hpcAo+ID4+ICtJU1AxLgo+ID4+ICsKPiA+
PiArSXQgdXNlcyBjLXN0cnVjdCA6Yzp0eXBlOmBya2lzcDFfc3RhdF9idWZmZXJgLCB3aGljaCBp
cyBkZWZpbmVkIGluCj4gPj4gK3RoZSBgYGxpbnV4L3JraXNwMS1jb25maWcuaGBgIGhlYWRlciBm
aWxlLgo+ID4+ICsKPiA+PiArLi4ga2VybmVsLWRvYzo6IGluY2x1ZGUvdWFwaS9saW51eC9ya2lz
cDEtY29uZmlnLmgKPiA+PiArICAgOmZ1bmN0aW9uczogcmtpc3AxX3N0YXRfYnVmZmVyCj4gPj4K
PiA+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
