Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0873B68A4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 19:06:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gNmdecY1SQnQZzcgPqT1WT8rZO3ayt7W4F2U95Abh4Q=; b=rNhRhWyY58LYkS
	yvAdB+bCoP2IRW7dtjn5FQoZ0WGH5lUkWX2xaD8Cctwb4I1AY2aiKJbJLUn2rnUphmIj+AhMt21NA
	ZUfgoGAFdJ2mA6Kslfq8Sa0rECA6ShpSnHHEDV717YyRjNp0MKSDpfXD9VDSlG5Qu3zfrDIwgqtlo
	VZFell0ClMxdKGqXuf0IkIyCpSESrA/x47j9Jj72pvxgPfh76jXSYeto+/qbAkgXmQD6S5p0UPlIh
	rGXQ1hgBcuxkICVvPc0ttJkPO3lnpfWdEBkejTf2yo+XLRao+BCGRrkKTTXFGS58CN+ELnn7ALrGe
	iY7iekhykkGyUkAM7FYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAdPo-0004nC-B9; Wed, 18 Sep 2019 17:06:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAdPd-0004mL-Q7
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 17:06:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4E800337;
 Wed, 18 Sep 2019 10:06:41 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EC10B3F59C;
 Wed, 18 Sep 2019 10:06:39 -0700 (PDT)
Date: Wed, 18 Sep 2019 18:06:37 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: Re: [PATCH V6 1/2] dt-bindings: mailbox: add binding doc for the
 ARM SMC/HVC mailbox
Message-ID: <20190918180637.1ac3ae08@donnerap.cambridge.arm.com>
In-Reply-To: <CABb+yY3gJpK5ghS1u-e=f-msO+=oVvX=zDNj3Jg2i0-uJHrLiA@mail.gmail.com>
References: <1568626884-5189-1-git-send-email-peng.fan@nxp.com>
 <1568626884-5189-2-git-send-email-peng.fan@nxp.com>
 <20190917183115.3e40180f@donnerap.cambridge.arm.com>
 <CABb+yY2CP1i9fZMoPua=-mLCUpYrcO28xF5UXDeRD2XTYe7mEg@mail.gmail.com>
 <20190918104347.285bd7ad@donnerap.cambridge.arm.com>
 <CABb+yY3drgYHk2_SZMgGhgSisB7wMVKFSx8VVabCcXkGByvgwg@mail.gmail.com>
 <20190918154654.6fb7e7f5@donnerap.cambridge.arm.com>
 <CABb+yY3gJpK5ghS1u-e=f-msO+=oVvX=zDNj3Jg2i0-uJHrLiA@mail.gmail.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_100641_940480_C9A4757D 
X-CRM114-Status: GOOD (  30.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAxOCBTZXAgMjAxOSAxMDozMTo1NyAtMDUwMApKYXNzaSBCcmFyIDxqYXNzaXNpbmdo
YnJhckBnbWFpbC5jb20+IHdyb3RlOgoKSGksCgo+IE9uIFdlZCwgU2VwIDE4LCAyMDE5IGF0IDk6
NDYgQU0gQW5kcmUgUHJ6eXdhcmEgPGFuZHJlLnByenl3YXJhQGFybS5jb20+IHdyb3RlOgo+ID4K
PiA+IE9uIFdlZCwgMTggU2VwIDIwMTkgMDk6MTk6NDYgLTA1MDAKPiA+IEphc3NpIEJyYXIgPGph
c3Npc2luZ2hicmFyQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gSGksCj4gPiAgCj4gPiA+IE9u
IFdlZCwgU2VwIDE4LCAyMDE5IGF0IDQ6NDQgQU0gQW5kcmUgUHJ6eXdhcmEgPGFuZHJlLnByenl3
YXJhQGFybS5jb20+IHdyb3RlOgo+ID4gPiAgCj4gPiA+ID4gIAo+ID4gPiA+ID4gd2hpY2ggbmVl
ZHMgOSBhcmd1bWVudHMgdG8gd29yay4gVGhlIGZhY3QgdGhhdCB0aGUgZmlzdCBhcmd1bWVudCBp
cwo+ID4gPiA+ID4gYWx3YXlzIGdvaW5nIHRvIGJlIHNhbWUgb24gYSBwbGF0Zm9ybSBpcyBqdXN0
IHRoZSB3YXkgd2UgdXNlIHRoaXMKPiA+ID4gPiA+IGluc3RydWN0aW9uLgo+ID4gPiA+ID4gIAo+
ID4gPiA+ID4gPiBXZSBzaG91bGQgYmUgYXMgc3RyaWN0IGFzIHBvc3NpYmxlIHRvIGF2b2lkIGFu
eSBzZWN1cml0eSBpc3N1ZXMuCj4gPiA+ID4gPiA+ICAKPiA+ID4gPiA+IEFueSBleGFtcGxlIG9m
IHN1Y2ggYSBzZWN1cml0eSBpc3N1ZT8gIAo+ID4gPiA+Cj4gPiA+ID4gU29tZW9uZSBmaW5kcyBh
IHdheSB0byB0cmljayBzb21lIG1haWxib3ggY2xpZW50IHRvIHNlbmQgYSBjcmFmdGVkIG1lc3Nh
Z2UgdG8gdGhlIG1haWxib3guCj4gPiA+ID4gIAo+ID4gPiBXaGF0IGlmIHNvbWVvbmUgZmluZHMg
YSB3YXkgdG8gdHJpY2sgdGhlIGJsb2NrIGxheWVyIHRvIGVyYXNlICdzZGEnID8gIAo+ID4KPiA+
IFllcywgdGhlIExpbnV4IGJsb2NrIGRyaXZlciBjb250cm9sIHRoZSB3aG9sZSBibG9jayBkZXZp
Y2UsIGl0IGNhbiBkbyB3aGF0ZXZlciBpdCB3YW50cy4KPiA+ICAKPiBTb3JyeSwgaXQgZG9lc24n
dCBtYWtlIGFueSBzZW5zZS4KCldoYXQgSSBtZWFudCBpcyB0aGF0IGluIGNvbnRyYXN0IHRvIGEg
YmxvY2sgZHJpdmVyIHRoZSBTTUMgaW50ZXJmYWNlIGlzIGEgc2hhcmVkIHJlc291cmNlLiBUaGUg
bWFpbGJveCBjb250cm9sbGVyIGlzIGp1c3QgdXNpbmcgYSB0aW55IHBhcnQgb2YgdGhhdC4gV2Ug
bXVzdCBtYWtlIHN1cmUgdG8gbm90IGludGVyZmVyZSB3aXRoIHRoZSBvdGhlciBzZXJ2aWNlcyBv
ZmZlcmVkIGJ5IGZpcm13YXJlLgogCj4gPiA+ICBUaGF0IGlzIGNhbGxlZCAiYnVnIGluIHRoZSBj
b2RlIi4KPiA+ID4gSXQgZG9lcyBoYXBwZW4gaW4gZXZlcnkgc3Vic3lzdGVtIGJ1dCB3ZSBkb24n
dCBzdG9wIGltcGxlbWVudGluZyBuZXcKPiA+ID4gZmVhdHVyZXMgLi4uLiB3ZSB3cml0ZSBmbGV4
aWJsZSBjb2RlIGFuZCB0aGVuIGZpeCBhbnkgYnVnLgo+ID4gPgo+ID4gPiAgCj4gPiA+ID4gRG8g
eW91IGhhdmUgYW55IGV4YW1wbGUgb2YgYSB1c2UgY2FzZSB3aGVyZSB0aGUgbWFpbGJveCBjbGll
bnQgbmVlZHMgdG8gcHJvdmlkZSB0aGUgZnVuY3Rpb24gSUQ/Cj4gPiA+ID4gIAo+ID4gPiBGU0xf
U0lQX1NDTUlfMS8yID8gIAo+ID4KPiA+IEh1aD8gV2hlcmUgZG9lcyB0aGUgU0NQSSBvciBTQ01J
IGRyaXZlciBwcm92aWRlIHRoaXM/IFRob3NlIGNsaWVudHMgZG9uJ3QgZXZlbiBwcm92aWRlIGFu
eSBhcmd1bWVudHMuIEFkZGluZyBzb21lIHdvdWxkIGRlZmVhdCB0aGUgd2hvbGUgcG9pbnQgb2Yg
aGF2aW5nIHRoaXMgbWFpbGJveCBpbiB0aGUgZmlyc3QgcGxhY2UsIHdoaWNoIHdhcyB0byBwcm92
aWRlIGEgZHJvcC1pbiByZXBsYWNlbWVudCBmb3IgYSBoYXJkd2FyZSBtYWlsYm94IGRldmljZSB1
c2VkIG9uIG90aGVyIHBsYXRmb3Jtcy4KPiA+ICAKPiBTQ1BJL1NDTUkgaW1wbGVtZW50YXRpb24g
aXMgYnJva2VuLiBJIGRpZCBOQUsgaXQuCj4gV2l0aCB0aGUgJ3NtYycgbWFpbGJveCB5b3UgbWF5
IGdldCBhd2F5IHdpdGhvdXQgaGF2ZSB0byBwcm9ncmFtIHRoZQo+IGNoYW5uZWwgYmVmb3JlIHRy
YW5zbWl0LCBidXQgbm90IGV2ZXJ5IGNvbnRyb2xsZXIgaXMgbmF0aXZlbHkgc28uCj4gCj4gPiA+
IEJ1dCB0aGF0IGlzIG5vdCB0aGUgbWFpbiBwb2ludCwgd2hpY2ggaXMgdG8gYmUgY29uc2lzdGVu
dCAobm90Cj4gPiA+IGlnbm9yaW5nIGZpcnN0IGFyZ3VtZW50IGJlY2F1c2Ugc29tZW9uZSBtYXkg
ZmluZCBhIGJ1ZyB0byBleHBsb2l0KSBhbmQKPiA+ID4gZmxleGlibGUuICAKPiA+Cj4gPiBQbGVh
c2UgcmVhZCB0aGUgU01DQ0NbMV06IFRoZSBmaXJzdCBhcmd1bWVudCBpcyBpbiByMS93MS94MS4g
cjAvdzAgaXMgdGhlIGZ1bmN0aW9uIElELCBhbmQgdGhpcyBpcyBhIHNwZWNpZmljIHZhbHVlIChm
aXhlZCBieSB0aGUgZmlybXdhcmUgaW1wbGVtZW50YXRpb24sIHNlZSBQZW5nJ3MgQVRGIHBhdGNo
KSBhbmQgbm90IHVwIHRvIGJlIGd1ZXNzZWQgYnkgYSBjbGllbnQuCj4gPiAgCj4gVGhlIGZpcnN0
IGFyZ3VtZW50IG9mIHNtYyBjYWxsIGlzIHRoZSBmdW5jdGlvbi1pZAo+ICAgYXJtX3NtY2NjX2h2
YyhmdW5jdGlvbl9pZCwgYXJnMCwgYXJnMSwgYXJnMiwgYXJnMywgYXJnNCwgYXJnNSwgMCwgJnJl
cyk7CgpBcyBJIHdyb3RlIHdlIGNhbid0IHNhZmVseSB1c2UgYSBiYXJlIHNtYyBjYWxsLiBXZSBt
dXN0IGNvbXBseSB3aXRoIHRoZSBTTUNDQywgYmVjYXVzZSB0aGVyZSBhcmUgYSBwb3NzaWJsZSBt
dWx0aXR1ZGUgb2Ygc2VydmljZXMgdGhlIGZpcm13YXJlIG9mZmVycy4gUFNDSSBpcyBhIG9uZSBv
YnZpb3VzIGV4YW1wbGUuCkFuZCBTTUNDQyBzYXlzOgpXaGVuIGFuIFNNQzMyL0hWQzMyIGNhbGwg
aXMgbWFkZSBmcm9tIEFBcmNoMzI6CiAgIOKAoiBBIEZ1bmN0aW9uIElkZW50aWZpZXIgaXMgcGFz
c2VkIGluIHJlZ2lzdGVyIFIwLgogICDigKIgQXJndW1lbnRzIGFyZSBwYXNzZWQgaW4gcmVnaXN0
ZXJzIFIxLVI2LgogICDigKIgUmVzdWx0cyBhcmUgcmV0dXJuZWQgaW4gUjAtUjMuCi4uLgooc2lt
aWxhciBmb3IgU01DNjQpCgpTbyBhcmd1bWVudHMgc3RhcnQgZnJvbSByMS94MS4KCj4gPgo+ID4g
VGhhdCdzIHdoeSBJIHRoaW5rIHRoZSBmdW5jdGlvbiBJRCAod2hpY2ggaXMgcGFydCBvZiB0aGUg
U01DQ0MgcHJvdG9jb2wsIG5vdCBvZiB0aGUgbWFpbGJveCBzZXJ2aWNlISkgc2hvdWxkIGp1c3Qg
YmUgc2V0IGluIHRoZSBjb250cm9sbGVyIERUIG5vZGUgYW5kIG5vd2hlcmUgZWxzZS4KPiA+ICAK
PiBBY3R1YWxseSB0aGF0IGlzIHRoZSB2ZXJ5IHJlYXNvbiBmdW5jLWlkIHNob3VsZCBiZSBhIGNs
aWVudCB0aGluZyBhbmQKPiBwYXNzZWQgdmlhIGNsaWVudCdzIERUIG5vZGUgOikKPiBJdCBpcyBn
ZW5lcmFsIHVuZGVyc3RhbmRpbmcgdGhhdCBwcm90b2NvbCBzcGVjaWZpYyBiaXRzIHNob3VsZCBu
b3QgYmUKPiBhIHBhcnQgb2YgY29udHJvbGxlciBkcml2ZXIsIGJ1dCB0aGUgY2xpZW50KHByb3Rv
Y29sKSBkcml2ZXIuCgpUaGVyZSBhcmUgKnR3byogcHJvdG9jb2xzIHRvIGNvbnNpZGVyIGhlcmU6
Ck9uZSBpcyB0aGUgb3V0ZXIgU01DQ0MgcHJvdG9jb2wsIHdoaWNoIGVzdGFibGlzaGVzIGNvbW11
bmljYXRpb24gYmV0d2VlbiB0aGUgbWFpbGJveCBjb250cm9sbGVyIGRyaXZlciBhbmQgdGhlIGZp
cm13YXJlLiBTTUNDQyBkZWZpbmVzIHZlcnkgcHJlY2lzZWx5IHRoZSBtZWFuaW5nIG9mIHIwL3cw
IGZvciB0aGF0LCBidXQgbGVhdmVzIHRoZSByZXN0ICh4MS14NikgdG8gdGhlIHVzZXIuIFRoaW5r
IG9mIHRoZSBmdW5jdGlvbiBJRCBiZWluZyB0aGUgZXF1aXZhbGVudCBvZiBhbiBNTUlPIGJhc2Ug
YWRkcmVzcy4gWW91IGNhbiB1c2UgaXQgdG8gc2VsZWN0IHNldmVyYWwgaW5zdGFuY2VzIG9mIG9u
ZSB0eXBlIG9mIG1haWxib3guIEl0J3MgdGhlIHRhc2sgb2YgdGhlIGNvbnRyb2xsZXIgZHJpdmVy
IHRvIGFic3RyYWN0IGZyb20gdGhhdC4gU3VyZWx5IHlvdSB3b3VsZG4ndCBwcm92aWRlIHRoZSBN
TUlPIGJhc2UgYWRkcmVzcyBvZiB0aGUgcGFydGljdWxhciBtYWlsYm94IGluIHRoZSBjbGllbnQn
cyBEVCBub2RlLgoKVGhlICpjbGllbnQqIHByb3RvY29sIGlzIHRoZW4gd3JhcHBlZCBpbnNpZGUg
dGhpcywgdXNpbmcgdGhlIHNpeCBhcmd1bWVudCByZWdpc3RlcnMgdGhhdCBTTUNDQyBnaXZlcyB1
cy4gVGhpcyBpcyBpbmRlZWQgdXAgdG8gdGhlIGNsaWVudCB0byB1c2UgYW5kIGl0IGRpY3RhdGVz
IGl0cyBtZWFuaW5nLgoKTWF5YmUgdGhlcmUgaXMgc29tZSBtaXN1bmRlcnN0YW5kaW5nIHRoYXQg
dGhpcyBtYWlsYm94IGlzIHJlYWxseSBhIFNNQ0NDIG1haWxib3ggcmF0aGVyIHRoYW4gYSBwdXJl
IFNNQyBtYWlsYm94PyBTaG91bGQgd2UgdXNlIGEgZGlmZmVyZW50IG5hbWluZyBsaWtlIHNtY2Nj
X21haWxib3ggb3IgZmlybXdhcmVfbWJveCBpbnN0ZWFkPwoKPiBQYWdlLTcgRnVuY3Rpb24tSUQg
c3BlY2lmaWVzIDotCj4gMSkgVGhlIHNlcnZpY2UgdG8gYmUgaW52b2tlZC4KPiAyKSBUaGUgZnVu
Y3Rpb24gdG8gYmUgaW52b2tlZC4KCiJTZXJ2aWNlIiBpcyB0aGUgdGVybSB1c2VkIGZvciBhICJn
cm91cCBvZiBmdW5jdGlvbnMiLiBQU0NJIGlzIG9uZSBzZXJ2aWNlLCBmb3IgaW5zdGFuY2UuIEl0
J3MgdHlwaWNhbGx5IGRldGVybWluZWQgYnkgc29tZSB1cHBlciBiaXRzLiBJbnNpZGUgdGhpcyBz
ZXJ2aWNlIHRoZXJlIGFyZSBzZXZlcmFsIGZ1bmN0aW9ucywgbGlrZSBDUFVfT04gb3IgU1lTVEVN
X1JFU0VULCB0eXBpY2FsbHkgdXNpbmcgbG93IG9yZGVyIGJpdHMuCkluIG91ciBjYXNlIHRoZSBz
ZXJ2aWNlIGlzIHRoZSBtYWlsYm94LCBhbmQgdGhlcmUgaXMganVzdCBvbmUgZnVuY3Rpb24sIHRo
ZSBhY3R1YWwgZG9vcmJlbGwuIFdlIGNvdWxkIGhhdmUgaW50cm9kdWNlZCBtb3JlIGZ1bmN0aW9u
cyAobGlrZSBkaXNvY3ZlcnksIGluZm9ybWF0aW9uIG9yIHN0YXRpc3RpY3MpLCBidXQgdGhlcmUg
aXMgbm8gcmVhbCBuZWVkIGZvciB0aGF0LgoKQ2hlZXJzLApBbmRyZS4KCj4gMykgVGhlIGNhbGxp
bmcgY29udmVudGlvbiAoMzItYml0IG9yIDY0LWJpdCkgdGhhdCBpcyBpbiB1c2UuCj4gNCkgVGhl
IGNhbGwgdHlwZSAoZmFzdCBvciB5aWVsZGluZykgdGhhdCBpcyBpbiB1c2UuCj4gCj4gRXZlbiBp
ZiB3ZSB0dXJuIGJsaW5kIHRvIDIsMyAmIDQsIGJ1dCAoMSkgc2hvdXRzIGxpa2UgYSBydW50aW1l
IHByb3BlcnR5LgoKPiAKPiBUaGFua3MuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
