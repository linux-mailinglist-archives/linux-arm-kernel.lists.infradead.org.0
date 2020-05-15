Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FEF1D5492
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 17:26:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EXgrsHZ4ehXkiFmk91QK1OKX9Vmfqks85Qztbl9GXpg=; b=f8zdGsiC9bjqw3
	1HBAu7M767aYQiv31TTTc/5RfqtTxhEhPEdJKNkgQvYllPFloIkpo4Z5ZY0xnnpwLsFhs4UIozibr
	SGOMzOlf6Dw+slJmCkxgWeaqGwSblmikSYfRStx2N4GzTeGg2kMak8cB3YuGASKR1gNdM1oISCBgO
	RsyGPXjXaowX8w9+JIUccjK7mLThcaNWL7v6wfb/cc6Ht+Ww4K1dEJgPM/O14i+t//IIoMU9cESbI
	JEwOqABTmTtXCQBD+BTOdwMVg4LfoUdK2+vAYILOA66uVeLFRL9Utn1Ql3jyZHRAVzh/ib4MTVU31
	Lr3sNDsd7fMfx2ayQNUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZcDq-0007S6-DP; Fri, 15 May 2020 15:26:02 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZcDR-0007Ql-PC
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 15:25:42 +0000
Received: by mail-wm1-x343.google.com with SMTP id k12so2721402wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 08:25:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YFhUWh3rqYQ5lYOCD1pUDd9xSXvV5hD7qu9U6/eGHK8=;
 b=u+wYi/xB7RG7dW9P//tCKce7JU27PuS4/ZEaQtTv/6A9bKF5AKlZUI4Ea2o+fuoUsD
 TYrrzV3tdNVH3TW8F+e0jman9omN7kjFyd2zEo2y0/Io8nUD7ENLB0oduoA9zTLnWJni
 UB1ky4C+gENKTORSOp5+6osP3oZiQyv2sS20GHf3dnAQ7D8xZr6VkWGdZpyWb25LvaTn
 BjZckcxWYsLcU7ESIEbw7J5bt31IzvwMENVE8PzoT84XHq3rvFGpEyCJ9TBzwGByr1yp
 KBea4JqUP9/UYZ80wYNCIdYpHHoQVw12Gc4Reks3GjzIVHXFJZIiSCyA0Dl7rJAU1xtF
 EIEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YFhUWh3rqYQ5lYOCD1pUDd9xSXvV5hD7qu9U6/eGHK8=;
 b=GQ3x5kREbWcT8jUXa0HYrta/klZcF1mP7MAiGNW+Uxgp7E5TUoOS+LIWdnlaSd8j1L
 zb0XvqBMdM+N2BgGee6cLdEVKc0fiEDE2QzeZNWAakNP1mjluViI7z5++vlUu6NudAgS
 ZuK91uLVuSI59m5b7NEeer0/XMhauoJEf4icit63sw11LF3LWrJcM36DeUwaf1/t765Z
 5YBzgKKJLstoeRk20S6tH0ZyESOV21cp/KBz9q00EKR6IKK4Fu98tLDt/139odq/U93o
 53u6XGjrsvyUTHwdev4LoaOUA7g7NzAbhdCyZMo8clG+HvlIvbSHVrIBGmtIW7It2GLE
 lHJg==
X-Gm-Message-State: AOAM531Y2oTaevQ7ClcgKgne/ho58g3MBgh2JDbcLWu+WiRd+iG/NN6+
 XU2LwVDq/HnJGws1qz45Dv7WlpEZGbk=
X-Google-Smtp-Source: ABdhPJxJfjd9pQ/+v6j1z3nSlQv5vEd9TC1ju+/BM0f9fa47cxr7bzT/h/QNmZPQGNKf8QPtcqxPFg==
X-Received: by 2002:a05:600c:14c6:: with SMTP id
 i6mr4518549wmh.58.1589556336049; 
 Fri, 15 May 2020 08:25:36 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:5450:281:8a7d:dd9a?
 ([2a01:e34:ed2f:f020:5450:281:8a7d:dd9a])
 by smtp.googlemail.com with ESMTPSA id b20sm4282178wme.9.2020.05.15.08.25.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 15 May 2020 08:25:35 -0700 (PDT)
Subject: Re: [Linux-stm32] [PATCH v7 5/6] clocksource: Add Low Power STM32
 timers driver
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 Fabrice GASNIER <fabrice.gasnier@st.com>,
 "lee.jones@linaro.org" <lee.jones@linaro.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>
References: <20200420121620.2099-1-benjamin.gaignard@st.com>
 <20200420121620.2099-6-benjamin.gaignard@st.com>
 <bbac5aa5-1c95-456e-3141-006d4fa86095@st.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <103c5558-4dc9-63c9-4994-5c8f97646eee@linaro.org>
Date: Fri, 15 May 2020 17:25:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <bbac5aa5-1c95-456e-3141-006d4fa86095@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_082537_823157_B5025B0A 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Pascal PAILLET-LME <p.paillet@st.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQmVuamFtaW4sCgpPbiAwNS8wNS8yMDIwIDA5OjI2LCBCZW5qYW1pbiBHQUlHTkFSRCB3cm90
ZToKPiAKPiAKPiBPbiA0LzIwLzIwIDI6MTYgUE0sIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+
PiBGcm9tOiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAbGluYXJvLm9yZz4K
Pj4KPj4gSW1wbGVtZW50IGNsb2NrIGV2ZW50IGRyaXZlciB1c2luZyBsb3cgcG93ZXIgU1RNMzIg
dGltZXJzLgo+PiBMb3cgcG93ZXIgdGltZXIgY291bnRlcnMgcnVubmluZyBldmVuIHdoZW4gQ1BV
cyBhcmUgc3RvcHBlZC4KPj4gSXQgY291bGQgYmUgdXNlZCBhcyBjbG9jayBldmVudCBicm9hZGNh
c3RlciB0byB3YWtlIHVwIENQVXMgYnV0IG5vdCBsaWtlCj4+IGEgY2xvY2tzb3VyY2UgYmVjYXVz
ZSBlYWNoIGl0IHJpc2UgYW4gaW50ZXJydXB0IHRoZSBjb3VudGVyIHJlc3RhcnQgZnJvbSAwLgo+
Pgo+PiBMb3cgcG93ZXIgdGltZXJzIGhhdmUgYSAxNiBiaXRzIGNvdW50ZXIgYW5kIGEgcHJlc2Nh
bGVyIHdoaWNoIGFsbG93IHRvCj4+IGRpdmlkZSB0aGUgY2xvY2sgcGVyIHBvd2VyIG9mIDIgdG8g
dXAgMTI4IHRvIHRhcmdldCBhIDMyS0h6IHJhdGUuCj4gR2VudGxlIHBpbmcgdG8gcmV2aWV3ZXJz
IG9uIHRoaXMgZHJpdmVyIHBhcnQgb2YgdGhlIHNlcmllcy4KPiBUaGUgYmluZGluZ3MgYW5kIHRo
ZSBNRkQgaGF2ZSBiZWVuIHJldmlld2VkIHNvIEkgaG9wZSBJIGNhbiBwcm9ncmVzcwo+IG9uIHRo
ZSBkcml2ZXIgcGFydCB0b28uCgpbIC4uLiBdCgpzb3JyeSBmb3IgdGhlIGRlbGF5LgoKSG93IGRv
IHlvdSB3YW50IHRoZXNlIHBhdGNoZXMgdG8gYmUgbWVyZ2VkPwoKU2hhbGwgSSBwaWNrIHBhdGNo
IDYvNyA/CgoKCi0tIAo8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3Bl
biBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93
d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIu
Y29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJv
LWJsb2cvPiBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
