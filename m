Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A72D41A3A1C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 21:00:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8x8HF9eJwn9BY2O7CS20DYz6w07OQzh0TUlHK7tY8CU=; b=GN0U9dPh5VHe77
	mONh54Vw2ikihe+12wDpTVSjUeBn70KAot4vAcm4a9SS1/lvuvjBcpbdWfuK+re8iY0m78d/nyT5R
	5Wga3rw8dzEZmLH5mSG2U7WVjBGSu+s+ff6XnnBqcO2pn6polctuHIdHMARYPj0g2lmyo7zXNIaCp
	eGtpcyEKr3dw9qSZKQlbjhCZMm7G3YghG/8a+4mXvpOTo4FDPrTPc6/dHFo2/MNMgGUsy8p+Zvves
	7dd2Wcn5wowjWVlVY/ZiGalXpPByeGESviL4KhWMJH7Uistl9N5uEbw/xZHGFehNi7esnINIipLim
	ptHSQrBk5vuFVhKxC+3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMcPj-0001ER-3i; Thu, 09 Apr 2020 19:00:35 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMcPQ-0000rU-TS
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 19:00:18 +0000
Received: by mail-lf1-x142.google.com with SMTP id w145so486544lff.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 12:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=xSPvBLVxXTk7r4uWb9GSydHFAj4ViQiiOpEJD7YvZqM=;
 b=HzZx14fOthqThXVovSEdzT9xxI/iYxCiakr7ChDEkTRBPbeg+0FtTsefFhjKcZbYso
 08oR6Rv5DR5KJG/uJO42ACFWlWAw+D2taHz/o03ai1SgRLwNOQ0Apvc+nzMplJ1rU8RN
 aHctEtXnwIhH5KRdLzylxrGAWrtuDctU8dbyJUhk9kw3NVGwzUw+Uz49grdCQrKslpTY
 7bszUiajBg2cvJ7mkFzAP0Um88WcRGkZkzvRehzuEp6oySTCZohqWJhvM1xQde/ihFmP
 h5a9SWQ051tA/0yCGkjSvy4KTySxs0VMcf6/RWSAgk6pGbaomPF3JgFIac5bW6UOhoIR
 aacw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xSPvBLVxXTk7r4uWb9GSydHFAj4ViQiiOpEJD7YvZqM=;
 b=eTKk0jryQeParlg5PuxZu4SkZpKEUdV/Xv6yg4+sBdmQGAOEVe+bVUdQYiihRBEhSU
 hK4JwiBZCbE0Z2G42MzDoWKa7vcomCLWij5G7CUwQnBJwJfl5qJP0ZEerHwgOOa0vVLR
 pqHhxKCcafUKckShoX2SQ516ZzkVRMICTAKXv3w8Wwvm7DTRjl5jhUXRfYHFG6f12zqz
 +4BX6fTxUYXkPoIMCiREr/3FfF7mYZZmsYTdlDe9xPsXdFoyzDJn7+gOQd0tTm5W2kqc
 IedE1+6FaE/31nSQNgbmpmfupMis5sHty+2j/VEzgncGzyuX322vnCoyG+wsyWlOF6gE
 T2+A==
X-Gm-Message-State: AGi0PuYYTCIdpiE7HGsBppoCjuPi9qpX05rrDer/WhirOhwCvaBolY+f
 F5oVgDRJx84BtbLUnRm97mxuzBKp
X-Google-Smtp-Source: APiQypIO0LHOpLrwPbAk/A6S3Mr6+az19yessXD75VrxMB9u640PipFFtRLBWK2axQvYqRJHAuHoVw==
X-Received: by 2002:ac2:4c21:: with SMTP id u1mr394852lfq.99.1586458814856;
 Thu, 09 Apr 2020 12:00:14 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.googlemail.com with ESMTPSA id e12sm20086369ljl.36.2020.04.09.12.00.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Apr 2020 12:00:14 -0700 (PDT)
Subject: Re: [PATCH v6 09/14] memory: tegra: Add EMC scaling support code for
 Tegra210
To: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh+dt@kernel.org>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-10-thierry.reding@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <7b2f8a7c-94f1-08d0-b0ce-c61f4eb0a436@gmail.com>
Date: Thu, 9 Apr 2020 22:00:13 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200409175238.3586487-10-thierry.reding@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_120017_079675_89840DC6 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDkuMDQuMjAyMCAyMDo1MiwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKLi4uCj4gK3N0YXRp
YyB2b2lkIHRlZ3JhMjEwX2VtY19kZWJ1Z2ZzX2luaXQoc3RydWN0IHRlZ3JhMjEwX2VtYyAqZW1j
KQo+ICt7Cj4gKwlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBlbWMtPmRldjsKPiArCXVuc2lnbmVkIGlu
dCBpOwo+ICsJaW50IGVycjsKPiArCj4gKwllbWMtPmRlYnVnZnMubWluX3JhdGUgPSBVTE9OR19N
QVg7Cj4gKwllbWMtPmRlYnVnZnMubWF4X3JhdGUgPSAwOwo+ICsKPiArCWZvciAoaSA9IDA7IGkg
PCBlbWMtPm51bV90aW1pbmdzOyBpKyspIHsKPiArCQlpZiAoZW1jLT50aW1pbmdzW2ldLnJhdGUg
KiAxMDAwVUwgPCBlbWMtPmRlYnVnZnMubWluX3JhdGUpCj4gKwkJCWVtYy0+ZGVidWdmcy5taW5f
cmF0ZSA9IGVtYy0+dGltaW5nc1tpXS5yYXRlICogMTAwMFVMOwo+ICsKPiArCQlpZiAoZW1jLT50
aW1pbmdzW2ldLnJhdGUgKiAxMDAwVUwgPiBlbWMtPmRlYnVnZnMubWF4X3JhdGUpCj4gKwkJCWVt
Yy0+ZGVidWdmcy5tYXhfcmF0ZSA9IGVtYy0+dGltaW5nc1tpXS5yYXRlICogMTAwMFVMOwo+ICsJ
fQo+ICsKPiArCWlmICghZW1jLT5udW1fdGltaW5ncykgewo+ICsJCWVtYy0+ZGVidWdmcy5taW5f
cmF0ZSA9IGNsa19nZXRfcmF0ZShlbWMtPmNsayk7Cj4gKwkJZW1jLT5kZWJ1Z2ZzLm1heF9yYXRl
ID0gZW1jLT5kZWJ1Z2ZzLm1pbl9yYXRlOwo+ICsJfQo+ICsKPiArCWVyciA9IGNsa19zZXRfcmF0
ZV9yYW5nZShlbWMtPmNsaywgZW1jLT5kZWJ1Z2ZzLm1pbl9yYXRlLAo+ICsJCQkJIGVtYy0+ZGVi
dWdmcy5tYXhfcmF0ZSk7Cj4gKwlpZiAoZXJyIDwgMCkgewo+ICsJCWRldl9lcnIoZGV2LCAiZmFp
bGVkIHRvIHNldCByYXRlIHJhbmdlIFslbHUtJWx1XSBmb3IgJXBDXG4iLAo+ICsJCQllbWMtPmRl
YnVnZnMubWluX3JhdGUsIGVtYy0+ZGVidWdmcy5tYXhfcmF0ZSwKPiArCQkJZW1jLT5jbGspOwo+
ICsJCXJldHVybjsKPiArCX0KPiArCj4gKwllbWMtPmRlYnVnZnMucm9vdCA9IGRlYnVnZnNfY3Jl
YXRlX2RpcigiZW1jIiwgTlVMTCk7Cj4gKwlpZiAoIWVtYy0+ZGVidWdmcy5yb290KSB7Cj4gKwkJ
ZGV2X2VycihkZXYsICJmYWlsZWQgdG8gY3JlYXRlIGRlYnVnZnMgZGlyZWN0b3J5XG4iKTsKPiAr
CQlyZXR1cm47Cj4gKwl9Cj4gKwo+ICsJZGVidWdmc19jcmVhdGVfZmlsZSgiYXZhaWxhYmxlX3Jh
dGVzIiwgU19JUlVHTywgZW1jLT5kZWJ1Z2ZzLnJvb3QsIGVtYywKPiArCQkJICAgICZ0ZWdyYTIx
MF9lbWNfZGVidWdfYXZhaWxhYmxlX3JhdGVzX2ZvcHMpOwo+ICsJZGVidWdmc19jcmVhdGVfZmls
ZSgibWluX3JhdGUiLCBTX0lSVUdPIHwgU19JV1VTUiwgZW1jLT5kZWJ1Z2ZzLnJvb3QsCj4gKwkJ
CSAgICBlbWMsICZ0ZWdyYTIxMF9lbWNfZGVidWdfbWluX3JhdGVfZm9wcyk7Cj4gKwlkZWJ1Z2Zz
X2NyZWF0ZV9maWxlKCJtYXhfcmF0ZSIsIFNfSVJVR08gfCBTX0lXVVNSLCBlbWMtPmRlYnVnZnMu
cm9vdCwKPiArCQkJICAgIGVtYywgJnRlZ3JhMjEwX2VtY19kZWJ1Z19tYXhfcmF0ZV9mb3BzKTsK
CkkgYXNzdW1lIHlvdSB1c2VkIHRoZSBjaGVja3BhdGNoIGJlZm9yZSBzZW5kaW5nIHRoZSBwYXRj
aGVzLCBubz8KCkkgc2VudCBvdXQgYSBwYXRjaCByZWNlbnRseSB0byBtYWtlIHRoZSBwZXJtaXNz
aW9ucyByZWFkYWJsZSwgcGxlYXNlCnRha2UgYSBsb29rIGlmIHlvdSBoYXZlbid0IHNlZW4gaXQg
eWV0LgoKaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wYXRjaC8xMjU0MzAxLwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
