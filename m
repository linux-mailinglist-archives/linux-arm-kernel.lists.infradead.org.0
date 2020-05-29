Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 667E21E785D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 10:30:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QcWGLb4+IRsP3cZET8Hg7fnAnNHZxFSQv0/yl+wg9E8=; b=mbtEkiWJqlpWBg
	l1Hs3X4VvESIcPuRy8zsUz94JS/oZMOCCxX3FR27IhVxIbMS0nJbmESsCTEqI0UdH7ffRe/fUGJf7
	sNWe1jLh4+4g/xQYqA/UCihNXg93/J/qc2ZrMjNoezkdd5MIprpIKf0G6XbeF1jtsl//hRRASFUGW
	4McSLXZRuAHQZqZ6Yj7qqGF9SvK04qvrTVyJlt/5tinAPRgwt5zdl1qmwsIWYqkMBiQtXYg634aIF
	NegNeQ8PAzXkmD+RsfW0xuYiBfOl8JptUBMvTxsbmXwqsUrddW2AtPw6tNLnaaTQXdocZWCKf5ysZ
	V+2f9M0sU2x2ZyGEbAkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeaPL-0005J3-JP; Fri, 29 May 2020 08:30:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeaPA-0005Ig-EI
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 08:30:17 +0000
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E9FAD2075A;
 Fri, 29 May 2020 08:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590741016;
 bh=xxuWFVIqlsq1dMAnMQRWzomtll8ZMID+opTQq5u02Lg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xHao5FVDXX2TXu1IB8583uzfrc0xuatc0NFaVls7KMUMaD82Fl+KYNAdceOc5NKP8
 uF1Pix+hjr4y830IRRl4KJL/JLUfyZTsg/O9HClPiMmweKvIC0E2L+/J3nUy7jLxAX
 Obcx+hJzTxaFFhNarTR/zso+WVfRD7Y+OAcrLe8Q=
Received: by pali.im (Postfix)
 id B91D5EB1; Fri, 29 May 2020 10:30:13 +0200 (CEST)
Date: Fri, 29 May 2020 10:30:13 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH] PCI: aardvark: Don't touch PCIe registers if no card
 connected
Message-ID: <20200529083013.5cg7tvfemomnmvjd@pali>
References: <20200528163809.54f5ldvphrjg3zg3@pali>
 <20200528164938.GA325239@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528164938.GA325239@bjorn-Precision-5520>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_013016_531024_C13B34AE 
X-CRM114-Status: GOOD (  31.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tomasz Maciej Nowak <tmn505@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 Xogium <contact@xogium.me>, linux-kernel@vger.kernel.org,
 Marek =?utf-8?B?QmVow7pu?= <marek.behun@nic.cz>,
 Remi Pommarel <repk@triplefau.lt>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1cnNkYXkgMjggTWF5IDIwMjAgMTE6NDk6MzggQmpvcm4gSGVsZ2FhcyB3cm90ZToKPiBP
biBUaHUsIE1heSAyOCwgMjAyMCBhdCAwNjozODowOVBNICswMjAwLCBQYWxpIFJvaMOhciB3cm90
ZToKPiA+IE9uIFRodXJzZGF5IDI4IE1heSAyMDIwIDExOjI2OjA0IEJqb3JuIEhlbGdhYXMgd3Jv
dGU6Cj4gPiA+IE9uIFRodSwgTWF5IDI4LCAyMDIwIGF0IDA0OjMxOjQxUE0gKzAyMDAsIFBhbGkg
Um9ow6FyIHdyb3RlOgo+ID4gPiA+IFdoZW4gdGhlcmUgaXMgbm8gUENJZSBjYXJkIGNvbm5lY3Rl
ZCBhbmQgYWR2a19wY2llX3JkX2NvbmYoKSBvcgo+ID4gPiA+IGFkdmtfcGNpZV93cl9jb25mKCkg
aXMgY2FsbGVkIGZvciBQQ0kgYnVzIHdoaWNoIGRvZXNuJ3QgYmVsb25nIHRvIGVtdWxhdGVkCj4g
PiA+ID4gcm9vdCBicmlkZ2UsIHRoZSBhYXJkdmFyayBkcml2ZXIgdGhyb3dzIHRoZSBmb2xsb3dp
bmcgZXJyb3IgbWVzc2FnZToKPiA+ID4gPiAKPiA+ID4gPiAgIGFkdmstcGNpZSBkMDA3MDAwMC5w
Y2llOiBjb25maWcgcmVhZC93cml0ZSB0aW1lZCBvdXQKPiA+ID4gPiAKPiA+ID4gPiBPYnZpb3Vz
bHkgYWNjZXNzaW5nIFBDSWUgcmVnaXN0ZXJzIG9mIGRpc2Nvbm5lY3RlZCBjYXJkIGlzIG5vdCBw
b3NzaWJsZS4KPiA+ID4gPiAKPiA+ID4gPiBFeHRlbmQgY2hlY2sgaW4gYWR2a19wY2llX3ZhbGlk
X2RldmljZSgpIGZ1bmN0aW9uIGZvciB2YWxpZGF0aW5nCj4gPiA+ID4gYXZhaWxhYmlsaXR5IG9m
IFBDSWUgYnVzLiBJZiBQQ0llIGxpbmsgaXMgZG93biwgdGhlbiB0aGUgZGV2aWNlIGlzIG1hcmtl
ZAo+ID4gPiA+IGFzIE5vdCBGb3VuZCBhbmQgdGhlIGRyaXZlciBkb2VzIG5vdCB0cnkgdG8gYWNj
ZXNzIHRoZXNlIHJlZ2lzdGVycy4KPiA+ID4gPiAKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBQYWxp
IFJvaMOhciA8cGFsaUBrZXJuZWwub3JnPgo+ID4gPiA+IC0tLQo+ID4gPiA+ICBkcml2ZXJzL3Bj
aS9jb250cm9sbGVyL3BjaS1hYXJkdmFyay5jIHwgMyArKysKPiA+ID4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDMgaW5zZXJ0aW9ucygrKQo+ID4gPiA+IAo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BjaS9jb250cm9sbGVyL3BjaS1hYXJkdmFyay5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9w
Y2ktYWFyZHZhcmsuYwo+ID4gPiA+IGluZGV4IDkwZmYyOTFjMjRmMC4uNTNhNGNmZDdkMzc3IDEw
MDY0NAo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLWFhcmR2YXJrLmMK
PiA+ID4gPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1hYXJkdmFyay5jCj4gPiA+
ID4gQEAgLTY0NCw2ICs2NDQsOSBAQCBzdGF0aWMgYm9vbCBhZHZrX3BjaWVfdmFsaWRfZGV2aWNl
KHN0cnVjdCBhZHZrX3BjaWUgKnBjaWUsIHN0cnVjdCBwY2lfYnVzICpidXMsCj4gPiA+ID4gIAlp
ZiAoKGJ1cy0+bnVtYmVyID09IHBjaWUtPnJvb3RfYnVzX25yKSAmJiBQQ0lfU0xPVChkZXZmbikg
IT0gMCkKPiA+ID4gPiAgCQlyZXR1cm4gZmFsc2U7Cj4gPiA+ID4gIAo+ID4gPiA+ICsJaWYgKGJ1
cy0+bnVtYmVyICE9IHBjaWUtPnJvb3RfYnVzX25yICYmICFhZHZrX3BjaWVfbGlua191cChwY2ll
KSkKPiA+ID4gPiArCQlyZXR1cm4gZmFsc2U7Cj4gPiA+IAo+ID4gPiBJIGRvbid0IHRoaW5rIHRo
aXMgaXMgdGhlIHJpZ2h0IGZpeC4gIFRoaXMgbWFrZXMgaXQgcmFjeSBiZWNhdXNlIHRoZQo+ID4g
PiBsaW5rIG1heSBnbyBkb3duIGFmdGVyIHdlIGNhbGwgYWR2a19wY2llX3ZhbGlkX2RldmljZSgp
IGJ1dCBiZWZvcmUgd2UKPiA+ID4gcGVyZm9ybSB0aGUgY29uZmlnIHJlYWQuCj4gPiAKPiA+IFll
cywgaXQgaXMgcmFjeSwgYnV0IEkgZG8gbm90IHRoaW5rIGl0IGNhdXNlIHByb2JsZW1zLiBUcnlp
bmcgdG8gcmVhZAo+ID4gUENJZSByZWdpc3RlcnMgd2hlbiBkZXZpY2UgaXMgbm90IGNvbm5lY3Rl
ZCBjYXVzZSBqdXN0IHRob3NlIHRpbWVvdXRzLAo+ID4gcHJpbnRpbmcgZXJyb3IgbWVzc2FnZSBh
bmQgaW5jcmVhc2VkIGRlbGF5IGluIGFkdmtfcGNpZV93YWl0X3BpbygpIGR1ZQo+ID4gdG8gcG9s
bGluZyBsb29wLiBUaGlzIHBhdGNoIHJlZHVjZSB1bm5lY2Vzc2FyeSBhY2Nlc3MgdG8gUENJZSBy
ZWdpc3RlcnMKPiA+IHdoZW4gYWR2a19wY2llX3dhaXRfcGlvKCkgcG9sbGluZyBqdXN0IGZhaWwu
Cj4gPiAKPiA+IEkgdGhpbmsgaXQgaXMgYSBnb29kIGlkZWEgdG8gbm90IGNhbGwgYmxvY2tpbmcg
YWR2a19wY2llX3dhaXRfcGlvKCkgd2hlbgo+ID4gaXQgaXMgbm90IG5lZWRlZC4gV2UgY291bGQg
aGF2ZSBmYXN0ZXIgZW51bWVyYXRpb24gb2YgUENJZSBidXNlcyB3aGVuCj4gPiBjYXJkIGlzIG5v
dCBjb25uZWN0ZWQuCj4gCj4gTWF5YmUgYWR2a19wY2llX2NoZWNrX3Bpb19zdGF0dXMoKSBhbmQg
YWR2a19wY2llX3dhaXRfcGlvKCkgY291bGQgYmUKPiBjb21iaW5lZCBzbyB3ZSBjb3VsZCBnZXQg
dGhlIGNvcnJlY3QgZXJyb3Igc3RhdHVzIGFzIHNvb24gYXMgaXQncwo+IGF2YWlsYWJsZSwgd2l0
aG91dCB3YWl0aW5nIGZvciBhIHRpbWVvdXQ/CgpBbnkgaWRlYSBob3cgdG8gYWNoaWV2ZSBpdD8K
CkZpcnN0IGNhbGwgaXMgcG9sbGluZyBmdW5jdGlvbiBhZHZrX3BjaWVfd2FpdF9waW8oKSBhbmQg
c2Vjb25kIGNhbGwgaXMKYWR2a19wY2llX2NoZWNrX3Bpb19zdGF0dXMoKSB3aGljaCBqdXN0IHJl
YWRzIHN0YXR1cyByZWdpc3RlciBhbmQgcHJpbnRzCmVycm9yIG1lc3NhZ2UgdG8gZG1lc2cuCgpT
byBmb3IgbWUgaXQgbG9va3MgbGlrZSB0aGF0IGNvbWJpbmluZyB0aGVzZSB0d28gZnVuY3Rpb25z
IGludG8gb25lIGRvZXMKbm90IGNoYW5nZSBhbnl0aGluZy4gV2UgYWx3YXlzIG5lZWQgdG8gY2Fs
bCBwb2xsaW5nIGNvZGUgcHJpb3IgdG8KY2hlY2tpbmcgc3RhdHVzIHJlZ2lzdGVyLiBBbmQgdGhl
cmVmb3JlIG5lZWQgdG8gd2FpdCBmb3IgdGltZW91dC4gVW5sZXNzCnNvbWV0aGluZyBsaWtlIGlu
IHRoaXMgcHJvcG9zZWQgcGF0Y2ggaXMgbm90IHVzZWQgKHRvIHNraXAgd2hvbGUKcmVnaXN0ZXIg
YWNjZXNzIGlmIGl0IHdvdWxkIGZhaWwpLgoKPiBJbiBhbnkgZXZlbnQsIHRoZSAicmV0dXJuIFBD
SUJJT1NfU0VUX0ZBSUxFRCIgbmVlZHMgdG8gYmUgZml4ZWQuICBNb3N0Cj4gY2FsbGVycyBvZiBj
b25maWcgcmVhZCBkbyBub3QgY2hlY2sgZm9yIGZhaWx1cmUsIGJ1dCBtb3N0IG9mIHRoZSBvbmVz
Cj4gdGhhdCBkbywgY2hlY2sgZm9yICJ2YWwgPT0gfjAiLiAgT25seSBhIGZldyBjaGVjayBmb3Ig
YSBzdGF0dXMgb2YKPiBvdGhlciB0aGFuIFBDSUJJT1NfU1VDQ0VTU0ZVTC4KPiAKPiA+ID4gSSBo
YXZlIG5vIG9iamVjdGlvbiB0byByZW1vdmluZyB0aGUgImNvbmZpZyByZWFkL3dyaXRlIHRpbWVk
IG91dCIKPiA+ID4gbWVzc2FnZS4gIFRoZSAicmV0dXJuIFBDSUJJT1NfU0VUX0ZBSUxFRCIgaW4g
dGhlIHJlYWQgY2FzZSBwcm9iYWJseQo+ID4gPiBzaG91bGQgYmUgYXVnbWVudGVkIGJ5IHNldHRp
bmcgIip2YWwgPSAweGZmZmZmZmZmIi4KCk5vdyBJIHNlZSwgIip2YWwgPSAweGZmZmZmZmZmIiBz
aG91bGQgYmUgcmVhbGx5IHNldCB3aGVuIGZ1bmN0aW9uCmFkdmtfcGNpZV9yZF9jb25mKCkgZmFp
bHMuCgo+ID4gPiA+ICAJcmV0dXJuIHRydWU7Cj4gPiA+ID4gIH0KPiA+ID4gPiAgCj4gPiA+ID4g
LS0gCj4gPiA+ID4gMi4yMC4xCj4gPiA+ID4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
