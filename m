Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 884E013878B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 18:34:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=22BFBf7+BlSMxxEG78W5TkCL74uJypmOP3m456aNE98=; b=l7YiITb88Ny2imCXJgFnPIgRu0
	STaCGXpekgrH2+5bsqUilhC4DCr3aMbURz7BJGIqV2mdX+zl7H+AHLNMqTKxwHahzVyO2+L9G1vd9
	iTNaqlN170ZxcyG0XFZSC/CrUw6Og/4XoUy831VqmTT80oflNP4kkGwtOtPy7u35LbP/NMmjo1flv
	3jT2jSlWX2sIFRj/3PUcj/Hlm6k2uLjsy6+HX3wxq59F4c+dJhMQZvYoieW4xwpnBVKazjWBzBPdY
	0jqeJBWHYoM2UXdqQCwQq5jCdwaf9a2P57Rw/SxaoiiBFHFOdpAeJAT5K5r+q5KCLdPl6ZbhZJqkx
	CvqzfE2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqh8N-0005Aw-1h; Sun, 12 Jan 2020 17:34:43 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqh8F-0005AK-43
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Jan 2020 17:34:36 +0000
Received: by mail-wr1-x443.google.com with SMTP id q6so6307001wro.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Jan 2020 09:34:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=xD727d9Ui3KOTr1j3t1vZYixFuxqk7ANu6/szk9FtOI=;
 b=J+P1T0byGY7KIR48XnI7odTOnBjj6enq7Cko7pIC9benHRy7trJFO4x3yWs8eC7KRq
 uwxxlxIRb09i/7SiMDoYimSlQ/KxI3HJNERaT/6L9BGoGy8V5KC5KX9fowaf9gG5vLoC
 nQQrYBJxN6SWsvEInQwzO/HRmV079EwQ8AXV1wlTTr3Dmn2ru0xOuPA7NY72S2dPbWR9
 3mi/IDKmzcKjZcRuq530m38Pc1vlcLpJjTWn6tGv7vayrnWQ1AGdMXqb18pANGe6N++2
 E7sIX3cezUMKpfhMbtyqxaLWkpCwTlq0JKbvtyLw5iaLfg0ojDDXVincWA7cTTAOHh71
 PWaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xD727d9Ui3KOTr1j3t1vZYixFuxqk7ANu6/szk9FtOI=;
 b=uFjVeL12PsGpSjfGMxOn884vmcCoygWYuZBH1IcIptlEQ+E+F3q/gS8NbzPkyWmPF6
 OhyPYplfgjWoIUQuQJ8zE6n0DcLOcmwnX6bol7mgjZ1zMu+vR96SaRFSEJ0cb2snl9cK
 cDVuyfu+5FNh2kx4Q3focdKE70ZgoXhiqxkEtgpOjNTNbF7Wf74aEbxqUYfRG3E/+Vl9
 7fyu72RvbaVcX3wx/4hYkY3mHmJESU8e4ifL+Bc/ftdloiFYzdLOtez8TS5ryZZz6x5O
 c9T6SltJzPlZLYUJXYZ/dO42/5zp6jj/PEz278F/hrQTV36lZuVxphyOqKgVlVbst0Sf
 AoZw==
X-Gm-Message-State: APjAAAWPFY29SldKthJ6tavWVEj3CBchOdy9HsixJlblynjP9JHcMdCs
 jLR7UQM/f+JtVV12PgfNHq7SdA==
X-Google-Smtp-Source: APXvYqzSHQiSE12DiqM6HwFcknXbTNxPJPizZWRkY3425KaLoXZn2NdBsUlGqhHTkgILli9dM16uEg==
X-Received: by 2002:adf:f2c1:: with SMTP id d1mr13970441wrp.111.1578850473017; 
 Sun, 12 Jan 2020 09:34:33 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:5d47:bb17:fc0:dfcb?
 ([2a01:e34:ed2f:f020:5d47:bb17:fc0:dfcb])
 by smtp.googlemail.com with ESMTPSA id g21sm10880143wmh.17.2020.01.12.09.34.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 12 Jan 2020 09:34:32 -0800 (PST)
Subject: Re: [PATCH] thermal: sun8i: fix using plain integer as NULL pointer
 in sun8i_ths_resource_init
To: Yangtao Li <tiny.windzz@gmail.com>, anarsoul@gmail.com,
 rui.zhang@intel.com, amit.kucheria@verdurent.com, mripard@kernel.org,
 wens@csie.org, p.zabel@pengutronix.de, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20200112171318.23025-1-tiny.windzz@gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <ffa67377-95fe-5335-d199-6b7d4b7e5587@linaro.org>
Date: Sun, 12 Jan 2020 18:34:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200112171318.23025-1-tiny.windzz@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_093435_227379_C18DACB7 
X-CRM114-Status: GOOD (  15.62  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTIvMDEvMjAyMCAxODoxMywgWWFuZ3RhbyBMaSB3cm90ZToKPiBUbyBmaXg6Cj4gCj4gZHJp
dmVycy90aGVybWFsL3N1bjhpX3RoZXJtYWwuYzozNDE6NjA6IHNwYXJzZTogc3BhcnNlOiBVc2lu
ZyBwbGFpbgo+IGludGVnZXIgYXMgTlVMTCBwb2ludGVyCj4gCj4gUmVwb3J0ZWQtYnk6IGtidWls
ZCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFlhbmd0YW8gTGkg
PHRpbnkud2luZHp6QGdtYWlsLmNvbT4KCkFwcGxpZWQsIHRoYW5rcwoKPiAtLS0KPiAgZHJpdmVy
cy90aGVybWFsL3N1bjhpX3RoZXJtYWwuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1h
bC9zdW44aV90aGVybWFsLmMgYi9kcml2ZXJzL3RoZXJtYWwvc3VuOGlfdGhlcm1hbC5jCj4gaW5k
ZXggYzU2NjFkN2MzZTIwLi40YmNkZTk0OTFlZGIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy90aGVy
bWFsL3N1bjhpX3RoZXJtYWwuYwo+ICsrKyBiL2RyaXZlcnMvdGhlcm1hbC9zdW44aV90aGVybWFs
LmMKPiBAQCAtMzM4LDcgKzMzOCw3IEBAIHN0YXRpYyBpbnQgc3VuOGlfdGhzX3Jlc291cmNlX2lu
aXQoc3RydWN0IHRoc19kZXZpY2UgKnRtZGV2KQo+ICAJCXJldHVybiBQVFJfRVJSKHRtZGV2LT5y
ZWdtYXApOwo+ICAKPiAgCWlmICh0bWRldi0+Y2hpcC0+aGFzX2J1c19jbGtfcmVzZXQpIHsKPiAt
CQl0bWRldi0+cmVzZXQgPSBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0KGRldiwgMCk7Cj4gKwkJdG1k
ZXYtPnJlc2V0ID0gZGV2bV9yZXNldF9jb250cm9sX2dldChkZXYsIE5VTEwpOwo+ICAJCWlmIChJ
U19FUlIodG1kZXYtPnJlc2V0KSkKPiAgCQkJcmV0dXJuIFBUUl9FUlIodG1kZXYtPnJlc2V0KTsK
PiAgCj4gCgoKLS0gCiA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3Bl
biBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93
d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIu
Y29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJv
LWJsb2cvPiBCbG9nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
