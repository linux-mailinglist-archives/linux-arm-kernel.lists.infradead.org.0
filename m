Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B711ABC70
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 11:14:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qogG62U2djf/97ANn8wPt0w3ydT3ILRzlx1gdazvYw4=; b=fEHcJ1fOQH4nZd
	Mvi/ghKkY7LD261cZyDpmzbSTRsNoADcpz60UkyYZw/0s4ZJmXRREfhYR5/p+EFFQ3kIw/1jEbp1L
	t+2VFBT588BOItna0vcorA+k6/yvmJC5RbjOrW1Cc1+q/CaYBftqvclUTKc9im0Ljoq6wN3euae+J
	xHthsPK2/boFwjkQGBxCnoN+gOHOjJuPbcvBcPCgU3gksOoDxzKzRCMSZD7y9hEDDRCqOhF6V/bH7
	3A55e6eqoxwNPHwlp9zkJ8UtenNj1V2DSdnaI0x3dfTLK9u7Mssecmx441Lna8D+jiRQ0ugMms4h3
	X28Ttw2WvW4zdz7JI+8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP0ap-0002DJ-Ev; Thu, 16 Apr 2020 09:13:55 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP0ad-0002Av-3J
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 09:13:44 +0000
Received: by mail-wr1-x444.google.com with SMTP id j2so3908586wrs.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 02:13:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=AyKKf2vu9ets5qQ05mKeEx+H3HJdeMhyf7LDU6EPmvg=;
 b=h79u+RID/Tw8EjEr7PzOeW67I5riBs6/JV027laFW3VtXjta4zpbT4owqSzSYadzXI
 UooqVXoXGL1A8oAByZdeXkLIJKTO01hEePh4C5fzehOrUdnbfQ1pEs9kiyqYoA/KX+JH
 1qMRtfcJSHijAK2OGm7YZmCKbHczogdEeoL22Pw+vKfPbVBWs4ymX9eJohxZQNiYHrt4
 ev6JtRiaXOHosoQtEI6ZEvp9wcTaGhtxQIVftu4d8viJsibPKXtJvkzZsh+8sFdMla2G
 mZm9iRn+HrGu+Q6eydYFxopmA1r46j4zcJCjdDXVsTQRSFhEB8VLG7f5460IgaYT+mVk
 jnYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=AyKKf2vu9ets5qQ05mKeEx+H3HJdeMhyf7LDU6EPmvg=;
 b=r+sHr86/s4spf2DrdaYR9q8IfZ0wxaqKhceZYpwFZ3skRTmZqMD5+q+yzcOCUB0KBW
 h2Gzu6GNgl5qG8By0i+GZOAc4wrIPA0L9mTapfvwkF2g+WcRlCfuformvi7ErGr2Kzq4
 K20amSMedaRjzrBU2ddR8Z7r9R12WjRPbo0/oXjvGx0cjLuXw+1lpuFy8zQr4bhIkWmo
 aavEEc5QmznxWx82oOuAGFM6/2fiFkf3jbKOt8Ld2ZNaMrDcdRF7HKHITDh6SG3i67UR
 cIppcK6zL7c6AwJydovqIH2TLEE4S+M9aWlCwlgLe++mw2MZypWYgrTk/2L3thACoGLb
 LwCA==
X-Gm-Message-State: AGi0PuYZRQXAa8ZHs4aN56TVfvCukNQpVoe8nM328tdBQs2D8yGLaOI1
 uUbXivHntPo36AEnBOG+3JWDyQ==
X-Google-Smtp-Source: APiQypL6P5SXhhJYLq4NR+TEKXmQzYaSqAHnJaTlLyokBRKxP3wo+p/iZ1+/LSCv7ZJBVaCmcdxoSg==
X-Received: by 2002:a5d:68cf:: with SMTP id p15mr4801408wrw.139.1587028418328; 
 Thu, 16 Apr 2020 02:13:38 -0700 (PDT)
Received: from dell ([95.149.164.124])
 by smtp.gmail.com with ESMTPSA id b4sm21818100wrv.42.2020.04.16.02.13.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 02:13:37 -0700 (PDT)
Date: Thu, 16 Apr 2020 10:14:38 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Subject: Re: [PATCH v12 5/6] rtc: mt6397: Add support for the MediaTek MT6358
 RTC
Message-ID: <20200416091438.GA2167633@dell>
References: <1586333531-21641-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1586333531-21641-6-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586333531-21641-6-git-send-email-hsin-hsiung.wang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_021343_149669_8FDA4627 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Kate Stewart <kstewart@linuxfoundation.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 linux-rtc@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 Frank Wunderlich <frank-w@public-files.de>, Ran Bi <ran.bi@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, Alessandro Zummo <a.zummo@towertech.it>,
 Josef Friedl <josef.friedl@speed.at>, srv_heupstream@mediatek.com,
 Sebastian Reichel <sre@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAwOCBBcHIgMjAyMCwgSHNpbi1Ic2l1bmcgV2FuZyB3cm90ZToKCj4gRnJvbTogUmFu
IEJpIDxyYW4uYmlAbWVkaWF0ZWsuY29tPgo+IAo+IFRoaXMgYWRkIHN1cHBvcnQgZm9yIHRoZSBN
ZWRpYVRlayBNVDYzNTggUlRDLiBEcml2ZXIgdXNpbmcKPiBjb21wYXRpYmxlIGRhdGEgdG8gc3Rv
cmUgZGlmZmVyZW50IFJUQ19XUlRHUiBhZGRyZXNzIG9mZnNldC4KPiBUaGlzIHJlcGxhY2UgUlRD
X1dSVEdSIHRvIFJUQ19XUlRHUl9NVDYzMjMgaW4gbXQ2MzIzLXBvd2Vyb2ZmCj4gZHJpdmVyIHdo
aWNoIG9ubHkgbmVlZGVkIGJ5IGFybXY3IENQVSB3aXRob3V0IEFURi4KPiAKPiBSZXZpZXdlZC1i
eTogTmljb2xhcyBCb2ljaGF0IDxkcmlua2NhdEBjaHJvbWl1bS5vcmc+Cj4gUmV2aWV3ZWQtYnk6
IFlpbmdqb2UgQ2hlbiA8eWluZ2pvZS5jaGVuQG1lZGlhdGVrLmNvbT4KPiBBY2tlZC1ieTogQWxl
eGFuZHJlIEJlbGxvbmkgPGFsZXhhbmRyZS5iZWxsb25pQGJvb3RsaW4uY29tPgo+IEFja2VkLWJ5
OiBTZWJhc3RpYW4gUmVpY2hlbCA8c3JlQGtlcm5lbC5vcmc+Cj4gU2lnbmVkLW9mZi1ieTogUmFu
IEJpIDxyYW4uYmlAbWVkaWF0ZWsuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEhzaW4tSHNpdW5nIFdh
bmcgPGhzaW4taHNpdW5nLndhbmdAbWVkaWF0ZWsuY29tPgoKUGxlYXNlIHBsYWNlIHRoZXNlIGlu
IGNocm9ub2xvZ2ljYWwgb3JkZXIuICBUaGV5IHNob3VsZCBwcm92aWRlIHNvbWUKaGlzdG9yeSwg
cmF0aGVyIHRoYW4gYSB1bm9yZGVyZWQgc2xhYiBsaXN0IG9mIHJhbmRvbSBzaWduLW9mZnMuCgo+
IC0tLQo+ICBkcml2ZXJzL3Bvd2VyL3Jlc2V0L210NjMyMy1wb3dlcm9mZi5jIHwgIDIgKy0KPiAg
ZHJpdmVycy9ydGMvcnRjLW10NjM5Ny5jICAgICAgICAgICAgICB8IDE4ICsrKysrKysrKysrKysr
Ky0tLQo+ICBpbmNsdWRlL2xpbnV4L21mZC9tdDYzOTcvcnRjLmggICAgICAgIHwgIDkgKysrKysr
KystCj4gIDMgZmlsZXMgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkK
ClsuLi5dCgo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L21mZC9tdDYzOTcvcnRjLmggYi9p
bmNsdWRlL2xpbnV4L21mZC9tdDYzOTcvcnRjLmgKPiBpbmRleCA3ZGZiNjNiLi42MjAwZjNiIDEw
MDY0NAo+IC0tLSBhL2luY2x1ZGUvbGludXgvbWZkL210NjM5Ny9ydGMuaAo+ICsrKyBiL2luY2x1
ZGUvbGludXgvbWZkL210NjM5Ny9ydGMuaAo+IEBAIC0xOCw3ICsxOCw5IEBACj4gICNkZWZpbmUg
UlRDX0JCUFVfQ0JVU1kgICAgICAgICBCSVQoNikKPiAgI2RlZmluZSBSVENfQkJQVV9LRVkgICAg
ICAgICAgICAoMHg0MyA8PCA4KQo+ICAKPiAtI2RlZmluZSBSVENfV1JUR1IgICAgICAgICAgICAg
IDB4MDAzYwo+ICsjZGVmaW5lIFJUQ19XUlRHUl9NVDYzNTggICAgICAgMHgzYQo+ICsjZGVmaW5l
IFJUQ19XUlRHUl9NVDYzOTcgICAgICAgMHgzYwoKV2h5IHJlbW92ZSB0aGUgbGVhZGluZyAwMCdz
PwoKVGhlc2UgYXJlIG5vdyBkaWZmZXJlbnQgdG8gdGhlIG90aGVyIHJlZ3MgZGVmaW5lZCBpbiB0
aGlzIGhlYWRlci4KCj4gKyNkZWZpbmUgUlRDX1dSVEdSX01UNjMyMyAgICAgICBSVENfV1JUR1Jf
TVQ2Mzk3Cj4gIAo+ICAjZGVmaW5lIFJUQ19JUlFfU1RBICAgICAgICAgICAgMHgwMDAyCgpMaWtl
IGhlcmUgZm9yIGluc3RhbmNlICAtLV4KCj4gICNkZWZpbmUgUlRDX0lSUV9TVEFfQUwgICAgICAg
ICBCSVQoMCkKPiBAQCAtNjUsNiArNjcsMTAgQEAKPiAgI2RlZmluZSBNVEtfUlRDX1BPTExfREVM
QVlfVVMgIDEwCj4gICNkZWZpbmUgTVRLX1JUQ19QT0xMX1RJTUVPVVQgICAoamlmZmllc190b191
c2VjcyhIWikpCj4gIAo+ICtzdHJ1Y3QgbXRrX3J0Y19kYXRhIHsKPiArCXUzMiAgICAgICAgICAg
ICAgICAgICAgIHdydGdyOwo+ICt9Owo+ICsKPiAgc3RydWN0IG10NjM5N19ydGMgewo+ICAJc3Ry
dWN0IGRldmljZSAgICAgICAgICAgKmRldjsKPiAgCXN0cnVjdCBydGNfZGV2aWNlICAgICAgICpy
dGNfZGV2Owo+IEBAIC03NCw2ICs4MCw3IEBAIHN0cnVjdCBtdDYzOTdfcnRjIHsKPiAgCXN0cnVj
dCByZWdtYXAgICAgICAgICAgICpyZWdtYXA7Cj4gIAlpbnQgICAgICAgICAgICAgICAgICAgICBp
cnE7Cj4gIAl1MzIgICAgICAgICAgICAgICAgICAgICBhZGRyX2Jhc2U7Cj4gKwljb25zdCBzdHJ1
Y3QgbXRrX3J0Y19kYXRhICpkYXRhOwo+ICB9Owo+ICAKPiAgI2VuZGlmIC8qIF9MSU5VWF9NRkRf
TVQ2Mzk3X1JUQ19IXyAqLwoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2Vydmlj
ZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9y
IEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
