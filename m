Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0566934C5C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 17:36:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LemcJRuess7MMhvsRQUUgTWxzam/HqW4QUf3En3Pa8Y=; b=gnwJrV2p2ecfj9
	Lswae/DSMhpJIkJCY3jL5672P+f03tQ/sMu+7MZSNd68LBWJkjHWsEt9TX4R0J0bcyZZOouJJuiQB
	vDj049Fvn679LUJabzW6uWU30n74lHSTfeYTwsPoEXuvV4A4pnGex9Omqmr4fpMRfi6p0K+gKBSz7
	K0twkfbPzyn3GdN3RACpohz4lu8JtjdolBbLivDxoSR208ZiFTFT+At8bliDmEvyimD4eyR7y4jNu
	qv3tljjL+sRwYxmC8h/eINzk2jb8fyJPhQTH16Ue7Vy1ENjaN8iyZLHK6KRRR2BLMGwibJ1iJ9o8F
	yeYQscq1YMsZu5KaPkBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYBTj-0001Qc-J6; Tue, 04 Jun 2019 15:35:59 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYBTc-0001QD-BH
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 15:35:53 +0000
Received: by mail-wr1-x443.google.com with SMTP id r18so7321649wrm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 08:35:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nwR2zaW5+UglMFbeROg8sY1NkjrkHOAAAE68DSA9sgI=;
 b=XVOU545p9DUX4ntGLfiwJD5GZtQp2V7xRV3u1yqFR3zYVl/iSce2i1kUBQ1FW67AlL
 /IdxhI4BzfUUCZV2n78CdvSGoHA12Bn/oyfYLPrxbeBj7vQum1caqrBUb6f0e5oGP3GN
 HE1et9zMgyEgqJUITuVuiHYJ48qOiGy348GvhgEZoXlY1CzLQfsJ5CX4g+AWHWVxzmLj
 5coFZEApyQb12YAC0PtiPViNeBYg1A2BAlhAHh7I889PWtb019dLcEroy/1s3zalXTui
 wAhtu1TftRYUKID5FViI4stpCR2RXSOZkcoFdqMD4prgJOUp+JuHCnzbs5vZy257lH89
 KtZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nwR2zaW5+UglMFbeROg8sY1NkjrkHOAAAE68DSA9sgI=;
 b=X+zKjfahuJihaZb2P/EKAE21fVl7Q728uVlZWcaGByWCpHVyfAB8NsVVnW0jL2E6d5
 Rp+ugRnWS7DA9nB+5PmX63Qe0ifn9RWWMoBG/+rTzPoT21/EVTqeFglSCwIzJnFlTEGS
 aO7kDsHlEVLmxqN/5z+b4LDKzJTG2Vp87r/gnz1MylJ1nGgYk8a5fPbsUzCbk5bxfqpz
 TGFzHuuifop2QhKQPPfVN39MlRjBYuHh9VbRaefOb/QRRp0ppi5wR4YO9SmpP71INPLD
 76sMRjmM+7kLkVyfv4oBLSHADcAPtkkjv2P2JIR7Odq5Z647SspoMP8MEvZKLgHyuFIz
 UKBQ==
X-Gm-Message-State: APjAAAWNkyqloX1kKktxIsJ8DCZfmRMJ0lrHmsshVSjsPO9bPCLP34gd
 hzAjtGvxhJB/gA7rWpgp/NU=
X-Google-Smtp-Source: APXvYqyOYfoGd5XgvbaAA6d5mS0ppVBzDRMmSA3DowcGitVc1FSSlVRiyN1q4m5N8GQPLfiy0MMfnA==
X-Received: by 2002:a5d:5302:: with SMTP id e2mr7107192wrv.347.1559662550738; 
 Tue, 04 Jun 2019 08:35:50 -0700 (PDT)
Received: from jernej-laptop.localnet (cpe-86-58-52-202.static.triera.net.
 [86.58.52.202])
 by smtp.gmail.com with ESMTPSA id f26sm10046745wmh.8.2019.06.04.08.35.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 08:35:50 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@googlegroups.com, megous@megous.com
Subject: Re: [linux-sunxi] [PATCH] clk: sunxi-ng: sun50i-h6-r: Fix incorrect
 W1 clock gate register
Date: Tue, 04 Jun 2019 17:35:48 +0200
Message-ID: <2504206.OUqqUFhxAD@jernej-laptop>
In-Reply-To: <20190604153120.zcxfn4kh2qjfktgo@core.my.home>
References: <20190604150054.17683-1-megous@megous.com>
 <20522585.shqbOC0eQD@jernej-laptop>
 <20190604153120.zcxfn4kh2qjfktgo@core.my.home>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_083552_412718_7340C18F 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jernej.skrabec[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Michael Turquette <mturquette@baylibre.com>,
 open list <linux-kernel@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkhCgpEbmUgdG9yZWssIDA0LiBqdW5paiAyMDE5IG9iIDE3OjMxOjIwIENFU1QgamUgJ09uZMWZ
ZWogSmlybWFuJyB2aWEgbGludXgtc3VueGkgCm5hcGlzYWwoYSk6Cj4gSGkgSmVybmVqLAo+IAo+
IE9uIFR1ZSwgSnVuIDA0LCAyMDE5IGF0IDA1OjAzOjU1UE0gKzAyMDAsIEplcm5laiDFoGtyYWJl
YyB3cm90ZToKPiA+IERuZSB0b3JlaywgMDQuIGp1bmlqIDIwMTkgb2IgMTc6MDA6NTQgQ0VTVCBq
ZSBtZWdvdXMgdmlhIGxpbnV4LXN1bnhpCj4gPiAKPiA+IG5hcGlzYWwoYSk6Cj4gPiA+IEZyb206
IE9uZHJlaiBKaXJtYW4gPG1lZ291c0BtZWdvdXMuY29tPgo+ID4gPiAKPiA+ID4gVGhlIGN1cnJl
bnQgY29kZSBkZWZpbmVzIFcxIGNsb2NrIGdhdGUgdG8gYmUgYXQgMHgxY2MsIG92ZXJsYXlpbmcg
aXQKPiA+ID4gd2l0aCB0aGUgSVIgZ2F0ZS4KPiA+ID4gCj4gPiA+IENsb2NrIGdhdGUgZm9yIHIt
YXBiMS13MSBpcyBhdCAweDFlYy4gVGhpcyBmaXhlcyBpc3N1ZXMgd2l0aCBJUiByZWNlaXZlcgo+
ID4gPiBjYXVzaW5nIGludGVycnVwdCBmbG9vZHMgb24gSDYgKGJlY2F1c2UgaW50ZXJydXB0IGZs
YWdzIGNhbid0IGJlCj4gPiA+IGNsZWFyZWQsCj4gPiA+IGR1ZSB0byBJUiBtb2R1bGUncyBidXMg
YmVpbmcgZGlzYWJsZWQpLgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogT25kcmVqIEppcm1h
biA8bWVnb3VzQG1lZ291cy5jb20+Cj4gPiAKPiA+IFlvdSBzaG91bGQgYWRkIEZpeGVzIHRhZyBh
bmQgQ0Mgc3RhYmxlIHdpdGggdGhpcy4KPiAKPiBOb3QgbmVjZXNzYXJ5LCBzaW5jZSBINiBJUiBp
cyBub3QgeWV0IHN1cHBvcnRlZCBvbiBtYWlubGluZS4KCldlbGwsIENDaW5nIHN0YWJsZSBpcyBw
cm9iYWJseSByZWFsbHkgbm90IG5lY2Vzc2FyeSwgYnV0IHlvdSBhcmUgZml4aW5nIGJ1ZyBpbiAK
ZXhpc3RpbmcgZHJpdmVyIChjbGspLCBmaXhlcyB0YWcgc3RpbGwgYXBwbHkuCgpCZXN0IHJlZ2Fy
ZHMsCkplcm5lagoKPiAKPiByZWdhcmRzLAo+IAlvLgo+IAo+ID4gQmVzdCByZWdhcmRzLAo+ID4g
SmVybmVqCj4gPiAKPiA+IAo+ID4gCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+ID4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiA+IGxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCgoKCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
