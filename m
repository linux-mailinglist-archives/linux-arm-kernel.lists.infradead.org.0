Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B80613C281
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 14:20:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mqQyzRVQkd2+91gujfc/k5rSeggAoprNUrfzQqA5KWI=; b=L4uS/RfwiPObNgJgU+uDDZnPq
	Fg1n7mJpc+LhZufx6YS1ZnOjpWrKv/lW/E2qf7GXJEiD2nsvoc4uesNupYAvlfYFe4s0xxlhiy2Zd
	VbCTobkX4umrO4Z6KRbSs/3CxjayJDog8ALkG5rdb2cKNlj5/dpT6DP5YHN9d/0KhGEN9OAcIKeMU
	f576N9o1CcUUVbGApZtOCoHBn9Trj9mEKFmDKAs8Yszt/dxAqWNtS0jx4ZRg/n+fKEuBwQj6yPaOw
	uygNRLGnxTSAxtB4W1E7i/fhsX0sqwOqZJMH8bOO7qSZJaKZdKDKTFek2snsn8VZhVamIZTzBju5a
	XaNJZ0pmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irib3-0002OX-6D; Wed, 15 Jan 2020 13:20:33 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iriaq-0001m4-SC; Wed, 15 Jan 2020 13:20:25 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id B050FADDC;
 Wed, 15 Jan 2020 13:20:17 +0000 (UTC)
Subject: Re: [PATCH] arm64: dts: realtek: rtd16xx: Add memory reservations
To: James Tai <james.tai@realtek.com>, "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
References: <20200103060441.1109-1-afaerber@suse.de>
 <51cf409ed1a44f038a5f1df133986063@realtek.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <6ac92228-8dcb-3927-e3ee-d9564ec7d20e@suse.de>
Date: Wed, 15 Jan 2020 14:20:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <51cf409ed1a44f038a5f1df133986063@realtek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_052021_058727_26A46309 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMTUuMDEuMjAgdW0gMDk6MTMgc2NocmllYiBKYW1lcyBUYWk6Cj4+IFJlc2VydmUgbWVtb3J5
IHJlZ2lvbnMgZm9yIFJQQyBhbmQgVEVFLgo+Pgo+PiBGaXhlczogZTVhOWUyMzc2MDhkICgiYXJt
NjQ6IGR0czogcmVhbHRlazogQWRkIFJURDE2MTkgU29DIGFuZCBSZWFsdGVrCj4+IE1qb2xuaXIg
RVZCIikKPj4gQ2M6IEphbWVzIFRhaSA8amFtZXMudGFpQHJlYWx0ZWsuY29tPgo+PiBTaWduZWQt
b2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Cj4+IC0tLQo+PiAgIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxNnh4LmR0c2kgfCAxOSArKysrKysrKysrKysr
KysrKysrCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKykKWy4uLl0KPiBBY2tl
ZC1ieTogSmFtZXMgVGFpIDxqYW1lcy50YWlAcmVhbHRlay5jb20+CgpUaGFua3MsIGFwcGxpZWQg
dG8gbGludXgtcmVhbHRlay5naXQgdjUuNi9kdDoKCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHVi
L3NjbS9saW51eC9rZXJuZWwvZ2l0L2FmYWVyYmVyL2xpbnV4LXJlYWx0ZWsuZ2l0L2xvZy8/aD12
NS42L2R0CgpSZWdhcmRzLApBbmRyZWFzCgotLSAKU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2Vy
bWFueSBHbWJICk1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2VybWFueQpHRjogRmVs
aXggSW1lbmTDtnJmZmVyCkhSQiAzNjgwOSAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
