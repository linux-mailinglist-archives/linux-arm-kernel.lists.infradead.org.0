Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72152165A4E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 10:38:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TO6Ytq8/Oju/ph2XXV5MRf/UT3lbQqpQY0scuE0JmoE=; b=jh+2MrivPjG92+
	4CVzKxksh/92xrBtxOqY3kzyPJ/lGWmfAdHoNEUJrdWrXO86lVteEXySfB6uJclVypWLgUjyhWWqZ
	Yy4KBvAjtaMBB27OMQQGI4q1PaPdaCFqoevbjoQs7m75Sul7ehtTYlOPM/qVNhTHhMqn4DrQW9ZOr
	4XoDZnzMynDY1pwy3RwX53CML4zayrK2Hhrvi1vcmD+rst/Gn5/KfLtsHidetJT7as+fT0F5SYDXk
	JjD/yERhu6CsXTfQd3My61k2BWQ6wZ4BMH71HXCKAtd8TmfqEd45aJggHB/U/TypNJ4ccjOn2PcYs
	n5isEsWHW32Yyg8ZELxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4iHe-0001LH-QS; Thu, 20 Feb 2020 09:38:14 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4iHV-0001KY-GK
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 09:38:07 +0000
Received: by mail-wm1-x342.google.com with SMTP id p17so1244387wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 01:38:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=91hJOg6mkO0g2GWClGuxRVigkpNiaYP+nKzj4TFaDHY=;
 b=tDOc3ZzhHCw3tQK9vmGLOg1WdfVWzGtbuuzsRJx/BgZ4qvQJdyNACmmIvCTjmpCd09
 lNXL2rbbLhR8eksjg4eCL28QEjCo6L9SPVxihR/YS9Uv1M4Ck9Qs/PjF0aBCzYViwZ4c
 7lqectiY9wU/r7O0Fs7elIkRanR4z9ZLunF6xIZQwKiXgEItBDf36uZLH8iznutginQz
 5tfUIcBQjA1CyfsuZUTtMtf1ACtjYbdfqOaYsnWaePSPGU55A/4cCwLIZ65JSLjkEN1o
 epYoZq365UnpMLy8qi1aWvE5MRJEQ93Le+SZKsSKSa2Fu/BHxACCBir43JeMtHIpPt8A
 ED8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=91hJOg6mkO0g2GWClGuxRVigkpNiaYP+nKzj4TFaDHY=;
 b=hR2ZobnBE0paWusnLTzTCvXmszHsHBh3Bkvxyphb3M6a3ZsL/1oh95J9F1nCkhJWeo
 YTzZrnBPSA7vuw8gJqDTdFoClRznE6nK7leLxuvVwo2pqQaAym2vFIwU0Vne+Nl5K8Gg
 BYl4OfsCvDrf5gai9EdPnIXYgeDTi/K333Fi5SJbVeTCR/404m1WvbZLJkOYMWMlucn4
 FycE8nZzL040aob/hLeU6QXCpNtKWGJPOaQa3TVGlEESsCj0LLzfQI43sydxM2K1zJr7
 JAECfLc4kHJIEZmjQ1tSK4trJbEmaFO/DhxPt7zeOZan24vTe5EKDsYfuu/aq2GS5bh5
 19dA==
X-Gm-Message-State: APjAAAU3II2HkDY5h0gDWLwS5Vkxjiv9W3a4N166Rcbbzp1qWS1LhiRy
 Xrtm7BdmQu6gCyFzXYSawHS7CIWA3IM=
X-Google-Smtp-Source: APXvYqzoG3nBri3g1BPDtmvxxv+KOfrysBzEib4/n1Zp8hr2ySi6LK5uYqHVZcun9F260Utu4C6kIQ==
X-Received: by 2002:a1c:bdc6:: with SMTP id n189mr3482954wmf.102.1582191481981; 
 Thu, 20 Feb 2020 01:38:01 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:1d8d:74ba:7173:f47f?
 ([2a01:e34:ed2f:f020:1d8d:74ba:7173:f47f])
 by smtp.googlemail.com with ESMTPSA id q124sm3745544wme.2.2020.02.20.01.38.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 20 Feb 2020 01:38:01 -0800 (PST)
Subject: Re: [PATCH v4 2/3] mfd: stm32: Add defines to be used for clkevent
 purpose
To: Benjamin Gaignard <benjamin.gaignard@st.com>, lee.jones@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com, tglx@linutronix.de, fabrice.gasnier@st.com
References: <20200217134546.14562-1-benjamin.gaignard@st.com>
 <20200217134546.14562-3-benjamin.gaignard@st.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <e9f7eaac-5b61-1662-2ae1-924d126e6a97@linaro.org>
Date: Thu, 20 Feb 2020 10:38:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200217134546.14562-3-benjamin.gaignard@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_013805_610241_7813C877 
X-CRM114-Status: GOOD (  15.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhpIExlZSwKCk9uIDE3LzAyLzIwMjAgMTQ6NDUsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+
IEFkZCBkZWZpbmVzIHRvIGJlIGFibGUgdG8gZW5hYmxlL2NsZWFyIGlycSBhbmQgY29uZmlndXJl
IG9uZSBzaG90IG1vZGUuCj4gCj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJl
bmphbWluLmdhaWduYXJkQHN0LmNvbT4KCkFyZSB5b3UgZmluZSBpZiBJIHBpY2sgdGhpcyBwYXRj
aCB3aXRoIHRoZSBzZXJpZXM/Cgo+IC0tLQo+IHZlcnNpb24gNDoKPiAtIG1vdmUgZGVmaW5lcyBp
biBtZmQvc3RtMzItbHB0aW1lci5oCj4gCj4gIGluY2x1ZGUvbGludXgvbWZkL3N0bTMyLWxwdGlt
ZXIuaCB8IDUgKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+IAo+IGRp
ZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L21mZC9zdG0zMi1scHRpbWVyLmggYi9pbmNsdWRlL2xp
bnV4L21mZC9zdG0zMi1scHRpbWVyLmgKPiBpbmRleCA2MDVmNjIyNjQ4MjUuLjkwYjIwNTUwYzFj
OCAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2xpbnV4L21mZC9zdG0zMi1scHRpbWVyLmgKPiArKysg
Yi9pbmNsdWRlL2xpbnV4L21mZC9zdG0zMi1scHRpbWVyLmgKPiBAQCAtMjcsMTAgKzI3LDE1IEBA
Cj4gICNkZWZpbmUgU1RNMzJfTFBUSU1fQ01QT0sJCUJJVCgzKQo+ICAKPiAgLyogU1RNMzJfTFBU
SU1fSUNSIC0gYml0IGZpZWxkcyAqLwo+ICsjZGVmaW5lIFNUTTMyX0xQVElNX0FSUk1DRgkJQklU
KDEpCj4gICNkZWZpbmUgU1RNMzJfTFBUSU1fQ01QT0tDRl9BUlJPS0NGCUdFTk1BU0soNCwgMykK
PiAgCj4gKy8qIFNUTTMyX0xQVElNX0lFUiAtIGJpdCBmbGllZHMgKi8KPiArI2RlZmluZSBTVE0z
Ml9MUFRJTV9BUlJNSUUJQklUKDEpCj4gKwo+ICAvKiBTVE0zMl9MUFRJTV9DUiAtIGJpdCBmaWVs
ZHMgKi8KPiAgI2RlZmluZSBTVE0zMl9MUFRJTV9DTlRTVFJUCUJJVCgyKQo+ICsjZGVmaW5lIFNU
TTMyX0xQVElNX1NOR1NUUlQJQklUKDEpCj4gICNkZWZpbmUgU1RNMzJfTFBUSU1fRU5BQkxFCUJJ
VCgwKQo+ICAKPiAgLyogU1RNMzJfTFBUSU1fQ0ZHUiAtIGJpdCBmaWVsZHMgKi8KPiAKCgotLSAK
IDxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0
d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5j
b20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJv
b3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
