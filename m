Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2DAE7F4E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 05:41:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=egl73e66fze69jkEVC/l9ZyECqANlsuiiCgMRaCvngo=; b=bsJ4VH2We7Nwgd
	W8CZo9Ad8GHbFW+W7g095moJ/QsqmD+KH9sJ5B0rT2bCA8k4GlpwXva+osG04r0jK9Y0HeSYc/cTr
	5KARn+RyM2848TsBDX9MTeu4RM0W65lgdBNFNebkkf2/pBYcnjvS+8gGsXWmGx0kJFUHwaT/scL2s
	t0eM4zPyJhoXgv8haUdB23tO/GxajmSoSSIZOLjbU7Vrfgok2xqNoq9eYvu9gddycz+ATMTzaWfn7
	rrY7D3yq9ZMNii8TXn4OEvfz+KAGw710VioSB5uE5r7+869sNkXR+KrDw1YQD04SRWKub1HP3vIrJ
	rLhlA4PHvYEwZoI28GFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPJJl-0001md-SH; Tue, 29 Oct 2019 04:41:17 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPJJW-0001lz-E1; Tue, 29 Oct 2019 04:41:03 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 2E11CAD14;
 Tue, 29 Oct 2019 04:41:01 +0000 (UTC)
Subject: Re: [PATCH v2 8/8] arm64: dts: realtek: Add RTD1296 and Synology DS418
To: linux-realtek-soc@lists.infradead.org
References: <20191020040817.16882-1-afaerber@suse.de>
 <20191020040817.16882-9-afaerber@suse.de>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <8e666996-7e6f-dd25-92c7-18218106658c@suse.de>
Date: Tue, 29 Oct 2019 05:41:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191020040817.16882-9-afaerber@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_214102_613662_73383D77 
X-CRM114-Status: GOOD (  12.38  )
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
ZSBUcmVlcyBmb3IgUlREMTI5NiBTb0MgYW5kIFN5bm9sb2d5IERpc2tTdGF0aW9uIERTNDE4Lgo+
IAo+IENjOiBpbmZvQHN5bm9sb2d5LmNvbQo+IFNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJl
ciA8YWZhZXJiZXJAc3VzZS5kZT4KPiAtLS0KPiAgdjEgLT4gdjI6Cj4gICogTW92ZWQgU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXIgdG8gdG9wCj4gICogRHJvcHBlZCAiYXJtLGFybXY4IiAoUm9iKQo+
ICAqIENoYW5nZWQgZnJvbSBNSVQgdG8gQlNELTItQ2xhdXNlIChSb2IpCj4gICogRHJvcHBlZCBh
Y2NpZGVudGFsIGVuYWJsZS1tZXRob2QgYW5kIGNwdS1yZWxlYXNlLWFkZHIKPiAgKiBGaXhlZCBE
UzQxOCB0byB1c2UgcnRkMTI5Ni5kdHNpCj4gIAo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0
ZWsvTWFrZWZpbGUgICAgICAgICAgfCAgMiArCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRl
ay9ydGQxMjk2LWRzNDE4LmR0cyB8IDMwICsrKysrKysrKysrKysKPiAgYXJjaC9hcm02NC9ib290
L2R0cy9yZWFsdGVrL3J0ZDEyOTYuZHRzaSAgICAgIHwgNjUgKysrKysrKysrKysrKysrKysrKysr
KysrKysrCj4gIDMgZmlsZXMgY2hhbmdlZCwgOTcgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9k
ZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTYtZHM0MTguZHRzCj4g
IGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5Ni5k
dHNpCgpBcHBsaWVkIHRvIGxpbnV4LXJlYWx0ZWsuZ2l0IHY1LjUvZHQ2NDoKCmh0dHBzOi8vZ2l0
Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2FmYWVyYmVyL2xpbnV4LXJlYWx0
ZWsuZ2l0L2xvZy8/aD12NS41L2R0NjQKClJlZ2FyZHMsCkFuZHJlYXMKCi0tIApTVVNFIFNvZnR3
YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgKTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJn
LCBHZXJtYW55CkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIKSFJCIDM2ODA5IChBRyBOw7xybmJlcmcp
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
