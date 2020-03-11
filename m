Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D9A18180E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 13:34:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NmgUgIeAxES/kzY9/LZe5u+4eSMY5OgJIaWRsiorf1w=; b=d1Y8xfgKX56uN2
	+jhwiLbYMHAUN1hzHPN4tAcW+ZqduJ2md6lSra6O3mwuXnENJqU5qZ2mx56p/QspClMhvU99pNiVz
	9dwxRhFicVjcFlKcbLvnvIOUGGHyI7AMKDClXH/sosshDJqqdh1jp6TjZEojyeMB6BMfpDk3LxDYE
	2UwwAkmAsyG/dCYnBs5+DzQdDFXfAySV8H/gjx3wl8m/qPv6mk3rcUAf6870OWt0/k0P6WpVd5Vqk
	T9FtsGDJM5jnhZ4RDoq19tJr3C7NkRNBPjG7TVxVb6Wj/jRf1nXz9e3rQuhlp6eiqwV6srFxFX7bX
	1tSz2VbCmVw0VpnBFkxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC0Yc-0001Im-EP; Wed, 11 Mar 2020 12:33:54 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC0YT-0001IE-95
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 12:33:47 +0000
Received: by mail-io1-xd41.google.com with SMTP id n21so1681897ioo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 05:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=SvNsYQlB4kRlIpkiw/5fYDndPLg9lQh4weGxmJ/Njos=;
 b=pvqXknVJpYc5tZn/6PKu/c7IbZom4HSMCLc4HXwmzZZPl8S3fowbFSTZOsvFB3pt92
 jYWOXzXzmNHKIlxbYitDKwIcEPb/Upy9SyaUrzFmXfvHqTKDqnDYrESPB73P0UF2wKLj
 Sad6PfOfUvVaFHFdt7X4XMy2zgmYoD+pom2gHoPmS8Cv+f85q3GxdODWYYnEnuJ6m5fP
 cZgKLtCWvqTvFVKBENyqi3+HNU5sWvRPhLOa5dTYLFCH8lxQNqTL7SxSQuhl+XCsTXhK
 VhvlEyVXpcbIjOtptY9zk97Frq9IirFZ9n7LN+/4fx6NF+9vlbw0cDVUmvM83CPp/NPJ
 vVpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=SvNsYQlB4kRlIpkiw/5fYDndPLg9lQh4weGxmJ/Njos=;
 b=R9yVT35NOdg4a+LmPE5ESYovF/mEczh+FmfcCX059SaL62m/GmIAvjORRxHnea2A52
 T+48uKW+HL4NYuMM3Qx6bIgkxro4zJhQPcBsJr4yxbqHUkoUSFfIy9IIsPdkofCsAv3/
 pM9titX99zMeuTfSNeKewF9UMIW4fz+45Gr7npoLo5Yjp8jgq9/MdBULfVSTHZb8qG7X
 Sb0mBQidsdr5IFjGip92f+Wp4csfB2uMPOid4ElQtJEAjxM+HBBkDeEjgtlFj2L+Y6ci
 uocLKq30NqzFEzdO4A3APBEE/Q5jDKnpqC2ZUvCShmdP2K+Pnpp/R+GaJ/pE7O/PA9VX
 ADHA==
X-Gm-Message-State: ANhLgQ2qkVHGgXS5IRcce+9xKKGzKoeul15LNTi1bXyXpECb13Va9bFc
 OrZjkurj5jIRsnEaCKybXSPh7g==
X-Google-Smtp-Source: ADFU+vvPqMCiIvjyFOh6REmJH5J/TFHvv5f9WRErtO+U7wQcxPktfiBNIAABCB8nwO6KwoU52BzWAQ==
X-Received: by 2002:a02:3808:: with SMTP id b8mr2839716jaa.136.1583930022021; 
 Wed, 11 Mar 2020 05:33:42 -0700 (PDT)
Received: from [172.22.22.26] (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.googlemail.com with ESMTPSA id o14sm1923065iob.4.2020.03.11.05.33.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Mar 2020 05:33:41 -0700 (PDT)
Subject: Re: [PATCH v2 15/17] soc: qcom: ipa: support build of IPA code
To: Jon Hunter <jonathanh@nvidia.com>, David Miller <davem@davemloft.net>,
 Arnd Bergmann <arnd@arndb.de>
References: <20200306042831.17827-1-elder@linaro.org>
 <20200306042831.17827-16-elder@linaro.org>
 <33e18aa5-5838-a2f2-7112-542a157bd026@nvidia.com>
From: Alex Elder <elder@linaro.org>
Message-ID: <cdadf72c-0233-91f4-73a5-cee9636d32cc@linaro.org>
Date: Wed, 11 Mar 2020 07:33:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <33e18aa5-5838-a2f2-7112-542a157bd026@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_053345_349224_4A0EDD0C 
X-CRM114-Status: GOOD (  18.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Susheel Yadav Yadagiri <syadagir@codeaurora.org>,
 Eric Caruso <ejcaruso@google.com>, devicetree@vger.kernel.org,
 Dan Williams <dcbw@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 Evan Green <evgreen@google.com>, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 Johannes Berg <johannes@sipsolutions.net>, linux-soc@vger.kernel.org,
 Siddharth Gupta <sidgup@codeaurora.org>,
 Chaitanya Pratapa <cpratapa@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMy8xMS8yMCA1OjU0IEFNLCBKb24gSHVudGVyIHdyb3RlOgo+IAo+IE9uIDA2LzAzLzIwMjAg
MDQ6MjgsIEFsZXggRWxkZXIgd3JvdGU6Cj4+IEFkZCBidWlsZCBhbmQgS2NvbmZpZyBzdXBwb3J0
IGZvciB0aGUgUXVhbGNvbW0gSVBBIGRyaXZlci4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQWxleCBF
bGRlciA8ZWxkZXJAbGluYXJvLm9yZz4KPj4gLS0tCj4+ICBkcml2ZXJzL25ldC9LY29uZmlnICAg
ICAgfCAgMiArKwo+PiAgZHJpdmVycy9uZXQvTWFrZWZpbGUgICAgIHwgIDEgKwo+PiAgZHJpdmVy
cy9uZXQvaXBhL0tjb25maWcgIHwgMTkgKysrKysrKysrKysrKysrKysrKwo+PiAgZHJpdmVycy9u
ZXQvaXBhL01ha2VmaWxlIHwgMTIgKysrKysrKysrKysrCj4+ICA0IGZpbGVzIGNoYW5nZWQsIDM0
IGluc2VydGlvbnMoKykKPj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC9pcGEvS2Nv
bmZpZwo+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L2lwYS9NYWtlZmlsZQo+Pgo+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvS2NvbmZpZyBiL2RyaXZlcnMvbmV0L0tjb25maWcK
Pj4gaW5kZXggNjZlNDEwZTU4YzhlLi4wMjU2NWJjMmJlOGEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZl
cnMvbmV0L0tjb25maWcKPj4gKysrIGIvZHJpdmVycy9uZXQvS2NvbmZpZwo+PiBAQCAtNDQ0LDYg
KzQ0NCw4IEBAIHNvdXJjZSAiZHJpdmVycy9uZXQvZmRkaS9LY29uZmlnIgo+PiAgCj4+ICBzb3Vy
Y2UgImRyaXZlcnMvbmV0L2hpcHBpL0tjb25maWciCj4+ICAKPj4gK3NvdXJjZSAiZHJpdmVycy9u
ZXQvaXBhL0tjb25maWciCj4+ICsKPj4gIGNvbmZpZyBORVRfU0IxMDAwCj4+ICAJdHJpc3RhdGUg
IkdlbmVyYWwgSW5zdHJ1bWVudHMgU3VyZmJvYXJkIDEwMDAiCj4+ICAJZGVwZW5kcyBvbiBQTlAK
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L01ha2VmaWxlIGIvZHJpdmVycy9uZXQvTWFrZWZp
bGUKPj4gaW5kZXggNjU5NjcyNDZmMjQwLi45NGI2MDgwMDg4N2EgMTAwNjQ0Cj4+IC0tLSBhL2Ry
aXZlcnMvbmV0L01ha2VmaWxlCj4+ICsrKyBiL2RyaXZlcnMvbmV0L01ha2VmaWxlCj4+IEBAIC00
Nyw2ICs0Nyw3IEBAIG9iai0kKENPTkZJR19FVEhFUk5FVCkgKz0gZXRoZXJuZXQvCj4+ICBvYmot
JChDT05GSUdfRkRESSkgKz0gZmRkaS8KPj4gIG9iai0kKENPTkZJR19ISVBQSSkgKz0gaGlwcGkv
Cj4+ICBvYmotJChDT05GSUdfSEFNUkFESU8pICs9IGhhbXJhZGlvLwo+PiArb2JqLSQoQ09ORklH
X1FDT01fSVBBKSArPSBpcGEvCj4+ICBvYmotJChDT05GSUdfUExJUCkgKz0gcGxpcC8KPj4gIG9i
ai0kKENPTkZJR19QUFApICs9IHBwcC8KPj4gIG9iai0kKENPTkZJR19QUFBfQVNZTkMpICs9IHBw
cC8KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2lwYS9LY29uZmlnIGIvZHJpdmVycy9uZXQv
aXBhL0tjb25maWcKPj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4gaW5kZXggMDAwMDAwMDAwMDAw
Li5iOGNiN2NhZGJmNzUKPj4gLS0tIC9kZXYvbnVsbAo+PiArKysgYi9kcml2ZXJzL25ldC9pcGEv
S2NvbmZpZwo+PiBAQCAtMCwwICsxLDE5IEBACj4+ICtjb25maWcgUUNPTV9JUEEKPj4gKwl0cmlz
dGF0ZSAiUXVhbGNvbW0gSVBBIHN1cHBvcnQiCj4+ICsJZGVwZW5kcyBvbiBBUkNIX1FDT00gJiYg
NjRCSVQgJiYgTkVUCj4+ICsJc2VsZWN0IFFDT01fUU1JX0hFTFBFUlMKPj4gKwlzZWxlY3QgUUNP
TV9NRFRfTE9BREVSCj4+ICsJZGVmYXVsdCBRQ09NX1E2VjVfQ09NTU9OCj4+ICsJaGVscAo+PiAr
CSAgQ2hvb3NlIFkgb3IgTSBoZXJlIHRvIGluY2x1ZGUgc3VwcG9ydCBmb3IgdGhlIFF1YWxjb21t
Cj4+ICsJICBJUCBBY2NlbGVyYXRvciAoSVBBKSwgYSBoYXJkd2FyZSBibG9jayBwcmVzZW50IGlu
IHNvbWUKPj4gKwkgIFF1YWxjb21tIFNvQ3MuICBUaGUgSVBBIGlzIGEgcHJvZ3JhbW1hYmxlIHBy
b3RvY29sIHByb2Nlc3Nvcgo+PiArCSAgdGhhdCBpcyBjYXBhYmxlIG9mIGdlbmVyaWMgaGFyZHdh
cmUgaGFuZGxpbmcgb2YgSVAgcGFja2V0cywKPj4gKwkgIGluY2x1ZGluZyByb3V0aW5nLCBmaWx0
ZXJpbmcsIGFuZCBOQVQuICBDdXJyZW50bHkgdGhlIElQQQo+PiArCSAgZHJpdmVyIHN1cHBvcnRz
IG9ubHkgYmFzaWMgdHJhbnNwb3J0IG9mIG5ldHdvcmsgdHJhZmZpYwo+PiArCSAgYmV0d2VlbiB0
aGUgQVAgYW5kIG1vZGVtLCBvbiB0aGUgUXVhbGNvbW0gU0RNODQ1IFNvQy4KPj4gKwo+PiArCSAg
Tm90ZSB0aGF0IGlmIHNlbGVjdGVkLCB0aGUgc2VsZWN0aW9uIHR5cGUgbXVzdCBtYXRjaCB0aGF0
Cj4+ICsJICBvZiBRQ09NX1E2VjVfQ09NTU9OIChZIG9yIE0pLgo+PiArCj4+ICsJICBJZiB1bnN1
cmUsIHNheSBOLgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvaXBhL01ha2VmaWxlIGIvZHJp
dmVycy9uZXQvaXBhL01ha2VmaWxlCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAw
MDAwMDAwMDAwMC4uYWZlNWRmMWU2ZWVlCj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvZHJpdmVy
cy9uZXQvaXBhL01ha2VmaWxlCj4+IEBAIC0wLDAgKzEsMTIgQEAKPj4gKyMgVW4tY29tbWVudCB0
aGUgbmV4dCBsaW5lIGlmIHlvdSB3YW50IHRvIHZhbGlkYXRlIGNvbmZpZ3VyYXRpb24gZGF0YQo+
PiArI2NjZmxhZ3MteQkJKz0JLURJUEFfVkFMSURBVEUKPj4gKwo+PiArb2JqLSQoQ09ORklHX1FD
T01fSVBBKQkrPQlpcGEubwo+PiArCj4+ICtpcGEteQkJCTo9CWlwYV9tYWluLm8gaXBhX2Nsb2Nr
Lm8gaXBhX3JlZy5vIGlwYV9tZW0ubyBcCj4+ICsJCQkJaXBhX3RhYmxlLm8gaXBhX2ludGVycnVw
dC5vIGdzaS5vIGdzaV90cmFucy5vIFwKPj4gKwkJCQlpcGFfZ3NpLm8gaXBhX3NtcDJwLm8gaXBh
X3VjLm8gXAo+PiArCQkJCWlwYV9lbmRwb2ludC5vIGlwYV9jbWQubyBpcGFfbW9kZW0ubyBcCj4+
ICsJCQkJaXBhX3FtaS5vIGlwYV9xbWlfbXNnLm8KPj4gKwo+PiAraXBhLXkJCQkrPQlpcGFfZGF0
YS1zZG04NDUubyBpcGFfZGF0YS1zYzcxODAuClllcywgYSBuZWVkZWQgcGF0Y2ggZGVmaW5pbmcg
ZmllbGRfbWF4KCkgaXMgbWlzc2luZy4gIEkgc2VudAphbiB1cGRhdGVkIHJlcXVlc3QgdG8gaW5j
bHVkZSBpdCBpbiBuZXQtbmV4dCB0byByZXNvbHZlIHRoaXMKaXNzdWUuCgogIGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL25ldGRldi8yMDIwMDMxMTAyNDI0MC4yNjgzNC0xLWVsZGVyQGxpbmFyby5v
cmcvCgpUaGFuayB5b3UgZm9yIHBvaW50aW5nIGl0IG91dC4KCgkJCQkJLUFsZXgKCj4gVGhpcyBw
YXRjaCBpcyBhbHNvIGNhdXNpbmcgYnVpbGQgaXNzdWVzIG9uIHRoZSBjdXJyZW50IC1uZXh0IC4u
Lgo+IAo+ICAgQ0MgW01dICBkcml2ZXJzL25ldC9pcGEvZ3NpLm8KPiAgIEluIGZpbGUgaW5jbHVk
ZWQgZnJvbSBpbmNsdWRlL2xpbnV4L2J1aWxkX2J1Zy5oOjU6MCwKPiAgICAgICAgICAgICAgICAg
ICAgZnJvbSBpbmNsdWRlL2xpbnV4L2JpdGZpZWxkLmg6MTAsCj4gICAgICAgICAgICAgICAgICAg
IGZyb20gZHJpdmVycy9uZXQvaXBhL2dzaS5jOjk6Cj4gICBkcml2ZXJzL25ldC9pcGEvZ3NpLmM6
IEluIGZ1bmN0aW9uIOKAmGdzaV92YWxpZGF0ZV9idWlsZOKAmToKPiAgIGRyaXZlcnMvbmV0L2lw
YS9nc2kuYzoyMjA6Mzk6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiDi
gJhmaWVsZF9tYXjigJkgWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dCj4g
ICAgIEJVSUxEX0JVR19PTihHU0lfUklOR19FTEVNRU5UX1NJWkUgPiBmaWVsZF9tYXgoRUxFTUVO
VF9TSVpFX0ZNQVNLKSk7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBeCj4gICBpbmNsdWRlL2xpbnV4L2NvbXBpbGVyLmg6Mzc0Ojk6IG5vdGU6IGluIGRlZmluaXRp
b24gb2YgbWFjcm8g4oCYX19jb21waWxldGltZV9hc3NlcnTigJkKPiAgICAgIGlmICghKGNvbmRp
dGlvbikpICAgICBcCj4gICAgICAgICAgICBefn5+fn5+fn4KPiAgIGluY2x1ZGUvbGludXgvY29t
cGlsZXIuaDozOTQ6Mjogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmF9jb21waWxldGlt
ZV9hc3NlcnTigJkKPiAgICAgX2NvbXBpbGV0aW1lX2Fzc2VydChjb25kaXRpb24sIG1zZywgX19j
b21waWxldGltZV9hc3NlcnRfLCBfX0xJTkVfXykKPiAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fgo+
ICAgaW5jbHVkZS9saW51eC9idWlsZF9idWcuaDozOTozNzogbm90ZTogaW4gZXhwYW5zaW9uIG9m
IG1hY3JvIOKAmGNvbXBpbGV0aW1lX2Fzc2VydOKAmQo+ICAgICNkZWZpbmUgQlVJTERfQlVHX09O
X01TRyhjb25kLCBtc2cpIGNvbXBpbGV0aW1lX2Fzc2VydCghKGNvbmQpLCBtc2cpCj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+Cj4gICBp
bmNsdWRlL2xpbnV4L2J1aWxkX2J1Zy5oOjUwOjI6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNy
byDigJhCVUlMRF9CVUdfT05fTVNH4oCZCj4gICAgIEJVSUxEX0JVR19PTl9NU0coY29uZGl0aW9u
LCAiQlVJTERfQlVHX09OIGZhaWxlZDogIiAjY29uZGl0aW9uKQo+ICAgICBefn5+fn5+fn5+fn5+
fn5+Cj4gICBkcml2ZXJzL25ldC9pcGEvZ3NpLmM6MjIwOjI6IG5vdGU6IGluIGV4cGFuc2lvbiBv
ZiBtYWNybyDigJhCVUlMRF9CVUdfT07igJkKPiAgICAgQlVJTERfQlVHX09OKEdTSV9SSU5HX0VM
RU1FTlRfU0laRSA+IGZpZWxkX21heChFTEVNRU5UX1NJWkVfRk1BU0spKTsKPiAgICAgXn5+fn5+
fn5+fn5+Cj4gCj4gSm9uIAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
