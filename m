Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBDF510F57B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 04:12:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d0e2YF74Nntm9fTsHUE4TjWSuYALOTI/ZCaEnqZT6A8=; b=Os9nbLszl9xRbG
	KfhP8wIX5XaBqi8HmAYYCJY2Folngh1Jz1pUAnL4GrXkJXLoBUyRD1CGw8yKlRTO5gy2Q39shpB51
	rjlo9sVqvhbqShOhYpwV+7djGOlcI84pKdBLbLyFLORA2UuJ9mePxUxsM+TXBBOgk1poRfCRMXnNB
	wHsVnCy83UtmLxnrIZigGgYqU85I3MACC7qdxq82PFNdpcX4qlx+Gv7vqd4aTX33SmaTnMZXW7N87
	Z78fIMoKgqOMAFbov3IVYlYnQV3/1c3LeksiJfcP6guFQHt0ycc5fAhp1fzXE63fxFrlZ1wBIDh7m
	rP8r8BS/fAaVpL155p/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibybT-0008WJ-45; Tue, 03 Dec 2019 03:11:55 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibybM-0008Vj-IN
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 03:11:50 +0000
Received: by mail-io1-xd41.google.com with SMTP id z26so1986029iot.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 19:11:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=XOeBq8NTJnyQees1/O7Dsyz9vUFmGtTsKefvd2BETVU=;
 b=WNEu9DlXH2JDzhmnGUWP8E1dPclr7eLVOk7kqkDMRATr7aFRk1tjhmNTjXflj1jYWQ
 IR2SjXGnpd++0N6o6FEfCqWlYqQxw9DQ7cYZJtfol3De3Vz///qHWR+MOHhfn+iMf1oS
 /Mt8+5ALYd+dFnzUXgIw9RqGK4zI1Z/vytt3o2cOZycns1xD6AmYFSIN/me//xhFvb2p
 JGoWKUKBSP3VkGh+bstBqL/Taj5O4Cu1fWff+mY48+u1IcB24FPQGh46GgIilunWB4Dr
 HV42EgXo5RzwWSBEadIlPKSTrGQi9+5ucQU2C1q87bTYuWABnUCaYBlk80WDSFFtU6y9
 apag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=XOeBq8NTJnyQees1/O7Dsyz9vUFmGtTsKefvd2BETVU=;
 b=QLGJE0q77HMNEx6HrMs48QgV2ypIDvW5BKkbSa1kUDJ+COhwoxfNnJwkomdJjo1LfS
 SowtEV1t2E47SvCzOV+sQT1RiuVal6M5oaQevxG8ofg7oY2bri1m4A3w6tw8lWBRnq7x
 LlO3IfvYwJREMmYfo2eRppLPLORxv7NejrOJURqE29k2itreZDniqjhrEAtHTSiFC5Zz
 z+KTFUaV413TRAZUjTIAt5rM1ecQYnkLF2mnDTjZexCcrXVotcQEMLbJavgdVw+fFei0
 4TZbPxH5oXeisefieNpwP9mqxOfprwL9bMNuJxivy3OyVLu7/zzAZyDpronHJe8l2n+Q
 Eutg==
X-Gm-Message-State: APjAAAX7T6rYQfTa12i7gz3KZpXhPnBvfbjjEZb2H4/zDssCuL5zqZWX
 IdcqYU6Wy7wRj1hVOwpcFzsD+GENtOlB3H7z/K1qRA==
X-Google-Smtp-Source: APXvYqw0/gmLO11IfoRmR3xJH+l8Yv2EPBBkCt627OYn2NWTQXSYIYAozYs13O+oMGdSwI79/NJD0Kl5AjdTDEFKs5I=
X-Received: by 2002:a02:ab90:: with SMTP id t16mr3767723jan.106.1575342704169; 
 Mon, 02 Dec 2019 19:11:44 -0800 (PST)
MIME-Version: 1.0
References: <20191202144524.5391-1-jun.nie@linaro.org>
 <20191202144524.5391-2-jun.nie@linaro.org>
 <cd0fae1a6b88a37e034876b53b350e79f58c654f.camel@pengutronix.de>
In-Reply-To: <cd0fae1a6b88a37e034876b53b350e79f58c654f.camel@pengutronix.de>
From: Jun Nie <jun.nie@linaro.org>
Date: Tue, 3 Dec 2019 11:11:33 +0800
Message-ID: <CABymUCOoTZ0MAmtb9O2N+KZj+XF=073C9=BxBgbL9RXwMCuuMA@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: clock: Update Hisilicon reset doc
To: Philipp Zabel <p.zabel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_191148_621638_BCA31FC1 
X-CRM114-Status: GOOD (  25.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 sboyd@kernel.org, Michael Turquette <mturquette@baylibre.com>,
 yuehaibing@huawei.com, Wei Xu <xuwei5@hisilicon.com>,
 xuejiancheng@hisilicon.com, Rob Herring <robh+dt@kernel.org>,
 swinslow@gmail.com, opensource@jilayne.com, tglx@linutronix.de,
 linux-clk@vger.kernel.org, allison@lohutok.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UGhpbGlwcCBaYWJlbCA8cC56YWJlbEBwZW5ndXRyb25peC5kZT4g5LqOMjAxOeW5tDEy5pyIM+aX
peWRqOS6jCDkuIrljYgxOjA05YaZ6YGT77yaCj4KPiBIaSBKdW4sCj4KPiBJIGhhdmUgYSBmZXcg
cXVlc3Rpb25zIGFuZCBjb21tZW50cyBhYm91dCB0aGVzZSBwYXRjaGVzLiBJIG5vdGljZSB0aGF0
Cj4gdGhlIGNoYW5nZWQgZGV2aWNlIHRyZWVzIG9ubHkgdXNlIHRoZSBkZWZhdWx0IHNldHRpbmcu
IEFyZSB0aGVzZSBuZXcKPiBmZWF0dXJlcyBzb21ldGhpbmcgdGhhdCBpcyByZXF1aXJlZCBmb3Ig
dGhlIHByZXNlbnQgU29Dcywgb3IgaXMgdGhpcyBpbgo+IHByZXBhcmF0aW9uIGZvciBhIG5ldyBT
b0M/CgpZZXMsIHRoaXMgcGF0Y2ggc2V0IGlzIHByZXBhcmVkIGZvciBuZXcgU29DLgoKPgo+IE9u
IE1vbiwgMjAxOS0xMi0wMiBhdCAyMjo0NSArMDgwMCwgSnVuIE5pZSB3cm90ZToKPiA+IERvY3Vt
ZW50IHRoZSB1cGRhdGUgb2YgSGlzaWxpY29uIHJlc2V0IG9wZXJhdGlvbiBleHRlbnNpb24uCj4g
Pgo+ID4gU2lnbmVkLW9mZi1ieTogSnVuIE5pZSA8anVuLm5pZUBsaW5hcm8ub3JnPgo+ID4gLS0t
Cj4gPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2svaGlzaS1jcmcudHh0ICAgIHwgMTIg
KysrKy0tLS0KPiA+ICBpbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0L2hpc2lsaWNvbi1yZXNldHMu
aCAgfCAyOCArKysrKysrKysrKysrKysrKysrCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAzNSBpbnNl
cnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRl
L2R0LWJpbmRpbmdzL3Jlc2V0L2hpc2lsaWNvbi1yZXNldHMuaAo+ID4KPiA+IGRpZmYgLS1naXQg
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2svaGlzaS1jcmcudHh0IGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL2hpc2ktY3JnLnR4dAo+ID4g
aW5kZXggY2M2MGIzZDQyM2YzLi5mZDhiMGE5NjQ4MDYgMTAwNjQ0Cj4gPiAtLS0gYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2svaGlzaS1jcmcudHh0Cj4gPiArKysgYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2svaGlzaS1jcmcudHh0Cj4gPiBA
QCAtMjYsMTkgKzI2LDIxIEBAIHRvIHNwZWNpZnkgdGhlIGNsb2NrIHdoaWNoIHRoZXkgY29uc3Vt
ZS4KPiA+Cj4gPiAgQWxsIHRoZXNlIGlkZW50aWZpZXIgY291bGQgYmUgZm91bmQgaW4gPGR0LWJp
bmRpbmdzL2Nsb2NrL2hpMzUxOS1jbG9jay5oPi4KPiA+Cj4gPiAtLSAjcmVzZXQtY2VsbHM6IHNo
b3VsZCBiZSAyLgo+ID4gKy0gI3Jlc2V0LWNlbGxzOiBzaG91bGQgYmUgMy4KPiA+Cj4gPiAgQSBy
ZXNldCBzaWduYWwgY2FuIGJlIGNvbnRyb2xsZWQgYnkgd3JpdGluZyBhIGJpdCByZWdpc3RlciBp
biB0aGUgQ1JHIG1vZHVsZS4KPiA+IC1UaGUgcmVzZXQgc3BlY2lmaWVyIGNvbnNpc3RzIG9mIHR3
byBjZWxscy4gVGhlIGZpcnN0IGNlbGwgcmVwcmVzZW50cyB0aGUKPiA+ICtUaGUgcmVzZXQgc3Bl
Y2lmaWVyIGNvbnNpc3RzIG9mIHRocmVlIGNlbGxzLiBUaGUgZmlyc3QgY2VsbCByZXByZXNlbnRz
IHRoZQo+ID4gIHJlZ2lzdGVyIG9mZnNldCByZWxhdGl2ZSB0byB0aGUgYmFzZSBhZGRyZXNzLiBU
aGUgc2Vjb25kIGNlbGwgcmVwcmVzZW50cyB0aGUKPiA+IC1iaXQgaW5kZXggaW4gdGhlIHJlZ2lz
dGVyLgo+ID4gK2JpdCBpbmRleCBpbiB0aGUgcmVnaXN0ZXIuIFRoZSB0aGlyZCByZXByZXNlbnQg
dGhlIGZsYWdzIHRvIG9wZXJhdGlvbiB0eXBlLgo+ID4gKwo+ID4gK0FsbCByZXNldCBmbGFncyBj
b3VsZCBiZSBmb3VuZCBpbiA8ZHQtYmluZGluZ3MvcmVzZXQvaGlzaWxpY29uLXJlc2V0cy5oPgo+
ID4KPiA+ICBFeGFtcGxlOiBDUkcgbm9kZXMKPiA+ICBDUkc6IGNsb2NrLXJlc2V0LWNvbnRyb2xs
ZXJAMTIwMTAwMDAgewo+ID4gICAgICAgY29tcGF0aWJsZSA9ICJoaXNpbGljb24saGkzNTE5LWNy
ZyI7Cj4gPiAgICAgICByZWcgPSA8MHgxMjAxMDAwMCAweDEwMDAwPjsKPiA+ICAgICAgICNjbG9j
ay1jZWxscyA9IDwxPjsKPiA+IC0gICAgICNyZXNldC1jZWxscyA9IDwyPjsKPiA+ICsgICAgICNy
ZXNldC1jZWxscyA9IDwzPjsKPiA+ICB9Owo+ID4KPiA+ICBFeGFtcGxlOiBjb25zdW1lciBub2Rl
cwo+ID4gQEAgLTQ2LDUgKzQ4LDUgQEAgaTJjMDogaTJjQDEyMTEwMDAwIHsKPiA+ICAgICAgIGNv
bXBhdGlibGUgPSAiaGlzaWxpY29uLGhpMzUxOS1pMmMiOwo+ID4gICAgICAgcmVnID0gPDB4MTIx
MTAwMDAgMHgxMDAwPjsKPiA+ICAgICAgIGNsb2NrcyA9IDwmQ1JHIEhJMzUxOV9JMkMwX1JTVD47
Cj4gPiAtICAgICByZXNldHMgPSA8JkNSRyAweGU0IDA+Owo+ID4gKyAgICAgcmVzZXRzID0gPCZD
UkcgMHhlNCAwIChISVNJX0FTU0VSVF9TRVQgfCBISVNJX0RFQVNTRVJUX0NMRUFSKT47Cj4gPiAg
fTsKPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0L2hpc2lsaWNvbi1y
ZXNldHMuaCBiL2luY2x1ZGUvZHQtYmluZGluZ3MvcmVzZXQvaGlzaWxpY29uLXJlc2V0cy5oCj4g
PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi45ODNlNDJhMGMz
MTgKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL2luY2x1ZGUvZHQtYmluZGluZ3MvcmVzZXQv
aGlzaWxpY29uLXJlc2V0cy5oCj4gPiBAQCAtMCwwICsxLDI4IEBACj4gPiArLyogU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IEdQTC0yLjAgKi8KPiA+ICsvKgo+ID4gKyAqIEhpc2lsaWNvbiBSZXNl
dCBkZWZpbml0aW9ucwo+ID4gKyAqCj4gPiArICogQ29weXJpZ2h0IChjKSAyMDE5IEhpU2lsaWNv
biBUZWNobm9sb2dpZXMgQ28uLCBMdGQuCj4gPiArICovCj4gPiArCj4gPiArI2lmbmRlZiBfX0RU
X0JJTkRJTkdTX1JFU0VUX0hJU0lMSUNPTl9IX18KPiA+ICsjZGVmaW5lIF9fRFRfQklORElOR1Nf
UkVTRVRfSElTSUxJQ09OX0hfXwo+ID4gKwo+ID4gKy8qCj4gPiArICogVGhlIHJlc2V0IGRvZXMg
bm90IHN1cHBvcnQgdGhlIGZlYXR1cmUgYW5kIGNvcnJlc3BvbmRpbmcKPiA+ICsgKiB2YWx1ZXMg
YXJlIG5vdCB2YWxpZAo+ID4gKyAqLwo+ID4gKyNkZWZpbmUgSElTSV9BU1NFUlRfTk9ORSAgICAg
ICAgICAgICAoMSA8PCAwKQo+ID4gKyNkZWZpbmUgSElTSV9ERUFTU0VSVF9OT05FICAgICAgICAg
ICAoMSA8PCAxKQo+Cj4gV2hhdCBpcyB0aGUgcHVycG9zZSBvZiB0aGVzZSB0d28/IFN1cmVseSBh
IHJlc2V0IGNvbnRyb2wgdGhhdCBkb2VzCj4gbm90aGluZyBpcyBub3QgdXNlZnVsPwo+Cj4gPiAr
Cj4gPiArLyogV2hlbiBzZXQgdGhpcyBmdW5jdGlvbiBpcyBhY3RpdmF0ZWQgYnkgcG9sbGluZy9z
ZXR0aW5nL2NsZWFyaW5nIHRoaXMgYml0ICovCj4gPiArI2RlZmluZSBISVNJX0FTU0VSVF9TRVQg
ICAgICAgICAgICAgICgxIDw8IDIpCj4gPiArI2RlZmluZSBISVNJX0RFQVNTRVJUX1NFVCAgICAg
ICAgICAgICgxIDw8IDMpCj4KPiA+ICsjZGVmaW5lIEhJU0lfQVNTRVJUX0NMRUFSICAgICAgICAg
ICAgKDAgPDwgNCkKPiA+ICsjZGVmaW5lIEhJU0lfREVBU1NFUlRfQ0xFQVIgICAgICAgICAgKDAg
PDwgNSkKPiA+ICsjZGVmaW5lIEhJU0lfQVNTRVJUX1BPTEwgICAgICAgICAgICAgKDAgPDwgNikK
PiA+ICsjZGVmaW5lIEhJU0lfREVBU1NFUlRfUE9MTCAgICAgICAgICAgKDAgPDwgNykKPgo+IFRo
ZXNlIGFyZSBhbGwgemVybywgY2hlY2tpbmcgZm9yIHRoZW0gd2l0aCBhbiAmIG9wZXJhdGlvbiBp
biB0aGUgY29kZQo+IGFsd2F5cyByZXR1cm5zIGZhbHNlLgoKVGhhbmtzIGZvciBwb2ludGluZyBv
dXQgdGhpcyEgVGhpcyBpcyBhIHR5cG8gaW4gdGhlIGVhcmx5IHZlcnNpb24KcGF0Y2guIEkgbWFk
ZSBzb21lCm1pc3Rha2Ugd2hlbiBwcmVwYXJpbmcgdGhlIHBhdGNoIGZvciB1cHN0cmVhbS4gV2ls
bCBmaXggdGhpcyBpc3N1ZS4KPgo+ID4gKwo+ID4gKyNkZWZpbmUgSElTSV9SRVNFVF9ERUZBVUxU
ICAgICAgICAgICAoSElTSV9BU1NFUlRfU0VUIHwgSElTSV9ERUFTU0VSVF9DTEVBUikKPiA+ICsK
PiA+ICsjZW5kaWYKPgo+IHJlZ2FyZHMKPiBQaGlsaXBwCj4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
