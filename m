Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 308691B0726
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 13:15:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9QrI2fkdEnYKPWIT0wKVOnnaRtIilcPmneVpqGtlRNk=; b=MSGeb29qTj8Dpd
	Xh0X59D9i/YvjYsApYdzkCzSTaHFds2Jn9cSeDwBc1C6kgQ8VrwFdYQs/FnnrOtT2PnJ3BNisZ2y4
	Xtm2K3oMRAKvVvSVE1UgQr19ZGxT7ydmltLV+5ccBZ7aEM1hkzpZK1srLw752kEgNBC3qHXTAE9kA
	lLl3nh3fygIwDnEZ7m2iG4SnFseLZ8cJookGhW8MCA+zl4q3HwUoKZ7tQW2TB5EL+uaB4Vj73o5qr
	GK0O5El0Sx06t7NAKhpwS7vtxhWBsbn4TZiLd2Cxwv58UvsEjEUseeEgwilw6rA4Rm5bEf0waHxxU
	Scs0vvTK8QMBTA1izE2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQUOm-0001mz-OK; Mon, 20 Apr 2020 11:15:36 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQUOc-0001kN-97
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 11:15:28 +0000
Received: by mail-wr1-x444.google.com with SMTP id b11so11613121wrs.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 04:15:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=4uCgchzEKUbGCjVb5ErPQQvp7VtDEqWO3rkjRlf6Z0c=;
 b=Z69BlBZc3+yIjY+OiSNwt8bsyBI0gsYDwMfdiucsDa5C+MKP/wOJquAOhh0jY8LvP8
 DrypNHoQ8098wugctLVFMem6rV1KysE9rL4PQbw9dgV9IX4vzDo8vaR3IolrnwdZnlue
 oiYWMkYalyjVcjm2bEgoiKKZoPYWWSYOSW2mlfPKPx+R10IJHuVAXZKI+CMv1NXjZwBe
 4ApmE0F3A3wQai4D9aDrDuXakAc3roQsOINa7eE95IHRnzDQ2WMpJIYitHW849I7SOu2
 /WgTnsClHrd3yTWNDwW+tMRpyK1PDxfZIy/Qi+no+uSblRgwH6XmDdXWWcVSG1+c8QGu
 WI1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=4uCgchzEKUbGCjVb5ErPQQvp7VtDEqWO3rkjRlf6Z0c=;
 b=itv0KrivwIz44GkfRQcCgI8G1LTsshpYjuHIssypz8wl2vsJnIunkhVHDD7htP6uTA
 GHnNpslwzL4Ji9u//OiFHZbz0qOWNNrOM9SZQiUMA/YerM/I2FqpJGDZy6+HuXUm+SU9
 2lwVYCDnrUl1D2n68Ta9W/7zacV7nftCMwLMDRp1iZ485kdNTNM443AW1nLIfXam9bwD
 39gkF7xF7tnHRt1P0KLvcjKQGe8FdBYZTSgViXsSd4yXCYKRRRgEA0Pkf10xQzxBIhzm
 61msOr43x7OYRDFbFo3r2CIk2Y+vK0YA8ckdptu+HHoiam9opSsYzzJkl085a4qCWRl5
 2GOw==
X-Gm-Message-State: AGi0PuZFC3i+NJ15gAsuh+SqysJuowTL1zfHImtqMjJWaiE8BPiqZQz1
 bvhAwDal5a2Eb0KCxRLfNDvryA==
X-Google-Smtp-Source: APiQypJhmbeviPbiHBjSOOZlAdECJVyeKqJZLm8MMiKHA1YJPMBCV2InSlX2aY5iSqxkecD8aYWnaQ==
X-Received: by 2002:a5d:5147:: with SMTP id u7mr17746146wrt.290.1587381324902; 
 Mon, 20 Apr 2020 04:15:24 -0700 (PDT)
Received: from dell ([95.149.164.107])
 by smtp.gmail.com with ESMTPSA id q143sm969035wme.31.2020.04.20.04.15.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 04:15:24 -0700 (PDT)
Date: Mon, 20 Apr 2020 12:15:22 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Hsin-hsiung Wang <hsin-hsiung.wang@mediatek.com>
Subject: Re: [PATCH v12 1/6] mfd: mt6397: Modify suspend/resume behavior
Message-ID: <20200420111522.GB3612@dell>
References: <1586333531-21641-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1586333531-21641-2-git-send-email-hsin-hsiung.wang@mediatek.com>
 <20200416084910.GX2167633@dell>
 <1587379959.6297.2.camel@mtksdaap41>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587379959.6297.2.camel@mtksdaap41>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_041526_844633_CDA7EAF3 
X-CRM114-Status: GOOD (  23.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Sebastian Reichel <sre@kernel.org>, Richard Fontana <rfontana@redhat.com>,
 linux-rtc@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 Frank Wunderlich <frank-w@public-files.de>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Ran Bi <ran.bi@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, Alessandro Zummo <a.zummo@towertech.it>,
 Josef Friedl <josef.friedl@speed.at>, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyMCBBcHIgMjAyMCwgSHNpbi1oc2l1bmcgV2FuZyB3cm90ZToKCj4gSGksCj4gCj4g
T24gVGh1LCAyMDIwLTA0LTE2IGF0IDA5OjQ5ICswMTAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiBP
biBXZWQsIDA4IEFwciAyMDIwLCBIc2luLUhzaXVuZyBXYW5nIHdyb3RlOgo+ID4gCj4gPiA+IFNv
bWUgcG1pY3MgZG9uJ3QgbmVlZCBiYWNrdXAgaW50ZXJydXB0IHNldHRpbmdzLCBzbyB3ZSBjaGFu
Z2UgdG8gdXNlCj4gPiA+IHBtIG5vdGlmaWVyIGZvciB0aGUgcG1pY3Mgd2hpY2ggYXJlIG5lY2Vz
c2FyeSB0byBzdG9yZSBzZXR0aW5ncy4KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEhzaW4t
SHNpdW5nIFdhbmcgPGhzaW4taHNpdW5nLndhbmdAbWVkaWF0ZWsuY29tPgo+ID4gPiAtLS0KPiA+
ID4gIGRyaXZlcnMvbWZkL210NjM5Ny1jb3JlLmMgICAgICAgfCAzMCAtLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KPiA+ID4gIGRyaXZlcnMvbWZkL210NjM5Ny1pcnEuYyAgICAgICAgfCAz
NSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLQo+ID4gPiAgaW5jbHVkZS9saW51
eC9tZmQvbXQ2Mzk3L2NvcmUuaCB8ICAyICsrCj4gPiA+ICAzIGZpbGVzIGNoYW5nZWQsIDM2IGlu
c2VydGlvbnMoKyksIDMxIGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbWZkL210NjM5Ny1jb3JlLmMgYi9kcml2ZXJzL21mZC9tdDYzOTctY29yZS5jCj4gPiA+
IGluZGV4IDA0MzdjODUuLmQyZTcwZDggMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvbWZkL210
NjM5Ny1jb3JlLmMKPiA+ID4gKysrIGIvZHJpdmVycy9tZmQvbXQ2Mzk3LWNvcmUuYwo+ID4gPiBA
QCAtMTAwLDM1ICsxMDAsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG1mZF9jZWxsIG10NjM5N19k
ZXZzW10gPSB7Cj4gPiA+ICAJfQo+ID4gPiAgfTsKPiA+ID4gIAo+ID4gPiAtI2lmZGVmIENPTkZJ
R19QTV9TTEVFUAo+ID4gPiAtc3RhdGljIGludCBtdDYzOTdfaXJxX3N1c3BlbmQoc3RydWN0IGRl
dmljZSAqZGV2KQo+ID4gPiAtewo+ID4gPiAtCXN0cnVjdCBtdDYzOTdfY2hpcCAqY2hpcCA9IGRl
dl9nZXRfZHJ2ZGF0YShkZXYpOwo+ID4gPiAtCj4gPiA+IC0JcmVnbWFwX3dyaXRlKGNoaXAtPnJl
Z21hcCwgY2hpcC0+aW50X2NvblswXSwgY2hpcC0+d2FrZV9tYXNrWzBdKTsKPiA+ID4gLQlyZWdt
YXBfd3JpdGUoY2hpcC0+cmVnbWFwLCBjaGlwLT5pbnRfY29uWzFdLCBjaGlwLT53YWtlX21hc2tb
MV0pOwo+ID4gPiAtCj4gPiA+IC0JZW5hYmxlX2lycV93YWtlKGNoaXAtPmlycSk7Cj4gPiA+IC0K
PiA+ID4gLQlyZXR1cm4gMDsKPiA+ID4gLX0KPiA+ID4gLQo+ID4gPiAtc3RhdGljIGludCBtdDYz
OTdfaXJxX3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gPiA+IC17Cj4gPiA+IC0Jc3RydWN0
IG10NjM5N19jaGlwICpjaGlwID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4gPiA+IC0KPiA+ID4g
LQlyZWdtYXBfd3JpdGUoY2hpcC0+cmVnbWFwLCBjaGlwLT5pbnRfY29uWzBdLCBjaGlwLT5pcnFf
bWFza3NfY3VyWzBdKTsKPiA+ID4gLQlyZWdtYXBfd3JpdGUoY2hpcC0+cmVnbWFwLCBjaGlwLT5p
bnRfY29uWzFdLCBjaGlwLT5pcnFfbWFza3NfY3VyWzFdKTsKPiA+ID4gLQo+ID4gPiAtCWRpc2Fi
bGVfaXJxX3dha2UoY2hpcC0+aXJxKTsKPiA+ID4gLQo+ID4gPiAtCXJldHVybiAwOwo+ID4gPiAt
fQo+ID4gPiAtI2VuZGlmCj4gPiA+IC0KPiA+ID4gLXN0YXRpYyBTSU1QTEVfREVWX1BNX09QUyht
dDYzOTdfcG1fb3BzLCBtdDYzOTdfaXJxX3N1c3BlbmQsCj4gPiA+IC0JCQltdDYzOTdfaXJxX3Jl
c3VtZSk7Cj4gPiA+IC0KPiA+ID4gIHN0cnVjdCBjaGlwX2RhdGEgewo+ID4gPiAgCXUzMiBjaWRf
YWRkcjsKPiA+ID4gIAl1MzIgY2lkX3NoaWZ0Owo+ID4gPiBAQCAtMjM4LDcgKzIwOSw2IEBAIHN0
YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIG10NjM5N19kcml2ZXIgPSB7Cj4gPiA+ICAJLmRy
aXZlciA9IHsKPiA+ID4gIAkJLm5hbWUgPSAibXQ2Mzk3IiwKPiA+ID4gIAkJLm9mX21hdGNoX3Rh
YmxlID0gb2ZfbWF0Y2hfcHRyKG10NjM5N19vZl9tYXRjaCksCj4gPiA+IC0JCS5wbSA9ICZtdDYz
OTdfcG1fb3BzLAo+ID4gPiAgCX0sCj4gPiA+ICAJLmlkX3RhYmxlID0gbXQ2Mzk3X2lkLAo+ID4g
PiAgfTsKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWZkL210NjM5Ny1pcnEuYyBiL2RyaXZl
cnMvbWZkL210NjM5Ny1pcnEuYwo+ID4gPiBpbmRleCBiMmQzY2UxLi4yOTI0OTE5IDEwMDY0NAo+
ID4gPiAtLS0gYS9kcml2ZXJzL21mZC9tdDYzOTctaXJxLmMKPiA+ID4gKysrIGIvZHJpdmVycy9t
ZmQvbXQ2Mzk3LWlycS5jCj4gPiA+IEBAIC05LDYgKzksNyBAQAo+ID4gPiAgI2luY2x1ZGUgPGxp
bnV4L29mX2lycS5oPgo+ID4gPiAgI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgo+
ID4gPiAgI2luY2x1ZGUgPGxpbnV4L3JlZ21hcC5oPgo+ID4gPiArI2luY2x1ZGUgPGxpbnV4L3N1
c3BlbmQuaD4KPiA+ID4gICNpbmNsdWRlIDxsaW51eC9tZmQvbXQ2MzIzL2NvcmUuaD4KPiA+ID4g
ICNpbmNsdWRlIDxsaW51eC9tZmQvbXQ2MzIzL3JlZ2lzdGVycy5oPgo+ID4gPiAgI2luY2x1ZGUg
PGxpbnV4L21mZC9tdDYzOTcvY29yZS5oPgo+ID4gPiBAQCAtODEsNyArODIsNyBAQCBzdGF0aWMg
c3RydWN0IGlycV9jaGlwIG10NjM5N19pcnFfY2hpcCA9IHsKPiA+ID4gIHN0YXRpYyB2b2lkIG10
NjM5N19pcnFfaGFuZGxlX3JlZyhzdHJ1Y3QgbXQ2Mzk3X2NoaXAgKm10NjM5NywgaW50IHJlZywK
PiA+ID4gIAkJCQkgIGludCBpcnFiYXNlKQo+ID4gPiAgewo+ID4gPiAtCXVuc2lnbmVkIGludCBz
dGF0dXM7Cj4gPiA+ICsJdW5zaWduZWQgaW50IHN0YXR1cyA9IDA7Cj4gPiAKPiA+IFRoaXMgbG9v
a3MgbGlrZSBhbiB1bnJlbGF0ZWQgY2hhbmdlLCBubz8KPiA+IAo+IAo+IEl0IGlzIHRvIGZpeCB0
aGUgY292ZXJpdHkgZGVmZWN0LgoKV2hpY2ggaXNuJ3QgbWVudGlvbmVkIGluIHRoZSBjb21taXQg
bG9nIGFuZCBkb2Vzbid0IGhhdmUgYW55dGhpbmcgdG8KZG8gd2l0aCB0aGlzIHBhdGNoLiAgVGh1
cyBpdCBzaG91bGQgYmUgaW4gYSBzZXBhcmF0ZSBwYXRjaCwgYnV0IEknbQpub3QgZ29pbmcgdG8g
bG9zZSBhbnkgc2xlZXAgb3ZlciBpdC4KCj4gPiA+ICAJaW50IGksIGlycSwgcmV0Owo+ID4gPiAg
Cj4gPiA+ICAJcmV0ID0gcmVnbWFwX3JlYWQobXQ2Mzk3LT5yZWdtYXAsIHJlZywgJnN0YXR1cyk7
Cj4gPiA+IEBAIC0xMjgsNiArMTI5LDM2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaXJxX2RvbWFp
bl9vcHMgbXQ2Mzk3X2lycV9kb21haW5fb3BzID0gewo+ID4gPiAgCS5tYXAgPSBtdDYzOTdfaXJx
X2RvbWFpbl9tYXAsCj4gPiA+ICB9Owo+ID4gCj4gPiBPdGhlciB0aGFuIHRoYXQuCj4gPiAKPiA+
IEZvciBteSBvd24gcmVmZXJlbmNlOgo+ID4gICBBY2tlZC1mb3ItTUZELWJ5OiBMZWUgSm9uZXMg
PGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+ID4gCj4gVGhhbmtzIGZvciB5b3VyIHJldmlldy4gSSB3
aWxsIGFkZCBpdCBpbiB0aGUgbmV4dCB2ZXJzaW9uLgo+IAoKLS0gCkxlZSBKb25lcyBb5p2O55C8
5pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBz
b3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdp
dHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
