Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7621F180348
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 17:30:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H4HwZil46pkz0L8G5+bQSidtJcmIm8DG9Ao2OhzMdUw=; b=aMGrzWkiNamXaD
	bO8BLKgPHIy4yqWcGY2CslpXfXvL02gHEVf7leuArYR7SnNe3TXO2kp/WgHbEPL4bA8leUZXxYuXL
	15s1+D5o6o2vZtICz0RR41Ex+nriMkOoLOBtGHa2B1FcOKlJeYHW+8WaQvSAf9ctw2XxsYN1cZwqW
	yoqBDgGMkY5BWnWT78PaTqEHN+VSygD2qT4UOcqN/Oe+CT5ECIIGZriK5wk31tMRFs7nqUHWiAyG6
	EAavpr5Mg/f3TEvjPfWtQQct5AEwvj+YVgxwu0NYLA93kQgtaDWNFSV881yvnxE9/4PuFqAyOGHYR
	ClMxCGyhKvi4FAdwMLNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBhlX-00079O-9A; Tue, 10 Mar 2020 16:29:59 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBhlN-00078V-BA
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 16:29:50 +0000
Received: by mail-lj1-x242.google.com with SMTP id r24so1255354ljd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 09:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=30exkwIozzMIemffj/fYVWOVstIzogFHegkU2NrMGIE=;
 b=H8W9ZO9+fAGGf0mi/x/aCZiEBxURB0+pmELuWYmMuZPzOqbCYjsT1aaTKRyPLWOJpF
 +xkWeEUdt6E1tTcRphwtmdbIjgWgM770EETZWV7SIuAVQ15anlGCOW/PKSfu5yRS/QII
 +Dso1YQbw0Gtgzn4iOolrqQ236Q0FaDAw2LA/0Z4erR8G71YkWhxe84I4OeBN56kK3Iz
 xzSJhtL9p0Om74cjaYupwdL0eyo9zUxLUlBIf0ZZbujcjnXId24dr7CVy4K89wyM8KrA
 qQ6v8y31COx5LKaTPPPjlmj/UQKfVgh73immy/UdBv/VpuvmfMT1toAFBZ4JHfLwtyq7
 KTSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=30exkwIozzMIemffj/fYVWOVstIzogFHegkU2NrMGIE=;
 b=ek5H/qnuABEl+RrllNCgFBl3hYzuNF1W7a/78i7uhVrC5PBfncITDMXmtYF7M0jEtp
 pBaxYKfZIhEmkGLqvkilF+8DVd8EbqB2dsiTNaHK+9Ymee443Qg5fx5S7zInJzJaiIKo
 ezY2u/J/mN79aZ7zNhpdxf2iYnEuGPUT+wepWX+Prc8y0aqwuLWj84yx5mo/8oAtk7e4
 g+EpfuQi7uB4qGh+/E5j36XHBgIVUIZmWiqEUvmqYpN2yLkvIG5CmYUzAxU+/wVws6Al
 iOPjgiRtkwNenHh/DGdYztrNrFIOPnqkLyJTJqv+v7uj8xjAKYyp+a/fJOcDxjY6hovX
 Ofgg==
X-Gm-Message-State: ANhLgQ23j0RGpaez1G9/CYCtM/wA/1Py1l8IboFxAomuQm8PxkOHsjM9
 wkoRrC+/E8o5Qt0ipvcbfOo8VM2h
X-Google-Smtp-Source: ADFU+vvdTpxrjULX838dUbvtkil6NodhyPbfHR+o/rMELhCGItwMF1ZTV2oG4p09hAYaoXQGNe34Bg==
X-Received: by 2002:a2e:870b:: with SMTP id m11mr12994367lji.273.1583857784214; 
 Tue, 10 Mar 2020 09:29:44 -0700 (PDT)
Received: from [192.168.2.145] (94-29-39-224.dynamic.spd-mgts.ru.
 [94.29.39.224])
 by smtp.googlemail.com with ESMTPSA id z21sm14776415lfd.67.2020.03.10.09.29.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Mar 2020 09:29:43 -0700 (PDT)
Subject: Re: [PATCH v5 3/8] clk: tegra: Implement Tegra210 EMC clock
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
 <20200310152003.2945170-4-thierry.reding@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <3b583202-50d0-145c-d60f-91bd646008ad@gmail.com>
Date: Tue, 10 Mar 2020 19:29:42 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200310152003.2945170-4-thierry.reding@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_092949_386055_83E09F03 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTAuMDMuMjAyMCAxODoxOSwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKPiBGcm9tOiBKb3Nl
cGggTG8gPGpvc2VwaGxAbnZpZGlhLmNvbT4KPiAKPiBUaGUgRU1DIGNsb2NrIG5lZWRzIHRvIGNh
cmVmdWxseSBjb29yZGluYXRlIHdpdGggdGhlIEVNQyBjb250cm9sbGVyCj4gcHJvZ3JhbW1pbmcg
dG8gbWFrZSBzdXJlIGV4dGVybmFsIG1lbW9yeSBjYW4gYmUgcHJvcGVybHkgY2xvY2tlZC4gRG8g
c28KPiBieSBob29raW5nIHVwIHRoZSBFTUMgY2xvY2sgd2l0aCBhbiBFTUMgcHJvdmlkZXIgdGhh
dCB3aWxsIHNwZWNpZnkgd2hpY2gKPiByYXRlcyBhcmUgc3VwcG9ydGVkIGJ5IHRoZSBFTUMgYW5k
IHByb3ZpZGUgYSBjYWxsYmFjayB0byB1c2UgZm9yIHNldHRpbmcKPiB0aGUgY2xvY2sgcmF0ZSBh
dCB0aGUgRU1DLgo+IAo+IEJhc2VkIG9uIHdvcmsgYnkgUGV0ZXIgRGUgU2NocmlqdmVyIDxwZGVz
Y2hyaWp2ZXJAbnZpZGlhLmNvbT4uCj4gCj4gU2lnbmVkLW9mZi1ieTogSm9zZXBoIExvIDxqb3Nl
cGhsQG52aWRpYS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVGhpZXJyeSBSZWRpbmcgPHRyZWRpbmdA
bnZpZGlhLmNvbT4KPiAtLS0KPiBDaGFuZ2VzIGluIHY1Ogo+IC0gbWFqb3IgcmV3b3JrIGFuZCBj
bGVhbnVwCgouLi4KPiArRVhQT1JUX1NZTUJPTF9HUEwodGVncmEyMTBfY2xrX2VtY19hdHRhY2gp
Owo+ICsKPiArdm9pZCB0ZWdyYTIxMF9jbGtfZW1jX2RldGFjaChzdHJ1Y3QgY2xrICpjbGspCj4g
K3sKPiArCXN0cnVjdCB0ZWdyYTIxMF9jbGtfZW1jICplbWMgPSB0b190ZWdyYTIxMF9jbGtfZW1j
KF9fY2xrX2dldF9odyhjbGspKTsKPiArCj4gKwllbWMtPnByb3ZpZGVyID0gTlVMTDsKPiArfQo+
ICtFWFBPUlRfU1lNQk9MX0dQTCh0ZWdyYTIxMF9jbGtfZW1jX2RldGFjaCk7Li4uCj4gK2NvbmZp
ZyBURUdSQTIxMF9FTUMKPiArCWJvb2wgIk5WSURJQSBUZWdyYTIxMCBFeHRlcm5hbCBNZW1vcnkg
Q29udHJvbGxlciBkcml2ZXIiCgoKSSdkIHJlbW92ZSBhbGwgdGhlIGV4cG9ydHMgZm9yIG5vdywg
Z2l2ZW4gdGhhdCB0aGUgZHJpdmVyIGlzIGJ1aWx0LWluLgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
