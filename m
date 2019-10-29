Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 052E6E7F7A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 06:23:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BN81YH8G05qeSWdrZF70pkz0eNzjQh0lIT6/d8DYUgI=; b=JMDQUFD/SoJRcP
	BR4+SofxSWirFBgde9XsjuxbaUZchrf0icCfjLmGW8nMcb1jtE+z531U1rNQQlFELEdM1lo1Dtisb
	dPsJuG5Me7W6SLI1jAhxQMfNELiJLUFXS73Yg2E2AO9u2yI9nB+T8B89D2falkUt1FeJyotICqUwg
	5YO5W5JL5pcGsi49j0pn4oReBbyCh1Q5qseTU0snNdu7v2n/Ir45190R9a7As3myeFMkYBtzu6DcJ
	1MqcclV0kvl650rzi1k0kojpJemcuU3pJzxLqwIKd+Kh9xCggrw9acdhE79OEMvl4pkyfUkJODbXV
	cqD3ETIU+jLvPid4TMCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPJy5-0005Is-PH; Tue, 29 Oct 2019 05:22:57 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPJxw-0005IG-Os; Tue, 29 Oct 2019 05:22:50 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 40256B41C;
 Tue, 29 Oct 2019 05:22:47 +0000 (UTC)
Subject: Re: [PATCH v3 1/2] arm64: dts: realtek: Add oscillator for RTD129x
To: linux-realtek-soc@lists.infradead.org
References: <20191020153612.29889-1-afaerber@suse.de>
 <20191020153612.29889-2-afaerber@suse.de>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <3222d376-1e35-3bde-d5d6-674edcbc8e3d@suse.de>
Date: Tue, 29 Oct 2019 06:22:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191020153612.29889-2-afaerber@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_222248_956051_BA424600 
X-CRM114-Status: GOOD (  10.35  )
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
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjAuMTAuMTkgdW0gMTc6MzYgc2NocmllYiBBbmRyZWFzIEbDpHJiZXI6Cj4gQWRkIDI3IE1I
eiBvc2NpbGxhdG9yIGNsb2NrIG5vZGUuCj4gCj4gU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6Ry
YmVyIDxhZmFlcmJlckBzdXNlLmRlPgo+IC0tLQo+ICB2MzogTmV3IChmcm9tIHByZXZpb3VzbHkg
YmxvY2tpbmcgY2xrIHBhdGNoIHNlcmllcykKPiAgCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVh
bHRlay9ydGQxMjl4LmR0c2kgfCA3ICsrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0
aW9ucygrKQoKQXBwbGllZCB0byBsaW51eC1yZWFsdGVrLmdpdCB2NS41L2R0NjQ6CgpodHRwczov
L2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9hZmFlcmJlci9saW51eC1y
ZWFsdGVrLmdpdC9sb2cvP2g9djUuNS9kdDY0CgpSZWdhcmRzLApBbmRyZWFzCgotLSAKU1VTRSBT
b2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJICk1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJu
YmVyZywgR2VybWFueQpHRjogRmVsaXggSW1lbmTDtnJmZmVyCkhSQiAzNjgwOSAoQUcgTsO8cm5i
ZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
