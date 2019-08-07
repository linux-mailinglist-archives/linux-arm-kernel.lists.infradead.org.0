Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1959A85114
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 18:30:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GedTAsgnOzAOO8XA5B7lbompj7vNEZ7ySwWurde6ZAY=; b=l1T8VlZZXhhyMa
	YEdOYWJBxhsfpaoQd/QwZ8MIk/YQ38HHHtWwXILeAGzQo7JyjxgLkkZQswiY1Clurmn/zLOQ2aZ9U
	eb+oSubLCAnkLpOwdfVQOvkwlwHjoTrT3sJ8wD46E40XGE6BPcQ2hQWtHLuWx+5RGe5cgZQKC63E/
	tgFMDhkloUeRB2SqEbP9sUdOg/Kjm2IwMmrgGQGaCT+JXA997bfvc34MlT/OdCU4TuU0dlDEEyF8x
	VIadAOhG09JM+o6/vKOUS85gQ7b9cWNPuFIuejbt0JBqMQQ8oBgI7LOT/LEiLwOvey66IC6O4KTaI
	ApTY47tyao6aInKDhZbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvOpo-000151-Ul; Wed, 07 Aug 2019 16:30:45 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOpc-00014c-GB
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 16:30:34 +0000
Received: by mail-wm1-x341.google.com with SMTP id 10so666514wmp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 09:30:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=95c0aXoL6EPG66Q36qr8W3A2KuNLw5UaP+V7653tdSU=;
 b=q9uiBK32lLZr5A/pV2DpNLX6Cq4ls94ALbz9aUJBfeV29qXsbzGDyXJUfR5TaTLL7o
 jNQduh+CyIam5IyNZYzq3kg+pJt9gKpq8aHxCZ646emgOXgEQ7NsTBzwabFUje9Yshyn
 NZftJZtwK9CRwvfjBquhAeV5lhmSDbVHi4yqv+lTKDMWLXM1/YvTWvH6976XDOzeAA2m
 m/j/7tQDv5wP1nvpX7LCGuO4ZOIQ8/z4U7+jrwxoSTdyyCDDmoMNlbZedyFMRH+ovINl
 qwmFQIR9sl+9nfInU1YWBy585cYQF+7CHGKnjQznjzS5qv0m46wGWJ47Y+RxuB8qy6oQ
 FL8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=95c0aXoL6EPG66Q36qr8W3A2KuNLw5UaP+V7653tdSU=;
 b=I9oQLkEGGJFDi1vBEEbP1+FNbnN5KIDUNlolVtkDOY1CZKNRbfGoaQTjlfAVrc2fas
 enzyyy+c0ZPW1wBLQTzIqV1YqscNF9TRspmZMYL2v8oyGcO/B9xbU5lPGdwK+JiSewXO
 wsNLpaSHhchZxunzu3hc5IR6RC5h3jH95DlbQJIBN0tb367SoiTN2Z81IOqpa46POmlj
 ZvUeCNe6KjJPVzp9Y3KlymviLHoFlLU2/ov7TulnnAmfWZBvBFD1xXRABx79Ii7ULaoL
 FE8NiImdcWZY1Qg3o+e+JAjedduIF0mqAVC0zku7HSt4ABsOn9VEZG/eVNHB+uJnzJ9y
 DEGQ==
X-Gm-Message-State: APjAAAUeCgYqU7R2KEp4tgpYT+oyhrSHhS4iGZDlo+NV9rPP0kNCJEKB
 A1nOcEv+zclF4xO/HfhB9WEF28Sgat8=
X-Google-Smtp-Source: APXvYqxBZYCWizlHblswlINrudZHpDjBmo5qn26d2RqjE6nPVYbafJrqZkm7WCEGYhSi8YEbV6os2w==
X-Received: by 2002:a05:600c:214c:: with SMTP id
 v12mr789229wml.28.1565195430051; 
 Wed, 07 Aug 2019 09:30:30 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:90cb:64c9:c238:a704?
 ([2a01:e34:ed2f:f020:90cb:64c9:c238:a704])
 by smtp.googlemail.com with ESMTPSA id u186sm852407wmu.26.2019.08.07.09.30.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 07 Aug 2019 09:30:29 -0700 (PDT)
Subject: Re: [PATCH 4/6] ARM: psci: cpuidle: Introduce PSCI CPUidle driver
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pm@vger.kernel.org
References: <20190722153745.32446-1-lorenzo.pieralisi@arm.com>
 <20190722153745.32446-5-lorenzo.pieralisi@arm.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <41813f90-8a1e-b712-328c-0390bfe4a471@linaro.org>
Date: Wed, 7 Aug 2019 18:30:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190722153745.32446-5-lorenzo.pieralisi@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_093032_571802_9676CFD8 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjIvMDcvMjAxOSAxNzozNywgTG9yZW56byBQaWVyYWxpc2kgd3JvdGU6Cj4gUFNDSSBmaXJt
d2FyZSBpcyB0aGUgc3RhbmRhcmQgcG93ZXIgbWFuYWdlbWVudCBjb250cm9sIGZvcgo+IGFsbCBB
Uk02NCBiYXNlZCBwbGF0Zm9ybXMgYW5kIGl0IGlzIGFsc28gZGVwbG95ZWQgb24gc29tZQo+IEFS
TSAzMiBiaXQgcGxhdGZvcm1zIHRvIGRhdGUuCj4gCj4gSWRsZSBzdGF0ZSBlbnRyeSBpbiBQU0NJ
IGlzIGN1cnJlbnRseSBhY2hpZXZlZCBieSBjYWxsaW5nCj4gYXJtX2NwdWlkbGVfaW5pdCgpIGFu
ZCBhcm1fY3B1aWRsZV9zdXNwZW5kKCkgaW4gYSBnZW5lcmljCj4gaWRsZSBkcml2ZXIsIHdoaWNo
IGluIHR1cm4gcmVsaWVzIG9uIEFSTS9BUk02NCBDUFVpZGxlIGJhY2stZW5kCj4gdG8gcmVsYXkg
dGhlIGNhbGwgaW50byBQU0NJIGZpcm13YXJlIGlmIFBTQ0kgaXMgdGhlIGJvb3QgbWV0aG9kLgo+
IAo+IEdpdmVuIHRoYXQgUFNDSSBpcyB0aGUgc3RhbmRhcmQgaWRsZSBlbnRyeSBtZXRob2Qgb24g
QVJNNjQgc3lzdGVtcwo+ICh3aGljaCBtZWFucyB0aGF0IG5vIG90aGVyIENQVWlkbGUgZHJpdmVy
IGFyZSBleHBlY3RlZCBvbiBBUk02NAo+IHBsYXRmb3JtcyAtIHNvIFBTQ0kgaXMgYWxyZWFkeSBh
IGdlbmVyaWMgaWRsZSBkcml2ZXIpLCBpbiBvcmRlciB0bwo+IHNpbXBsaWZ5IGlkbGUgZW50cnkg
YW5kIGNvZGUgbWFpbnRlbmFuY2UsIGl0IG1ha2VzIHNlbnNlIHRvIGhhdmUgYSBQU0NJCj4gc3Bl
Y2lmaWMgaWRsZSBkcml2ZXIgc28gdGhhdCBpZGxlIGNvZGUgdGhhdCBpdCBpcyBjdXJyZW50bHkg
bGl2aW5nIGluCj4gZHJpdmVycy9maXJtd2FyZSBkaXJlY3RvcnkgY2FuIGJlIGhvaXN0ZWQgb3V0
IG9mIGl0IGFuZCBtb3ZlZAo+IHdoZXJlIGl0IGJlbG9uZ3MsIGludG8gYSBmdWxsLWZsZWRnZWQg
UFNDSSBkcml2ZXIsIGxlYXZpbmcgUFNDSSBjb2RlCj4gaW4gZHJpdmVycy9maXJtd2FyZSBhcyBh
IHB1cmUgZmlybXdhcmUgaW50ZXJmYWNlLCBhcyBpdCBzaG91bGQgYmUuCj4gCj4gSW1wbGVtZW50
IGEgUFNDSSBDUFVpZGxlIGRyaXZlci4gQnkgZGVmYXVsdCBpdCBpcyBhIHNpbGVudCBLY29uZmln
IGVudHJ5Cj4gd2hpY2ggaXMgbGVmdCB1bnNlbGVjdGVkLCBzaW5jZSBpdCBzZWxlY3Rpb24gd291
bGQgY2xhc2ggd2l0aCB0aGUKPiBnZW5lcmljIEFSTSBDUFVpZGxlIGRyaXZlciB0aGF0IHByb3Zp
ZGVzIGEgUFNDSSBiYXNlZCBpZGxlIGRyaXZlcgo+IHRocm91Z2ggdGhlIGFybS9hcm02NCBhcmNo
ZXMgYmFjay1lbmRzIENQVSBvcGVyYXRpb25zLgo+IAo+IFNpZ25lZC1vZmYtYnk6IExvcmVuem8g
UGllcmFsaXNpIDxsb3JlbnpvLnBpZXJhbGlzaUBhcm0uY29tPgo+IENjOiBVbGYgSGFuc3NvbiA8
dWxmLmhhbnNzb25AbGluYXJvLm9yZz4KPiBDYzogU3VkZWVwIEhvbGxhIDxzdWRlZXAuaG9sbGFA
YXJtLmNvbT4KPiBDYzogRGFuaWVsIExlemNhbm8gPGRhbmllbC5sZXpjYW5vQGxpbmFyby5vcmc+
Cj4gQ2M6IE1hcmsgUnV0bGFuZCA8bWFyay5ydXRsYW5kQGFybS5jb20+Cj4gQ2M6ICJSYWZhZWwg
Si4gV3lzb2NraSIgPHJqd0Byand5c29ja2kubmV0Pgo+IC0tLQoKTW9kdWxvIFVsZiBhbmQgU3Vk
ZWVwIGNvbW1lbnRzLAoKQWNrZWQtYnk6IERhbmllbCBMZXpjYW5vIDxkYW5pZWwubGV6Y2Fub0Bs
aW5hcm8ub3JnPgoKCi0tIAogPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSC
IE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRw
Oi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0
dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xp
bmFyby1ibG9nLz4gQmxvZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
