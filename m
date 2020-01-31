Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C24FA14EA24
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 10:37:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/V5+kgcL9Ovw3EmAcqkA9SA+b1fhjTO9UeGm5w8rRiU=; b=cHKGxiIQE5ssvQ
	bwGjf/pgP4J3YDUUgc1KHQbEv/ImKxm2sDG9NHC/BOdrNZdvjfFCv3ZjRLgvi1bAqOTtt+ruCCehK
	O3rYa9mldMRzun4eZtx65TQr+JPRDcgNqOcwC9eHwOVir4m1JO9Pz7VvNRo/lbva5+8m5XRW7ymRY
	e4+UQ1wauaYxLG/APWlG/lfET35MgJupEcX40O6FB7vjOUcbYpZZg0t4MrDg3GN3oGxnQQGvRTvya
	KL0PmwioCpj2afwqwErW6j11M0kC60TtbB6Z7S+hcjFsAp/XUwmtstEbvTV6HLiGEVvwLq33+VVA8
	vHquciL9tR6/vKrinKiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixSjX-0000tf-8E; Fri, 31 Jan 2020 09:37:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixSjJ-0000tK-K5
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 09:36:51 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6E37E20707;
 Fri, 31 Jan 2020 09:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580463408;
 bh=kKkl7IIdkI45Xq+BxUMl2TT+5Wgp8VCsHvXb8zf/eV4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jI5GJpZLenzLyhKfww2wcwTl8g9WY5wtHDwCm1LOK7DK1rQ11N3u4zgVi7ZJHDm4z
 jgm+p2j6DXzOdQjVmfhv/y5objkwk7vC8ugEwQnINUavbvAtukxYnYL2ENTlUU3xZr
 rfGUApsMb+eRMv3LWV3zKfUMoFyqpuoyJGzvSGEM=
Date: Fri, 31 Jan 2020 10:36:46 +0100
From: 'Greg KH' <gregkh@linuxfoundation.org>
To: Rajan Vaja <RAJANV@xilinx.com>
Subject: Re: [PATCH v2 1/4] firmware: xilinx: Add sysfs interface
Message-ID: <20200131093646.GA2271937@kroah.com>
References: <1578527663-10243-1-git-send-email-jolly.shah@xilinx.com>
 <1578527663-10243-2-git-send-email-jolly.shah@xilinx.com>
 <20200114145257.GA1910108@kroah.com>
 <BYAPR02MB5992FC37E0D2AD9946414417B80F0@BYAPR02MB5992.namprd02.prod.outlook.com>
 <20200124060339.GB2906795@kroah.com>
 <2D4B924A-D10C-4A90-A8E6-507BF6C30654@xilinx.com>
 <20200128062814.GA2097606@kroah.com>
 <4EF659A1-2844-46B9-9ED6-5A6A20401D9D@xilinx.com>
 <20200131061038.GA2180358@kroah.com>
 <BYAPR02MB40559D6B62C4532C0EAD0281B7070@BYAPR02MB4055.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR02MB40559D6B62C4532C0EAD0281B7070@BYAPR02MB4055.namprd02.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_013649_724889_904188AF 
X-CRM114-Status: GOOD (  22.97  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Jolly Shah <JOLLYS@xilinx.com>, Michal Simek <michals@xilinx.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKYW4gMzEsIDIwMjAgYXQgMDk6MDU6MTVBTSArMDAwMCwgUmFqYW4gVmFqYSB3cm90
ZToKPiBIaSBHcmVnLAo+IAo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+IEZyb206
IEdyZWcgS0ggPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPgo+ID4gU2VudDogMzEgSmFudWFy
eSAyMDIwIDExOjQxIEFNCj4gPiBUbzogSm9sbHkgU2hhaCA8Sk9MTFlTQHhpbGlueC5jb20+Cj4g
PiBDYzogYXJkLmJpZXNoZXV2ZWxAbGluYXJvLm9yZzsgbWluZ29Aa2VybmVsLm9yZzsgbWF0dEBj
b2RlYmx1ZXByaW50LmNvLnVrOwo+ID4gc3VkZWVwLmhvbGxhQGFybS5jb207IGhrYWxsd2VpdDFA
Z21haWwuY29tOyBrZWVzY29va0BjaHJvbWl1bS5vcmc7Cj4gPiBkbWl0cnkudG9yb2tob3ZAZ21h
aWwuY29tOyBNaWNoYWwgU2ltZWsgPG1pY2hhbHNAeGlsaW54LmNvbT47IFJhamFuIFZhamEKPiA+
IDxSQUpBTlZAeGlsaW54LmNvbT47IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZzsgbGludXgtCj4gPiBrZXJuZWxAdmdlci5rZXJuZWwub3JnCj4gPiBTdWJqZWN0OiBSZTogW1BB
VENIIHYyIDEvNF0gZmlybXdhcmU6IHhpbGlueDogQWRkIHN5c2ZzIGludGVyZmFjZQo+ID4gCj4g
PiBFWFRFUk5BTCBFTUFJTAo+ID4gCj4gPiBPbiBUaHUsIEphbiAzMCwgMjAyMCBhdCAxMTo1OTow
M1BNICswMDAwLCBKb2xseSBTaGFoIHdyb3RlOgo+ID4gPiBIaSBHcmVnLAo+ID4gPgo+ID4gPiDv
u79PbiAxLzI3LzIwLCAxMDoyOCBQTSwgImxpbnV4LWtlcm5lbC1vd25lckB2Z2VyLmtlcm5lbC5v
cmcgb24gYmVoYWxmIG9mIEdyZWcKPiA+IEtIIiA8bGludXgta2VybmVsLW93bmVyQHZnZXIua2Vy
bmVsLm9yZyBvbiBiZWhhbGYgb2YKPiA+IGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPiB3cm90
ZToKPiA+ID4KPiA+ID4gICAgIE9uIE1vbiwgSmFuIDI3LCAyMDIwIGF0IDExOjAxOjI3UE0gKzAw
MDAsIEpvbGx5IFNoYWggd3JvdGU6Cj4gPiA+ICAgICA+ICAgICA+ID4gPiArICAgICByZXQgPSBr
c3RydG9sKHRvaywgMTYsICZ2YWx1ZSk7Cj4gPiA+ICAgICA+ICAgICA+ID4gPiArICAgICBpZiAo
cmV0KSB7Cj4gPiA+ICAgICA+ICAgICA+ID4gPiArICAgICAgICAgICAgIHJldCA9IC1FRkFVTFQ7
Cj4gPiA+ICAgICA+ICAgICA+ID4gPiArICAgICAgICAgICAgIGdvdG8gZXJyOwo+ID4gPiAgICAg
PiAgICAgPiA+ID4gKyAgICAgfQo+ID4gPiAgICAgPiAgICAgPiA+ID4gKwo+ID4gPiAgICAgPiAg
ICAgPiA+ID4gKyAgICAgcmV0ID0gZWVtaV9vcHMtPmlvY3RsKDAsIHJlYWRfaW9jdGwsIHJlZywg
MCwgcmV0X3BheWxvYWQpOwo+ID4gPiAgICAgPiAgICAgPiA+Cj4gPiA+ICAgICA+ICAgICA+ID4g
VGhpcyBmZWVscyAidHJpY2t5IiwgaWYgeW91IHRpZSB0aGlzIHRvIHRoZSBkZXZpY2UgeW91IGhh
dmUgeW91ciBkcml2ZXIKPiA+ID4gICAgID4gICAgID4gPiBib3VuZCB0bywgd2lsbCB0aGlzIG1h
a2UgaXQgZWFzaWVyIGluc3RlYWQgb2YgaGF2aW5nIHRvIGdvIHRocm91Z2ggdGhlCj4gPiA+ICAg
ICA+ICAgICA+ID4gaW9jdGwgY2FsbGJhY2s/Cj4gPiA+ICAgICA+ICAgICA+ID4KPiA+ID4gICAg
ID4gICAgID4KPiA+ID4gICAgID4gICAgID4gR0dTKGdlbmVyYWwgZ2xvYmFsIHN0b3JhZ2UpIHJl
Z2lzdGVycyBhcmUgaW4gUE1VIHNwYWNlIGFuZCBsaW51eAo+ID4gZG9lc24ndCBoYXZlIGFjY2Vz
cyB0byBpdAo+ID4gPiAgICAgPiAgICAgPiBIZW5jZSBpb2N0bCBpcyB1c2VkLgo+ID4gPiAgICAg
Pgo+ID4gPiAgICAgPiAgICAgV2h5IG5vdCBqdXN0IGEgInJlYWwiIGNhbGwgdG8gdGhlIGRyaXZl
ciB0byBtYWtlIHRoaXMgdHlwZSBvZiByZWFkaW5nPwo+ID4gPiAgICAgPiAgICAgWW91IGRvbid0
IGhhdmUgaW9jdGxzIHdpdGhpbiB0aGUga2VybmVsIGZvciBvdGhlciBkcml2ZXJzIHRvIGNhbGws
Cj4gPiA+ICAgICA+ICAgICB0aGF0J3Mgbm90IG5lZWRlZCBhdCBhbGwuCj4gPiA+ICAgICA+Cj4g
PiA+ICAgICA+IHRoZXNlIHJlZ2lzdGVycyBhcmUgZm9yIHVzZXJzICBhbmQgZm9yIHNwZWNpYWwg
bmVlZHMgd2hlcmUgdXNlcnMgd2FudHMKPiA+ID4gICAgID4gdG8gcmV0YWluIHZhbHVlcyBvdmVy
IHJlc2V0cy4gYnV0IGFzIHRoZXkgYmVsb25nIHRvIFBNVSBhZGRyZXNzIHNwYWNlLAo+ID4gPiAg
ICAgPiB0aGVzZSBpbnRlcmZhY2UgQVBJcyBhcmUgcHJvdmlkZWQuIFRoZXkgZG9u4oCZdCBhbGxv
dyBhY2Nlc3MgdG8gYW55Cj4gPiA+ICAgICA+IG90aGVyIHJlZ2lzdGVycy4KPiA+ID4KPiA+ID4g
ICAgIFRoYXQncyBub3QgdGhlIGlzc3VlIGhlcmUuICBUaGUgaXNzdWUgaXMgeW91IGFyZSB1c2lu
ZyBhbiAiaW50ZXJuYWwiCj4gPiA+ICAgICBpb2N0bCwgaW5zdGVhZCBqdXN0IG1ha2UgYSAicmVh
bCIgY2FsbC4KPiA+ID4KPiA+ID4gU29ycnkgSSBhbSBub3QgY2xlYXIuIERvIHlvdSBtZWFuIHRo
YXQgd2Ugc2hvdWxkIHVzZSBsaW51eCBzdGFuZGFyZAo+ID4gPiBpb2N0bCBpbnRlcmZhY2UgaW5z
dGVhZCBvZiBpbnRlcm5hbCBpb2N0bCBieSBtZW50aW9uaW5nICJyZWFsIiA/Cj4gPiAKPiA+IE5v
LCB5b3Ugc2hvdWxkIGp1c3QgbWFrZSBhICJyZWFsIiBmdW5jdGlvbiBjYWxsIHRvIHRoZSBleGFj
dCB0aGluZyB5b3UKPiA+IHdhbnQgdG8gZG8uICBOb3QgaGF2ZSBhbiBpbnRlcm5hbCBtdWx0aS1w
bGV4b3IgaW9jdGwoKSBjYWxsIHRoYXQgb3RoZXJzCj4gPiB0aGVuIGNhbGwuICBUaGlzIGlzbid0
IGEgbWljcm9rZXJuZWwgOikKPiBbUmFqYW5dIFNvcnJ5IGZvciBtdWx0aXBsZSBiYWNrIGFuZCBm
b3J0aCBidXQgYXMgSSB1bmRlcnN0YW5kLCB5b3UgYXJlIHN1Z2dlc3RpbmcgdG8gY3JlYXRlIGEg
bmV3IEFQSSBmb3IKPiBSZWFkL3dyaXRlIG9mIEdHUyByZWdpc3RlciBpbnN0ZWFkIG9mIHVzaW5n
IFBNX0lPQ1RMIEFQSSAoZWVtaV9vcHMtPmlvY3RsKSBmb3IgbXVsdGlwbGUgcHVycG9zZS4gSXMg
bXkgdW5kZXJzdGFuZGluZyBjb3JyZWN0PwoKVGhhdCBpcyBjb3JyZWN0LgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
