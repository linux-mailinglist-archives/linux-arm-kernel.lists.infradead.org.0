Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1157214E898
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 07:10:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UsxasCWEPUmL4+Q7jGzclY3lwr+2m77/TzSTCa1pHIo=; b=Yi24yBY9YNEE1P
	pACGKIJe57ZVL8NMRZ7gh7l8lFomjp9eskjbrJmOKhh8mxhqdXV/h2Zo8mAfJIc0+FExKz1NO4fEv
	bVIS1idwNX6KI1eBQBXQGvshIYwMCAQcsCbrqJ9C5NU5KtwycfrvIPKs4vN8aydRdOOHiX1HDTNNh
	oWL6m+iDDuPOlj/nwDln1RBW74d5Ykw0Q+Ag8OPijJB1zvsqLyRe6IzLLD6WRnWeWpKpyp3y0uSpm
	XtNzhJ8iy1fCssOGpXs6C6Go7m/eExwD+xf+0H9Utf6XKGJApDCQnhqfAIapJRpoXl1+ZxqHn8xek
	fFDxNeXE8RrwnAXd2s9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixPW0-0007wi-Et; Fri, 31 Jan 2020 06:10:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixPVt-0007vr-DB
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 06:10:46 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EB748206A2;
 Fri, 31 Jan 2020 06:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580451040;
 bh=srVyp4ewW6yDHowNu+cBWrJB9jCJtH5Y2UsZLRs86AE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IIPX8dIwcXfDKhElNA+pfcSeqoal/q/6dYz3hQbD74alWh35EdLBseocTFTMyI2tg
 biuiZIOQlWgNfWymuUNL5bYeGfQbeN+kVpMf0DdFg21D9zNu+RVzahBH1UUgBCvpaT
 MfmnzoqJky8PExbvKp4+rS0HkVV5wafiTNpXaE18=
Date: Fri, 31 Jan 2020 07:10:38 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jolly Shah <JOLLYS@xilinx.com>
Subject: Re: [PATCH v2 1/4] firmware: xilinx: Add sysfs interface
Message-ID: <20200131061038.GA2180358@kroah.com>
References: <1578527663-10243-1-git-send-email-jolly.shah@xilinx.com>
 <1578527663-10243-2-git-send-email-jolly.shah@xilinx.com>
 <20200114145257.GA1910108@kroah.com>
 <BYAPR02MB5992FC37E0D2AD9946414417B80F0@BYAPR02MB5992.namprd02.prod.outlook.com>
 <20200124060339.GB2906795@kroah.com>
 <2D4B924A-D10C-4A90-A8E6-507BF6C30654@xilinx.com>
 <20200128062814.GA2097606@kroah.com>
 <4EF659A1-2844-46B9-9ED6-5A6A20401D9D@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4EF659A1-2844-46B9-9ED6-5A6A20401D9D@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_221045_489032_54637234 
X-CRM114-Status: GOOD (  18.65  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

T24gVGh1LCBKYW4gMzAsIDIwMjAgYXQgMTE6NTk6MDNQTSArMDAwMCwgSm9sbHkgU2hhaCB3cm90
ZToKPiBIaSBHcmVnLAo+IAo+IO+7v09uIDEvMjcvMjAsIDEwOjI4IFBNLCAibGludXgta2VybmVs
LW93bmVyQHZnZXIua2VybmVsLm9yZyBvbiBiZWhhbGYgb2YgR3JlZyBLSCIgPGxpbnV4LWtlcm5l
bC1vd25lckB2Z2VyLmtlcm5lbC5vcmcgb24gYmVoYWxmIG9mIGdyZWdraEBsaW51eGZvdW5kYXRp
b24ub3JnPiB3cm90ZToKPiAKPiAgICAgT24gTW9uLCBKYW4gMjcsIDIwMjAgYXQgMTE6MDE6MjdQ
TSArMDAwMCwgSm9sbHkgU2hhaCB3cm90ZToKPiAgICAgPiAgICAgPiA+ID4gKwlyZXQgPSBrc3Ry
dG9sKHRvaywgMTYsICZ2YWx1ZSk7Cj4gICAgID4gICAgID4gPiA+ICsJaWYgKHJldCkgewo+ICAg
ICA+ICAgICA+ID4gPiArCQlyZXQgPSAtRUZBVUxUOwo+ICAgICA+ICAgICA+ID4gPiArCQlnb3Rv
IGVycjsKPiAgICAgPiAgICAgPiA+ID4gKwl9Cj4gICAgID4gICAgID4gPiA+ICsKPiAgICAgPiAg
ICAgPiA+ID4gKwlyZXQgPSBlZW1pX29wcy0+aW9jdGwoMCwgcmVhZF9pb2N0bCwgcmVnLCAwLCBy
ZXRfcGF5bG9hZCk7Cj4gICAgID4gICAgID4gPiAKPiAgICAgPiAgICAgPiA+IFRoaXMgZmVlbHMg
InRyaWNreSIsIGlmIHlvdSB0aWUgdGhpcyB0byB0aGUgZGV2aWNlIHlvdSBoYXZlIHlvdXIgZHJp
dmVyCj4gICAgID4gICAgID4gPiBib3VuZCB0bywgd2lsbCB0aGlzIG1ha2UgaXQgZWFzaWVyIGlu
c3RlYWQgb2YgaGF2aW5nIHRvIGdvIHRocm91Z2ggdGhlCj4gICAgID4gICAgID4gPiBpb2N0bCBj
YWxsYmFjaz8KPiAgICAgPiAgICAgPiA+IAo+ICAgICA+ICAgICA+IAo+ICAgICA+ICAgICA+IEdH
UyhnZW5lcmFsIGdsb2JhbCBzdG9yYWdlKSByZWdpc3RlcnMgYXJlIGluIFBNVSBzcGFjZSBhbmQg
bGludXggZG9lc24ndCBoYXZlIGFjY2VzcyB0byBpdCAKPiAgICAgPiAgICAgPiBIZW5jZSBpb2N0
bCBpcyB1c2VkLgo+ICAgICA+ICAgICAKPiAgICAgPiAgICAgV2h5IG5vdCBqdXN0IGEgInJlYWwi
IGNhbGwgdG8gdGhlIGRyaXZlciB0byBtYWtlIHRoaXMgdHlwZSBvZiByZWFkaW5nPwo+ICAgICA+
ICAgICBZb3UgZG9uJ3QgaGF2ZSBpb2N0bHMgd2l0aGluIHRoZSBrZXJuZWwgZm9yIG90aGVyIGRy
aXZlcnMgdG8gY2FsbCwKPiAgICAgPiAgICAgdGhhdCdzIG5vdCBuZWVkZWQgYXQgYWxsLgo+ICAg
ICA+IAo+ICAgICA+IHRoZXNlIHJlZ2lzdGVycyBhcmUgZm9yIHVzZXJzICBhbmQgZm9yIHNwZWNp
YWwgbmVlZHMgd2hlcmUgdXNlcnMgd2FudHMKPiAgICAgPiB0byByZXRhaW4gdmFsdWVzIG92ZXIg
cmVzZXRzLiBidXQgYXMgdGhleSBiZWxvbmcgdG8gUE1VIGFkZHJlc3Mgc3BhY2UsCj4gICAgID4g
dGhlc2UgaW50ZXJmYWNlIEFQSXMgYXJlIHByb3ZpZGVkLiBUaGV5IGRvbuKAmXQgYWxsb3cgYWNj
ZXNzIHRvIGFueQo+ICAgICA+IG90aGVyIHJlZ2lzdGVycy4KPiAgICAgCj4gICAgIFRoYXQncyBu
b3QgdGhlIGlzc3VlIGhlcmUuICBUaGUgaXNzdWUgaXMgeW91IGFyZSB1c2luZyBhbiAiaW50ZXJu
YWwiCj4gICAgIGlvY3RsLCBpbnN0ZWFkIGp1c3QgbWFrZSBhICJyZWFsIiBjYWxsLgo+IAo+IFNv
cnJ5IEkgYW0gbm90IGNsZWFyLiBEbyB5b3UgbWVhbiB0aGF0IHdlIHNob3VsZCB1c2UgbGludXgg
c3RhbmRhcmQKPiBpb2N0bCBpbnRlcmZhY2UgaW5zdGVhZCBvZiBpbnRlcm5hbCBpb2N0bCBieSBt
ZW50aW9uaW5nICJyZWFsIiA/CgpObywgeW91IHNob3VsZCBqdXN0IG1ha2UgYSAicmVhbCIgZnVu
Y3Rpb24gY2FsbCB0byB0aGUgZXhhY3QgdGhpbmcgeW91CndhbnQgdG8gZG8uICBOb3QgaGF2ZSBh
biBpbnRlcm5hbCBtdWx0aS1wbGV4b3IgaW9jdGwoKSBjYWxsIHRoYXQgb3RoZXJzCnRoZW4gY2Fs
bC4gIFRoaXMgaXNuJ3QgYSBtaWNyb2tlcm5lbCA6KQoKdGhhbmtzLAoKZ3JlZyBrLWgKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
