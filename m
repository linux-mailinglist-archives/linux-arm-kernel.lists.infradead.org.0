Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F285F5010A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 07:40:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9iT3MZmnYONlsCIR64LC1DeqMj3ozu/ONAwia14hII4=; b=pVNNHGMAj91LAZ
	qPTatJsot+XWW7tZZ8125VPlnl476kCVcdtST8o/LCuEQjXsx3SXf8GcAx4PTD3N7VQYlXMhy9VO2
	asmGVeZ/8nxHur39Dwm/lFI6x4PS0Z2Ih53DXoJ6wXndbXGhAyN5OkZbf5SK2GAN4LOh+anddqFKE
	ftSmLvNC9xK5q9oj1y09VzQtubNj+jMcEHhnI9BKoFnKKljTTl7Cmm3/CCfae7nrafMR3VpoOeij2
	+53gTBE7CeLHQvDY0cC+qkiRFK2r9j9pv67KBl4k7r0kikXvO2Hz3NSsCcxbiL6X83PhVey0JSLOi
	hfcip8DjSF9Ki1x6pjDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfHiL-0005Yu-PH; Mon, 24 Jun 2019 05:40:26 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfHi8-0005YU-3I
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 05:40:13 +0000
Received: by mail-wm1-x32d.google.com with SMTP id z23so11916083wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Jun 2019 22:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fdXRxJdDVzrgQJ5iN4mdXWVJeAKA6qYvr698kG8Ycdw=;
 b=wtwidiCa9GbLLs7DoZf+jMcFv+1rhCOiOvyAnTm1f9CFpaZTYcssy7RdSqTKUtxw1O
 lpl4uY9BorSnlqAKm3D4AQ+HJktNZ+xmqgvk1kkNDjL7b8HX4fG7b2Cb+edSHsmDZbrq
 NFOCMzuDES8TOeH20H3WvGnUErjQCD1K086KosWajPJpBhNRUrlemiTTwyUTubo19tbN
 oAW0p5KuwvORsRNoqr1vOjY/n1lvdOBCC1hh6EMX/UyrD2HEDID8ssm/LCMpBNLbvMqx
 30ZcTtDRMTRIdfkD5wDZONZCtOKrsuutgrAug0wRRNlzYQbcVGUw4IEfPyG2joO6zNk5
 GJ8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=fdXRxJdDVzrgQJ5iN4mdXWVJeAKA6qYvr698kG8Ycdw=;
 b=E1qo2K4GflPbl85gCoodYWxZc5JNKiSA09s3eX7Ox3olx6jc7RsepYNEtUttOt/Ft9
 a3QJ6CWwuA3f54PG4hHACLYaaJp+lJ1Uqef+s0Il7aqcv8xR7JxQGTBwfg8lRqOv7t0X
 l0sUx2UAHHyKkBo85XfGmfdEuGtbzT+BuCpctfbZyEFQNJ3HzI5/IdszpRNtG3Rwa/xp
 C0uL+QeDOxRJnPnA7CDXKRL1fCScsjTZKYNoObxDPMBOhJJ/I9tGwQMXuBScjFQ2x0MI
 70Ud2V3F9QAGL7kaHAuDfpX1uipNbi6U2GFWdyGp8BdHeBHphRT7teJSv56omxSiDsEj
 hE+g==
X-Gm-Message-State: APjAAAXBCFGNM/nRlP0P5Fn2TEYs6gXpBHgrg0t0yVv+ON3s+/goauUT
 peF7HsgD44W+gkkg75EY8/euKg==
X-Google-Smtp-Source: APXvYqxBt6lKkTZU3QpwTnl27d3Kunxre3ZMWdEhGkgQ1LaCHvm3bwiW5AtA1sgfGv51IyDXki8cMA==
X-Received: by 2002:a7b:c776:: with SMTP id x22mr13548279wmk.55.1561354809613; 
 Sun, 23 Jun 2019 22:40:09 -0700 (PDT)
Received: from [192.168.0.41] (209.94.129.77.rev.sfr.net. [77.129.94.209])
 by smtp.googlemail.com with ESMTPSA id f2sm14016574wrq.48.2019.06.23.22.40.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 23 Jun 2019 22:40:08 -0700 (PDT)
Subject: Re: [RFC v3 0/2] clocksource: davinci-timer: new driver
To: Sekhar Nori <nsekhar@ti.com>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Kevin Hilman <khilman@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 David Lechner <david@lechnology.com>
References: <20190605083334.22383-1-brgl@bgdev.pl>
 <1ac8cfcf-1d77-9b6b-4aab-4171f6cf80fc@ti.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <1a66e067-631c-c7a4-288b-3934737bee8c@linaro.org>
Date: Mon, 24 Jun 2019 07:40:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1ac8cfcf-1d77-9b6b-4aab-4171f6cf80fc@ti.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_224012_208158_8289C222 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ClNla2hhciwgQmFydG9zeiwKCmlmIHRoZSBzcGFyc2Ugd2FybmluZyBpcyBub3QgZml4ZWQsIHRo
ZSBkcml2ZXIgd29uJ3QgaGl0IHRoaXMga2VybmVsCnZlcnNpb24uIFBsZWFzZSBmaXggaXQgYmVm
b3JlIHRoZSB0d28gbmV4dCBkYXlzIG90aGVyd2lzZSBpdCB3b24ndCBtYWtlCml0IGZvciB2NS40
LgoKVGhhbmtzCgogIC0tIERhbmllbAoKCk9uIDE0LzA2LzIwMTkgMTI6MzksIFNla2hhciBOb3Jp
IHdyb3RlOgo+IEhpIERhbmllbCwKPiAKPiBPbiAwNS8wNi8xOSAyOjAzIFBNLCBCYXJ0b3N6IEdv
bGFzemV3c2tpIHdyb3RlOgo+PiBGcm9tOiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxiZ29sYXN6ZXdz
a2lAYmF5bGlicmUuY29tPgo+Pgo+PiBUaGlzIGlzIGFub3RoZXIgdmVyc2lvbiBvZiB0aGUgbmV3
IGRhdmluY2kgY2xvY2tzb3VyY2UgZHJpdmVyLiBBZnRlciBtdWNoCj4+IGRpc2N1c3Npb24gdGhp
cyBjb250YWlucyBtYW55IGNoYW5nZXMgdG8gc2ltcGxpZnkgYW5kIGltcHJvdmUgdGhlIGRyaXZl
ci4KPiAKPiBEb2VzIHRoaXMgbG9vayBnb29kIHRvIHlvdSBub3c/IElmIHllcywgY2FuIHlvdSBw
bGVhc2UgbWVyZ2UgYW5kIHByb3ZpZGUKPiBhbiBpbW11dGFibGUgYnJhbmNoIHRvIG1lIHNvIEkg
Y2FuIG1lcmdlIGRlcGVuZGVudCBtYWNoLWRhdmluY2kgcGF0Y2hlcz8KCgotLSAKIDxodHRwOi8v
d3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3Ig
QVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMv
TGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0
dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
