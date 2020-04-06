Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B2F19F40D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 13:03:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yWXsvpnRq79+gNplzDB+0plIW5QDvQa77R8CT0TeJ7M=; b=GJg6t0rW4RV4Ig4mn3r0+q1jr
	YmbrQfEm108LL5Z6OLykBjhLT2MPiFc1dYru7PzHc8yWWENiOW/sRYISYO7C4onk35cf1eQXiG6dg
	2/rKrI8daM11ZW2eoa6LFgMRKgRD33RvEhkVGkFEGrmAxz5lectI1qkRcVP6nugjNZSkEcAAY/r6F
	a6Ew8PHOGfLOZmMf6CKYBfOegYf9doyIg1DkT+Yqe/Kjv5HUaawZuldkNWvxBGQl5QJp6kKuPBVmd
	93ecizgBjG/CkvJHFYBnhtXFycjsinRh1XG/+x+x+e59hPfGJFfbtDaQMEChTwowI4s4lJtonDPqk
	2NopMWmuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLPXU-00051k-Q3; Mon, 06 Apr 2020 11:03:36 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLPXP-00050k-0P
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 11:03:32 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id E2369AD12;
 Mon,  6 Apr 2020 11:03:25 +0000 (UTC)
Subject: Re: [PATCH 1/9] ARM: Remove redundant COMMON_CLK selects
To: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
References: <20200405025123.154688-1-sboyd@kernel.org>
 <20200405025123.154688-2-sboyd@kernel.org>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <f3d1bf68-f40f-858d-8caf-268ad9231553@suse.de>
Date: Mon, 6 Apr 2020 13:03:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200405025123.154688-2-sboyd@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_040331_193577_78A4A22C 
X-CRM114-Status: GOOD (  18.40  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Arnd Bergmann <arnd@arndb.de>, Alexander Shiyan <shc_work@mail.ru>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Lubomir Rintel <lkundrak@v3.sk>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMDUuMDQuMjAgdW0gMDQ6NTEgc2NocmllYiBTdGVwaGVuIEJveWQ6Cj4gVGhlIG11bGl0cGxh
dGZvcm0gY29uZmlnIGFscmVhZHkgc2VsZWN0cyBDT01NT05fQ0xLLCBzbyBzZWxlY3RpbmcgaXQK
PiBhZ2FpbiBpcyBub3QgdXNlZnVsLiBSZW1vdmUgdGhlc2Ugc2VsZWN0cyBmcm9tIEFSTSBwbGF0
Zm9ybXMgdGhhdCBhcmUKPiBwYXJ0IG9mIHRoZSBtdWx0aXBsYXRmb3JtIGJ1aWxkLgo+IAo+IENj
OiAiQW5kcmVhcyBGw6RyYmVyIiA8YWZhZXJiZXJAc3VzZS5kZT4KPiBDYzogTWFuaXZhbm5hbiBT
YWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KPiBDYzogUnVzc2Vs
bCBLaW5nIDxsaW51eEBhcm1saW51eC5vcmcudWs+Cj4gQ2M6IEFsZXhhbmRlciBTaGl5YW4gPHNo
Y193b3JrQG1haWwucnU+Cj4gQ2M6IEx1Ym9taXIgUmludGVsIDxsa3VuZHJha0B2My5zaz4KPiBD
YzogPGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZz4KPiBDYzogQXJuZCBCZXJn
bWFubiA8YXJuZEBhcm5kYi5kZT4KPiBTaWduZWQtb2ZmLWJ5OiBTdGVwaGVuIEJveWQgPHNib3lk
QGtlcm5lbC5vcmc+Cj4gLS0tCj4gICBhcmNoL2FybS9tYWNoLWFjdGlvbnMvS2NvbmZpZyAgfCAx
IC0KPiAgIGFyY2gvYXJtL21hY2gtY2xwczcxMXgvS2NvbmZpZyB8IDEgLQo+ICAgYXJjaC9hcm0v
bWFjaC1tbXAvS2NvbmZpZyAgICAgIHwgMSAtCj4gICAzIGZpbGVzIGNoYW5nZWQsIDMgZGVsZXRp
b25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtYWN0aW9ucy9LY29uZmlnIGIv
YXJjaC9hcm0vbWFjaC1hY3Rpb25zL0tjb25maWcKPiBpbmRleCBiNWUwYWM5NjVlYzAuLjAwZmI0
YmFiY2NkZCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9tYWNoLWFjdGlvbnMvS2NvbmZpZwo+ICsr
KyBiL2FyY2gvYXJtL21hY2gtYWN0aW9ucy9LY29uZmlnCj4gQEAgLTcsNyArNyw2IEBAIG1lbnVj
b25maWcgQVJDSF9BQ1RJT05TCj4gICAJc2VsZWN0IEFSTV9HTE9CQUxfVElNRVIKPiAgIAlzZWxl
Y3QgQ0FDSEVfTDJYMAo+ICAgCXNlbGVjdCBDTEtTUkNfQVJNX0dMT0JBTF9USU1FUl9TQ0hFRF9D
TE9DSwo+IC0Jc2VsZWN0IENPTU1PTl9DTEsKPiAgIAlzZWxlY3QgR0VORVJJQ19JUlFfQ0hJUAo+
ICAgCXNlbGVjdCBIQVZFX0FSTV9TQ1UgaWYgU01QCj4gICAJc2VsZWN0IEhBVkVfQVJNX1RXRCBp
ZiBTTVAKClJldmlld2VkLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+IChB
Y3Rpb25zKQoKTmV3IHRhcmdldHMgc3VjaCBhcyBSZWFsdGVrIG9yIFN1bnBsdXMgZG9uJ3Qgc2Vs
ZWN0IGl0IGFueW1vcmUsIGJ1dCBpdCAKc2VlbXMgd2UgZGlkbid0IGNsZWFuIHVwIGFsbCB0aGUg
b2xkIG9uZXMgeWV0LgoKVGhhbmtzLApBbmRyZWFzCgotLSAKU1VTRSBTb2Z0d2FyZSBTb2x1dGlv
bnMgR2VybWFueSBHbWJICk1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2VybWFueQpH
RjogRmVsaXggSW1lbmTDtnJmZmVyCkhSQiAzNjgwOSAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
