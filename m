Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AAB11926C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 21:49:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ZpCRCASSG0V81xIi23+HHNSBZbMSvh9021YpHjRjXk=; b=UGpDXWoEPUgRIZ
	3JglP6rgP1wIHtOwseAujeEGYGAp4V1j/eZLlo1HiNU/U4hwUJFOg1swBSb/Xv0RTdHy7EaNPYbrr
	7zRmgu2vHEGtOzPOHgE0tca1h7w0TzZtGiIyXvBG+Eff68fsSyr1zrn31jTXXeGiwjk74jydXqOX1
	TFTzLlVUTrM2cJ+khAH5mnL/xNJfsp/INjK1f4IZi3n10TRb5xVBWLEQOpsgpN2mN/wUnqsi6oFCn
	08avdxwgAsHx+UDRNl1Ffr/ZYh784LyPyh/URKOja3xhf8CVEx9hs2kDJUs9bdFjFhaqap+uk7QDo
	ip9C0gjTSZFTP6sBxuYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iemRY-0000uq-Ti; Tue, 10 Dec 2019 20:49:16 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iemRO-0000uS-GF
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 20:49:08 +0000
Received: from p5b06da22.dip0.t-ipconnect.de ([91.6.218.34]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1iemRD-0001LA-IR; Tue, 10 Dec 2019 21:48:55 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 8BB1A101DEC; Tue, 10 Dec 2019 21:48:54 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Greg KH <gregkh@linuxfoundation.org>, Thomas Renninger <trenn@suse.de>
Subject: Re: [PATCH 2/3] x86 cpuinfo: implement sysfs nodes for x86
In-Reply-To: <20191206163656.GC86904@kroah.com>
References: <20191206162421.15050-1-trenn@suse.de>
 <20191206162421.15050-3-trenn@suse.de> <20191206163656.GC86904@kroah.com>
Date: Tue, 10 Dec 2019 21:48:54 +0100
Message-ID: <87sglroqix.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_124906_680810_F737E276 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, Felix Schnizlein <fschnizlein@suse.de>,
 Felix Schnizlein <fschnizlein@suse.com>, x86@kernel.org, will.deacon@arm.com,
 linux@armlinux.org.uk, Thomas Renninger <trenn@suse.com>,
 linux-kernel@vger.kernel.org, fschnitzlein@suse.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

R3JlZyBLSCA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+IHdyaXRlczoKPiBPbiBGcmksIERl
YyAwNiwgMjAxOSBhdCAwNToyNDoyMFBNICswMTAwLCBUaG9tYXMgUmVubmluZ2VyIHdyb3RlOgo+
PiBGcm9tOiBGZWxpeCBTY2huaXpsZWluIDxmc2Nobml6bGVpbkBzdXNlLmRlPgo+PiA9PT4gZmxh
Z3MgPD09Cj4+IGZwdSB2bWUgZGUgcHNlIHRzYyBtc3IgcGFlIG1jZSBjeDggYXBpYyBzZXAgbXRy
ciBwZ2UgbWNhIGNtb3YgcGF0IHBzZTM2IGNsZmx1c2ggbW14IGZ4c3Igc3NlIHNzZTIgc3Mgc3lz
Y2FsbCBueCBwZHBlMWdiIHJkdHNjcCBsbSBjb25zdGFudF90c2MgcmVwX2dvb2Qgbm9wbCB4dG9w
b2xvZ3kgY3B1aWQgdHNjX2tub3duX2ZyZXEgcG5pIHBjbG11bHFkcSBzc3NlMyBmbWEgY3gxNiBw
Y2lkIHNzZTRfMSBzc2U0XzIgeDJhcGljIG1vdmJlIHBvcGNudCB0c2NfZGVhZGxpbmVfdGltZXIg
YWVzIHhzYXZlIGF2eCBmMTZjIHJkcmFuZCBoeXBlcnZpc29yIGxhaGZfbG0gYWJtIGNwdWlkX2Zh
dWx0IGludnBjaWRfc2luZ2xlIHB0aSBzc2JkIGlicnMgaWJwYiBmc2dzYmFzZSB0c2NfYWRqdXN0
IGJtaTEgYXZ4MiBzbWVwIGJtaTIgZXJtcyBpbnZwY2lkIHhzYXZlb3B0IGFyYXQgdW1pcAo+Cj4g
T25lIGZpbGUgd2l0aCBhbGwgb2YgdGhhdD8gIFdlIGFyZSBnb2luZyB0byBydW4gaW50byBwcm9i
bGVtcwo+IGV2ZW50dWFsbHksIHRoYXQgc2hvdWxkIGJlIHNwbGl0IHVwLgo+Cj4gSnVzdCBsaWtl
IGJ1Z3MsIHRoYXQncyBnb2luZyB0byBqdXN0IGdyb3cgb3ZlciB0aW1lIGFuZCBldmVudHVhbGx5
Cj4gb3ZlcmZsb3cgUEFHRV9TSVpFIDooCj4KPiBNYWtlIHRoaXM6Cj4gICDilJzilIDilIAgZmxh
Z3MKPiAgIOKUgsKgwqAg4pSc4pSA4pSAIGZwdQo+ICAg4pSCwqDCoCDilJzilIDilIAgdm1lCj4g
Li4uCj4KPiBNdWNoIHNpbXBsZXIgdG8gcGFyc2UsIHJpZ2h0PwoKV2VsbCwgSSdtIG5vdCByZWFs
bHkgc3VyZSB3aGV0aGVyIDEwMCsgZmlsZXMgYXJlIHNpbXBsZXIgdG8gcGFyc2UuCgpBc2lkZSBv
ZiB0aGF0IEkgcmVhbGx5IGRvbid0IHNlZSB0aGUgdmFsdWUgZm9yIDEwMCsgZmlsZXMgcGVyIENQ
VSB3aGljaAphcmUganVzdCByZXR1cm5pbmcgMSBvciBUcnVlIG9yIHdoYXRldmVyIGFzIGxvbmcg
YXMgeW91IGFyZSBub3QKc3VnZ2VzdGluZyB0byBwcm92aWRlIHJlYWwgZmVhdHVyZSBmaWxlcyB3
aGljaCBoYXZlIDAvMSBvciBUcnVlL0ZhbHNlCmNvbnRlbnQuCgpCdXQgSSBzdGlsbCBkb24ndCBn
ZXQgdGhlIHdob2xlIHRoaW5nLiBUaGUgb25seSAiYXJndW1lbnQiIEkndmUgc2VlbiBzbwpmYXIg
aXMgdGhlICdwcm9jIG1vdmVzIHRvIHN5cycgbWFudHJhLCBidXQgdGhhdCBkb2VzIG5vdCBtYWtl
IGl0IGFueQpiZXR0ZXIuCgpXZSB3b24ndCBnZXQgcmlkIG9mIC9wcm9jL2NwdWluZm8gZm9yIGEg
dmVyeSBsb25nIHRpbWUgc2ltcGx5IGJlY2F1c2UKdG9vIG11Y2ggdXNlcnNwYWNlIHVzZXMgaXQu
IEludHJvZHVjaW5nIGEgbWVzcyBpbiAvc3lzLyBpbiBwYXJhbGxlbCBqdXN0CmZvciBmb2xsb3dp
bmcgdGhlIG1hbnRyYSBkb2VzIG5vdCBoZWxwIG11Y2guCgpBbHNvIElGIHdlIGV2ZXIgZXhwb3Nl
IGZlYXR1cmUgZmxhZ3MgaW4gc3lzIHRoZW4gdGhpcyBuZWVkcyB0byBiZSBhCnNwbGl0IGlubwoK
ICBjcHUvY29tbW9uX2ZlYXR1cmVzCgphbmQKCiAgY3B1L0NQVSROL3VuaXF1ZV9mZWF0dXJlcwoK
T24gbW9zdCBzeXN0ZW1zIHVuaXF1ZV9mZWF0dXJlcyB3b250IGV4aXN0LCBidXQgdGhlcmUgaXMg
c3VjaCBzdHVmZiBvbgp0aGUgaG9yaXpvbi4KClRoYW5rcywKCiAgICAgICAgdGdseAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
