Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC69EFA75
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 11:07:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yVZ/OoZrFzNi40AmxGk6W9YQ7w6ZPgvmzvjttnK+gAc=; b=VTHmjgGFkqryKr
	7kfrO5DmKr3ehkypBnSGrqovw/2LtQcpLm0ZXvmrPJHP45uYp3WAAGLT+l7Emoy6faD4XrVkpz7Su
	n/tt+WnKC5wUirOfP6QlXUzFXf2fJliRpJqSf8J5/aFFPm0q1GGM/DWGGtdQGb+FO9OGlYYukqKWl
	u6US/TgQ2zfH8aD9bcN5HXam/dsnXO0gVcl7dZPG3nXSuW6vz7dk36+eaFTxX8gKJZyMp4IAqUOWD
	9xWYazoRM8PGjkFBE+hfdonx7po+V7P1NVZ+6zqU85M1DQTaFiLhbcf1XDSc+xvqRCM/gX9bB+hpr
	RK3vWw0rwEilc6ijxq/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRvkP-0001Ml-W9; Tue, 05 Nov 2019 10:07:38 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRvkH-0001LP-TF
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 10:07:31 +0000
Received: by mail-qk1-x741.google.com with SMTP id m16so20224719qki.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 02:07:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=CNinsozng4H5Ktf3rvHjg3jRh9c0NmbS8rmNz478Pe8=;
 b=VEO755CMkWYZ+HZKjDSD2H8hkfHFILjBODJuUT7dyLJ2VacVXn30QPaKiB2aJr3dFj
 UUfvdFj6N0LnOAXPpkBIo09s0N5k2JqZAjoxblyCjvylpwFmN2gB0t7J2CGgbJNVhTmU
 Xcr/1pKIJxSCw64FjFq0CtKjgFgTUfNVSSd9U2EvGxP5Nf0q3JVy0Cb5eF45Tr0S+WOE
 0zKyddIay8ulBTDwkAa9yHfkd+eUs/9amxlaNsSWxZ5fur+Ya/bxWYGvrXrX0FWTo8vt
 H4Dh97ZxjUuuKm7+8LrgGpf1cTXIb42yHnSZIPyQugGcQMUmFsLEOAZC5E/3rGykiu40
 5mcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=CNinsozng4H5Ktf3rvHjg3jRh9c0NmbS8rmNz478Pe8=;
 b=bKuZ6Z01prfRihTj7ASCzWKFHhsVN6gUs3WHWptcHrxjsnQnOfZ3jOE/O1polVZ4gF
 9Dhq5K84VRh12qoXHbdbDJVes1dBQ2RjhzKPIT3++DASTk6Fm6zKnQGBgevQcPnIkQqU
 mRaDVdlouWHTOdzAHU+MnIWf96kZFSxDIyYJGc1TPe0a0N2c0k5uZgZ4Ik/Th5uogjgf
 QpgtOUUin/LGKgH8h8aAYIH+1yKGcGcJUktNeyXHdADlfvwuhHc2T3jBjbfWvh/oVdcs
 L3ZZKvgSVvOROJDmLsv4ol2ApojYG28mMT7W1pnjPwSvc0/F/OGPulgU3oMI1DRfUeoe
 an2g==
X-Gm-Message-State: APjAAAXQriIiTCSWjC3gCh9TsjuPMsAIEu5n98+o6THcIOwQbSfGTmxK
 LfMgr/sWSw/UiFZBl86hylimZr0AKgssS58yNPpz3Q==
X-Google-Smtp-Source: APXvYqw9bNDchC8BBBpEdelYeypgmRQMVHiuZm+RJGKYBw6ulBdYAA7iNafLNDZB2gz23179UM0YXlSw8t9Sm2JcFdA=
X-Received: by 2002:ae9:eb07:: with SMTP id b7mr7705763qkg.104.1572948447803; 
 Tue, 05 Nov 2019 02:07:27 -0800 (PST)
MIME-Version: 1.0
References: <20191031123040.26316-1-benjamin.gaignard@st.com>
 <20191031123040.26316-3-benjamin.gaignard@st.com>
 <20191103110841.3ad3ecfb@archlinux>
In-Reply-To: <20191103110841.3ad3ecfb@archlinux>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Tue, 5 Nov 2019 11:07:16 +0100
Message-ID: <CA+M3ks5sZ6wwV-V+HCLC8OLdeLqrxK0Ga-pXTsdktQErbMOk4g@mail.gmail.com>
Subject: Re: [PATCH 2/4] dt-bindings: iio: timer: Convert stm32 IIO trigger
 bindings to json-schema
To: Jonathan Cameron <jic23@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_020729_950658_CB609DB0 
X-CRM114-Status: GOOD (  20.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Lars-Peter Clausen <lars@metafoo.de>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Linux PWM List <linux-pwm@vger.kernel.org>, linux-iio@vger.kernel.org,
 Hartmut Knaack <knaack.h@gmx.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, u.kleine-koenig@pengutronix.de,
 Fabrice Gasnier <fabrice.gasnier@st.com>, Lee Jones <lee.jones@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgZGltLiAzIG5vdi4gMjAxOSDDoCAxMjowOCwgSm9uYXRoYW4gQ2FtZXJvbiA8amljMjNAa2Vy
bmVsLm9yZz4gYSDDqWNyaXQgOgo+Cj4gT24gVGh1LCAzMSBPY3QgMjAxOSAxMzozMDozOCArMDEw
MAo+IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBzdC5jb20+IHdyb3RlOgo+
Cj4gPiBDb252ZXJ0IHRoZSBTVE0zMiBJSU8gdHJpZ2dlciBiaW5kaW5nIHRvIERUIHNjaGVtYSBm
b3JtYXQgdXNpbmcganNvbi1zY2hlbWEKPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBH
YWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAc3QuY29tPgo+IEknbSBmYXIgZnJvbSBncmVhdCBv
biB0aGVzZSBhcyBzdGlsbCBoYXZlbid0IHRha2VuIHRoZSB0aW1lIEkgc2hvdWxkIHRvIGxlYXJu
Cj4gdGhlIHlhbWwgc3ludGF4IHByb3Blcmx5LiAgQSBmZXcgY29tbWVudHMgaW5saW5lIGhvd2V2
ZXIgYmFzZWQgbW9zdGx5IG9uIHRoaXMKPiBkb2Vzbid0IHF1aXRlIGxvb2sgbGlrZSBvdGhlciBv
bmVzIEkndmUgc2VlbiByZWNlbnRseS4KPgo+IFRoYW5rcywKPgo+IEpvbmF0aGFuCj4KPiA+IC0t
LQo+ID4gIC4uLi9iaW5kaW5ncy9paW8vdGltZXIvc3Qsc3RtMzItdGltZXItdHJpZ2dlci55YW1s
IHwgNDQgKysrKysrKysrKysrKysrKysrKysrKwo+ID4gIC4uLi9iaW5kaW5ncy9paW8vdGltZXIv
c3RtMzItdGltZXItdHJpZ2dlci50eHQgICAgIHwgMjUgLS0tLS0tLS0tLS0tCj4gPiAgMiBmaWxl
cyBjaGFuZ2VkLCA0NCBpbnNlcnRpb25zKCspLCAyNSBkZWxldGlvbnMoLSkKPiA+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2lpby90aW1lci9z
dCxzdG0zMi10aW1lci10cmlnZ2VyLnlhbWwKPiA+ICBkZWxldGUgbW9kZSAxMDA2NDQgRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2lpby90aW1lci9zdG0zMi10aW1lci10cmlnZ2Vy
LnR4dAo+ID4KPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvaWlvL3RpbWVyL3N0LHN0bTMyLXRpbWVyLXRyaWdnZXIueWFtbCBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9paW8vdGltZXIvc3Qsc3RtMzItdGltZXItdHJpZ2dlci55YW1s
Cj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi4xYzhjOGI1
NWU4Y2QKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9paW8vdGltZXIvc3Qsc3RtMzItdGltZXItdHJpZ2dlci55YW1sCj4gPiBAQCAt
MCwwICsxLDQ0IEBACj4gPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb25s
eSBPUiBCU0QtMi1DbGF1c2UpCj4gPiArJVlBTUwgMS4yCj4gPiArLS0tCj4gPiArJGlkOiBodHRw
Oi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9paW8vdGltZXIvc3Qsc3RtMzItdGltZXItdHJpZ2dl
ci55YW1sIwo+ID4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMv
Y29yZS55YW1sIwo+ID4gKwo+ID4gK3RpdGxlOiBTVE1pY3JvZWxlY3Ryb25pY3MgU1RNMzIgVGlt
ZXJzIElJTyB0aW1lciBiaW5kaW5ncwo+ID4gKwo+ID4gK21haW50YWluZXJzOgo+ID4gKyAgLSBC
ZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAc3QuY29tPgo+ID4gKyAgLSBGYWJy
aWNlIEdhc25pZXIgPGZhYnJpY2UuZ2FzbmllckBzdC5jb20+Cj4gPiArCj4gPiArcHJvcGVydGll
czoKPiA+ICsgICRub2RlbWFuZToKPgo+IG5vZGVuYW1lPwoKVGhhdCB3aWxsIGJlIGluIHYyCgo+
Cj4gPiArICAgIHBhdHRlcm46ICJedGltZXJAWzAtOV0rJCIKPiA+ICsgICAgdHlwZTogb2JqZWN0
Cj4gPiArCj4gPiArICAgIGRlc2NyaXB0aW9uOgo+ID4gKyAgICAgIG11c3QgYmUgYSBzdWItbm9k
ZSBvZiBhbiBTVE0zMiBUaW1lciBkZXZpY2UgdHJlZSBub2RlCj4gPiArCj4gPiArICAgIHByb3Bl
cnRpZXM6Cj4gPiArICAgICAgY29tcGF0aWJsZToKPiA+ICsgICAgICAgIG9uZU9mOgo+Cj4gZW51
bSBpcyBJIHRoaW5rIHByZWZlcnJlZCBmb3IgdGhlc2UuCgphcyB5b3UgbGlrZSBpdCB3aWxsIGJl
IGluIHYyCgo+Cj4gPiArICAgICAgICAgIC0gY29uc3Q6IHN0LHN0bTMyLXRpbWVyLXRyaWdnZXIK
PiA+ICsgICAgICAgICAgLSBjb25zdDogc3Qsc3RtMzJoNy10aW1lci10cmlnZ2VyCj4gPiArCj4g
PiArICAgICAgcmVnOiB0cnVlCj4KPiBOb3JtYWxseSBzb21lIGluZm8gZm9yIHdoYXQgdGhlIHJl
ZyB2YWx1ZSBpcy4uCkkgY2FuJ3QgcHV0ICJkZXNjcmlwdGlvbiIgb24gdGhpcyBmaWVsZCBiZWNh
dXNlIHRoZSBzeW50YXggZG9lc24ndCBhbGxvdyBpdC4KSSB3aWxsIGFkZCBhIGNvbW1lbnQgaW4g
djIgdG8gZXhwbGFpbiB3aGF0IHJlZyBpcy4KClRoYW5rcyBmb3IgeW91ciByZXZpZXcuCkJlbmph
bWluCj4KPiA+ICsKPiA+ICsgICAgcmVxdWlyZWQ6Cj4gPiArICAgICAgLSBjb21wYXRpYmxlCj4g
PiArICAgICAgLSByZWcKPiA+ICsKPiA+ICtleGFtcGxlczoKPiA+ICsgIC0gfAo+ID4gKyAgICB0
aW1lcnMyOiB0aW1lckA0MDAwMDAwMCB7Cj4gPiArICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47
Cj4gPiArICAgICAgI3NpemUtY2VsbHMgPSA8MD47Cj4gPiArICAgICAgdGltZXJAMCB7Cj4gPiAr
ICAgICAgICBjb21wYXRpYmxlID0gInN0LHN0bTMyLXRpbWVyLXRyaWdnZXIiOwo+ID4gKyAgICAg
ICAgcmVnID0gPDA+Owo+ID4gKyAgICAgIH07Cj4gPiArICAgIH07Cj4gPiArCj4gPiArLi4uCj4g
PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2lpby90aW1l
ci9zdG0zMi10aW1lci10cmlnZ2VyLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9paW8vdGltZXIvc3RtMzItdGltZXItdHJpZ2dlci50eHQKPiA+IGRlbGV0ZWQgZmlsZSBt
b2RlIDEwMDY0NAo+ID4gaW5kZXggYjhlOGM3NjlkNDM0Li4wMDAwMDAwMDAwMDAKPiA+IC0tLSBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9paW8vdGltZXIvc3RtMzItdGltZXIt
dHJpZ2dlci50eHQKPiA+ICsrKyAvZGV2L251bGwKPiA+IEBAIC0xLDI1ICswLDAgQEAKPiA+IC1T
VE1pY3JvZWxlY3Ryb25pY3MgU1RNMzIgVGltZXJzIElJTyB0aW1lciBiaW5kaW5ncwo+ID4gLQo+
ID4gLU11c3QgYmUgYSBzdWItbm9kZSBvZiBhbiBTVE0zMiBUaW1lcnMgZGV2aWNlIHRyZWUgbm9k
ZS4KPiA+IC1TZWUgLi4vbWZkL3N0bTMyLXRpbWVycy50eHQgZm9yIGRldGFpbHMgYWJvdXQgdGhl
IHBhcmVudCBub2RlLgo+ID4gLQo+ID4gLVJlcXVpcmVkIHBhcmFtZXRlcnM6Cj4gPiAtLSBjb21w
YXRpYmxlOiAgICAgICAgTXVzdCBiZSBvbmUgb2Y6Cj4gPiAtICAgICAgICAgICAgICJzdCxzdG0z
Mi10aW1lci10cmlnZ2VyIgo+ID4gLSAgICAgICAgICAgICAic3Qsc3RtMzJoNy10aW1lci10cmln
Z2VyIgo+ID4gLS0gcmVnOiAgICAgICAgICAgICAgIElkZW50aWZ5IHRyaWdnZXIgaGFyZHdhcmUg
YmxvY2suCj4gPiAtCj4gPiAtRXhhbXBsZToKPiA+IC0gICAgIHRpbWVyc0A0MDAxMDAwMCB7Cj4g
PiAtICAgICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ID4gLSAgICAgICAgICAgICAj
c2l6ZS1jZWxscyA9IDwwPjsKPiA+IC0gICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJzdCxzdG0z
Mi10aW1lcnMiOwo+ID4gLSAgICAgICAgICAgICByZWcgPSA8MHg0MDAxMDAwMCAweDQwMD47Cj4g
PiAtICAgICAgICAgICAgIGNsb2NrcyA9IDwmcmNjIDAgMTYwPjsKPiA+IC0gICAgICAgICAgICAg
Y2xvY2stbmFtZXMgPSAiaW50IjsKPiA+IC0KPiA+IC0gICAgICAgICAgICAgdGltZXJAMCB7Cj4g
PiAtICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJzdCxzdG0zMi10aW1lci10cmln
Z2VyIjsKPiA+IC0gICAgICAgICAgICAgICAgICAgICByZWcgPSA8MD47Cj4gPiAtICAgICAgICAg
ICAgIH07Cj4gPiAtICAgICB9Owo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
