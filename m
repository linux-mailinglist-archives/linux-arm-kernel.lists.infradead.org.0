Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB9BE7F48
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 05:40:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KCF638saZOY1qENklUVRQq71891xwfw9giMArXB/o58=; b=MUjOJzU/qwiuo/
	KzzCcAGWS040uyPjG6gBgjCHh186GMt2431Thws+4Y6NGnLzGD4GsT5Zsp7ocYsOsbYS+tlJ1LRGX
	kPYvah3LzaZmVKForcCrqLY3bvuOcGDV8wqamUwo8ubtcT69K0KDvRxQCnZuF9b2T/cm06husJy8R
	D6BZgj2wrciCKBNi0pCBsdknCEnrhuLNk2xr+I5Zxxt9L72bp9WtVrWVa8dn2hBS6R82iIvI+/kkR
	xAUFSq3GktjHqlpecbT/mQnVch2r7a0N3iTBKt4UFzabZMjyWfzbeXQGTt7Kh/ft1NqfLwu/q1hHI
	xQMFTVVl7jPZlSGKBaeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPJIt-0001Gh-9j; Tue, 29 Oct 2019 04:40:23 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPJIe-0000qR-Ip; Tue, 29 Oct 2019 04:40:10 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 4ED98AF76;
 Tue, 29 Oct 2019 04:40:07 +0000 (UTC)
Subject: Re: [PATCH v2 6/8] arm64: dts: realtek: Add RTD1293 and Synology
 DS418j
To: linux-realtek-soc@lists.infradead.org
References: <20191020040817.16882-1-afaerber@suse.de>
 <20191020040817.16882-7-afaerber@suse.de>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <e0dbb014-e1e1-767c-64d1-ae21978b1d32@suse.de>
Date: Tue, 29 Oct 2019 05:40:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191020040817.16882-7-afaerber@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_214008_784650_3CAE7C7C 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-kernel@vger.kernel.org, info@synology.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjAuMTAuMTkgdW0gMDY6MDggc2NocmllYiBBbmRyZWFzIEbDpHJiZXI6Cj4gQWRkIERldmlj
ZSBUcmVlcyBmb3IgUlREMTI5MyBTb0MgYW5kIFN5bm9sb2d5IERpc2tTdGF0aW9uIERTNDE4aiBO
QVMuCj4gCj4gQ2M6IGluZm9Ac3lub2xvZ3kuY29tCj4gU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBG
w6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgo+IC0tLQo+ICB2MSAtPiB2MjoKPiAgKiBNb3ZlZCBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllciB0byB0b3AKPiAgKiBEcm9wcGVkICJhcm0sYXJtdjgiIChS
b2IpCj4gICogQ2hhbmdlZCBmcm9tIE1JVCB0byBCU0QtMi1DbGF1c2UgKFJvYikKPiAgKiBEcm9w
cGVkIGFjY2lkZW50YWwgZW5hYmxlLW1ldGhvZCBhbmQgY3B1LXJlbGVhc2UtYWRkcgo+ICAKPiAg
YXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL01ha2VmaWxlICAgICAgICAgICB8ICAzICsrCj4g
IGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjkzLWRzNDE4ai5kdHMgfCAzMCArKysr
KysrKysrKysrKysKPiAgYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTMuZHRzaSAg
ICAgICB8IDUxICsrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIDMgZmlsZXMgY2hhbmdlZCwg
ODQgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0
cy9yZWFsdGVrL3J0ZDEyOTMtZHM0MThqLmR0cwo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9h
cm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTMuZHRzaQoKQXBwbGllZCB0byBsaW51eC1yZWFs
dGVrLmdpdCB2NS41L2R0NjQ6CgpodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgv
a2VybmVsL2dpdC9hZmFlcmJlci9saW51eC1yZWFsdGVrLmdpdC9sb2cvP2g9djUuNS9kdDY0CgpS
ZWdhcmRzLApBbmRyZWFzCgotLSAKU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJI
Ck1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2VybWFueQpHRjogRmVsaXggSW1lbmTD
tnJmZmVyCkhSQiAzNjgwOSAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
