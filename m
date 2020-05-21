Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD3C1DCCE4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 14:29:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dyhmwto8p0WcTMrN+52H1zY3O/DOFNOnm788Z5Tpqvo=; b=RZtcEIIWKqSzPH
	ADM4/zUy6Bw/YZnVHBo7Y+2XFCk3aPulhn4OaEBfIoPUodXifwVuURPu0C7ZetjQXodgy3R8J2Z/U
	yyo28kmgwUWzZsQF+sMu34OnYOgomx2K7/IZZ5dJpsQLcq1FxAf7g6SndYwiDxkba1Glr9Lt17L7P
	zc6oTlozh7P3QLyaLHFO921JTuTMqWL0pRIehZTcpg7KX2dyb3xWNLKqtvVLMFxTuewBCHfGxSqdg
	gDYT76rCrnk2uhkQ06f7C+BYwAvmad3A2NZCr9FqnafEyLoTPyU82w+mB/rBh0rxKQefWUEGAvjQ/
	Mwza6Yrz1fXzMzOJqbwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbkK3-0001pd-Hu; Thu, 21 May 2020 12:29:15 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbkJs-0001nu-VU; Thu, 21 May 2020 12:29:06 +0000
Received: by mail-ej1-x644.google.com with SMTP id h21so8593969ejq.5;
 Thu, 21 May 2020 05:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=6GWXUPDNtcqPMbMf+st3rlAt+MWIjWvFAG+evIajo2Q=;
 b=Dgq2ENGih+H9YOhCve0hYfcTj4H0NHnoqFUNURea3Nkq//rRp/Y7OwrKGo+V56lh7g
 unHKMmsPtCGSyKki7bPw90RLPuG3B9MQMZEU3Bh41SPPYHZyGhq3tyFAfEcpvjXZcam3
 rjLqQJw4w1VaH1NQzO8vKnX+RAPU2vO2j4ZZaqF+9dTSJUFjGpEL2Tjt4XMPJu6xSqJd
 SknvoknV8qSmYree9EawNrQVfTmyG9RrjSbcL4kG787IpHfKpdooYHXGdSBpLXvkvRrp
 C2Qj6FEFT83LXlKAyrx8SU/cSRmt1JlIFOSixmgW2oCKJUV2U3kEH+tdIc8YLaLjhvfz
 +4lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6GWXUPDNtcqPMbMf+st3rlAt+MWIjWvFAG+evIajo2Q=;
 b=Wso0ils5JVkN7PhHBxsNnZg8eFfZJWv71Z6Wuq8WkiQRhT2GfR+1YYy3GRuHp0LBJ7
 7VA1I1ptU+v+boenMTOE3qab9Ellq9coSlhr3iMZlBxiX9rEvLnf7GEWrGEFKg2CnOL+
 LhQ3qJkUiViiQqVicZgKBrpDafyKsxccFk2uvcWZ0u3jTtOoYEX26aT6Fz8olwwrKD7B
 s8C7erzWHxFSBxxm9XYOPxJQxfChGqkVdSIJ1+tXiQReuFrnQQqaUdlJEQWIuG/kwwvy
 LiyV0FrIGwWhpAHoPVCYc8XzK9AaH2l/d3XjXg6oRq8UiNzh+LG1bfh6xLpJ4rbWUK1z
 hfSg==
X-Gm-Message-State: AOAM533kBim/jBGUtpAOz/YsAovNqCidSuspGAAYB33QSQ4KG+1Vz6vS
 8BjUASr6Dg56gu1qe/AjXO0udZZa2x8=
X-Google-Smtp-Source: ABdhPJyIuKGqOWjquNroUoWJ3cJmIA0tMeGKZOElZzWNqX8OV/c6qN8Y0YF0wDLkl/gS4HLH53vhxQ==
X-Received: by 2002:a17:907:9484:: with SMTP id
 dm4mr3521767ejc.56.1590064142189; 
 Thu, 21 May 2020 05:29:02 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id nj6sm4692805ejb.99.2020.05.21.05.29.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 May 2020 05:29:01 -0700 (PDT)
Subject: Re: [RFC PATCH] arm64: dts: rockchip: fix dmas dma-names for rk3308
 i2s node
To: Robin Murphy <robin.murphy@arm.com>, heiko@sntech.de
References: <20200520064816.3954-1-jbx6244@gmail.com>
 <543270ad-dd11-2bd4-8959-e898834c19e5@arm.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <094fa89d-61f7-1eb4-be78-b430502c5d3e@gmail.com>
Date: Thu, 21 May 2020 14:28:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <543270ad-dd11-2bd4-8959-e898834c19e5@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_052905_012422_04AE5D4A 
X-CRM114-Status: GOOD (  19.59  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, kever.yang@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org, wxt@rock-chips.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iaW4sIEtldmVyLCBDYWVzYXIsCgpPbiA1LzIxLzIwIDE6NDggUE0sIFJvYmluIE11cnBo
eSB3cm90ZToKPiBPbiAyMDIwLTA1LTIwIDA3OjQ4LCBKb2hhbiBKb25rZXIgd3JvdGU6Cj4+IE9u
ZSBvZiB0aGUgY3VycmVudCByazMzMDggJ2kycycgbm9kZXMgaGFzIGEgZGlmZmVyZW50IGRtYSBs
YXlvdXQKPj4gd2l0aCBvbmx5IDEgaXRlbS4gVGFibGUgOS0yIERNQUMxIFJlcXVlc3QgTWFwcGlu
ZyBUYWJsZSBzaG93cyB0aGF0Cj4+IHRoZXJlIDIgZG1hIHNvdXJjZXMgYXZhaWxhYmxlLCBzbyBm
aXggdGhlIGRtYXMgYW5kIGRtYS1uYW1lcwo+PiBmb3IgdGhlIHJrMzMwOCAnaTJzJyBub2RlLgo+
Pgo+PiAxMCBJMlMvUENNXzJDSF8xIHR4IEhpZ2ggbGV2ZWwKPj4gMTEgSTJTL1BDTV8yQ0hfMSBy
eCBIaWdoIGxldmVsCj4gCj4gLi4uaG93ZXZlciB0YWJsZSAxLTUgaW4gdGhlIHNhbWUgbWFudWFs
IChhdCBsZWFzdCB0aGF0IEkgY291bGQgZmluZCkKPiBzYXlzIHJlcXVlc3QgMTAgaXMgcmVzZXJ2
ZWQuIERvZXMgdGhhdCBtZWFuIGl0IHdhcyBpbnRlbmRlZCB0byBiZSB3aXJlZAo+IHVwIGZvciB0
aGlzLCBidXQgZW5kZWQgdXAgYnJva2VuIGZvciBzb21lIHJlYXNvbj8KPiAKPiBEbyB5b3UgaGF2
ZSBoYXJkd2FyZSB0byBjb25maXJtIHdoZXRoZXIgdGhpcyB3b3JrcyByZWxpYWJseSBvciBub3Q/
CgpObywgSSBkb24ndC4KQSBkZXNjcmlwdGlvbiBmb3IgMzMwOCB3YXMgYWRkZWQgdG8gcm9ja2No
aXAtaTJzLnlhbWwgd2l0aCBvbmx5IHJ4IGJ5Cm15c2VsZi4KSXQgd291bGQgYmUgbmljZSBpZiBz
b21lb25lIGNvdWxkIHRlc3QsIGNvbmZpcm0gb3IgZ2l2ZSBhIGhpbnQuCgpDb3VsZCBzb21lb25l
IGZyb20gUm9ja2NoaXAoS2V2ZXIsIENhZXNhcikgZXhwbGFpbiB0aGUgJ1Jlc2VydmVkJyBpbgpU
YWJsZSAxLTUgPwoKVGFibGUgMS01IFJLMzMwOCBETUFDMSBoYXJkd2FyZSByZXF1ZXN0IGNvbm5l
Y3Rpb24gbGlzdAoKMTAgUmVzZXJ2ZWQgICAgIEhpZ2ggbGV2ZWwKMTEgSTJTXzJDSF8xIHJ4IEhp
Z2ggbGV2ZWwKCj4gCj4gUm9iaW4uCj4gCj4+IFNpZ25lZC1vZmYtYnk6IEpvaGFuIEpvbmtlciA8
amJ4NjI0NEBnbWFpbC5jb20+Cj4+IC0tLQo+PiDCoCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzMwOC5kdHNpIHwgNCArKy0tCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzMwOC5kdHNpCj4+IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazMzMDguZHRzaQo+PiBpbmRleCBhYzdmNjk0MDcuLjc5YzFkZDFmZSAxMDA2NDQKPj4gLS0t
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMDguZHRzaQo+PiArKysgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMwOC5kdHNpCj4+IEBAIC01NjQsOCArNTY0LDgg
QEAKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGludGVycnVwdHMgPSA8R0lDX1NQSSA1MyBJUlFfVFlQ
RV9MRVZFTF9ISUdIPjsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGNsb2NrcyA9IDwmY3J1IFNDTEtf
STJTMV8yQ0g+LCA8JmNydSBIQ0xLX0kyUzFfMkNIPjsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGNs
b2NrLW5hbWVzID0gImkyc19jbGsiLCAiaTJzX2hjbGsiOwo+PiAtwqDCoMKgwqDCoMKgwqAgZG1h
cyA9IDwmZG1hYzEgMTE+Owo+PiAtwqDCoMKgwqDCoMKgwqAgZG1hLW5hbWVzID0gInJ4IjsKPj4g
K8KgwqDCoMKgwqDCoMKgIGRtYXMgPSA8JmRtYWMxIDEwPiwgPCZkbWFjMSAxMT47Cj4+ICvCoMKg
wqDCoMKgwqDCoCBkbWEtbmFtZXMgPSAidHgiLCAicngiOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAg
cmVzZXRzID0gPCZjcnUgU1JTVF9JMlMxXzJDSF9NPiwgPCZjcnUgU1JTVF9JMlMxXzJDSF9IPjsK
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJlc2V0LW5hbWVzID0gInJlc2V0LW0iLCAicmVzZXQtaCI7
Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+PgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
