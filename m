Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 466F2192467
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 10:42:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WprMVBC0Fq0gVTDVzBwdaRs0sR/ro/BW0pZTyIAHt/4=; b=ufzTBlN98J4qdT
	ctIiUoSCUzRB1BHPnzL1H/I99uWYNjzZQgrRtXLiHWccMtbvAJc22rYFJu49XerGvrTT+cqs+FhZf
	rJvwsrrtees7S3vdr9DxeTxG7KpU2c9oQEP277xFPXGBghgNRJjpH5jEFaq4ThFxEUNGAqRAIoo+/
	O+slU9jpRrtB0gydOGXmY/Ic+t2q4L2oLPGoP1z/xYwbVFzgIicVBGOj0EvIQTfQALDDDPpt/jQhB
	dlLXmECxRtGBh3e+CVLPfL8IMuSV8UgLaeyiMgngdM4xlTm8+lOFD37UpoH6bD3LkQubfEb5zFM/B
	3ra9AeIflIdsFlPwPApQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH2Ym-0002yr-De; Wed, 25 Mar 2020 09:42:52 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH2Ya-0002wA-2M
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 09:42:42 +0000
Received: by mail-wr1-x441.google.com with SMTP id u10so2033439wro.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 02:42:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=vRDeYiMCG4XXoUnQTgsGkl8d/lvzN+sIbey00XaX5XM=;
 b=QDwl2z2ZAKFLg9mCSI/yr6ImooOPb5Fbs+CphasVocI/0SI+R5F+v5p7dMsBsVu/sm
 nj+rxcBs7M7oOB3To5sLYPfUhGzDtzeVXP9I08hkoRRQAkp32UihUKBCYgPVs1vtS3Qa
 PbO0r02L+BfDBd7P4MzuC1Sn0jbIB5gVhiw43nLmKg98NPo4pxshHKRNPWtb3wumxT17
 oFXTCCi/KZpHwm0F5Sph+oQIeujRyngu1j6ae4xUSS6A9TaRjEBRg3kxWAeWar/0cYej
 he5RWQlC0Ib8sddoq57miNpslYhx9gGXdmjZHuLocgjCeR7MQWMSKw9nt5HCA9DMMftx
 gBbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=vRDeYiMCG4XXoUnQTgsGkl8d/lvzN+sIbey00XaX5XM=;
 b=fBfegI0sJ7WX/GzDtf7MWjquIb+dOw8+IEDTBCalSaH7YKfE3hvAkK01nZ2TrFK0qZ
 Jch0H3bUfunjHiAeq3TrcD9dzI0mgsMAF+86PFL7ACDMd5Tgl8SZr+kEndfXsvySULQe
 vjRD+ocOeixER4Is3xNDLDQrIByj17uNFpxijpCWsr9WQEJ1EzSFNkmkoLWX+v1yr2Jp
 hwpntCRvBMQGpjwP1aIJxJ72inWD8/mCwwN/uw/HpNFaFHmvDHy52Q6Bd66eRpxj5re2
 w9qsWVkNcfMXfGJzKwHAkxbZGK3R4FIPCaCSRqODk5nCBBak/dJlpx2VanIqH4IdmeFa
 qVNg==
X-Gm-Message-State: ANhLgQ0LH9Ww/EFsv3BR+nbO9/nbJb7eIqXhkJGnopm5MebAeK9usqeg
 nZjRukKAFsuLQBt0ZX83Pp5pJA==
X-Google-Smtp-Source: ADFU+vur7iuRbEAFb8kp1fAHSb42z9lGv7s7JibA/ubrGXmJU2SV6uYfUAdsdWWve6Y7oB1Tmo891A==
X-Received: by 2002:adf:9ccb:: with SMTP id h11mr2382792wre.22.1585129358113; 
 Wed, 25 Mar 2020 02:42:38 -0700 (PDT)
Received: from dell ([2.27.35.213])
 by smtp.gmail.com with ESMTPSA id h26sm8323017wmb.19.2020.03.25.02.42.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 02:42:37 -0700 (PDT)
Date: Wed, 25 Mar 2020 09:43:26 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Subject: Re: [PATCH v10 3/5] mfd: Add support for the MediaTek MT6358 PMIC
Message-ID: <20200325094326.GH442973@dell>
References: <1583918223-22506-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1583918223-22506-4-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583918223-22506-4-git-send-email-hsin-hsiung.wang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_024240_670063_DF52C056 
X-CRM114-Status: GOOD (  26.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 Frank Wunderlich <frank-w@public-files.de>,
 Josef Friedl <josef.friedl@speed.at>, Ran Bi <ran.bi@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Sebastian Reichel <sre@kernel.org>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, linux-pm@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAxMSBNYXIgMjAyMCwgSHNpbi1Ic2l1bmcgV2FuZyB3cm90ZToKCj4gVGhpcyBhZGRz
IHN1cHBvcnQgZm9yIHRoZSBNZWRpYVRlayBNVDYzNTggUE1JQy4gVGhpcyBpcyBhCj4gbXVsdGlm
dW5jdGlvbiBkZXZpY2Ugd2l0aCB0aGUgZm9sbG93aW5nIHN1YiBtb2R1bGVzOgo+IAo+IC0gUmVn
dWxhdG9yCj4gLSBSVEMKPiAtIENvZGVjCj4gLSBJbnRlcnJ1cHQKPiAKPiBJdCBpcyBpbnRlcmZh
Y2VkIHRvIHRoZSBob3N0IGNvbnRyb2xsZXIgdXNpbmcgU1BJIGludGVyZmFjZQo+IGJ5IGEgcHJv
cHJpZXRhcnkgaGFyZHdhcmUgY2FsbGVkIFBNSUMgd3JhcHBlciBvciBwd3JhcC4KPiBNVDYzNTgg
TUZEIGlzIGEgY2hpbGQgZGV2aWNlIG9mIHRoZSBwd3JhcC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBI
c2luLUhzaXVuZyBXYW5nIDxoc2luLWhzaXVuZy53YW5nQG1lZGlhdGVrLmNvbT4KPiAtLS0KPiAg
ZHJpdmVycy9tZmQvTWFrZWZpbGUgICAgICAgICAgICAgICAgIHwgICAyICstCj4gIGRyaXZlcnMv
bWZkL210NjM1OC1pcnEuYyAgICAgICAgICAgICB8IDIzNiArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKwo+ICBkcml2ZXJzL21mZC9tdDYzOTctY29yZS5jICAgICAgICAgICAgfCAgNTUgKysr
KysrLQo+ICBpbmNsdWRlL2xpbnV4L21mZC9tdDYzNTgvY29yZS5oICAgICAgfCAxNTggKysrKysr
KysrKysrKysrKysrKysKPiAgaW5jbHVkZS9saW51eC9tZmQvbXQ2MzU4L3JlZ2lzdGVycy5oIHwg
MjgyICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIGluY2x1ZGUvbGludXgv
bWZkL210NjM5Ny9jb3JlLmggICAgICB8ICAgMyArCj4gIDYgZmlsZXMgY2hhbmdlZCwgNzMxIGlu
c2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L21mZC9tdDYzNTgtaXJxLmMKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvbWZk
L210NjM1OC9jb3JlLmgKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvbWZkL210
NjM1OC9yZWdpc3RlcnMuaAo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21mZC9NYWtlZmlsZSBi
L2RyaXZlcnMvbWZkL01ha2VmaWxlCj4gaW5kZXggYjgzZjE3Mi4uOWFmMTQxNCAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL21mZC9NYWtlZmlsZQo+ICsrKyBiL2RyaXZlcnMvbWZkL01ha2VmaWxlCj4g
QEAgLTIzOCw3ICsyMzgsNyBAQCBvYmotJChDT05GSUdfSU5URUxfU09DX1BNSUMpCSs9IGludGVs
LXNvYy1wbWljLm8KPiAgb2JqLSQoQ09ORklHX0lOVEVMX1NPQ19QTUlDX0JYVFdDKQkrPSBpbnRl
bF9zb2NfcG1pY19ieHR3Yy5vCj4gIG9iai0kKENPTkZJR19JTlRFTF9TT0NfUE1JQ19DSFRXQykJ
Kz0gaW50ZWxfc29jX3BtaWNfY2h0d2Mubwo+ICBvYmotJChDT05GSUdfSU5URUxfU09DX1BNSUNf
Q0hURENfVEkpCSs9IGludGVsX3NvY19wbWljX2NodGRjX3RpLm8KPiAtbXQ2Mzk3LW9ianMJOj0g
bXQ2Mzk3LWNvcmUubyBtdDYzOTctaXJxLm8KPiArbXQ2Mzk3LW9ianMJCQk6PSBtdDYzOTctY29y
ZS5vIG10NjM5Ny1pcnEubyBtdDYzNTgtaXJxLm8KPiAgb2JqLSQoQ09ORklHX01GRF9NVDYzOTcp
CSs9IG10NjM5Ny5vCj4gIG9iai0kKENPTkZJR19JTlRFTF9TT0NfUE1JQ19NUkZMRCkJKz0gaW50
ZWxfc29jX3BtaWNfbXJmbGQubwo+ICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZmQvbXQ2MzU4
LWlycS5jIGIvZHJpdmVycy9tZmQvbXQ2MzU4LWlycS5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQK
PiBpbmRleCAwMDAwMDAwLi4wMjJlNWY1Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMv
bWZkL210NjM1OC1pcnEuYwo+IEBAIC0wLDAgKzEsMjM2IEBACj4gKy8vIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyOiBHUEwtMi4wCj4gKy8vCj4gKy8vIENvcHlyaWdodCAoYykgMjAxOSBNZWRpYVRl
ayBJbmMuCgpUaGlzIGlzIG91dCBvZiBkYXRlLgoKPiArI2luY2x1ZGUgPGxpbnV4L2ludGVycnVw
dC5oPgo+ICsjaW5jbHVkZSA8bGludXgvbWZkL210NjM1OC9jb3JlLmg+Cj4gKyNpbmNsdWRlIDxs
aW51eC9tZmQvbXQ2MzU4L3JlZ2lzdGVycy5oPgo+ICsjaW5jbHVkZSA8bGludXgvbWZkL210NjM5
Ny9jb3JlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KPiArI2luY2x1ZGUgPGxpbnV4
L29mLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9vZl9kZXZpY2UuaD4KPiArI2luY2x1ZGUgPGxpbnV4
L29mX2lycS5oPgo+ICsjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4gKyNpbmNs
dWRlIDxsaW51eC9yZWdtYXAuaD4KPiArCj4gK3N0YXRpYyBzdHJ1Y3QgaXJxX3RvcF90IG10NjM1
OF9pbnRzW10gPSB7Cj4gKwlNVDYzNThfVE9QX0dFTihCVUNLKSwKPiArCU1UNjM1OF9UT1BfR0VO
KExETyksCj4gKwlNVDYzNThfVE9QX0dFTihQU0MpLAo+ICsJTVQ2MzU4X1RPUF9HRU4oU0NLKSwK
PiArCU1UNjM1OF9UT1BfR0VOKEJNKSwKPiArCU1UNjM1OF9UT1BfR0VOKEhLKSwKPiArCU1UNjM1
OF9UT1BfR0VOKEFVRCksCj4gKwlNVDYzNThfVE9QX0dFTihNSVNDKSwKPiArfTsKPiArCj4gK3N0
YXRpYyB2b2lkIHBtaWNfaXJxX2VuYWJsZShzdHJ1Y3QgaXJxX2RhdGEgKmRhdGEpCj4gK3sKPiAr
CXVuc2lnbmVkIGludCBod2lycSA9IGlycWRfdG9faHdpcnEoZGF0YSk7Cj4gKwlzdHJ1Y3QgbXQ2
Mzk3X2NoaXAgKmNoaXAgPSBpcnFfZGF0YV9nZXRfaXJxX2NoaXBfZGF0YShkYXRhKTsKCjYzOTc/
CgpUaGlzIGRvZXMgbWFrZSBtZSB3b25kZXIgaG93IGRpZmZlcmVudCB0aGlzIGZpbGUgaXMgdG8g
dGhlIGV4aXN0aW5nCnN1cHBvcnQgZm9yIHRoZSBNVDYzOTcuICBXaGF0IGlzIHRoZSBqdXN0aWZp
Y2F0aW9uIGZvciBub3QgZXh0ZW5kaW5nCnRoYXQgaW5zdGVhZCBvZiBjcmVhdGluZyBhIGJyYW5k
IG5ldyBmaWxlPwoKPiArCXN0cnVjdCBwbWljX2lycV9kYXRhICppcnFkID0gY2hpcC0+aXJxX2Rh
dGE7Cj4gKwo+ICsJaXJxZC0+ZW5hYmxlX2h3aXJxW2h3aXJxXSA9IHRydWU7Cj4gK30KPiArCj4g
K3N0YXRpYyB2b2lkIHBtaWNfaXJxX2Rpc2FibGUoc3RydWN0IGlycV9kYXRhICpkYXRhKQo+ICt7
Cj4gKwl1bnNpZ25lZCBpbnQgaHdpcnEgPSBpcnFkX3RvX2h3aXJxKGRhdGEpOwo+ICsJc3RydWN0
IG10NjM5N19jaGlwICpjaGlwID0gaXJxX2RhdGFfZ2V0X2lycV9jaGlwX2RhdGEoZGF0YSk7Cj4g
KwlzdHJ1Y3QgcG1pY19pcnFfZGF0YSAqaXJxZCA9IGNoaXAtPmlycV9kYXRhOwo+ICsKPiArCWly
cWQtPmVuYWJsZV9od2lycVtod2lycV0gPSBmYWxzZTsKPiArfQo+ICsKPiArc3RhdGljIHZvaWQg
cG1pY19pcnFfbG9jayhzdHJ1Y3QgaXJxX2RhdGEgKmRhdGEpCj4gK3sKPiArCXN0cnVjdCBtdDYz
OTdfY2hpcCAqY2hpcCA9IGlycV9kYXRhX2dldF9pcnFfY2hpcF9kYXRhKGRhdGEpOwo+ICsKPiAr
CW11dGV4X2xvY2soJmNoaXAtPmlycWxvY2spOwo+ICt9Cj4gKwo+ICtzdGF0aWMgdm9pZCBwbWlj
X2lycV9zeW5jX3VubG9jayhzdHJ1Y3QgaXJxX2RhdGEgKmRhdGEpCj4gK3sKPiArCXVuc2lnbmVk
IGludCBpLCB0b3BfZ3AsIGdwX29mZnNldCwgZW5fcmVnLCBpbnRfcmVncywgc2hpZnQ7Cj4gKwlz
dHJ1Y3QgbXQ2Mzk3X2NoaXAgKmNoaXAgPSBpcnFfZGF0YV9nZXRfaXJxX2NoaXBfZGF0YShkYXRh
KTsKPiArCXN0cnVjdCBwbWljX2lycV9kYXRhICppcnFkID0gY2hpcC0+aXJxX2RhdGE7Cj4gKwo+
ICsJZm9yIChpID0gMDsgaSA8IGlycWQtPm51bV9wbWljX2lycXM7IGkrKykgewo+ICsJCWlmIChp
cnFkLT5lbmFibGVfaHdpcnFbaV0gPT0gaXJxZC0+Y2FjaGVfaHdpcnFbaV0pCj4gKwkJCWNvbnRp
bnVlOwo+ICsKPiArCQkvKiBGaW5kIG91dCB0aGUgSVJRIGdyb3VwICovCj4gKwkJdG9wX2dwID0g
MDsKPiArCQl3aGlsZSAoKHRvcF9ncCArIDEpIDwgaXJxZC0+bnVtX3RvcCAmJgo+ICsJCSAgICAg
ICBpID49IG10NjM1OF9pbnRzW3RvcF9ncCArIDFdLmh3aXJxX2Jhc2UpCj4gKwkJCXRvcF9ncCsr
Owo+ICsKPiArCQkvKiBGaW5kIHRoZSBpcnEgcmVnaXN0ZXJzICovCgpOaXQ6ICJJUlEiCgo+ICsJ
CWdwX29mZnNldCA9IGkgLSBtdDYzNThfaW50c1t0b3BfZ3BdLmh3aXJxX2Jhc2U7Cj4gKwkJaW50
X3JlZ3MgPSBncF9vZmZzZXQgLyBNVDYzNThfUkVHX1dJRFRIOwo+ICsJCXNoaWZ0ID0gZ3Bfb2Zm
c2V0ICUgTVQ2MzU4X1JFR19XSURUSDsKPiArCQllbl9yZWcgPSBtdDYzNThfaW50c1t0b3BfZ3Bd
LmVuX3JlZyArCj4gKwkJCSAobXQ2MzU4X2ludHNbdG9wX2dwXS5lbl9yZWdfc2hpZnQgKiBpbnRf
cmVncyk7Cj4gKwo+ICsJCXJlZ21hcF91cGRhdGVfYml0cyhjaGlwLT5yZWdtYXAsIGVuX3JlZywg
QklUKHNoaWZ0KSwKPiArCQkJCSAgIGlycWQtPmVuYWJsZV9od2lycVtpXSA8PCBzaGlmdCk7Cj4g
Kwo+ICsJCWlycWQtPmNhY2hlX2h3aXJxW2ldID0gaXJxZC0+ZW5hYmxlX2h3aXJxW2ldOwo+ICsJ
fQo+ICsJbXV0ZXhfdW5sb2NrKCZjaGlwLT5pcnFsb2NrKTsKPiArfQoKWy4uLl0KCj4gK2ludCBt
dDYzNThfaXJxX2luaXQoc3RydWN0IG10NjM5N19jaGlwICpjaGlwKQo+ICt7Cj4gKwlpbnQgaSwg
aiwgcmV0Owo+ICsJc3RydWN0IHBtaWNfaXJxX2RhdGEgKmlycWQ7Cj4gKwo+ICsJaXJxZCA9IGRl
dm1fa3phbGxvYyhjaGlwLT5kZXYsIHNpemVvZihzdHJ1Y3QgcG1pY19pcnFfZGF0YSAqKSwKCnNp
emVvZigqaXJxZCkKClsuLi5dCgo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGNoaXBfZGF0YSBtdDYz
OTdfY29yZSA9IHsKPiAgCS5jaWRfYWRkciA9IE1UNjM5N19DSUQsCj4gIAkuY2lkX3NoaWZ0ID0g
MCwKPiBAQCAtMTU0LDE5ICsxODQsMzMgQEAgc3RhdGljIGludCBtdDYzOTdfcHJvYmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCWlmIChwbWljLT5pcnEgPD0gMCkKPiAgCQlyZXR1
cm4gcG1pYy0+aXJxOwo+ICAKPiAtCXJldCA9IG10NjM5N19pcnFfaW5pdChwbWljKTsKPiAtCWlm
IChyZXQpCj4gLQkJcmV0dXJuIHJldDsKPiAtCj4gIAlzd2l0Y2ggKHBtaWMtPmNoaXBfaWQpIHsK
PiAgCWNhc2UgTVQ2MzIzX0NISVBfSUQ6Cj4gKwkJcmV0ID0gbXQ2Mzk3X2lycV9pbml0KHBtaWMp
Owo+ICsJCWlmIChyZXQpCj4gKwkJCXJldHVybiByZXQ7Cj4gKwo+ICAJCXJldCA9IGRldm1fbWZk
X2FkZF9kZXZpY2VzKCZwZGV2LT5kZXYsIFBMQVRGT1JNX0RFVklEX05PTkUsCj4gIAkJCQkJICAg
bXQ2MzIzX2RldnMsIEFSUkFZX1NJWkUobXQ2MzIzX2RldnMpLAo+ICAJCQkJCSAgIE5VTEwsIDAs
IHBtaWMtPmlycV9kb21haW4pOwo+ICAJCWJyZWFrOwo+ICAKPiArCWNhc2UgTVQ2MzU4X0NISVBf
SUQ6Cj4gKwkJcmV0ID0gbXQ2MzU4X2lycV9pbml0KHBtaWMpOwo+ICsJCWlmIChyZXQpCj4gKwkJ
CXJldHVybiByZXQ7Cj4gKwo+ICsJCXJldCA9IGRldm1fbWZkX2FkZF9kZXZpY2VzKCZwZGV2LT5k
ZXYsIFBMQVRGT1JNX0RFVklEX05PTkUsCj4gKwkJCQkJICAgbXQ2MzU4X2RldnMsIEFSUkFZX1NJ
WkUobXQ2MzU4X2RldnMpLAo+ICsJCQkJCSAgIE5VTEwsIDAsIHBtaWMtPmlycV9kb21haW4pOwoK
SW4gYSBzdWJzZXF1ZW50IHBhdGNoIHlvdSBjYW4gY2hvb3NlIHRoZSBjb3JyZWN0IG10WFhYWF9k
ZXZzIHN0cnVjdHVyZQp0byBwYXNzIGFuZCBjYWxsIGRldm1fbWZkX2FkZF9kZXZpY2VzKCkgb25s
eSBvbmNlIGJlbG93IHRoZSBzd2l0Y2goKS4KCj4gKwkJYnJlYWs7Cj4gKwo+ICAJY2FzZSBNVDYz
OTFfQ0hJUF9JRDoKPiAgCWNhc2UgTVQ2Mzk3X0NISVBfSUQ6Cj4gKwkJcmV0ID0gbXQ2Mzk3X2ly
cV9pbml0KHBtaWMpOwo+ICsJCWlmIChyZXQpCj4gKwkJCXJldHVybiByZXQ7Cj4gKwo+ICAJCXJl
dCA9IGRldm1fbWZkX2FkZF9kZXZpY2VzKCZwZGV2LT5kZXYsIFBMQVRGT1JNX0RFVklEX05PTkUs
Cj4gIAkJCQkJICAgbXQ2Mzk3X2RldnMsIEFSUkFZX1NJWkUobXQ2Mzk3X2RldnMpLAo+ICAJCQkJ
CSAgIE5VTEwsIDAsIHBtaWMtPmlycV9kb21haW4pOwoKWy4uLl0KCi0tIApMZWUgSm9uZXMgW+ad
jueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9w
ZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8
IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
