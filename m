Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0BB65E1F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 19:03:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6jhCejiaUZYSBbEeMstFUTDfpWrqaeSQzx1q9uFA/l4=; b=tlUBqENHGJ1ne0
	CGcxGgzXu0umcxsdIutdNgODWUPZLwVQymMmSHfDhjyy/CgQpcqfmSkUyFtgP1pj2l+dYeIH5slO3
	OhznW3GATMXLTn3uzng9cYxhC5UjGv1oX0e2op2pSkyC6ekUHFlBv9QPaMSt6NSvjHyI7ZIFrhGty
	1lrhtV8WuAhqJJZGRK+qLIIN0Hs3XqRfUEeD71lQmT+N//r42OOt6QmJiOV9dBYJoIBVRZvTfl0xS
	X0mddvE/n1O6GoREeyKhmH8+M594gPKefD7vqhPprgIA8K1lxtmPtwRzaZpXosM/UvdNJtE+9sw8J
	v7Kt2O/vfpWvaDsf3ZzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlcTr-0004tU-EO; Thu, 11 Jul 2019 17:03:39 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlcTe-0004so-J4
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 17:03:27 +0000
Received: by mail-lj1-x243.google.com with SMTP id m8so6511981lji.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 10:03:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=poZMR+/iqhG3v4xOfyiATFmovw9vtsgxY+271Xi/Cog=;
 b=BuuDg3G9UWeoBZfqsugcEKWYp/PJ8BC9sfdgtT3jAaN6afHGwxq7NkJky6nBxlHB3F
 2D8S+jhp8NNjLxS5WXAZZUf0p+ytrEFiMB+BQY8VCxB3jH/37dPmG7Zg737wGW/9Mjxg
 KbRJL3n8xwxPoQRisTnHY5lY1oOUS+LWTc7z23mptLbXhGbso7i53JJZXx6xJby78/WU
 ssM25MxbIRLpvMEejsd+to+AQRuWGqhmDuvbMyoCFkV9IYgO6m8CEGZuqCfCDEofNlJE
 Z9/efZ/efuimPX7mafjPtkh+dEGuwaF4NdccOOYmrZDSv6DkaNEvxNFT/lY7HUQy7+ZJ
 IfGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=poZMR+/iqhG3v4xOfyiATFmovw9vtsgxY+271Xi/Cog=;
 b=hYS+hmVWwgX1TWIDBQgx2k0WV3vcvz+oRGOcH1bdQ3zy7jCLfHA9ewMy66IBA8OB0D
 fOzVENNsbtHIW+UEQ8zQQ+ppd4jUNE+/SnGPQE+DNdj6poAYxJTcomZo83BBKkq/ryxV
 jM2w/xHY53mldQT5umk1UWZmuEHmc1wjBkfu8PfLm9UYiYq8V/GhVSLXIZBBIxZP5afs
 UGemwIKy3xkC0G7UJBaGr0MYaA5NCWu4gyefr5ZSkOKcoa8zPm4NcxMPAQyT0oZVyJPn
 lYUPg0Z+3uW2oa/oqO+ADvfzBBBJOmXjYuYMko1YMD3u9dXIFTdOVRkpg5vQxnbqQ4t/
 EmXQ==
X-Gm-Message-State: APjAAAW5wUJVgJFRhc9LO4BPsjc6P5cWeeWy8v1LfU/hFCynoRpr1//J
 0ZCzZUFbiKbQm+HspHQkWlIv8Sov
X-Google-Smtp-Source: APXvYqzEw0D1L1Jf1yGuRGjXpk3Wr2+dEw8JPyoRdvwkR4c5Pb4ONMol/nsDmFw3szvS+rm9TpntNg==
X-Received: by 2002:a2e:3013:: with SMTP id w19mr3187304ljw.73.1562864604445; 
 Thu, 11 Jul 2019 10:03:24 -0700 (PDT)
Received: from [192.168.2.145] (ppp79-139-233-208.pppoe.spdop.ru.
 [79.139.233.208])
 by smtp.googlemail.com with ESMTPSA id d21sm808224lfc.73.2019.07.11.10.03.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 10:03:23 -0700 (PDT)
Subject: Re: [PATCH v2 1/6] ARM: tegra: Remove cpuidle drivers
To: Jon Hunter <jonathanh@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
References: <20190711031312.10038-1-digetx@gmail.com>
 <20190711031312.10038-2-digetx@gmail.com>
 <c087a5cb-2ffa-1cf6-f0bf-631234759a22@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <a6e4b43e-369c-c501-6d2e-69d5b940ff9c@gmail.com>
Date: Thu, 11 Jul 2019 20:03:22 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <c087a5cb-2ffa-1cf6-f0bf-631234759a22@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_100326_632794_47AEA97E 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTEuMDcuMjAxOSAxMjoyNiwgSm9uIEh1bnRlciDQv9C40YjQtdGCOgo+IAo+IE9uIDExLzA3LzIw
MTkgMDQ6MTMsIERtaXRyeSBPc2lwZW5rbyB3cm90ZToKPj4gUmVtb3ZlIHRoZSBvbGQgZHJpdmVy
cyB0byByZXBsYWNlIHRoZW0gY2xlYW5seSB3aXRoIGEgbmV3IG9uZSBsYXRlciBvbi4KPj4KPj4g
U2lnbmVkLW9mZi1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkaWdldHhAZ21haWwuY29tPgo+PiAtLS0K
Pj4gIGFyY2gvYXJtL21hY2gtdGVncmEvTWFrZWZpbGUgICAgICAgICAgIHwgIDEzIC0tCj4+ICBh
cmNoL2FybS9tYWNoLXRlZ3JhL2NwdWlkbGUtdGVncmExMTQuYyB8ICA4OSAtLS0tLS0tLS0tLQo+
PiAgYXJjaC9hcm0vbWFjaC10ZWdyYS9jcHVpZGxlLXRlZ3JhMjAuYyAgfCAyMTIgLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQo+PiAgYXJjaC9hcm0vbWFjaC10ZWdyYS9jcHVpZGxlLXRlZ3JhMzAu
YyAgfCAxMzIgLS0tLS0tLS0tLS0tLS0tCj4+ICBhcmNoL2FybS9tYWNoLXRlZ3JhL2NwdWlkbGUu
YyAgICAgICAgICB8ICA1MCAtLS0tLS0KPj4gIGFyY2gvYXJtL21hY2gtdGVncmEvY3B1aWRsZS5o
ICAgICAgICAgIHwgIDIxIC0tLQo+PiAgYXJjaC9hcm0vbWFjaC10ZWdyYS9pcnEuYyAgICAgICAg
ICAgICAgfCAgMTggLS0tCj4+ICBhcmNoL2FybS9tYWNoLXRlZ3JhL2lycS5oICAgICAgICAgICAg
ICB8ICAxMSAtLQo+PiAgYXJjaC9hcm0vbWFjaC10ZWdyYS9wbS5jICAgICAgICAgICAgICAgfCAg
IDcgLQo+PiAgYXJjaC9hcm0vbWFjaC10ZWdyYS9wbS5oICAgICAgICAgICAgICAgfCAgIDEgLQo+
PiAgYXJjaC9hcm0vbWFjaC10ZWdyYS9yZXNldC1oYW5kbGVyLlMgICAgfCAgMTEgLS0KPj4gIGFy
Y2gvYXJtL21hY2gtdGVncmEvcmVzZXQuaCAgICAgICAgICAgIHwgICA5ICstCj4+ICBhcmNoL2Fy
bS9tYWNoLXRlZ3JhL3NsZWVwLXRlZ3JhMjAuUyAgICB8IDE5MCArLS0tLS0tLS0tLS0tLS0tLS0t
LS0tCj4+ICBhcmNoL2FybS9tYWNoLXRlZ3JhL3NsZWVwLmggICAgICAgICAgICB8ICAxMiAtLQo+
PiAgYXJjaC9hcm0vbWFjaC10ZWdyYS90ZWdyYS5jICAgICAgICAgICAgfCAgIDMgLQo+PiAgZHJp
dmVycy9zb2MvdGVncmEvS2NvbmZpZyAgICAgICAgICAgICAgfCAgIDEgLQo+PiAgaW5jbHVkZS9z
b2MvdGVncmEvY3B1aWRsZS5oICAgICAgICAgICAgfCAgIDQgLQo+PiAgMTcgZmlsZXMgY2hhbmdl
ZCwgNSBpbnNlcnRpb25zKCspLCA3NzkgZGVsZXRpb25zKC0pCj4+ICBkZWxldGUgbW9kZSAxMDA2
NDQgYXJjaC9hcm0vbWFjaC10ZWdyYS9jcHVpZGxlLXRlZ3JhMTE0LmMKPj4gIGRlbGV0ZSBtb2Rl
IDEwMDY0NCBhcmNoL2FybS9tYWNoLXRlZ3JhL2NwdWlkbGUtdGVncmEyMC5jCj4+ICBkZWxldGUg
bW9kZSAxMDA2NDQgYXJjaC9hcm0vbWFjaC10ZWdyYS9jcHVpZGxlLXRlZ3JhMzAuYwo+PiAgZGVs
ZXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL21hY2gtdGVncmEvY3B1aWRsZS5jCj4+ICBkZWxldGUg
bW9kZSAxMDA2NDQgYXJjaC9hcm0vbWFjaC10ZWdyYS9jcHVpZGxlLmgKPj4gIGRlbGV0ZSBtb2Rl
IDEwMDY0NCBhcmNoL2FybS9tYWNoLXRlZ3JhL2lycS5oCj4gCj4gQnkgcmVtb3ZpbmcgYWxsIHRo
ZSBhYm92ZSwgaXQgaXMgcmVhbGx5IGhhcmQgdG8gcmV2aWV3IHRoZSBkaWZmLiBJcwo+IHRoZXJl
IGFueSB3YXkgeW91IGNvdWxkIGZpcnN0IGNvbnNvbGlkYXRlIHRoZSBjcHVpZGxlIGRyaXZlcnMg
aW50byBzYXkKPiB0aGUgZXhpc3RpbmcgYXJjaC9hcm0vbWFjaC10ZWdyYS9jcHVpZGxlLXRlZ3Jh
MjAuYyBhbmQgdGhlbiBtb3ZlIHRvCj4gZHJpdmVycy9jcHVpZGxlPwoKSSdtIGFmcmFpZCB0aGF0
IGl0IHdpbGwgbWFrZSByZXZpZXdpbmcgZXZlbiBtb3JlIGRpZmZpY3VsdCBiZWNhdXNlCmV2ZXJ5
dGhpbmcgdGhhdCBpcyByZW1vdmVkIGhlcmUgaXMgbm90IHJldHVybmVkIGluIHRoZSBmdXJ0aGVy
IHBhdGNoZXMuClRoZSBuZXcgZHJpdmVyIGlzIGJhc2VkIG9uIHRoZSBvbGRlciBvbmVzLCBidXQg
SSB3cm90ZSBpdCBmcm9tIHNjcmF0Y2gKYW5kIGl0J3Mgbm90IG9ubHkgbG9va3MgZGlmZmVyZW50
LCBidXQgYWxzbyB3b3JrcyBhIGJpdCBkaWZmZXJlbnQgYXMgeW91Cm1heSBzZWUuCgpDb3VsZCB5
b3UgcGxlYXNlIGNsYXJpZnkgd2hhdCBleGFjdGx5IG1ha2VzIGl0IGhhcmQgdG8gcmV2aWV3PyBU
aGUgZGlmZgpsb29rcyBwcmV0dHkgY2xlYW4gdG8gbWUsIHdoaWxlIHNxdWFzaGluZyBldmVyeXRo
aW5nIGludG8gZXhpc3RpbmcKZHJpdmVyIHNob3VsZCBiZSBxdWl0ZSBhIG1lc3MuCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
