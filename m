Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 750C41715B1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 12:08:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Df5dCnyPIB8LE4wOxrAEY9P0xlRePJbiKfaF3tzgttI=; b=Oblk5iSpCOpe4d
	dg7cgTKnmjo7q1y9QnWCty+b/Ys91VTzARB5Z3dZBUAFqcdvxeRJnYPINsBK4QwHnWq6DDe7xaIQO
	xpJk6Ea46CwcVFXmPqJRrBf9J6KjZXTqc9HCRfJcN90RRzto1yL4eHRajI0eEiKT5E9ps9u0AOWJR
	h1gieJyxe07dpYFf5XdhvQPL+p/3JA0ZP7011mvrhhDg2w0W32tH9wePtr3oIwqHWTPwjY8/qyowf
	WroKHC+i2n6r3SrC268gT+MWN9NPshnu2W6mu8E+wRtxcHI9IbQfHHvqo0+oP8Wmvv2y9GaiLneh9
	cfh/KoOevPAmK0wwWmfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7H1E-0004eN-0G; Thu, 27 Feb 2020 11:07:52 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7H13-0004dF-2e
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 11:07:42 +0000
Received: by mail-wr1-x443.google.com with SMTP id y17so2775243wrn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 03:07:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=I912AzBiNdcRXF6ljE1ucbGao0BRLHb9fyeKtWL0lk0=;
 b=Rn5hEcohMHW3XxF1Xx5eBjIe6rPbPfl6GWYrfRj1L0+bZ4lJPq0CvZs0wAWZV8SjGm
 MeAlazR9o5FgfvuJkrv+6rH02pBGTHNkFFwTRJNpxFJq7xhzLuYCWDwhz7SDVmT30emT
 fzVZoWTHFsqLVxN8HmzyYWPB+raqVusghcfHE/mpwapaPq7m4OU12Mh+qcEzsSSgIWU7
 z4ERisvkTrSxHoDGd8EsYUf+2dQXMcBEwS1OUpUE/8scNU3OWMU5I/mz5bb3X8/nRSTI
 OPXjcjG5CqdUAxEq44zc9wEtX37WdvE1FUlBEPzBppliKwTCG5L4r7iMO1or2E3+cgSP
 hycw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=I912AzBiNdcRXF6ljE1ucbGao0BRLHb9fyeKtWL0lk0=;
 b=gyqX3Z4DKpJ12fBXPXZVrloZVhuoW5SAcQsnHaG6mgLfPVNkc1OAFfNCCu8fhRtCu/
 EAxiFkjRokFYkWsfSOW+7DoqeMu+3fXWYdMoEe8wrn+7At76mVeENP7CJ6K/ds3e1btG
 9sV7rVitbzXaVitrkWfmpyzUal6eCQOvBn+1U62ozuaF29TtUMZeGAcZLMHPjwcs34+U
 s11Bc+rDG7YSCOyspYYXuit0JxbvDej1hbhBdum/35JUrRU8sunLJMP99gBPqpAADSVd
 Qv6wBOX/POlWP3DCo/CvNPrb3VxQAh7d+l04iIkh3xK6IL59Yz1hV8JRyBXR52NeOBW0
 +sCw==
X-Gm-Message-State: APjAAAW2DksFf7SyimtdaIH1iKFBe35dWZR/ZjvVR2oySsdktXnWDd5Z
 i/QWhYJ3nnY0m2wfn9bHyQf1uw==
X-Google-Smtp-Source: APXvYqwKB8qZ91kxn6OHpZrJULRLcR4/hMsvTmkT8gru20L0pspAsp59MbUR27smLN/AswZnE31IcQ==
X-Received: by 2002:a5d:66c6:: with SMTP id k6mr4338833wrw.343.1582801659212; 
 Thu, 27 Feb 2020 03:07:39 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:d916:1723:c1c1:22d?
 ([2a01:e34:ed2f:f020:d916:1723:c1c1:22d])
 by smtp.googlemail.com with ESMTPSA id j66sm7478129wmb.21.2020.02.27.03.07.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Feb 2020 03:07:38 -0800 (PST)
Subject: Re: [PATCH RESEND 2/4] thermal: imx8mm: Add support for i.MX8MM
 thermal monitoring unit
To: Anson Huang <Anson.Huang@nxp.com>, rui.zhang@intel.com,
 amit.kucheria@verdurent.com, robh+dt@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, catalin.marinas@arm.com, will@kernel.org,
 leonard.crestez@nxp.com, daniel.baluta@nxp.com, shengjiu.wang@nxp.com,
 peng.fan@nxp.com, ping.bai@nxp.com, jun.li@nxp.com,
 bjorn.andersson@linaro.org, olof@lixom.net, vkoul@kernel.org,
 dinguyen@kernel.org, marcin.juszkiewicz@linaro.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1582186646-22096-1-git-send-email-Anson.Huang@nxp.com>
 <1582186646-22096-2-git-send-email-Anson.Huang@nxp.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <f8dfdb39-14e5-4ee2-927a-fecbcd66c71e@linaro.org>
Date: Thu, 27 Feb 2020 12:07:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1582186646-22096-2-git-send-email-Anson.Huang@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_030741_178765_7C482F8B 
X-CRM114-Status: GOOD (  26.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAvMDIvMjAyMCAwOToxNywgQW5zb24gSHVhbmcgd3JvdGU6Cj4gaS5NWDhNTSBoYXMgYSB0
aGVybWFsIG1vbml0b3JpbmcgdW5pdChUTVUpIGluc2lkZSwgaXQgT05MWSBoYXMgb25lCj4gc2Vu
c29yIGZvciBDUFUsIGFkZCBzdXBwb3J0IGZvciByZWFkaW5nIGltbWVkaWF0ZSB0ZW1wZXJhdHVy
ZSBvZgo+IHRoaXMgc2Vuc29yLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFuc29uIEh1YW5nIDxBbnNv
bi5IdWFuZ0BueHAuY29tPgo+IC0tLQo+IFRoaXMgcGF0Y2ggaXMgYmFzZSBvbiBwYXRjaCBzZXJp
ZXM6IGh0dHBzOi8vbGttbC5vcmcvbGttbC8yMDIwLzIvMTkvMTI1OAo+IC0tLQo+ICBkcml2ZXJz
L3RoZXJtYWwvS2NvbmZpZyAgICAgICAgICB8ICAxMCArKysKPiAgZHJpdmVycy90aGVybWFsL01h
a2VmaWxlICAgICAgICAgfCAgIDEgKwo+ICBkcml2ZXJzL3RoZXJtYWwvaW14OG1tX3RoZXJtYWwu
YyB8IDEzNCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgMyBmaWxl
cyBjaGFuZ2VkLCAxNDUgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVy
cy90aGVybWFsL2lteDhtbV90aGVybWFsLmMKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90aGVy
bWFsL0tjb25maWcgYi9kcml2ZXJzL3RoZXJtYWwvS2NvbmZpZwo+IGluZGV4IGQxY2I4ZGMuLjk3
MmIxNjkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy90aGVybWFsL0tjb25maWcKPiArKysgYi9kcml2
ZXJzL3RoZXJtYWwvS2NvbmZpZwo+IEBAIC0yNjIsNiArMjYyLDE2IEBAIGNvbmZpZyBJTVhfU0Nf
VEhFUk1BTAo+ICAJICBzZW5zb3IuIEl0IHN1cHBvcnRzIG9uZSBjcml0aWNhbCB0cmlwIHBvaW50
IGFuZCBvbmUKPiAgCSAgcGFzc2l2ZSB0cmlwIHBvaW50IGZvciBlYWNoIHRoZXJtYWwgc2Vuc29y
Lgo+ICAKPiArY29uZmlnIElNWDhNTV9USEVSTUFMCj4gKwl0cmlzdGF0ZSAiVGVtcGVyYXR1cmUg
c2Vuc29yIGRyaXZlciBmb3IgRnJlZXNjYWxlIGkuTVg4TU0gU29DIgo+ICsJZGVwZW5kcyBvbiBB
UkNIX01YQwo+ICsJZGVwZW5kcyBvbiBPRgo+ICsJaGVscAo+ICsJICBTdXBwb3J0IGZvciBUaGVy
bWFsIE1vbml0b3JpbmcgVW5pdCAoVE1VKSBmb3VuZCBvbiBGcmVlc2NhbGUgaS5NWDhNTSBTb0Mu
Cj4gKwkgIEl0IHN1cHBvcnRzIG9uZSBjcml0aWNhbCB0cmlwIHBvaW50IGFuZCBvbmUgcGFzc2l2
ZSB0cmlwIHBvaW50LiBUaGUKPiArCSAgY3B1ZnJlcSBpcyB1c2VkIGFzIHRoZSBjb29saW5nIGRl
dmljZSB0byB0aHJvdHRsZSBDUFVzIHdoZW4gdGhlIHBhc3NpdmUKPiArCSAgdHJpcCBpcyBjcm9z
c2VkLgo+ICsKPiAgY29uZmlnIE1BWDc3NjIwX1RIRVJNQUwKPiAgCXRyaXN0YXRlICJUZW1wZXJh
dHVyZSBzZW5zb3IgZHJpdmVyIGZvciBNYXhpbSBNQVg3NzYyMCBQTUlDIgo+ICAJZGVwZW5kcyBv
biBNRkRfTUFYNzc2MjAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90aGVybWFsL01ha2VmaWxlIGIv
ZHJpdmVycy90aGVybWFsL01ha2VmaWxlCj4gaW5kZXggYTExYTZkOC4uMTIwYTA1ZSAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL3RoZXJtYWwvTWFrZWZpbGUKPiArKysgYi9kcml2ZXJzL3RoZXJtYWwv
TWFrZWZpbGUKPiBAQCAtNDQsNiArNDQsNyBAQCBvYmotJChDT05GSUdfQVJNQURBX1RIRVJNQUwp
CSs9IGFybWFkYV90aGVybWFsLm8KPiAgb2JqLSQoQ09ORklHX1RBTkdPX1RIRVJNQUwpCSs9IHRh
bmdvX3RoZXJtYWwubwo+ICBvYmotJChDT05GSUdfSU1YX1RIRVJNQUwpCSs9IGlteF90aGVybWFs
Lm8KPiAgb2JqLSQoQ09ORklHX0lNWF9TQ19USEVSTUFMKQkrPSBpbXhfc2NfdGhlcm1hbC5vCj4g
K29iai0kKENPTkZJR19JTVg4TU1fVEhFUk1BTCkJKz0gaW14OG1tX3RoZXJtYWwubwo+ICBvYmot
JChDT05GSUdfTUFYNzc2MjBfVEhFUk1BTCkJKz0gbWF4Nzc2MjBfdGhlcm1hbC5vCj4gIG9iai0k
KENPTkZJR19RT1JJUV9USEVSTUFMKQkrPSBxb3JpcV90aGVybWFsLm8KPiAgb2JqLSQoQ09ORklH
X0RBOTA2Ml9USEVSTUFMKQkrPSBkYTkwNjItdGhlcm1hbC5vCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvdGhlcm1hbC9pbXg4bW1fdGhlcm1hbC5jIGIvZHJpdmVycy90aGVybWFsL2lteDhtbV90aGVy
bWFsLmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAuLjA0ZjhhOGYKPiAt
LS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy90aGVybWFsL2lteDhtbV90aGVybWFsLmMKPiBA
QCAtMCwwICsxLDEzNCBAQAo+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+
ICsvKgo+ICsgKiBDb3B5cmlnaHQgMjAxOSBOWFAuCgpDb3B5cmlnaHQgKGMpIDIwMjAsIE5YUCBT
ZW1pY29uZHVjdG9ycwoKQXV0aG9yczogQW5zb24gSHVhbmcgPEFuc29uLkh1YW5nQG54cC5jb20+
Cgo/PwoKPiArICoKPiArICovCj4gKwo+ICsjaW5jbHVkZSA8bGludXgvY2xrLmg+Cj4gKyNpbmNs
dWRlIDxsaW51eC9kZWxheS5oPgo+ICsjaW5jbHVkZSA8bGludXgvZXJyLmg+Cj4gKyNpbmNsdWRl
IDxsaW51eC9pby5oPgo+ICsjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gKyNpbmNsdWRlIDxs
aW51eC9vZi5oPgo+ICsjaW5jbHVkZSA8bGludXgvb2ZfYWRkcmVzcy5oPgo+ICsjaW5jbHVkZSA8
bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC90aGVybWFsLmg+Cj4g
Kwo+ICsjaW5jbHVkZSAidGhlcm1hbF9jb3JlLmgiCj4gKwo+ICsjZGVmaW5lIFRFUgkJCTB4MAkv
KiBUTVUgZW5hYmxlICovCj4gKyNkZWZpbmUgVFJJVFNSCQkJMHgyMAkvKiBUTVUgaW1tZWRpYXRl
IHRlbXAgKi8KPiArCj4gKyNkZWZpbmUgVEVSX0VOCQkJQklUKDMxKQo+ICsjZGVmaW5lIFRSSVRT
Ul9WQUxfTUFTSwkJMHhmZgo+ICsKPiArI2RlZmluZSBURU1QX0xPV19MSU1JVAkJMTAKPiArCj4g
K3N0cnVjdCBpbXg4bW1fdG11IHsKPiArCXN0cnVjdCB0aGVybWFsX3pvbmVfZGV2aWNlICp0emQ7
Cj4gKwl2b2lkIF9faW9tZW0gKmJhc2U7Cj4gKwlzdHJ1Y3QgY2xrICpjbGs7Cj4gK307Cj4gKwo+
ICtzdGF0aWMgaW50IHRtdV9nZXRfdGVtcCh2b2lkICpkYXRhLCBpbnQgKnRlbXApCj4gK3sKPiAr
CXN0cnVjdCBpbXg4bW1fdG11ICp0bXUgPSBkYXRhOwo+ICsJdTMyIHZhbDsKPiArCj4gKwkvKiB0
aGUgdGVtcCBzZW5zb3IgbmVlZCBhYm91dCAxbXMgdG8gZmluaXNoIHRoZSBtZWFzdXJlbWVudCAq
Lwo+ICsJdXNsZWVwX3JhbmdlKDEwMDAsIDIwMDApOwoKV2h5IGRvIHlvIG5lZWQgdG8gZm9yY2Ug
YSBkZWxheSBoZXJlPyBJZiB0aGUgc2Vuc29yIGNhbiBub3QgYmUgcmVhZCBtb3JlCnRoYW4gb25l
IHRpbWUgZXZlcnkgMW1zLCB0aGVuIHNwZWNpZnkgdGhhdCBpbiB0aGUgRFQgc3dpdGNoaW5nIHRo
ZQpwb2xsaW5nIHRvIHRoZSByaWdodCB2YWx1ZSwgbm8/Cgo+ICsJdmFsID0gcmVhZGxfcmVsYXhl
ZCh0bXUtPmJhc2UgKyBUUklUU1IpICYgVFJJVFNSX1ZBTF9NQVNLOwo+ICsJaWYgKHZhbCA8IFRF
TVBfTE9XX0xJTUlUKQo+ICsJCXJldHVybiAtRUFHQUlOOz4KPiArCSp0ZW1wID0gdmFsICogMTAw
MDsKPiArCXJldHVybiAwOwo+ICt9Cj4gKwo+ICtzdGF0aWMgc3RydWN0IHRoZXJtYWxfem9uZV9v
Zl9kZXZpY2Vfb3BzIHRtdV90el9vcHMgPSB7Cj4gKwkuZ2V0X3RlbXAgPSB0bXVfZ2V0X3RlbXAs
Cj4gK307Cj4gKwo+ICtzdGF0aWMgaW50IGlteDhtbV90bXVfcHJvYmUoc3RydWN0IHBsYXRmb3Jt
X2RldmljZSAqcGRldikKPiArewo+ICsJc3RydWN0IGlteDhtbV90bXUgKnRtdTsKPiArCXUzMiB2
YWw7Cj4gKwlpbnQgcmV0Owo+ICsKPiArCXRtdSA9IGRldm1fa3phbGxvYygmcGRldi0+ZGV2LCBz
aXplb2Yoc3RydWN0IGlteDhtbV90bXUpLCBHRlBfS0VSTkVMKTsKPiArCWlmICghdG11KQo+ICsJ
CXJldHVybiAtRU5PTUVNOwo+ICsKPiArCXRtdS0+YmFzZSA9IGRldm1fcGxhdGZvcm1faW9yZW1h
cF9yZXNvdXJjZShwZGV2LCAwKTsKPiArCWlmIChJU19FUlIodG11LT5iYXNlKSkKPiArCQlyZXR1
cm4gUFRSX0VSUih0bXUtPmJhc2UpOwo+ICsKPiArCXRtdS0+Y2xrID0gZGV2bV9jbGtfZ2V0KCZw
ZGV2LT5kZXYsIE5VTEwpOwo+ICsJaWYgKElTX0VSUih0bXUtPmNsaykpIHsKPiArCQlyZXQgPSBQ
VFJfRVJSKHRtdS0+Y2xrKTsKPiArCQlpZiAocmV0ICE9IC1FUFJPQkVfREVGRVIpCj4gKwkJCWRl
dl9lcnIoJnBkZXYtPmRldiwKPiArCQkJCSJmYWlsZWQgdG8gZ2V0IHRtdSBjbG9jazogJWRcbiIs
IHJldCk7Cj4gKwkJcmV0dXJuIHJldDsKPiArCX0KPiArCj4gKwlyZXQgPSBjbGtfcHJlcGFyZV9l
bmFibGUodG11LT5jbGspOwo+ICsJaWYgKHJldCkgewo+ICsJCWRldl9lcnIoJnBkZXYtPmRldiwg
ImZhaWxlZCB0byBlbmFibGUgdG11IGNsb2NrOiAlZFxuIiwgcmV0KTsKPiArCQlyZXR1cm4gcmV0
Owo+ICsJfQo+ICsKPiArCXRtdS0+dHpkID0gZGV2bV90aGVybWFsX3pvbmVfb2Zfc2Vuc29yX3Jl
Z2lzdGVyKCZwZGV2LT5kZXYsIDAsCj4gKwkJCQkJCQl0bXUsICZ0bXVfdHpfb3BzKTsKPiArCWlm
IChJU19FUlIodG11LT50emQpKSB7Cj4gKwkJZGV2X2VycigmcGRldi0+ZGV2LAo+ICsJCQkiZmFp
bGVkIHRvIHJlZ2lzdGVyIHRoZXJtYWwgem9uZSBzZW5zb3I6ICVkXG4iLCByZXQpOwo+ICsJCXJl
dHVybiBQVFJfRVJSKHRtdS0+dHpkKTsKPiArCX0KPiArCj4gKwlwbGF0Zm9ybV9zZXRfZHJ2ZGF0
YShwZGV2LCB0bXUpOwo+ICsKPiArCS8qIGVuYWJsZSB0aGUgbW9uaXRvciAqLwo+ICsJdmFsID0g
cmVhZGxfcmVsYXhlZCh0bXUtPmJhc2UgKyBURVIpOwo+ICsJdmFsIHw9IFRFUl9FTjsKPiArCXdy
aXRlbF9yZWxheGVkKHZhbCwgdG11LT5iYXNlICsgVEVSKTsKCkEgc2lkZSBub3RlIHBlcmhhcHMg
eW91IGNhbiB3cmFwOgoKc3RhdGljIGludCBpbXg4bW1fc3RhcnQoc3RydWN0IGlteDhtbV90bXUg
KnRtdSkKewoJY2xrX3ByZXBhcmVfZW5hYmxlKCkKCXZhbCA9IHJlYWRsX3JlbGF4ZWQodG11LT5i
YXNlICsgVEVSKTsKCXZhbCB8PSBURVJfRU47Cgl3cml0ZWxfcmVsYXhlZCh2YWwsIHRtdS0+YmFz
ZSArIFRFUik7Cn0KCmFuZAoKc3RhdGljIHZvaWQgaW14OG1tX3N0b3Aoc3RydWN0IGlteDhtbV90
bXUgKnRtdSkKewoJdmFsID0gcmVhZGxfcmVsYXhlZCh0bXUtPmJhc2UgKyBURVIpOwoJdmFsICY9
IH5URVJfRU47Cgl3cml0ZWxfcmVsYXhlZCh2YWwsIHRtdS0+YmFzZSArIFRFUik7CgljbGtfZGlz
YWJsZV91bnByZXBhcmUodG11LT5jbGspOwp9CgpTbyB0aGUgc3VzcGVuZC9yZXN1bWUgY2FsbGJh
Y2tzIGNhbiBjYWxsIHRoZW0gZGlyZWN0bHkgaWYgeW91IGRlY2lkZSB0bwphZGQgdGhlbS4KCj4g
KwlyZXR1cm4gMDsKPiArfQo+ICsKPiArc3RhdGljIGludCBpbXg4bW1fdG11X3JlbW92ZShzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICt7Cj4gKwlzdHJ1Y3QgaW14OG1tX3RtdSAqdG11
ID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7Cj4gKwl1MzIgdmFsOwo+ICsKPiArCS8qIGRp
c2FibGUgVE1VICovCj4gKwl2YWwgPSByZWFkbF9yZWxheGVkKHRtdS0+YmFzZSArIFRFUik7Cj4g
Kwl2YWwgJj0gflRFUl9FTjsKPiArCXdyaXRlbF9yZWxheGVkKHZhbCwgdG11LT5iYXNlICsgVEVS
KTsKPiArCj4gKwljbGtfZGlzYWJsZV91bnByZXBhcmUodG11LT5jbGspOwo+ICsJcGxhdGZvcm1f
c2V0X2RydmRhdGEocGRldiwgTlVMTCk7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KPiArCj4gK3N0
YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGlteDhtbV90bXVfdGFibGVbXSA9IHsKPiAr
CXsgLmNvbXBhdGlibGUgPSAiZnNsLGlteDhtbS10bXUiLCB9LAo+ICsJeyB9LAo+ICt9Owo+ICsK
PiArc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgaW14OG1tX3RtdSA9IHsKPiArCS5kcml2
ZXIgPSB7Cj4gKwkJLm5hbWUJPSAiaS5teDhtbV90aGVybWFsIiwKPiArCQkub2ZfbWF0Y2hfdGFi
bGUgPSBpbXg4bW1fdG11X3RhYmxlLAo+ICsJfSwKPiArCS5wcm9iZSA9IGlteDhtbV90bXVfcHJv
YmUsCj4gKwkucmVtb3ZlID0gaW14OG1tX3RtdV9yZW1vdmUsCj4gK307Cj4gK21vZHVsZV9wbGF0
Zm9ybV9kcml2ZXIoaW14OG1tX3RtdSk7Cj4gKwo+ICtNT0RVTEVfQVVUSE9SKCJBbnNvbiBIdWFu
ZyA8QW5zb24uSHVhbmdAbnhwLmNvbT4iKTsKPiArTU9EVUxFX0RFU0NSSVBUSU9OKCJpLk1YOE1N
IFRoZXJtYWwgTW9uaXRvciBVbml0IGRyaXZlciIpOwo+ICtNT0RVTEVfTElDRU5TRSgiR1BMIHYy
Iik7Cj4gCgoKLS0gCiA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3Bl
biBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93
d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIu
Y29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJv
LWJsb2cvPiBCbG9nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
