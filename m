Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95AD418B97D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 15:36:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=shxx/7zxmT6J87VZm1KlFwDWJiDYeMCkwNeNalCQUY4=; b=QA3dPdIHVsICUa
	DiuAnn+ArVeoaPhVREdVj5TCRNPgBoZ+1vQEqJsYC3TJqIHjVAZKeLR6Ix+cWBMO/dPxgZ3BMkSOw
	1sxJFqYWhmLwRmgqupIGEu1AXbkvxy69XQeGnSmPTSKNeZ1rX9K1QhtAR+IoMXg/wDK4m+DJ+Kn+i
	i8bCCZIt9wCxqo9ItS8Okq7R3V6t8/yuA8cWmrSCGPVnKHFoXLG0wDid6oRnaVyWfBu2d0jfPY9m7
	wrGzMsIMua8yTi04NpCdeKIpEHPxuRtClG/k6vicohW5CQrFj36Nd98BzEd6Say5Yyv6wDE/mBMEw
	ueB+rkH6RIhNQ9z7RY2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEwHD-00036u-PB; Thu, 19 Mar 2020 14:36:03 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEwGy-00036U-KO
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 14:35:50 +0000
Received: by mail-lj1-x243.google.com with SMTP id o10so2733544ljc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 07:35:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=GnY66tiLgnT7uMr9518ZV493aERIdx8VHWwveyXTDnk=;
 b=YYp40Z4MW214HarFNMtj5EpZt9aUZRpAORwA8owUWeLF0UsNemk7FjcHkPFuQiF08X
 ivBCgbgNnQ0YC7l6wjb+ZFkZNtOobgpQzTm1wL6D/F1v5n/b5P4qWBkQpx6JIa3edoOz
 opPN04Owd9irRArSPfanBTsmxKfYek7pOVgc1Zz4e04aNvBhxj0KlwED8IFgdhx+GouC
 oWUJ/CgDY8TefgdMdGj6hAt1SbSZaihMXN1zkPH0df8jR/Mc817Wi+6Ehv+MXU15IYex
 XvF9hax7N2kjQSjR1Yg88RRl27MlSdn6Esk4HYtn7+mOpP7gXpCZFmWlVsmRqBlpxep9
 HKrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GnY66tiLgnT7uMr9518ZV493aERIdx8VHWwveyXTDnk=;
 b=dVaR3YvHb3dvOwc7+7blhm3oL0vJgonEfZuAcIk3N/bGFxvyP8rHJUP9nANDhQBRk6
 AJftr4EezQytXkAz6MVpt2lMU6a9Jn6+USK58JNh+7Yud6KHIdjwEmGslzuxLEd0BbwR
 da6B4ZrdCCCW8ulcLbwqbXc35Mf4lVy76jNWRyRssONaCEw6LRIdsgRbVrCqX29xlehp
 Pcl2E7OkpWCq3aw/Kk6KACTwQ74Evlzx9ZGObGZjvd15nMbQqROWAgpi2/EjQe+pLoa6
 QjEaJsM93ubqAI8e9Ip6oSC1Ria48VaPqErV8bTHw5kBOIdtxQ7r5pDg545FUXUm1xTu
 BUig==
X-Gm-Message-State: ANhLgQ2r1ubKb5V1LeEw3MywimLzGRiNuZ98deY5nQwP1bSPt8qq2/s5
 eKz3qhgnY22nP1OQE8X7ZeQ=
X-Google-Smtp-Source: ADFU+vsUQgj771kWpKIfgPuGmuo6zRMZpbLT62dCa0mQsjR5QPKNN7fglR+T4EukdOBYFNyWQCJ38w==
X-Received: by 2002:a2e:8ec7:: with SMTP id e7mr2304748ljl.36.1584628545819;
 Thu, 19 Mar 2020 07:35:45 -0700 (PDT)
Received: from [192.168.2.145] (94-29-39-224.dynamic.spd-mgts.ru.
 [94.29.39.224])
 by smtp.googlemail.com with ESMTPSA id g20sm1654655lfj.88.2020.03.19.07.35.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Mar 2020 07:35:45 -0700 (PDT)
Subject: Re: [PATCH v2] ARM: boot: Obtain start of physical memory from DTB
To: Geert Uytterhoeven <geert@linux-m68k.org>
References: <CGME20200225112354eucas1p1300749b32c6809b6a22194c1a952a68c@eucas1p1.samsung.com>
 <20200127140716.15673-1-geert+renesas@glider.be>
 <d1b12473-5199-1cf6-25d1-a6ce79450e8e@samsung.com>
 <CAMuHMdUGu4eStpYp5W0SKJd8yrLLDTgF4__Jq_n+Z7SWtPM+Cg@mail.gmail.com>
 <90c006f2-8c13-2976-008f-37139ca49f37@gmail.com>
 <CAMuHMdVkhf+4CQwpf9tn3UfaMb=qoRRYS2XpwcgBMciTVmXjHA@mail.gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <75358399-c292-4e60-abdc-bd0729cf5c08@gmail.com>
Date: Thu, 19 Mar 2020 17:35:44 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdVkhf+4CQwpf9tn3UfaMb=qoRRYS2XpwcgBMciTVmXjHA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_073548_672665_9136C40A 
X-CRM114-Status: GOOD (  23.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
 Russell King <linux@armlinux.org.uk>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 Eric Miao <eric.miao@nvidia.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTkuMDMuMjAyMCAxMToxOCwgR2VlcnQgVXl0dGVyaG9ldmVuINC/0LjRiNC10YI6Cj4gSGkgRG1p
dHJ5LAo+IAo+IE9uIFRodSwgTWFyIDE5LCAyMDIwIGF0IDI6MTEgQU0gRG1pdHJ5IE9zaXBlbmtv
IDxkaWdldHhAZ21haWwuY29tPiB3cm90ZToKPj4gMjUuMDIuMjAyMCAxNDo0MCwgR2VlcnQgVXl0
dGVyaG9ldmVuINC/0LjRiNC10YI6Cj4+PiBPbiBUdWUsIEZlYiAyNSwgMjAyMCBhdCAxMjoyNCBQ
TSBNYXJlayBTenlwcm93c2tpCj4+PiA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPiB3cm90ZToK
Pj4+PiBPbiAyNy4wMS4yMDIwIDE1OjA3LCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6Cj4+Pj4+
IEN1cnJlbnRseSwgdGhlIHN0YXJ0IGFkZHJlc3Mgb2YgcGh5c2ljYWwgbWVtb3J5IGlzIG9idGFp
bmVkIGJ5IG1hc2tpbmcKPj4+Pj4gdGhlIHByb2dyYW0gY291bnRlciB3aXRoIGEgZml4ZWQgbWFz
ayBvZiAweGY4MDAwMDAwLiAgVGhpcyBtYXNrIHZhbHVlCj4+Pj4+IHdhcyBjaG9zZW4gYXMgYSBi
YWxhbmNlIGJldHdlZW4gdGhlIHJlcXVpcmVtZW50cyBvZiBkaWZmZXJlbnQgcGxhdGZvcm1zLgo+
Pj4+PiBIb3dldmVyLCB0aGlzIGRvZXMgcmVxdWlyZSB0aGF0IHRoZSBzdGFydCBhZGRyZXNzIG9m
IHBoeXNpY2FsIG1lbW9yeSBpcwo+Pj4+PiBhIG11bHRpcGxlIG9mIDEyOCBNaUIsIHByZWNsdWRp
bmcgYm9vdGluZyBMaW51eCBvbiBwbGF0Zm9ybXMgd2hlcmUgdGhpcwo+Pj4+PiByZXF1aXJlbWVu
dCBpcyBub3QgZnVsZmlsbGVkLgo+Pj4+Pgo+Pj4+PiBGaXggdGhpcyBsaW1pdGF0aW9uIGJ5IG9i
dGFpbmluZyB0aGUgc3RhcnQgYWRkcmVzcyBmcm9tIHRoZSBEVEIgaW5zdGVhZCwKPj4+Pj4gaWYg
YXZhaWxhYmxlIChlaXRoZXIgZXhwbGljaXRseSBwYXNzZWQsIG9yIGFwcGVuZGVkIHRvIHRoZSBr
ZXJuZWwpLgo+Pj4+PiBGYWxsIGJhY2sgdG8gdGhlIHRyYWRpdGlvbmFsIG1ldGhvZCB3aGVuIG5l
ZWRlZC4KPj4+Pj4KPj4+Pj4gVGhpcyBhbGxvd3MgdG8gYm9vdCBMaW51eCBvbiByN3M5MjEwL3J6
YTJtZXZiIHVzaW5nIHRoZSA2NCBNaUIgb2YgU0RSQU0KPj4+Pj4gb24gdGhlIFJaQTJNRVZCIHN1
YiBib2FyZCwgd2hpY2ggaXMgbG9jYXRlZCBhdCAweDBDMDAwMDAwIChDUzMgc3BhY2UpLAo+Pj4+
PiBpLmUuIG5vdCBhdCBhIG11bHRpcGxlIG9mIDEyOCBNaUIuCj4+Pj4+Cj4+Pj4+IFN1Z2dlc3Rl
ZC1ieTogTmljb2xhcyBQaXRyZSA8bmljb0BmbHV4bmljLm5ldD4KPj4+Pj4gU2lnbmVkLW9mZi1i
eTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KPj4+Pj4gUmV2
aWV3ZWQtYnk6IE5pY29sYXMgUGl0cmUgPG5pY29AZmx1eG5pYy5uZXQ+Cj4+Pj4+IC0tLQo+Pj4+
PiBBZ2FpbnN0IGFybS9mb3ItbmV4dC4KPj4+Pgo+Pj4+IFRoaXMgcGF0Y2ggbGFuZGVkIHJlY2Vu
dGx5IGluIGxpbnV4LW5leHQuIEl0IGJyZWFrcyBsZWdhY3kgYm9vdGluZyBmcm9tCj4+Pj4gdGhl
IHpJbWFnZSArIGFwcGVuZGVkIERUICsgY21kbGluZS9tZW1vcnkgaW5mbyBwcm92aWRlZCB2aWEg
QVRBR3MuIEkKPj4+PiB3aWxsIGRlYnVnIGl0IGZ1cnRoZXIgb25jZSBJIGZpbmQgc29tZSBzcGFy
ZSB0aW1lLiBXaGF0IEkgbm90aWNlZCBzbwo+Pj4+IGZhciwgdGhlIGNtZGxpbmUvbWVtb3J5IGlu
Zm8gaXMgbm90IHJlYWQgZnJvbSB0aGUgQVRBR3MsIG9ubHkgdGhlIHZhbHVlcwo+Pj4+IHByb3Zp
ZGVkIHZpYSBhcHBlbmRlZCBEVCBhcmUgdXNlZC4KPj4+Cj4+PiBPb3BzLCBzb21ldGhpbmcgaGFw
cGVuaW5nIGxpa2UgdGhpcyB3YXMgb25lIG9mIG15IGJpZ2dlc3Qgd29ycmllcyB3aGVuCj4+PiBw
b3N0aW5nIHRoaXMgcGF0Y2guLi4gU29ycnkgZm9yIHRoZSBicmVha2FnZS4KPj4+Cj4+PiBJSVVJ
QywgdGhlIGtlcm5lbCBzdGlsbCBib290cywgYnV0IGp1c3QgZG9lc24ndCB1c2UgdGhlIGluZm8g
cGFzc2VkIGJ5IEFUQUdzPwo+Pj4KPj4+IEknbGwgaGF2ZSBhIGNsb3NlciBsb29rIGxhdGVyIHRv
ZGF5Lgo+Pj4gSW4gdGhlIG1lYW4gdGltZSwgSSd2ZSBzZW50IHNvbWUgZGVidWcgY29kZSBJIHVz
ZWQgd2hlbiBkZXZlbG9waW5nCj4+PiB0aGlzIHBhdGNoLCB3aGljaCBtYXkgYmUgdXNlZnVsLCBo
b3BlZnVsbHkuCj4+Cj4+IE5WSURJQSBUZWdyYSBpcyBhbHNvIGFmZmVjdGVkIGJ5IHRoaXMgcGF0
Y2guIEEgd2VlayBhZ28gYW4gdXBkYXRlZAo+PiB2ZXJzaW9uIG9mIHRoZSBwYXRjaCB3YXMgcHVz
aGVkIGludG8gbGludXgtbmV4dCBhbmQgbm93IG1hY2hpbmUgZG9lc24ndAo+PiBib290IGF0IGFs
bC4KPiAKPiBJJ20gc29ycnkgdG8gaGVhciB0aGF0Lgo+IAo+IERpZCB2MiB3b3JrIGZvciB5b3U/
CgpTYW1lIGFzIGl0IHdhcyBmb3IgTWFyZWsuCgo+IEFyZSB5b3Ugc3VyZSB0aGlzIHVwZGF0ZWQg
dmVyc2lvbiBpcyB0aGUgY3VscHJpdD8gVGhlcmUgYXJlIHNldmVyYWwgb3RoZXIKPiByZWNlbnQg
Y2hhbmdlcyB0byBoZWFkLlMgaW4gYXJtL2Zvci1uZXh0LgoKWWVzCgo+IERvIHlvdSBib290IGEg
c2VwYXJhdGUgRFRCIG9yIGFuIGFwcGVuZGVkIERUQj8KCkFwcGVuZGVkCgo+IERvIHlvdSB1c2Ug
QVRBR1M/CgpZZXMKCj4+IEkgY291bGRuJ3QgZmluZCB2MyBvbiB0aGUgTUwsIHNvIHJlcGx5aW5n
IHRvIHRoZSB2Mi4gUGxlYXNlIHRha2UgYSBsb29rCj4+IGFuZCBmaXggdGhlIHByb2JsZW0sIG9y
IHJldmVydC9kcm9wIHRoZSBvZmZlbmRpbmcgcGF0Y2gsIHRoYW5rcyBpbiBhZHZhbmNlLgo+IAo+
IFYzIGlzIHYyIGNvbWJpbmVkIHdpdGggIltQQVRDSF0gQVJNOiBib290OiBGaXggQVRBR3Mgd2l0
aCBhcHBlbmRlZCBEVEIiCj4gKGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJlbmVzYXMt
c29jLzIwMjAwMjI1MTQ0NzQ5LjE5ODE1LTEtZ2VlcnQrcmVuZXNhc0BnbGlkZXIuYmUvKS4KClRo
YW5rIHlvdSBmb3IgdGhlIGNsYXJpZmljYXRpb24uCgpJIHJlY2FsbGVkIHRoYXQgQ09ORklHX1RI
VU1CMl9LRVJORUw9eSBpcyBzZXQgaW4gbXkga2VybmVsJ3MgY29uZmlnIGFuZApkaXNhYmxpbmcg
dGh1bWIyIGJ1aWxkIGZpeGVzIHRoZSBwcm9ibGVtLiBQbGVhc2UgY29ycmVjdCBpdCBpbiB0aGUg
bmV4dAp2ZXJzaW9uIG9mIHRoZSBwYXRjaCwgdGhhbmtzIGluIGFkdmFuY2UuCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
