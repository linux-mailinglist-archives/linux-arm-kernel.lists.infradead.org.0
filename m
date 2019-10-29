Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2539BE8E24
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 18:34:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LyD7VVtEVk0sUF4ImqARDJjg5ljtIC72dh0oCaRnumc=; b=CXseZQ0Afm0miOq7gWufrsgqMJ
	nyjztv98zrodw+Y0wiPbMhi8/HxqP3E42CUGDooVNM9nSOA8QHFhgeUN4bv9FfzsohNXLOOR5Wbs0
	5MZnc6bzfaac2L3L0TylJ/ctTxTfMtl6CEFGGWxeN4rhZf9PxC090+jj+tP8hqX88Vikh87Nn7OvF
	lCOZcrvlO7yhTEGaSBwS/VU9ZXJxQlDCnYvg3doq03Zt9TPUR3gjk/i2lcdSf/N94R6vQnFG0KABs
	v0Y4RKDnaeuKkdOHnEZ62it3h4qqzUobn7ht/PmQBAkr6wVTtWigabciPwZw6y/DZziH3Tw68f08Z
	mfmiphFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPVNn-0000YO-88; Tue, 29 Oct 2019 17:34:15 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPVNc-0000Xo-D0
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 17:34:05 +0000
Received: by mail-wm1-x342.google.com with SMTP id x5so3329662wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 10:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=96w2dzfTRVYhxtpmysIMVp5R//097wsFBHWIwR4IIVo=;
 b=L2Ux0FBszqSEPU0Go7wCMkFu6MAIwHtl7G9CVTGJwzncwV1Nmno1Z1yAIFiup0UHP5
 CJ63jwv3gJSJ3BxB0HgkBEgmo569yMFty7jHvuzFnZ/bqp69FN6XwWi1mz6z6D0yGjXY
 baXb2ftwfehPBnscLhB9pAiCzgt4XSirDOjNqm7RvFpuNIdjlLC/tB7EeYyPffWybjrj
 1092cg60X4dD0HnfH1WEH6vR2/8MqQWqLEvAEiivGytQ9uABGmXEY7EpAXp19POcKnUk
 KbNY/96GrDEOlqFx20daq3ryInKraw9c8IxMSe0BlLcizgVwNbV1zLZ4N1CT+bJxBpey
 WSzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=96w2dzfTRVYhxtpmysIMVp5R//097wsFBHWIwR4IIVo=;
 b=Dluf+aM81LlxkVz0CsQCgry4ZnNMMxc02ljM5g4GpH9asrnXK1sgySWPnhivJLO+Wb
 ysE19UPxGt6AFSRSoI23n746AkP8FJbj/efOmpUAeP/gdUaWvYabxAxnk/v7NGLX0E0T
 QE/oO7zdFeQAX/wMT3v2n6o/4rWHKD+Wc7FuYPej/0C2nXcc7Y1L49CY1StOSnAEDEeX
 EfWEGDsw5oXDt7f6sIe8N2w34KUW+K4wA9iQRR0fn+c+1ixrdnjuy/0d3HUY54/kmZOr
 gotrs6OuoIvkTEQzMx2sjSt3/vRFUoWbqw/sPlaziVRsZm+AQKu7jKDoPR+aimpdI+kF
 3LPQ==
X-Gm-Message-State: APjAAAWP/Lz5hslXph88nmnGqw0Hj04/abTmvHHnpU5oMbPHiB58XpNP
 JOqch9aU2bppP055fpAHVWVj0Q==
X-Google-Smtp-Source: APXvYqwpqvya2KY9lPmFPtxEfiK4pcEq4AiggrcI/0x483wqTyFrOpifuSEBRCnZHhlClrriS1UWBA==
X-Received: by 2002:a05:600c:21d3:: with SMTP id
 x19mr5141533wmj.121.1572370442694; 
 Tue, 29 Oct 2019 10:34:02 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:7037:cc11:eb05:9c6a?
 ([2a01:e34:ed2f:f020:7037:cc11:eb05:9c6a])
 by smtp.googlemail.com with ESMTPSA id q12sm9529657wrw.91.2019.10.29.10.34.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Oct 2019 10:34:02 -0700 (PDT)
Subject: Re: [PATCH 2/4] thermal: stm32: fix IRQ flood on low threshold
To: Joe Perches <joe@perches.com>, Pascal Paillet <p.paillet@st.com>,
 mcoquelin.stm32@gmail.com, alexandre.torgue@st.com, robh+dt@kernel.org,
 mark.rutland@arm.com, rui.zhang@intel.com, edubezval@gmail.com,
 amit.kucheria@verdurent.com, david.hernandezsanchez@st.com,
 wsa+renesas@sang-engineering.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 Andy Whitcroft <apw@canonical.com>
References: <20191029164537.1561-1-p.paillet@st.com>
 <20191029164537.1561-3-p.paillet@st.com>
 <8952e975-3bad-4b7d-49ff-b74af942008c@linaro.org>
 <f668de19e156bd7a1bf599d9ce1f9d4f4fca4095.camel@perches.com>
 <026e676e-0a6c-81ca-3af4-2832118b9ddf@linaro.org>
 <9dd814577107edc42c4469ee7c923e062a2b5368.camel@perches.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <f9376dfb-c20a-59ce-f00e-4f89fed3c341@linaro.org>
Date: Tue, 29 Oct 2019 18:34:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <9dd814577107edc42c4469ee7c923e062a2b5368.camel@perches.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_103404_448496_E3EA9580 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjkvMTAvMjAxOSAxODoyNCwgSm9lIFBlcmNoZXMgd3JvdGU6Cj4gT24gVHVlLCAyMDE5LTEw
LTI5IGF0IDE4OjIxICswMTAwLCBEYW5pZWwgTGV6Y2FubyB3cm90ZToKPj4gT24gMjkvMTAvMjAx
OSAxODoxNSwgSm9lIFBlcmNoZXMgd3JvdGU6Cj4+PiBPbiBUdWUsIDIwMTktMTAtMjkgYXQgMTg6
MTEgKzAxMDAsIERhbmllbCBMZXpjYW5vIHdyb3RlOgo+Pj4+IE9uIDI5LzEwLzIwMTkgMTc6NDUs
IFBhc2NhbCBQYWlsbGV0IHdyb3RlOgo+Pj4+PiBGaXggSVJRIGZsb29kIG9uIGxvdyB0aHJlc2hv
bGQgYnkgdG9vIHdheXM6Cj4+Pj4KPj4+PiBDYW4geW91IHN0YXRlIHRoZSBpc3N1ZSBmaXJzdCA/
Cj4+Pj4KPj4+Pj4gLSBpbXByb3ZlIHRlbXBlcmF0dXJlIHJlYWRpbmcgcmVzb2x1dGlvbiwKPj4+
Pj4gLSBhZGQgYW4gaHlzdGVyZXNpcyB0byB0aGUgbG93IHRocmVzaG9sZDogb24gbG93IHRocmVz
aG9sZCBpbnRlcnJ1cHQsCj4+Pj4+IGl0IGlzIG5vdCBwb3NzaWJsZSB0byBnZXQgdGhlIHRlbXBl
cmF0dXJlIHZhbHVlIHRoYXQgaGFzIGZpcmVkIHRoZQo+Pj4+PiBpbnRlcnJ1cHQuIFRoZSB0aW1l
IHRvIGFjcXVpcmUgYSBuZXcgdmFsdWUgaXMgZW5vdWdoIGZvciB0aGUgQ1BVIHRvCj4+Pj4+IGJl
Y29tZSBob3R0ZXIgdGhhbiB0aGUgY3VycmVudCBsb3cgdGhyZXNob2xkLgo+Pj4gW10KPj4+Pj4g
U2lnbmVkLW9mZi1ieTogUGFzY2FsIFBhaWxsZXQgPHAucGFpbGxldEBzdC5jb20+Cj4+Pj4+IENo
YW5nZS1JZDogSTNiNjNiOGFhYjM4ZmQ2NTFhMTY1YzRlNjlhMmQwOTBiM2M2ZjVkYjMKPj4+Pgo+
Pj4+IFBsZWFzZSByZW1vdmUgdGhlIENoYW5nZS1JZCB0YWcuCj4+Pj4KPj4+PiBKb2UsIEFuZHk/
IGNoZWNrcGF0Y2ggZG9lcyBub3Qgc2VlIHRoZSBDaGFuZ2UtSWQsIGlzIGl0IHRoZSBleHBlY3Rl
ZAo+Pj4+IGJlaGF2aW9yPwo+Pj4KPj4+IFllcy4gIEl0J3MgYWZ0ZXIgYSBzaWduLW9mZiBzbyBj
aGVja3BhdGNoIGRvZXNuJ3QgY2FyZS4KPj4KPj4gQWgsIEkgZ3Vlc3MgaXQgaXMgZm9yIEdlcnJp
dCBidXQgd2UgZG9uJ3Qgd2FudCB0aG9zZSBDaGFuZ2UtSWQgaW4gdGhlCj4+IGtlcm5lbCBoaXN0
b3J5LCByaWdodD8KPiAKPiBTbyByZW1vdmUgaXQgZnJvbSB0aGUgcGF0Y2guCgpJdCB3YXMgbm90
IGEgc2FyY2FzdGljIHF1ZXN0aW9uLiBJIGp1c3Qgd2FudGVkIHRvIGJlIHN1cmUgdGhlIENoYW5n
ZS1JZAppcyBzb21ldGhpbmcgd2UgYWx3YXlzIHdhbnQgdG8gcmVtb3ZlLiBUaGVyZSBhcmUgc29t
ZSBvZiB0aGVtIGluIHRoZQprZXJuZWwgbG9nIGFuZCBJIGdvdCBhIGRvdWJ0LgoKY2hlY2twYXRj
aCBpcyBwZXJmZWN0bHkgZmluZSBmb3IgbWUuCgogIC0tIERhbmllbAoKCi0tIAogPGh0dHA6Ly93
d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBB
Uk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9M
aW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0
ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
