Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A4114AFCF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 07:28:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6qaSp4KktJx8ILbsFKsD+ddvoWb/xsSM23aFe82kjiw=; b=RRdUKA1T+opJAb
	oom93Znlmu1Wd8LRs9xy0gp9w4oIZ+i5sEiNaCFL1m1mFmqIIswkQWTlOuHNkhBj7tJERW40/GI6S
	nFIFTT/nTSu8sLAMF/vJVmSMNlR5I2Z9J+qdY32rJn86yRqU6fUfikLxMP6Y0M4Ca5rH0BJLQCBzH
	NzbO2ws6Psbuwodcb10ZD9wBo1ql7ReSoSA3OqQNbIk4Qj3/n9tb+rhOQTk5+EiyfTqNs0D/PRYgV
	TX8kgqxbAaNCZIJuBkXWXyGYbKZ3bFU2WPG1MrqlNKdsSjh2vjjWeduZgY8OmhT6Z0xjn7F9kmhN9
	K1jCj0Bgpv/vk1a1N3Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwKMZ-00021T-NK; Tue, 28 Jan 2020 06:28:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwKMF-00020W-Ge
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 06:28:20 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1E6C2205F4;
 Tue, 28 Jan 2020 06:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580192898;
 bh=Nror/33/FGHsPj3Lk3bq4hBaWkgAkgSHit0ACqP5MQE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Odt/CmZwnxY0FSSxYEi8g01nJTEMq0T60weZ9XLx/Hsot8/uLNqQrsY+FSnrA6Sjk
 LakYOZSNQNtghd4fsZxnu96m/QqzYqWp7d/vJCml8t+qcZe1h1adZPEOCBaDDlmwBW
 uWwapxJiRkKYOn6mLCUuvUPy3AGPks2TVQ5z0RKY=
Date: Tue, 28 Jan 2020 07:28:14 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jolly Shah <JOLLYS@xilinx.com>
Subject: Re: [PATCH v2 1/4] firmware: xilinx: Add sysfs interface
Message-ID: <20200128062814.GA2097606@kroah.com>
References: <1578527663-10243-1-git-send-email-jolly.shah@xilinx.com>
 <1578527663-10243-2-git-send-email-jolly.shah@xilinx.com>
 <20200114145257.GA1910108@kroah.com>
 <BYAPR02MB5992FC37E0D2AD9946414417B80F0@BYAPR02MB5992.namprd02.prod.outlook.com>
 <20200124060339.GB2906795@kroah.com>
 <2D4B924A-D10C-4A90-A8E6-507BF6C30654@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2D4B924A-D10C-4A90-A8E6-507BF6C30654@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_222819_595715_E4C66912 
X-CRM114-Status: GOOD (  21.27  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "keescook@chromium.org" <keescook@chromium.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "matt@codeblueprint.co.uk" <matt@codeblueprint.co.uk>,
 "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rajan Vaja <RAJANV@xilinx.com>, Michal Simek <michals@xilinx.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKYW4gMjcsIDIwMjAgYXQgMTE6MDE6MjdQTSArMDAwMCwgSm9sbHkgU2hhaCB3cm90
ZToKPiAgICAgPiA+ID4gKwlyZXQgPSBrc3RydG9sKHRvaywgMTYsICZ2YWx1ZSk7Cj4gICAgID4g
PiA+ICsJaWYgKHJldCkgewo+ICAgICA+ID4gPiArCQlyZXQgPSAtRUZBVUxUOwo+ICAgICA+ID4g
PiArCQlnb3RvIGVycjsKPiAgICAgPiA+ID4gKwl9Cj4gICAgID4gPiA+ICsKPiAgICAgPiA+ID4g
KwlyZXQgPSBlZW1pX29wcy0+aW9jdGwoMCwgcmVhZF9pb2N0bCwgcmVnLCAwLCByZXRfcGF5bG9h
ZCk7Cj4gICAgID4gPiAKPiAgICAgPiA+IFRoaXMgZmVlbHMgInRyaWNreSIsIGlmIHlvdSB0aWUg
dGhpcyB0byB0aGUgZGV2aWNlIHlvdSBoYXZlIHlvdXIgZHJpdmVyCj4gICAgID4gPiBib3VuZCB0
bywgd2lsbCB0aGlzIG1ha2UgaXQgZWFzaWVyIGluc3RlYWQgb2YgaGF2aW5nIHRvIGdvIHRocm91
Z2ggdGhlCj4gICAgID4gPiBpb2N0bCBjYWxsYmFjaz8KPiAgICAgPiA+IAo+ICAgICA+IAo+ICAg
ICA+IEdHUyhnZW5lcmFsIGdsb2JhbCBzdG9yYWdlKSByZWdpc3RlcnMgYXJlIGluIFBNVSBzcGFj
ZSBhbmQgbGludXggZG9lc24ndCBoYXZlIGFjY2VzcyB0byBpdCAKPiAgICAgPiBIZW5jZSBpb2N0
bCBpcyB1c2VkLgo+ICAgICAKPiAgICAgV2h5IG5vdCBqdXN0IGEgInJlYWwiIGNhbGwgdG8gdGhl
IGRyaXZlciB0byBtYWtlIHRoaXMgdHlwZSBvZiByZWFkaW5nPwo+ICAgICBZb3UgZG9uJ3QgaGF2
ZSBpb2N0bHMgd2l0aGluIHRoZSBrZXJuZWwgZm9yIG90aGVyIGRyaXZlcnMgdG8gY2FsbCwKPiAg
ICAgdGhhdCdzIG5vdCBuZWVkZWQgYXQgYWxsLgo+IAo+IHRoZXNlIHJlZ2lzdGVycyBhcmUgZm9y
IHVzZXJzICBhbmQgZm9yIHNwZWNpYWwgbmVlZHMgd2hlcmUgdXNlcnMgd2FudHMKPiB0byByZXRh
aW4gdmFsdWVzIG92ZXIgcmVzZXRzLiBidXQgYXMgdGhleSBiZWxvbmcgdG8gUE1VIGFkZHJlc3Mg
c3BhY2UsCj4gdGhlc2UgaW50ZXJmYWNlIEFQSXMgYXJlIHByb3ZpZGVkLiBUaGV5IGRvbuKAmXQg
YWxsb3cgYWNjZXNzIHRvIGFueQo+IG90aGVyIHJlZ2lzdGVycy4KClRoYXQncyBub3QgdGhlIGlz
c3VlIGhlcmUuICBUaGUgaXNzdWUgaXMgeW91IGFyZSB1c2luZyBhbiAiaW50ZXJuYWwiCmlvY3Rs
LCBpbnN0ZWFkIGp1c3QgbWFrZSBhICJyZWFsIiBjYWxsLgoKPiAgICAgPiA+ID4gK2ludCB6eW5x
bXBfcG1fZ2dzX2luaXQoc3RydWN0IGtvYmplY3QgKnBhcmVudF9rb2JqKQo+ICAgICA+ID4gPiAr
ewo+ICAgICA+ID4gPiArCXJldHVybiBzeXNmc19jcmVhdGVfZ3JvdXAocGFyZW50X2tvYmosIHp5
bnFtcF9nZ3NfZ3JvdXBzWzBdKTsKPiAgICAgPiA+IAo+ICAgICA+ID4gWW91IG1pZ2h0IGJlIHJh
Y2luZyB1c2Vyc3BhY2UgaGVyZSBhbmQgbG9vc2luZyA6KAo+ICAgICA+IAo+ICAgICA+IFByb2Ig
aXMgY2FsbGVkIGJlZm9yZSB1c2VyIHNwYWNlIGlzIG5vdGlmaWVkIGFib3V0IHN5c2ZzIHNvIHJh
Y2luZyBzaG91bGRuJ3QgaGFwcGVuLgo+ICAgICAKPiAgICAgInNob3VsZG4ndCI/ICBIb3cgZG8g
eW91IGtub3cgdGhpcz8KPiAKPiBTaW5jZSBmaXJtd2FyZSBkcml2ZXIgaXMgYWx3YXlzIGJ1aWx0
LWluICh3ZSBkb24ndCBwcm92aWRlIHN1cHBvcnQgdG8KPiB1c2UgYXMgbW9kdWxlKSwgdXNlciBz
cGFjZSB3b24ndCBiZSBhdmFpbGFibGUgYmVmb3JlIHByb2IgaXMgY29tcGxldGUuCj4gQ29ycmVj
dCBpZiBJIGFtIHdyb25nLgoKVXNlcnNwYWNlIHN0YXJ0cyBlYXJsaWVyIHRoYW4geW91IHRoaW5r
LCBhbmQgYWxzbywgdXNlIHRoZSBjb3JyZWN0CmludGVyZmFjZXMgZm9yIHRoaXMgdHlwZSBvZiB0
aGluZywgdGhhdCBpcyB3aHkgaXQgaXMgdGhlcmUuICBEb24ndApjcmVhdGUgcHVycG9zZnVsbHkt
aW5jb3JyZWN0IGNvZGUgOikKCj4gICAgID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Zpcm13
YXJlL3hpbGlueC96eW5xbXAuYwo+ICAgICA+ID4gYi9kcml2ZXJzL2Zpcm13YXJlL3hpbGlueC96
eW5xbXAuYwo+ICAgICA+ID4gPiBpbmRleCA3NWJkZmFhLi40YzExMTdkIDEwMDY0NAo+ICAgICA+
ID4gPiAtLS0gYS9kcml2ZXJzL2Zpcm13YXJlL3hpbGlueC96eW5xbXAuYwo+ICAgICA+ID4gPiAr
KysgYi9kcml2ZXJzL2Zpcm13YXJlL3hpbGlueC96eW5xbXAuYwo+ICAgICA+ID4gPiBAQCAtNDcz
LDYgKzQ3MywxMCBAQCBzdGF0aWMgaW5saW5lIGludCB6eW5xbXBfaXNfdmFsaWRfaW9jdGwodTMy
IGlvY3RsX2lkKQo+ICAgICA+ID4gPiAgCWNhc2UgSU9DVExfR0VUX1BMTF9GUkFDX01PREU6Cj4g
ICAgID4gPiA+ICAJY2FzZSBJT0NUTF9TRVRfUExMX0ZSQUNfREFUQToKPiAgICAgPiA+ID4gIAlj
YXNlIElPQ1RMX0dFVF9QTExfRlJBQ19EQVRBOgo+ICAgICA+ID4gPiArCWNhc2UgSU9DVExfV1JJ
VEVfR0dTOgo+ICAgICA+ID4gPiArCWNhc2UgSU9DVExfUkVBRF9HR1M6Cj4gICAgID4gPiA+ICsJ
Y2FzZSBJT0NUTF9XUklURV9QR0dTOgo+ICAgICA+ID4gPiArCWNhc2UgSU9DVExfUkVBRF9QR0dT
Ogo+ICAgICA+ID4gCj4gICAgID4gPiBIdWg/Pz8KPiAgICAgPiAKPiAgICAgPiBTb3JyeSBub3Qg
c3VyZSBhYm91dCB5b3VyIGNvbmNlcm4gaGVyZS4gVGhlc2UgcmVnaXN0ZXJzIGFyZSBpbiBQTVUg
c3BhY2UgYW5kIGhlbmNlCj4gICAgID4gSW9jdGwgaXMgbmVlZGVkIHRvIGxldCBsaW51eCBhY2Nl
c3MgdGhlbS4KPiAgICAgCj4gICAgIHVzZXJzcGFjZSBvciBrZXJuZWxzcGFjZT8KPiAgICAgCj4g
ICAgIFlvdSBzZWVtIHRvIGJlIG1peGluZyB0aGVtIGJvdGggaGVyZS4KPiAKPiBUaGV5IGFyZSBp
biBQbGF0Zm9ybSBNYW5hZ2VtZW50IFVuaXQgcmVnaXN0ZXIgYWRkcmVzcyBzcGFjZSBzbyBpdAo+
IGFsbG93cyBvbmx5IHNlY3VyZSBhY2Nlc3MuIEhlbmNlIGZvciBsaW51eCB0byBhY2Nlc3MgaXQs
IGludGVyZmFjZQo+IEFQSXMgYXJlIHByb3ZpZGVkLiAKCkFnYWluLCB0aGF0J3MgZmluZSwgYnV0
IHdoeSBhcmUgeW91IGNyZWF0aW5nIGFuICJpbnRlcm5hbCBpb2N0bCI/ICBKdXN0Cm1ha2UgYSBy
ZWFsIGZ1bmN0aW9uIGNhbGwuCgp0aGFua3MsCgpncmVnIGstaAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
