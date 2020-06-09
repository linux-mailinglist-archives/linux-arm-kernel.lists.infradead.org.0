Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B5E1F3B22
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 14:53:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zw64Ua2Y1krL8aXJnELdVocu5eWPWLQyF6bma20MMnk=; b=Jo8ivM2JOugwuP
	XMV+0o7+xH5naoLmMIouVFTx53g3X9l0bJO94LzNHjDqGrCxEluxC2MFm45hv3NJX+fS4i/Djctja
	p5eRB6oWIlIV5bpRA/OG+KmtuTpvCL6ShxfIHyHtwnvOqvx8Dvnuql3GnDcu1E8DSbIokUOsqranH
	NdQKnjsfII1ytbmdMOmCZ8YCg38t6wG2jkrQB65MFDrka6SzcEu+8SpqXAbK+3aqkmfpO7Ml7WFmr
	L5snYYVCXo85cyBvLQIWZ/xOVvtB/dP6SRCMysJAk6uMiKoOAMhdRmzERRlHKbBhNGSfC7qyU2EMf
	XbTI+d5iq67H1YiW4F4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jidkn-0005BH-3d; Tue, 09 Jun 2020 12:53:21 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jidke-0005Ab-Fp
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 12:53:14 +0000
Received: by mail-wr1-x442.google.com with SMTP id l11so21188215wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 05:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=vrPhBQinJOm2GiOyvxlhSLQ8G2hbgcP888EbPjYnpWE=;
 b=sRudMVlHtnJjHmIBx59yGnZa7TgnSFmEgOv0HeaNM3Yw6g193AyJONzpDj2K1k4nbZ
 3xTl+eARUVcQU6Tt4E8p8c0kSvnhRU6CK94wKp+O1zKCK+BeFLfrkSnDGF3JEPThV4Kd
 sc07ajaQZQWU4bdYabuqev/2HW/xax9AGAylbGoOfdNWNMt9JNAxjWGIYUtRdbqIhMip
 Gds5DE0qh1mqcJn4jEGBTyTRPUXERdeb5nY1+Ia72Gg4h/xKlmGIbxdvsgvQNiE0lLDm
 86jNWlJqpc7q8mwufN9tb6/TTTnBM3wyRs/wn4wAaI7ZPy32ylNLyC2fvzh8u254T5eN
 IetQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=vrPhBQinJOm2GiOyvxlhSLQ8G2hbgcP888EbPjYnpWE=;
 b=QMC52FS3CRYhlczq6VhxBtu3qEUDObriJ0jwK7l2HjMEaPDeubINYQLaG4J/XlRfqn
 Tp+Ljds3gCfJChRjgwM4tfm3gUK0IYTt1+p94UQMvdLs+MExNGPSwsEGRdfCJ+wXWoup
 Ey2Ge3cxD543letYrph4m8tJctANPr+ETBqNoYsVk5Cqg7iwTPsk6Re4slPvTzsgcg1q
 e7rEG3Ip3U0FtvFzSaKlhtpalWvh76ErzzBoCwMkPbFguTwk/5qLofZksRstWdCAybsa
 qRnvYAjIG14wQ6hlm+htdMZC3erDWXg3GGLdX7Q2nmbklVNNk4K84rq24fpB+QJr+zye
 tA8Q==
X-Gm-Message-State: AOAM533EqgqstvDUL575sFy3jflLyYkbq0lqnUk9rqdDF70fZLOo5/0l
 w7QTOC1/PJuWIj103ao+nkIKRKPaDls=
X-Google-Smtp-Source: ABdhPJyUpfpT9l7B1MvSK8xJp6dacca2BXQKTrAQ4Wc72VOm5cQExzdGg3Ltp/re4zTYpjuCHoMJaA==
X-Received: by 2002:adf:feca:: with SMTP id q10mr3990520wrs.380.1591707191199; 
 Tue, 09 Jun 2020 05:53:11 -0700 (PDT)
Received: from dell ([2.27.167.101])
 by smtp.gmail.com with ESMTPSA id x205sm2925431wmx.21.2020.06.09.05.53.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 05:53:10 -0700 (PDT)
Date: Tue, 9 Jun 2020 13:53:05 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Gene Chen <gene.chen.richtek@gmail.com>
Subject: Re: [PATCH] mfd: mt6360: Fix register driver NULL pointer by add
 driver name
Message-ID: <20200609125305.GL4106@dell>
References: <1591609125-3761-1-git-send-email-gene.chen.richtek@gmail.com>
 <20200608192829.GG4106@dell>
 <CAE+NS36mxw-FpQhJ4qV=_+r2CXVi_PaGaZo2m3jXAGFuOO252Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAE+NS36mxw-FpQhJ4qV=_+r2CXVi_PaGaZo2m3jXAGFuOO252Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_055312_597519_F1F6F343 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: Gene Chen <gene_chen@richtek.com>, linux-kernel@vger.kernel.org,
 cy_huang@richtek.com, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, Wilma.Wu@mediatek.com,
 linux-arm-kernel@lists.infradead.org, shufan_lee@richtek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAwOSBKdW4gMjAyMCwgR2VuZSBDaGVuIHdyb3RlOgoKPiBMZWUgSm9uZXMgPGxlZS5q
b25lc0BsaW5hcm8ub3JnPiDmlrwgMjAyMOW5tDbmnIg55pelIOmAseS6jCDkuIrljYgzOjI45a+r
6YGT77yaCj4gPgo+ID4gT24gTW9uLCAwOCBKdW4gMjAyMCwgR2VuZSBDaGVuIHdyb3RlOgo+ID4K
PiA+ID4gRnJvbTogR2VuZSBDaGVuIDxnZW5lX2NoZW5AcmljaHRlay5jb20+Cj4gPiA+Cj4gPiA+
IGFjY2lkZW50YWxseSByZW1vdmUgZHJpdmVyIG5hbWUgd2hlbgo+ID4gPiByZXBsYWNlIHByb2Jl
IGJ5IHByb2JlX25ldyBpbiBhZGQgbXQ2MzYwIG1mZCBkcml2ZXIgcGF0Y2ggdjQKPiA+ID4KPiA+
ID4gWyAgMTIxLjI0MzAxMl0gRUFYOiBjMmE4YmM2NCBFQlg6IDAwMDAwMDAwIEVDWDogMDAwMDAw
MDAgRURYOiAwMDAwMDAwMAo+ID4gPiBbICAxMjEuMjQzMDEyXSBFU0k6IGMyYThiYzc5IEVESTog
MDAwMDAwMDAgRUJQOiBlNTRiZGVhOCBFU1A6IGU1NGJkZWEwCj4gPiA+IFsgIDEyMS4yNDMwMTJd
IERTOiAwMDdiIEVTOiAwMDdiIEZTOiAwMDAwIEdTOiAwMDAwIFNTOiAwMDY4IEVGTEFHUzogMDAw
MTAyODYKPiA+ID4gWyAgMTIxLjI0MzAxMl0gQ1IwOiA4MDA1MDAzMyBDUjI6IDAwMDAwMDAwIENS
MzogMDJlYzMwMDAgQ1I0OiAwMDAwMDZiMAo+ID4gPiBbICAxMjEuMjQzMDEyXSBDYWxsIFRyYWNl
Ogo+ID4gPiBbICAxMjEuMjQzMDEyXSAga3NldF9maW5kX29iaisweDNkLzB4YzAKPiA+ID4gWyAg
MTIxLjI0MzAxMl0gIGRyaXZlcl9maW5kKzB4MTYvMHg0MAo+ID4gPiBbICAxMjEuMjQzMDEyXSAg
ZHJpdmVyX3JlZ2lzdGVyKzB4NDkvMHgxMDAKPiA+ID4gWyAgMTIxLjI0MzAxMl0gID8gaTJjX2Zv
cl9lYWNoX2RldisweDM5LzB4NTAKPiA+ID4gWyAgMTIxLjI0MzAxMl0gID8gX19wcm9jZXNzX25l
d19hZGFwdGVyKzB4MjAvMHgyMAo+ID4gPiBbICAxMjEuMjQzMDEyXSAgPyBjaHRfd2NfZHJpdmVy
X2luaXQrMHgxMS8weDExCj4gPiA+IFsgIDEyMS4yNDMwMTJdICBpMmNfcmVnaXN0ZXJfZHJpdmVy
KzB4MzAvMHg4MAo+ID4gPiBbICAxMjEuMjQzMDEyXSAgPyBpbnRlbF9scHNzX3BjaV9kcml2ZXJf
aW5pdCsweDE2LzB4MTYKPiA+ID4gWyAgMTIxLjI0MzAxMl0gIG10NjM2MF9wbXVfZHJpdmVyX2lu
aXQrMHhmLzB4MTEKPiA+ID4gWyAgMTIxLjI0MzAxMl0gIGRvX29uZV9pbml0Y2FsbCsweDMzLzB4
MWEwCj4gPiA+IFsgIDEyMS4yNDMwMTJdICA/IHBhcnNlX2FyZ3MrMHgxZWIvMHgzZDAKPiA+ID4g
WyAgMTIxLjI0MzAxMl0gID8gX19taWdodF9zbGVlcCsweDMxLzB4OTAKPiA+ID4gWyAgMTIxLjI0
MzAxMl0gID8ga2VybmVsX2luaXRfZnJlZWFibGUrMHgxMGEvMHgxN2YKPiA+ID4gWyAgMTIxLjI0
MzAxMl0gIGtlcm5lbF9pbml0X2ZyZWVhYmxlKzB4MTJjLzB4MTdmCj4gPiA+IFsgIDEyMS4yNDMw
MTJdICA/IHJlc3RfaW5pdCsweDExMC8weDExMAo+ID4gPiBbICAxMjEuMjQzMDEyXSAga2VybmVs
X2luaXQrMHhiLzB4MTAwCj4gPiA+IFsgIDEyMS4yNDMwMTJdICA/IHNjaGVkdWxlX3RhaWxfd3Jh
cHBlcisweDkvMHhjCj4gPiA+IFsgIDEyMS4yNDMwMTJdICByZXRfZnJvbV9mb3JrKzB4MTkvMHgy
NAo+ID4gPiBbICAxMjEuMjQzMDEyXSBNb2R1bGVzIGxpbmtlZCBpbjoKPiA+ID4gWyAgMTIxLjI0
MzAxMl0gQ1IyOiAwMDAwMDAwMDAwMDAwMDAwCj4gPiA+IFsgIDEyMS4yNDMwMTJdIHJhbmRvbTog
Z2V0X3JhbmRvbV9ieXRlcyBjYWxsZWQgZnJvbSBpbml0X29vcHNfaWQrMHgzYS8weDQwIHdpdGgg
Y3JuZ19pbml0PTAKPiA+ID4gWyAgMTIxLjI0MzAxMl0gLS0tWyBlbmQgdHJhY2UgMzhhODAzNDAw
ZjFhMmJlZSBdLS0tCj4gPiA+IFsgIDEyMS4yNDMwMTJdIEVJUDogc3RyY21wKzB4MTEvMHgzMAo+
ID4KPiA+IEhvdyBkaWQgdGhpcyBkcml2ZXIgZXZlciB3b3JrIGZvciB5b3U/Cj4gCj4gaSBhc2sg
bXkgY293b3JrZXIgaGVscCBtZSB2ZXJpZnkuCj4gaSB3aWxsIGNoZWNrIHRoZSBwYXRjaCBteXNl
bGYsIHNpbmNlcmVseSBhcG9sb2dpZXMgZm9yIHRoaXMuCgpXaGF0IGRvZXMgdGhpcyBtZWFuPwoK
QXJlIHlvdSBzYXlpbmcgdGhhdCBmb3IgYWxsIDEwIHZlcnNpb25zIG9mIHRoaXMgcGF0Y2ggc3Vi
bWlzc2lvbiwgaXQKaGFzIG5ldmVyIGJlZW4gdGVzdGVkPyAgQW5kIGRlc3BpdGUgYmVpbmcgYXV0
aG9yZWQgYnkgeW91IGFuZApzdWJtaXR0ZWQgYnkgeW91LCB5b3UgaGF2ZSBuZXZlciBhY3R1YWxs
eSBib290IHRlc3RlZCB0aGUgZHJpdmVyCnlvdXJzZWxmPyAgUmVseWluZyBpbnN0ZWFkIG9uIHlv
dXIgY28td29ya2VyIHRvIGNvbmR1Y3QgdGhlIHRlc3RpbmcsCndobyBmYWlsZWQgdG8gZG8gc28u
ICBJcyB0aGF0IHJlYWxseSBjb3JyZWN0PwoKPiA+ID4gU2lnbmVkLW9mZi1ieTogR2VuZSBDaGVu
IDxnZW5lX2NoZW5AcmljaHRlay5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgZHJpdmVycy9tZmQvbXQ2
MzYwLWNvcmUuYyB8IDEgKwo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4g
PiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21mZC9tdDYzNjAtY29yZS5jIGIvZHJpdmVy
cy9tZmQvbXQ2MzYwLWNvcmUuYwo+ID4gPiBpbmRleCBkYjhjZGY1Li5lOWNhY2MyIDEwMDY0NAo+
ID4gPiAtLS0gYS9kcml2ZXJzL21mZC9tdDYzNjAtY29yZS5jCj4gPiA+ICsrKyBiL2RyaXZlcnMv
bWZkL210NjM2MC1jb3JlLmMKPiA+ID4gQEAgLTQxMiw2ICs0MTIsNyBAQCBNT0RVTEVfREVWSUNF
X1RBQkxFKG9mLCBtdDYzNjBfcG11X29mX2lkKTsKPiA+ID4KPiA+ID4gIHN0YXRpYyBzdHJ1Y3Qg
aTJjX2RyaXZlciBtdDYzNjBfcG11X2RyaXZlciA9IHsKPiA+ID4gICAgICAgLmRyaXZlciA9IHsK
PiA+ID4gKyAgICAgICAgICAgICAubmFtZSA9ICJtdDYzNjBfcG11IiwKPiA+ID4gICAgICAgICAg
ICAgICAucG0gPSAmbXQ2MzYwX3BtdV9wbV9vcHMsCj4gPiA+ICAgICAgICAgICAgICAgLm9mX21h
dGNoX3RhYmxlID0gb2ZfbWF0Y2hfcHRyKG10NjM2MF9wbXVfb2ZfaWQpLAo+ID4gPiAgICAgICB9
LAo+ID4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KU2VuaW9yIFRlY2huaWNhbCBMZWFkIC0g
RGV2ZWxvcGVyIFNlcnZpY2VzCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZv
ciBBcm0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
