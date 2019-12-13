Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A617111E4E3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 14:49:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vgKiOZET6Hn5IejyabNPChi3JrGbc0Y7IJaKq4LTI7U=; b=JiXRTsFTtfFDfj2ZknCVsoaVG
	54B1g5ZQmhdUx5KBJN7Mozrk4yEW87aZFLdmCi4gyyD4ov8Ss255839c1cUXe1Bb0U4ex9XL6DpqR
	AMg+FzQOdk3DRlnSdWitvr492mmWWJb3jsXzrsBOLRLL8gtNLGbZ75akPoZy68dTGCQhza3MADXTc
	ZW8c6Mm6JikMEqg4BoMKRINysg9Rk4Ixq8kh8wXs4rj7KnZ+WSqvdu6asDb3N3ju/+zDhSyt3Ubqy
	vEhTuqEXibcLrbds7A8y/Uzl0g/0Ui9gUsgAgZZlhg7o9aarqZ7ebm1XxfLEnnHTULQ3IuxBUaHZO
	bcvyLYbVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iflKG-0006YC-8a; Fri, 13 Dec 2019 13:49:48 +0000
Received: from mail.sysgo.com ([176.9.12.79])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iflK6-0006Xp-Hd
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 13:49:40 +0000
Subject: Re: [PATCH] tty/serial: atmel: fix out of range clock divider handling
To: Richard Genoud <richard.genoud@gmail.com>, gregkh@linuxfoundation.org,
 jslaby@suse.com, nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 ludovic.desroches@microchip.com
References: <20191211162954.8393-1-david.engraf@sysgo.com>
 <822ac68e-4dde-21e8-caf9-a219b910d49e@gmail.com>
From: David Engraf <david.engraf@sysgo.com>
Message-ID: <1e2e3f63-84db-4b38-1bf1-85916116e0a2@sysgo.com>
Date: Fri, 13 Dec 2019 14:49:03 +0100
MIME-Version: 1.0
In-Reply-To: <822ac68e-4dde-21e8-caf9-a219b910d49e@gmail.com>
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_054938_734515_48F0EAE7 
X-CRM114-Status: GOOD (  20.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.12.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAxMy4xMi4xOSBhdCAxMDo1NywgUmljaGFyZCBHZW5vdWQgd3JvdGU6Cj4gSGksCj4g
Cj4gTGUgMTEvMTIvMjAxOSDDoCAxNzoyOSwgRGF2aWQgRW5ncmFmIGEgw6ljcml0wqA6Cj4+IFVz
ZSBNQ0tfRElWOCB3aGVuIHRoZSBjbG9jayBkaXZpZGVyIGlzID4gNjU1MzUuIFVuZm9ydHVuYXRl
bHkgdGhlIG1vZGUKPj4gcmVnaXN0ZXIgd2FzIGFscmVhZHkgd3JpdHRlbiB0aHVzIHRoZSBjbG9j
ayBzZWxlY3Rpb24gaXMgaWdub3JlZC4KPj4KPj4gRml4IGJ5IHdyaXRpbmcgdGhlIG1vZGUgcmVn
aXN0ZXIgYWZ0ZXIgY2FsY3VsYXRpbmcgdGhlIGJhdWRyYXRlLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5
OiBEYXZpZCBFbmdyYWYgPGRhdmlkLmVuZ3JhZkBzeXNnby5jb20+Cj4gCj4gSXQgc2VlbXMgdGhh
dCB0aGlzIGJ1ZyB3YXMgaW50cm9kdWNlZCBieToKPiBjb21taXQgNWJmNTYzNWFjMTcwICgidHR5
L3NlcmlhbDogYXRtZWw6IGFkZCBmcmFjdGlvbmFsIGJhdWQgcmF0ZSBzdXBwb3J0IikKPiAKPiBD
b3VsZCB5b3UgYWRkIHRoZSAiRml4ZXM6IiBoZWFkZXIgPwoKU3VyZS4KCj4gTHVkb3ZpYywgY291
bGQgeW91IGNoZWNrIGlmIHRoaXMgd2FzIHlvdXIgaW50ZW50IGF0IHRoZSB0aW1lID8KPiAKPj4g
LS0tCj4+ICAgZHJpdmVycy90dHkvc2VyaWFsL2F0bWVsX3NlcmlhbC5jIHwgNiArKystLS0KPj4g
ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pgo+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy90dHkvc2VyaWFsL2F0bWVsX3NlcmlhbC5jIGIvZHJpdmVycy90
dHkvc2VyaWFsL2F0bWVsX3NlcmlhbC5jCj4+IGluZGV4IGE4ZGM4YWY4M2YzOS4uOTk4M2UyZmFi
YmFjIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3R0eS9zZXJpYWwvYXRtZWxfc2VyaWFsLmMKPj4g
KysrIGIvZHJpdmVycy90dHkvc2VyaWFsL2F0bWVsX3NlcmlhbC5jCj4+IEBAIC0yMjcwLDkgKzIy
NzAsNiBAQCBzdGF0aWMgdm9pZCBhdG1lbF9zZXRfdGVybWlvcyhzdHJ1Y3QgdWFydF9wb3J0ICpw
b3J0LCBzdHJ1Y3Qga3Rlcm1pb3MgKnRlcm1pb3MsCj4+ICAgCQltb2RlIHw9IEFUTUVMX1VTX1VT
TU9ERV9OT1JNQUw7Cj4+ICAgCX0KPj4gICAKPiBJIHRoaW5rIGl0J3MgYmV0dGVyIHRvIG1vIG1v
dmUgdGhlICJTZXQgYmF1ZCByYXRlIiBibG9jayBoZXJlIChjZiBiZWxsb3cpCj4gCj4+IC0JLyog
c2V0IHRoZSBtb2RlLCBjbG9jayBkaXZpc29yLCBwYXJpdHksIHN0b3AgYml0cyBhbmQgZGF0YSBz
aXplICovCj4+IC0JYXRtZWxfdWFydF93cml0ZWwocG9ydCwgQVRNRUxfVVNfTVIsIG1vZGUpOwo+
PiAtCj4+ICAgCS8qCj4+ICAgCSAqIHdoZW4gc3dpdGNoaW5nIHRoZSBtb2RlLCBzZXQgdGhlIFJU
UyBsaW5lIHN0YXRlIGFjY29yZGluZyB0byB0aGUKPj4gICAJICogbmV3IG1vZGUsIG90aGVyd2lz
ZSBrZWVwIHRoZSBmb3JtZXIgc3RhdGUKPj4gQEAgLTIzMTUsNiArMjMxMiw5IEBAIHN0YXRpYyB2
b2lkIGF0bWVsX3NldF90ZXJtaW9zKHN0cnVjdCB1YXJ0X3BvcnQgKnBvcnQsIHN0cnVjdCBrdGVy
bWlvcyAqdGVybWlvcywKPj4gICAJfQo+PiAgIAlxdW90ID0gY2QgfCBmcCA8PCBBVE1FTF9VU19G
UF9PRkZTRVQ7Cj4+ICAgCj4+ICsJLyogc2V0IHRoZSBtb2RlLCBjbG9jayBkaXZpc29yLCBwYXJp
dHksIHN0b3AgYml0cyBhbmQgZGF0YSBzaXplICovCj4+ICsJYXRtZWxfdWFydF93cml0ZWwocG9y
dCwgQVRNRUxfVVNfTVIsIG1vZGUpOwo+PiArCj4gSSB0aGluayB5b3VyIHBhdGNoIGlzIGdvb2Qs
IGJ1dCBJJ2xsIGJlIGhhcHBpZXIgaWYgaW5zdGVhZCBvZiBtb3ZpbmcKPiB0aG9zZSAyIGxpbmVz
IGhlcmUsIHRoZSB3aG9sZSAiU2V0IHRoZSBiYXVkIHJhdGUiIGJsb2NrIHdhcyBtb3ZlZCBiZWZv
cmUKPiAiYXRtZWxfdWFydF93cml0ZWwocG9ydCwgQVRNRUxfVVNfTVIsIG1vZGUpOyIKPiAKPiBU
aGF0J3MgYmVjYXVzZSBhdCBsaW5lIDIyOTEgdGhlIEFUTUVMX1VTX0NSIHJlZ2lzdGVyIGlzIHNl
dCB3aXRoCj4gQVRNRUxfVVNfUlRTRElTIG9yIEFUTUVMX1VTX1JUU0VOLgo+IEFuZCB0aG9zZSAy
IHZhbHVlcyBoYXZlIGEgZGlmZmVyZW50IGVmZmVjdCBkZXBlbmRpbmcgb24gVVNfTVIuVVNBUlRf
TU9ERQo+IAo+IFF1b3RpbmcgZnJvbSB0aGUgcmVsYXNlIG1hbnVhbDoKPiBSVFNFTjoKPiAxOiBE
cml2ZXMgUlRTIHBpbiB0byAxIGlmIFVTX01SLlVTQVJUX01PREUgZmllbGQgPSAyLCBlbHNlIGRy
aXZlcyBSVFMKPiBwaW4gdG8gMCBpZiBVU19NUi5VU0FSVF9NT0RFIGZpZWxkID0gMC4KPiAKPiBS
VFNESVM6Cj4gMTogRHJpdmVzIFJUUyBwaW4gdG8gMCBpZiBVU19NUi5VU0FSVF9NT0RFIGZpZWxk
ID0gMiwgZWxzZSBkcml2ZXMgUlRTCj4gcGluIHRvIDEgaWYgVVNfTVIuVVNBUlRfTU9ERSBmaWVs
ZCA9IDAuCj4gCj4gU28sIEkgdGhpbmsgaXQncyBiZXR0ZXIgdG8gc2V0IHRoZSBtb2RlIHJlZ2lz
dGVyIGJlZm9yZSBzZXR0aW5nIHRoZQo+IGNvbnRyb2wgcmVnaXN0ZXIuCgpJIGZ1bGx5IGFncmVl
LCB0aGUgUlRTIHBpbiBjb25maWd1cmF0aW9uIGRlcGVuZHMgb24gVVNBUlRfTU9ERS4gSSB3aWxs
IAptYWtlIGEgbmV3IHZlcnNpb24gb2YgdGhlIHBhdGNoLgoKVGhhbmtzCi0gRGF2aWQKCgo+IAo+
PiAgIAlpZiAoIShwb3J0LT5pc283ODE2LmZsYWdzICYgU0VSX0lTTzc4MTZfRU5BQkxFRCkpCj4+
ICAgCQlhdG1lbF91YXJ0X3dyaXRlbChwb3J0LCBBVE1FTF9VU19CUkdSLCBxdW90KTsKPj4gICAJ
YXRtZWxfdWFydF93cml0ZWwocG9ydCwgQVRNRUxfVVNfQ1IsIEFUTUVMX1VTX1JTVFNUQSB8IEFU
TUVMX1VTX1JTVFJYKTsKPj4KPiAKPiBUaGFua3MgIQo+IAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
