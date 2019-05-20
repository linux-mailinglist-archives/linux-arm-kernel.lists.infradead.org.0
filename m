Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB69223251
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 13:27:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/MaF+GRX125uDwBgjq9U1aXEz/dJBBkdphgdpferyE=; b=McqVy1hmC+vPcc
	97KiCZLQyG7BApzThn8ZLdFMF0jFLKA+Ar3dF2xBfgFEYVMS9Eb4Bc05DpQP6KiggpjiQ+Ox/QrjH
	0Az9oXwh73l+adVZBVKWTfTe2yCv46ltq2+LwdqXlwa7ObqxaOdZ25ja2ZjKAGNHbkbMqlxxVjtPR
	DbxnxeDOSe2fNbuvnTTbKsYUA3vRiA7HoQEoNVk4vGZG3JNDIYZjC/DlgudHKHHRSWnob/TRHbrE0
	llY/VfRIrYTJl89aLac8xUI9yalw7+MtcCtTsW4aWoFz9kAnqXamzpybP3M/1Dgr6utW3fOkVy0mb
	dRMoScv+exgND3K8473g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSgRz-0007Oi-16; Mon, 20 May 2019 11:27:27 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSgRr-0007Mr-3N
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 11:27:20 +0000
Received: by mail-ot1-x343.google.com with SMTP id 66so12653267otq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 04:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=gl8p5HmOo32Wp14Ae+7sQEvfQ5n8x/dx1BGblxAS4NQ=;
 b=Ob+eKPlKwvth41kOkgX0/b4zhZuzFd3xCf9C8qpbfdaEV63qMDTzNlWuZ191mu/0QC
 sXR9dVXgxekqaUIa5tecP71HYOpBo0rMXEZS8zVqR1opZsH3umfL3WKIhIQ44Tk1hm64
 yMsFlCevWabXt1FzEwAE0sV1mR8dKPD3uSZar7L0bSEiRc/CuY/peLwPPXln0oqRnjrM
 g41JDd18L0VKlA2MBFVSjd8qWpVT4gsTQEsHw7fGTCUCKo3ehimEgNqUnbKhf1xqOaCv
 GqAXWwqtmC+1uOBXbU0BkV6T1b1fYa+slsHYdBsqUTzemPDVfte3mG/6iR0uRSRyDopf
 H/qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=gl8p5HmOo32Wp14Ae+7sQEvfQ5n8x/dx1BGblxAS4NQ=;
 b=ntwWTHuuxSCHpaqz4BGT2XdcALhBY/AN4qkNWdrTDER9mU8dnqNNpo0O0ptPfrd5Nt
 4k/Hel9kqGBoSkTMzzUsoYW2PbWlcQ992MD26+NQQWPP1ZYpk3ZlvAt1D07cYF5M5KV8
 3aw+PM5zmBsgfIazLoq7i4eBjjPBF+CyTiRpvnSZ/FGsfz2lU2hqOafy33hH95bMCxM4
 Wy6M/OPrzHSiSW5ZLT6VeMXNkWh78XQsm3chSv3iwdo+hqEsPSWX8EXG3hd+6LMDsa2A
 cM+BhN5gIbONXozELDCmJ11PU1dSgp6FI0zTHm7WWPDV7zegxPCiIuH+/LKxQwjcGTO+
 6DTQ==
X-Gm-Message-State: APjAAAW7YP6X6eRU04+uWJky7BjuMMW8JJ9WJXhLNvpX/aVDfP346S1b
 lrHYVqKbhrPbl9/LX4600KXBEpSzjtmvOz9z7gguDQ==
X-Google-Smtp-Source: APXvYqzvRh9+1kmrlhsy7vDYW7hNBG9CEz1jiGKfO/pK4VIQ2LnHcrcRjy0ekFbQeSvJmbUMT47w0xBoC9irHouqomY=
X-Received: by 2002:a9d:61ca:: with SMTP id h10mr15718082otk.247.1558351636806; 
 Mon, 20 May 2019 04:27:16 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1557206859.git.baolin.wang@linaro.org>
 <17a22052fdb759ae6129e30f9bd8862f23a03ad9.1557206859.git.baolin.wang@linaro.org>
 <42b84cfe-3281-7f4e-03cc-6ca126e16191@ti.com>
In-Reply-To: <42b84cfe-3281-7f4e-03cc-6ca126e16191@ti.com>
From: Baolin Wang <baolin.wang@linaro.org>
Date: Mon, 20 May 2019 19:27:04 +0800
Message-ID: <CAMz4kuLokUGVXQaRt5aOBJOUQjsrPK74WGsif6Y1F7zwMvDXfA@mail.gmail.com>
Subject: Re: [PATCH 1/8] dmaengine: Add matching device node validation in
 __dma_request_channel()
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_042719_144114_296A9916 
X-CRM114-Status: GOOD (  24.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: jroedel@suse.de, Vincent Guittot <vincent.guittot@linaro.org>,
 Zubair.Kakakhel@imgtec.com, dmaengine@vger.kernel.org, festevam@gmail.com,
 s.hauer@pengutronix.de, LKML <linux-kernel@vger.kernel.org>,
 Jon Hunter <jonathanh@nvidia.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>, Vinod Koul <vkoul@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, linux-tegra@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCA3IE1heSAyMDE5IGF0IDE2OjM3LCBQZXRlciBVamZhbHVzaSA8cGV0ZXIudWpmYWx1
c2lAdGkuY29tPiB3cm90ZToKPgo+IEhpLAo+Cj4gT24gMDcvMDUvMjAxOSA5LjA5LCBCYW9saW4g
V2FuZyB3cm90ZToKPiA+IFdoZW4gdXNlciB0cnkgdG8gcmVxdWVzdCBvbmUgRE1BIGNoYW5uZWwg
YnkgX19kbWFfcmVxdWVzdF9jaGFubmVsKCksIGl0IHdvbid0Cj4gPiB2YWxpZGF0ZSBpZiBpdCBp
cyB0aGUgY29ycmVjdCBETUEgZGV2aWNlIHRvIHJlcXVlc3QsIHRoYXQgd2lsbCBsZWFkIGVhY2gg
RE1BCj4gPiBlbmdpbmUgZHJpdmVyIHRvIHZhbGlkYXRlIHRoZSBjb3JyZWN0IGRldmljZSBub2Rl
IGluIHRoZWlyIGZpbHRlciBmdW5jdGlvbgo+ID4gaWYgaXQgaXMgbmVjZXNzYXJ5Lgo+ID4KPiA+
IFRodXMgd2UgY2FuIGFkZCB0aGUgbWF0Y2hpbmcgZGV2aWNlIG5vZGUgdmFsaWRhdGlvbiBpbiB0
aGUgRE1BIGVuZ2luZSBjb3JlLAo+ID4gdG8gcmVtb3ZlIGFsbCBvZiBkZXZpY2Ugbm9kZSB2YWxp
ZGF0aW9uIGluIHRoZSBkcml2ZXJzLgo+Cj4gSSBoYXZlIHBpY2tlZCB0aGlzIHBhdGNoIHRvIG15
IFRJIFVETUEgc2VyaWVzIGFuZCB3aXRoCj4gX19kbWFfcmVxdWVzdF9jaGFubmVsKCkgaXQgd29y
a3MgYXMgZXhwZWN0ZWQgLSBwaWNraW5nIHRoZSBjaGFubmVsIGZyb20KPiB0aGUgY29ycmVjdCBE
TUEgZGV2aWNlLgo+Cj4gVGVzdGVkLWJ5OiBQZXRlciBVamZhbHVzaSA8cGV0ZXIudWpmYWx1c2lA
dGkuY29tPgoKVGhhbmtzIFBldGVyLgoKPgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEJhb2xpbiBX
YW5nIDxiYW9saW4ud2FuZ0BsaW5hcm8ub3JnPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9kbWEvZG1h
ZW5naW5lLmMgICB8ICAgMTAgKysrKysrKystLQo+ID4gIGRyaXZlcnMvZG1hL29mLWRtYS5jICAg
ICAgfCAgICA0ICsrLS0KPiA+ICBpbmNsdWRlL2xpbnV4L2RtYWVuZ2luZS5oIHwgICAxMiArKysr
KysrKy0tLS0KPiA+ICAzIGZpbGVzIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDggZGVsZXRp
b25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hL2RtYWVuZ2luZS5jIGIvZHJp
dmVycy9kbWEvZG1hZW5naW5lLmMKPiA+IGluZGV4IDNhMTFiMTAuLjYxMDA4MGMgMTAwNjQ0Cj4g
PiAtLS0gYS9kcml2ZXJzL2RtYS9kbWFlbmdpbmUuYwo+ID4gKysrIGIvZHJpdmVycy9kbWEvZG1h
ZW5naW5lLmMKPiA+IEBAIC02NDEsMTEgKzY0MSwxMyBAQCBzdHJ1Y3QgZG1hX2NoYW4gKmRtYV9n
ZXRfYW55X3NsYXZlX2NoYW5uZWwoc3RydWN0IGRtYV9kZXZpY2UgKmRldmljZSkKPiA+ICAgKiBA
bWFzazogY2FwYWJpbGl0aWVzIHRoYXQgdGhlIGNoYW5uZWwgbXVzdCBzYXRpc2Z5Cj4gPiAgICog
QGZuOiBvcHRpb25hbCBjYWxsYmFjayB0byBkaXNwb3NpdGlvbiBhdmFpbGFibGUgY2hhbm5lbHMK
PiA+ICAgKiBAZm5fcGFyYW06IG9wYXF1ZSBwYXJhbWV0ZXIgdG8gcGFzcyB0byBkbWFfZmlsdGVy
X2ZuCj4gPiArICogQG5wOiBkZXZpY2Ugbm9kZSB0byBsb29rIGZvciBETUEgY2hhbm5lbHMKPiA+
ICAgKgo+ID4gICAqIFJldHVybnMgcG9pbnRlciB0byBhcHByb3ByaWF0ZSBETUEgY2hhbm5lbCBv
biBzdWNjZXNzIG9yIE5VTEwuCj4gPiAgICovCj4gPiAgc3RydWN0IGRtYV9jaGFuICpfX2RtYV9y
ZXF1ZXN0X2NoYW5uZWwoY29uc3QgZG1hX2NhcF9tYXNrX3QgKm1hc2ssCj4gPiAtICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgZG1hX2ZpbHRlcl9mbiBmbiwgdm9pZCAqZm5fcGFy
YW0pCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZG1hX2ZpbHRlcl9m
biBmbiwgdm9pZCAqZm5fcGFyYW0sCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgc3RydWN0IGRldmljZV9ub2RlICpucCkKPiA+ICB7Cj4gPiAgICAgICBzdHJ1Y3QgZG1h
X2RldmljZSAqZGV2aWNlLCAqX2Q7Cj4gPiAgICAgICBzdHJ1Y3QgZG1hX2NoYW4gKmNoYW4gPSBO
VUxMOwo+ID4gQEAgLTY1Myw2ICs2NTUsMTAgQEAgc3RydWN0IGRtYV9jaGFuICpfX2RtYV9yZXF1
ZXN0X2NoYW5uZWwoY29uc3QgZG1hX2NhcF9tYXNrX3QgKm1hc2ssCj4gPiAgICAgICAvKiBGaW5k
IGEgY2hhbm5lbCAqLwo+ID4gICAgICAgbXV0ZXhfbG9jaygmZG1hX2xpc3RfbXV0ZXgpOwo+ID4g
ICAgICAgbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKGRldmljZSwgX2QsICZkbWFfZGV2aWNlX2xp
c3QsIGdsb2JhbF9ub2RlKSB7Cj4gPiArICAgICAgICAgICAgIC8qIEZpbmRzIGEgRE1BIGNvbnRy
b2xsZXIgd2l0aCBtYXRjaGluZyBkZXZpY2Ugbm9kZSAqLwo+ID4gKyAgICAgICAgICAgICBpZiAo
bnAgJiYgZGV2aWNlLT5kZXYtPm9mX25vZGUgJiYgbnAgIT0gZGV2aWNlLT5kZXYtPm9mX25vZGUp
Cj4gPiArICAgICAgICAgICAgICAgICAgICAgY29udGludWU7Cj4gPiArCj4gPiAgICAgICAgICAg
ICAgIGNoYW4gPSBmaW5kX2NhbmRpZGF0ZShkZXZpY2UsIG1hc2ssIGZuLCBmbl9wYXJhbSk7Cj4g
PiAgICAgICAgICAgICAgIGlmICghSVNfRVJSKGNoYW4pKQo+ID4gICAgICAgICAgICAgICAgICAg
ICAgIGJyZWFrOwo+ID4gQEAgLTc2OSw3ICs3NzUsNyBAQCBzdHJ1Y3QgZG1hX2NoYW4gKmRtYV9y
ZXF1ZXN0X2NoYW5fYnlfbWFzayhjb25zdCBkbWFfY2FwX21hc2tfdCAqbWFzaykKPiA+ICAgICAg
IGlmICghbWFzaykKPiA+ICAgICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIoLUVOT0RFVik7Cj4g
Pgo+ID4gLSAgICAgY2hhbiA9IF9fZG1hX3JlcXVlc3RfY2hhbm5lbChtYXNrLCBOVUxMLCBOVUxM
KTsKPiA+ICsgICAgIGNoYW4gPSBfX2RtYV9yZXF1ZXN0X2NoYW5uZWwobWFzaywgTlVMTCwgTlVM
TCwgTlVMTCk7Cj4gPiAgICAgICBpZiAoIWNoYW4pIHsKPiA+ICAgICAgICAgICAgICAgbXV0ZXhf
bG9jaygmZG1hX2xpc3RfbXV0ZXgpOwo+ID4gICAgICAgICAgICAgICBpZiAobGlzdF9lbXB0eSgm
ZG1hX2RldmljZV9saXN0KSkKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS9vZi1kbWEuYyBi
L2RyaXZlcnMvZG1hL29mLWRtYS5jCj4gPiBpbmRleCA5MWZkMzk1Li42YjQzZDA0IDEwMDY0NAo+
ID4gLS0tIGEvZHJpdmVycy9kbWEvb2YtZG1hLmMKPiA+ICsrKyBiL2RyaXZlcnMvZG1hL29mLWRt
YS5jCj4gPiBAQCAtMzE2LDggKzMxNiw4IEBAIHN0cnVjdCBkbWFfY2hhbiAqb2ZfZG1hX3NpbXBs
ZV94bGF0ZShzdHJ1Y3Qgb2ZfcGhhbmRsZV9hcmdzICpkbWFfc3BlYywKPiA+ICAgICAgIGlmIChj
b3VudCAhPSAxKQo+ID4gICAgICAgICAgICAgICByZXR1cm4gTlVMTDsKPiA+Cj4gPiAtICAgICBy
ZXR1cm4gZG1hX3JlcXVlc3RfY2hhbm5lbChpbmZvLT5kbWFfY2FwLCBpbmZvLT5maWx0ZXJfZm4s
Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgJmRtYV9zcGVjLT5hcmdzWzBdKTsKPiA+ICsgICAg
IHJldHVybiBfX2RtYV9yZXF1ZXN0X2NoYW5uZWwoJmluZm8tPmRtYV9jYXAsIGluZm8tPmZpbHRl
cl9mbiwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJmRtYV9zcGVjLT5h
cmdzWzBdLCBkbWFfc3BlYy0+bnApOwo+ID4gIH0KPiA+ICBFWFBPUlRfU1lNQk9MX0dQTChvZl9k
bWFfc2ltcGxlX3hsYXRlKTsKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWFl
bmdpbmUuaCBiL2luY2x1ZGUvbGludXgvZG1hZW5naW5lLmgKPiA+IGluZGV4IGQ0OWVjNWMuLjUw
NDA4NWIgMTAwNjQ0Cj4gPiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYWVuZ2luZS5oCj4gPiArKysg
Yi9pbmNsdWRlL2xpbnV4L2RtYWVuZ2luZS5oCj4gPiBAQCAtMTMxNCw3ICsxMzE0LDggQEAgc3Rh
dGljIGlubGluZSBlbnVtIGRtYV9zdGF0dXMgZG1hX2FzeW5jX2lzX2NvbXBsZXRlKGRtYV9jb29r
aWVfdCBjb29raWUsCj4gPiAgZW51bSBkbWFfc3RhdHVzIGRtYV93YWl0X2Zvcl9hc3luY190eChz
dHJ1Y3QgZG1hX2FzeW5jX3R4X2Rlc2NyaXB0b3IgKnR4KTsKPiA+ICB2b2lkIGRtYV9pc3N1ZV9w
ZW5kaW5nX2FsbCh2b2lkKTsKPiA+ICBzdHJ1Y3QgZG1hX2NoYW4gKl9fZG1hX3JlcXVlc3RfY2hh
bm5lbChjb25zdCBkbWFfY2FwX21hc2tfdCAqbWFzaywKPiA+IC0gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgZG1hX2ZpbHRlcl9mbiBmbiwgdm9pZCAqZm5fcGFyYW0pOwo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRtYV9maWx0ZXJfZm4gZm4sIHZv
aWQgKmZuX3BhcmFtLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0
cnVjdCBkZXZpY2Vfbm9kZSAqbnApOwo+ID4gIHN0cnVjdCBkbWFfY2hhbiAqZG1hX3JlcXVlc3Rf
c2xhdmVfY2hhbm5lbChzdHJ1Y3QgZGV2aWNlICpkZXYsIGNvbnN0IGNoYXIgKm5hbWUpOwo+ID4K
PiA+ICBzdHJ1Y3QgZG1hX2NoYW4gKmRtYV9yZXF1ZXN0X2NoYW4oc3RydWN0IGRldmljZSAqZGV2
LCBjb25zdCBjaGFyICpuYW1lKTsKPiA+IEBAIC0xMzM5LDcgKzEzNDAsOSBAQCBzdGF0aWMgaW5s
aW5lIHZvaWQgZG1hX2lzc3VlX3BlbmRpbmdfYWxsKHZvaWQpCj4gPiAgewo+ID4gIH0KPiA+ICBz
dGF0aWMgaW5saW5lIHN0cnVjdCBkbWFfY2hhbiAqX19kbWFfcmVxdWVzdF9jaGFubmVsKGNvbnN0
IGRtYV9jYXBfbWFza190ICptYXNrLAo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBkbWFfZmlsdGVyX2ZuIGZuLCB2b2lkICpmbl9wYXJhbSkKPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRtYV9maWx0ZXJf
Zm4gZm4sCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB2b2lkICpmbl9wYXJhbSwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnApCj4gPiAgewo+ID4gICAg
ICAgcmV0dXJuIE5VTEw7Cj4gPiAgfQo+ID4gQEAgLTE0MTEsNyArMTQxNCw4IEBAIHN0YXRpYyBp
bmxpbmUgaW50IGRtYWVuZ2luZV9kZXNjX2ZyZWUoc3RydWN0IGRtYV9hc3luY190eF9kZXNjcmlw
dG9yICpkZXNjKQo+ID4gIHZvaWQgZG1hX3J1bl9kZXBlbmRlbmNpZXMoc3RydWN0IGRtYV9hc3lu
Y190eF9kZXNjcmlwdG9yICp0eCk7Cj4gPiAgc3RydWN0IGRtYV9jaGFuICpkbWFfZ2V0X3NsYXZl
X2NoYW5uZWwoc3RydWN0IGRtYV9jaGFuICpjaGFuKTsKPiA+ICBzdHJ1Y3QgZG1hX2NoYW4gKmRt
YV9nZXRfYW55X3NsYXZlX2NoYW5uZWwoc3RydWN0IGRtYV9kZXZpY2UgKmRldmljZSk7Cj4gPiAt
I2RlZmluZSBkbWFfcmVxdWVzdF9jaGFubmVsKG1hc2ssIHgsIHkpIF9fZG1hX3JlcXVlc3RfY2hh
bm5lbCgmKG1hc2spLCB4LCB5KQo+ID4gKyNkZWZpbmUgZG1hX3JlcXVlc3RfY2hhbm5lbChtYXNr
LCB4LCB5KSBcCj4gPiArICAgICBfX2RtYV9yZXF1ZXN0X2NoYW5uZWwoJihtYXNrKSwgeCwgeSwg
TlVMTCkKPiA+ICAjZGVmaW5lIGRtYV9yZXF1ZXN0X3NsYXZlX2NoYW5uZWxfY29tcGF0KG1hc2ss
IHgsIHksIGRldiwgbmFtZSkgXAo+ID4gICAgICAgX19kbWFfcmVxdWVzdF9zbGF2ZV9jaGFubmVs
X2NvbXBhdCgmKG1hc2spLCB4LCB5LCBkZXYsIG5hbWUpCj4gPgo+ID4gQEAgLTE0MjksNiArMTQz
Myw2IEBAIHN0YXRpYyBpbmxpbmUgaW50IGRtYWVuZ2luZV9kZXNjX2ZyZWUoc3RydWN0IGRtYV9h
c3luY190eF9kZXNjcmlwdG9yICpkZXNjKQo+ID4gICAgICAgaWYgKCFmbiB8fCAhZm5fcGFyYW0p
Cj4gPiAgICAgICAgICAgICAgIHJldHVybiBOVUxMOwo+ID4KPiA+IC0gICAgIHJldHVybiBfX2Rt
YV9yZXF1ZXN0X2NoYW5uZWwobWFzaywgZm4sIGZuX3BhcmFtKTsKPiA+ICsgICAgIHJldHVybiBf
X2RtYV9yZXF1ZXN0X2NoYW5uZWwobWFzaywgZm4sIGZuX3BhcmFtLCBOVUxMKTsKPiA+ICB9Cj4g
PiAgI2VuZGlmIC8qIERNQUVOR0lORV9IICovCj4gPgo+Cj4gLSBQw6l0ZXIKPgo+IFRleGFzIElu
c3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLgo+
IFktdHVubnVzL0J1c2luZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlwYWlra2EvRG9taWNpbGU6IEhl
bHNpbmtpCgoKCi0tIApCYW9saW4gV2FuZwpCZXN0IFJlZ2FyZHMKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
