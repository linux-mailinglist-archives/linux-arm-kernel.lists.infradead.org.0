Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7CD10F33A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 00:13:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hCSKfYFIW3DyqF1cOZYSTz4LH1Q1WbgfIH/X74jqGUU=; b=mCha44yaZ43l2G
	iOH+I9zjMUJKCoiRs83KeZNoJpIYB1Ss7TYgEhSyy/unZs9vSP8xVZy4sve/8LQbqUzN7r79FiFxq
	iEg/KjTXsUd2cs8qFlBHupLwVO9v73ihFlcBBWgbnGywp1RTI8vNTTFIjsyQHk4WtorgWPInjBP65
	pgjesVNmJcY0+hD7ah3M6Pk1ifYuvael97w4IwjBzW4Ie4Ky1T8Ov4HV5PPp6TEg09RMdcJLiPX++
	36Cstgp1N8dZcAqCrog+OcHTceeF+0WUbdREHh4KOaEJDE9D8AXhpchiegHn69BK1fFpju/xvdJFH
	M2ZKk6uglQVEOHQxr+kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibusO-00016d-O4; Mon, 02 Dec 2019 23:13:08 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibusH-00015l-Dr; Mon, 02 Dec 2019 23:13:02 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 49046B331;
 Mon,  2 Dec 2019 23:12:59 +0000 (UTC)
Subject: Re: [RFC 5/5] arm64: dts: realtek: rtd139x: Add SB2 sem nodes
To: linux-realtek-soc@lists.infradead.org, Cheng-Yu Lee
 <cylee12@realtek.com>, James Tai <james.tai@realtek.com>
References: <20191202220535.6208-1-afaerber@suse.de>
 <20191202220535.6208-6-afaerber@suse.de>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <15898d07-ba67-f790-723d-33b0fe5363c8@suse.de>
Date: Tue, 3 Dec 2019 00:12:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191202220535.6208-6-afaerber@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_151301_613214_A700408F 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

QW0gMDIuMTIuMTkgdW0gMjM6MDUgc2NocmllYiBBbmRyZWFzIEbDpHJiZXI6Cj4gQWRkIERUIG5v
ZGVzIHRvIFNCMiBmb3IgaGFyZHdhcmUgc2VtYXBob3JlcyBpbiBSVEQxMzk1IFNvQyBmYW1pbHku
Cj4gCj4gU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgo+
IC0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTM5eC5kdHNpIHwgMTQgKysr
KysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKykKPiAKPiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEzOXguZHRzaSBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMzl4LmR0c2kKPiBpbmRleCBhM2MxMGNlZWI1ODYu
LjU4NmIwNTM1MDI3NCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsv
cnRkMTM5eC5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEzOXgu
ZHRzaQo+IEBAIC0xOTEsMyArMTkxLDE3IEBACj4gIAkJc3RhdHVzID0gImRpc2FibGVkIjsKPiAg
CX07Cj4gIH07Cj4gKwo+ICsmc2IyIHsKPiArCXNiMl9oZF9zZW06IGh3c3BpbmxvY2tAMCB7Cj4g
KwkJY29tcGF0aWJsZSA9ICJyZWFsdGVrLHJ0ZDExOTUtc2IyLXNlbSI7Cj4gKwkJcmVnID0gPDB4
MCAweDQ+Owo+ICsJCSNod2xvY2stY2VsbHMgPSA8MD47Cj4gKwl9Owo+ICsKPiArCXNiMl9oZF9z
ZW1fbmV3OiBod3NwaW5sb2NrQDYyMCB7Cj4gKwkJY29tcGF0aWJsZSA9ICJyZWFsdGVrLHJ0ZDEx
OTUtc2IyLXNlbSI7Cj4gKwkJcmVnID0gPDB4NjIwIDB4MjA+Owo+ICsJCSNod2xvY2stY2VsbHMg
PSA8MT47Cj4gKwl9OwoKRm9yZ290IHRvIG1lbnRpb246IFRoZXNlIGxhc3QgOCByZWdpc3RlcnMg
KDB4MjApIGFyZSBhIGd1ZXNzLCB1bnRlc3RlZC4KQFJlYWx0ZWs6IENhbiBzb21lb25lIHBsZWFz
ZSBjaGVjayB3aGV0aGVyIFJURDEzOTUgaGFzIHRoZSBzYW1lIG5pbmUgc2VtCnJlZ2lzdGVycyBh
cyBSVEQxMjk1PwoKU2ltaWxhcmx5LCB0aGlzIHNlcmllcyBpcyBsYWNraW5nIGEgcGF0Y2ggZm9y
IFJURDE2MTkgYmVjYXVzZSAtIHNhbWUgYXMKZm9yIFJURDEyOTUvUlREMTM5NSAtIEJTUCBEVCBv
bmx5IHNob3dzIHRoZSBmaXJzdCBvbmUgKGNmLiBjb3ZlcmxldHRlcikuClNhbWUgaXNzdWUgZm9y
IFJURDEzMTkgd2hpbGUgYXQgaXQuCgpUaGFua3MsCkFuZHJlYXMKCj4gK307CgotLSAKU1VTRSBT
b2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJICk1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJu
YmVyZywgR2VybWFueQpHRjogRmVsaXggSW1lbmTDtnJmZmVyCkhSQiAzNjgwOSAoQUcgTsO8cm5i
ZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
