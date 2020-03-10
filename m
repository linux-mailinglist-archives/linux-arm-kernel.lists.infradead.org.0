Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 142EC18040C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 17:55:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UxHb9hP3aJgLilc++SLfGiXSqS/H0eeIgnKrWWm+WUU=; b=o1bNjeNTXa3kLo
	kyzGa5lyICP3fvQoBhucNKDX781PJ0AdEPEMAd2TGtDn/eCUi407oZ9tWjdwlbEUbmntR530K0vFa
	hxHzV2mv2M/vTI9HkWR0YfY2DyofOcu/ED1N2qCMBucpYCENxKOIbRnrK0lNwbDaoq5C+xFk9gIXn
	AiG+5umcznfmej6MFLurgRnZvu0rlAOAgr5viBzIOL6ZkW52o5M1uzrckzb+fPlGaeEHCJ+sAYIb1
	r+32Emlw1H5Y5mAfyc3CcqN8BZfPnV/++GV+7XmvgQXqA1KyzcunZX5xRN/6FhwBxxN3/rlZ9OqWh
	KcyD8db0/oZ/ykaVYVWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBiAY-00026r-Pr; Tue, 10 Mar 2020 16:55:50 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBiAQ-00026T-Rz
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 16:55:44 +0000
Received: by mail-lj1-x241.google.com with SMTP id w1so14986625ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 09:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=PMTk4pZIN5zdCpfQ8eLETIXT6rNawUuc7NXZZd6E4uY=;
 b=LGwOkmy5KQYzjhZOSktaSQcogsO6l1xY5ZrzSIbuI9RYkcrtdDto+iuOfEIZ9IDU0v
 NIVsRejDd0lko/OYiyga3pTmWoAwScRRGoF05rjaUIkpu/hOe92LMeultn+QFsRxelia
 JE29slX8yqZ+7TxgjS/dLjbRzQVVzua4YLozG0wGs0b/vN4+iFCprJMuCVvhj0IDYgxT
 4lO+kJUVyRda6RF5ws1z43g0Ick3CEAqr1SHDiAFy76E6Kw6+mBQFYn5t0G7HdI6HQwG
 i4bw3BPOgTpXMjqSU4ZkesdM1h7SlHyz/xucoXujoCDfpDdEAG4oDC86GCwyZMAcNX2Y
 dKZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PMTk4pZIN5zdCpfQ8eLETIXT6rNawUuc7NXZZd6E4uY=;
 b=hcG8z82MWY5JRihOouo3hIeseMwYvxyPQSZm0R0FJC5VpwRdsOn/sWA2RT40g3yIg7
 fL+cuhxQh40W2/V9r9UdimewJJwV1T1UYOzRuFb1zY5WvkkOnMk9mE/+oSoyQEX2xIvV
 YWOzuIAuJKqAi4wMdOkVv/Wh9Q0IyJCPUPTZO7K+CUOTc/u/esjFKZ1uHUwbb0iP8NlP
 fwRyYeF6nKo+SWmjF+qiMiDEO/FFGyNRuv0r3bXEU/FzSd+0geRTHCjDeb5NV5wf31Jx
 oM7b5/i6thOIfptLZ/68TrHtpta6XZLjU356V1opd7XTEKqi/OaCFSUd1Vvdu2GWaa1s
 f0kA==
X-Gm-Message-State: ANhLgQ0m8UCcGqOgkvejv+DBNzs2TX92PsNRNVLXMAs1T4hx2aleMtBI
 g79DrLeHBtYVzcfb1y05YIIHPI2F
X-Google-Smtp-Source: ADFU+vteXWn2Yy9fC6eX4vL8/TOJUKaDZWDWIMM+zN32jCfLiBjJqO9gqnlmPn9DJKJKK5xWu5F5Gg==
X-Received: by 2002:a2e:984d:: with SMTP id e13mr1330966ljj.275.1583859340655; 
 Tue, 10 Mar 2020 09:55:40 -0700 (PDT)
Received: from [192.168.2.145] (94-29-39-224.dynamic.spd-mgts.ru.
 [94.29.39.224])
 by smtp.googlemail.com with ESMTPSA id t6sm5200833ljc.88.2020.03.10.09.55.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Mar 2020 09:55:40 -0700 (PDT)
Subject: Re: [PATCH v5 3/8] clk: tegra: Implement Tegra210 EMC clock
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
 <20200310152003.2945170-4-thierry.reding@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <b5fb83d8-003c-d76b-9dac-7c8ef15f2ab1@gmail.com>
Date: Tue, 10 Mar 2020 19:55:39 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200310152003.2945170-4-thierry.reding@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_095542_909013_26960ECD 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
bGVhbnVwCgouLi4KCj4gK3N0YXRpYyBpbnQgdGVncmEyMTBfZW1jX3Jlc3VtZShzdHJ1Y3QgZGV2
aWNlICpkZXYpCj4gK3sKPiArCXN0cnVjdCB0ZWdyYV9lbWMgKmVtYyA9IGRldl9nZXRfZHJ2ZGF0
YShkZXYpOwo+ICsKPiArCWVtYy0+ZW1jX3N1c3BlbmQgPSBmYWxzZTsKCkxvb2tzIGxpa2UgdGhl
ICdlbWMtPmVtY19zdXNwZW5kJyBpc24ndCByZWFsbHkgbmVlZGVkLCBub3RoaW5nIGluIGtlcm5l
bApzaGFsbCB0b3VjaCBFTUMgcmF0ZSBhdCB0aGlzIHBvaW50LgoKUGVyaGFwcyBzaG91bGQgYmUg
YmV0dGVyIHRvIG1ha2UgRU1DIGNsayBleGx1c2l2ZSBpbiBvcmRlciB0byBjYXRjaAphYnVzZXJz
LCBwbGVhc2Ugc2VlIHRlZ3JhMzAtZW1jIHN1c3BlbmQvcmVzdW1lIGZvciBhbiBleGFtcGxlLgoK
PiArCWNsa19zZXRfcmF0ZShlbWMtPmVtY19jbGssIGVtYy0+ZW1jX3Jlc3VtZV9yYXRlKTsKPiAr
Cj4gKwlwcl9kZWJ1ZygiJXMgYXQgcmF0ZSAlbHVcbiIsIF9fZnVuY19fLCBjbGtfZ2V0X3JhdGUo
ZW1jLT5lbWNfY2xrKSk7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KPiArI2VuZGlmCj4gKwo+ICtz
dGF0aWMgY29uc3Qgc3RydWN0IGRldl9wbV9vcHMgdGVncmEyMTBfZW1jX3BtX29wcyA9IHsKPiAr
CVNFVF9TWVNURU1fU0xFRVBfUE1fT1BTKHRlZ3JhMjEwX2VtY19zdXNwZW5kLCB0ZWdyYTIxMF9l
bWNfcmVzdW1lKQo+ICt9OwpXaGF0IGFib3V0IHRvIHVzZSB0aGUgZGVmYXVsdCBzdXNwZW5kL3Jl
c3VtZSBsZXZlbD8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
