Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 790CC118720
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 12:51:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v4EWtE2f40NIGAuX0kriOH3sk/SW30Q76JuGzoQeE+A=; b=GCbiwK37AtAGDz
	HpRlmoUcmZuhfkWe0Aq77XRfyXdRalHQLUa57gaQKYIuHElErhZ8HjY23F5i2iuN++Y3jlBYcVz+v
	8OP+TG5flZbV8mO+4ofj938qmAsiCsN1cqsboZ4IxY2VBg3IXcs12hHPYcQdjdJi2UegDWBdMlPbg
	OnfN6F/856nxRm+RdTtocRommyIV7V9j0mbuXSVVDMIuiXjEjLh7sl79D/7/XRg8aPD/i2ojGYwPm
	acpT7voEI2oYA8AdjYDQszUC+rA7a5W7D1AsqmKnTv8BGiNlNaolNpiQLjfOfTScbsudwrKCP9W/w
	quObycl9P760fcstndog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iee30-00005X-8s; Tue, 10 Dec 2019 11:51:22 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iee2r-0008Vr-5M
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 11:51:14 +0000
Received: by mail-wr1-x443.google.com with SMTP id j42so19661694wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 03:51:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=LbaT//1CIWZj7PovMzq7HWVulVly+//fBwXIOhYXXwc=;
 b=M6jVIcNxsWiSx0G4DH486LOjGMSySbL/rK8GfSc8+rQwZYOdfM0hIU1PvKF8AaUSJI
 08KxCjCqdIq/JO8lfp1vEcXPA+8r9hei6j7yOVE+8aMmKu6noRaoKXKOvvc5SZ+Ju61T
 2YTFnkLeIzmo68cW5OQtM1+SsCGxYCCNnAM8vJ+0lQ4xBawva5yWqfm355BlUtoZz0MV
 taRmME8SIp3aJTeGGoQT0gSFTfr3HfbQIGswiKPyjJSLPlO9NjNSZP/b6myOIbGE7tl+
 IIFCeyF/y68zlzMnTPs3HgvDfym+NRmjYtz6LYhJzRt+apEluV3o9dknCq1aVVF9KH+r
 KgBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=LbaT//1CIWZj7PovMzq7HWVulVly+//fBwXIOhYXXwc=;
 b=jW+2ArY6/FR1hdKoMdHg09V0rJNQczt+NHY1PrYSCS5lnr610T9d1UnbFBnjTYVYXU
 LQEZRuW3wUXgxHzao/SvgQ2tnrL1lJR1um5YFb6luy28taQHqwsQoSNJhVJNXhibp4U9
 SdH+l2LnNXRTMLNrD5L267eGcHZHxqrAADtGr+JvuVWiSpXPfxsFZTTgRnk9P3ENAxq2
 tcf4xUlJo08JbpviVZSWlsBZKlS4acGLb4xVb0wHUAAf7mfdKEG2DtSDv/R3Z/m4BHJg
 iHwd18GpMdp6ORI7Twm9fErfYV4IrbvAdE5Y9cxUkFHekLCtKxBhw1Pun4Ex0vlAyruZ
 8nIg==
X-Gm-Message-State: APjAAAUSfGiRCf6EBU3P3RPa8/Io577ZSNb+c9YBL8J7v1Y9C6lrcyUA
 h5rasKTPNauZ6wxjMXON5wvNQ8WwHG8=
X-Google-Smtp-Source: APXvYqwvFc8Lxa1iFphn/dCM4UiwsnLfnObrmZlv0DxIgU35Zl75XDXezvxqCjfsSoYtNWg8MxqvKw==
X-Received: by 2002:a5d:5345:: with SMTP id t5mr2925064wrv.0.1575978670794;
 Tue, 10 Dec 2019 03:51:10 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:683a:fee4:9950:e8ce?
 ([2a01:e34:ed2f:f020:683a:fee4:9950:e8ce])
 by smtp.googlemail.com with ESMTPSA id x26sm2773387wmc.30.2019.12.10.03.51.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Dec 2019 03:51:10 -0800 (PST)
Subject: Re: [PATCH v3 2/2] clocksource/drivers/timer-microchip-pit64b: add
 Microchip PIT64B support
To: Claudiu.Beznea@microchip.com, robh+dt@kernel.org, mark.rutland@arm.com,
 Nicolas.Ferre@microchip.com, alexandre.belloni@bootlin.com,
 Ludovic.Desroches@microchip.com, tglx@linutronix.de
References: <1575470549-702-1-git-send-email-claudiu.beznea@microchip.com>
 <1575470549-702-3-git-send-email-claudiu.beznea@microchip.com>
 <19796bfc-144c-8129-2e06-07d882e5e9f5@linaro.org>
 <3e49256f-9452-cede-5fa8-443c15857e1b@microchip.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <d104a0d3-950d-3132-4bf8-d06ccb7c6f25@linaro.org>
Date: Tue, 10 Dec 2019 12:51:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <3e49256f-9452-cede-5fa8-443c15857e1b@microchip.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_035113_213804_99705D3E 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTAvMTIvMjAxOSAxMjo0MywgQ2xhdWRpdS5CZXpuZWFAbWljcm9jaGlwLmNvbSB3cm90ZToK
PiAKPiAKPiBPbiAwOS4xMi4yMDE5IDE5OjA0LCBEYW5pZWwgTGV6Y2FubyB3cm90ZToKPj4gT24g
MDQvMTIvMjAxOSAxNTo0MiwgQ2xhdWRpdSBCZXpuZWEgd3JvdGU6Cj4+PiBBZGQgZHJpdmVyIGZv
ciBNaWNyb2NoaXAgUElUNjRCIHRpbWVyLiBUaW1lciBjb3VsZCBiZSB1c2VkIGluIGNvbnRpbnVv
dXMKPj4+IG1vZGUgb3Igb25lc2hvdCBtb2RlLiBUaGUgaGFyZHdhcmUgaGFzIDJ4MzIgYml0IHJl
Z2lzdGVycyBmb3IgcGVyaW9kCj4+PiBlbXVsYXRpbmcgYSA2NCBiaXQgdGltZXIuIFRoZSBMU0Jf
UFIgYW5kIE1TQl9QUiByZWdpc3RlcnMgYXJlIHVzZWQgdG8KPj4+IHNldCB0aGUgcGVyaW9kIHZh
bHVlIChjb21wYXJlIHZhbHVlKS4gVExTQiBhbmQgVE1TQiBrZWVwcyB0aGUgY3VycmVudAo+Pj4g
dmFsdWUgb2YgdGhlIGNvdW50ZXIuIEFmdGVyIGEgY29tcGFyZSB0aGUgVExTQiBhbmQgVE1TQiBy
ZWdpc3RlciByZXNldHMuCj4+PiBUaGUgZHJpdmVyIHVzZXMgUElUNjRCIHRpbWVyIGZvciBjbG9j
a3NvdXJjZSBvciBjbG9ja2V2ZW50LiBGaXJzdAo+Pj4gcmVxdWVzdGVkIHRpbWVyIHdvdWxkIGJl
IHJlZ2lzdGVyZWQgYXMgY2xvY2tldmVudCwgc2Vjb25kIG9uZSB3b3VsZCBiZQo+Pj4gcmVnaXN0
ZXJlZCBhcyBjbG9ja3NvdXJjZS4gSW5kaXZpZHVhbCBQSVQ2NEIgaGFyZHdhcmUgcmVzb3VyY2Vz
IHdlcmUgdXNlZAo+Pj4gZm9yIGNsb2Nrc291cmNlIGFuZCBjbG9ja2V2ZW50IHRvIGJlIGFibGUg
dG8gc3VwcG9ydCBoaWdoIHJlc29sdXRpb24KPj4+IHRpbWVycyB3aXRoIHRoaXMgaGFyZHdhcmUg
aW1wbGVtZW50YXRpb24uCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQ2xhdWRpdSBCZXpuZWEgPGNs
YXVkaXUuYmV6bmVhQG1pY3JvY2hpcC5jb20+Cj4+PiAtLS0KClsgLi4uIF0KCj4+IEFsc28sIHRo
ZSAnaGlnaCcgcGFydCBjaGFuZ2UgbWF5IGJlIGNoZWNrZWQsIGxpa2U6Cj4+Cj4+IGh0dHBzOi8v
Z2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3JhZmFlbC9saW51eC1wbS5n
aXQvdHJlZS9kcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVyLWlteC1zeXNjdHIuYz9oPWJsZWVkaW5n
LWVkZ2UjbjUxCj4gCj4gVGhlIElQIGd1YXJhbnRlZXMgdGhhdCB0aGUgcmVhZGluZyBvZiBjb3Vu
dGVyIGlzIGF0b21pYyBpZgo+IE1DSFBfUElUNjRCX1RMU0JSIGlzIHJlYWQgZmlyc3QuIFdpdGgg
dGhpcywgd291bGQgeW91IHN0aWxsIHdhbnQgdG8gYWRkIHRoZQo+IGNoZWNrIHlvdSBtZW50aW9u
IGFib3ZlPwoKTm8sIHNvcnJ5IEkgc2hvdWxkIGhhdmUgcmVhZCB0aGUgY29tbWVudCA6LwoKWyAu
Li4gXQoKCi0tIAogPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4g
c291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3
LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNv
bS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1i
bG9nLz4gQmxvZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
