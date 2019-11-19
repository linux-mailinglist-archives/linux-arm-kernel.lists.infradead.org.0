Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8FB101DAB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 09:35:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+ZgtnNnmUAd5LhUcKFfMwgBKslchVF3uz75ZCmPd/k=; b=J5JXdZRfHs7qB4
	ZSN6mj1IpSL+p9jwQGSmI7bqsHuSV/WVzvb3lRIivyFNR/c40ZM76qBBh3j+qB5Tty9t9MbuM+UJu
	myVLZn9K0b3Ne5+cUoqrI8/iaZGsWeOFeWzgveasbczzHrMcHnaDxRd6fxNwaJL0+pwHZFXZHq/qy
	agxsFsKjnIDVtwgTtyZKOKIVJVCDUG/XBCsWe4KqwAcN2Thkf9Xp6hmm3RzFMv3B91rdbtu8P9W7O
	1e2qq2L+7w/dfJXJy1VEb4s9lMiH3hg9NhvYYFe9/jE4t2xWsvJMgY9Apoae5m8uS+pLSVV5MzucD
	mub0/Y/yiBH2K0OeGeqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWyyR-00051f-Nt; Tue, 19 Nov 2019 08:34:59 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWyyI-0004pM-Gg; Tue, 19 Nov 2019 08:34:52 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 71713AD2B;
 Tue, 19 Nov 2019 08:34:47 +0000 (UTC)
Subject: Re: [PATCH v3 6/8] ARM: dts: rtd1195: Add reset nodes
To: James Tai <james.tai@realtek.com>
References: <20191117072109.20402-1-afaerber@suse.de>
 <20191117072109.20402-7-afaerber@suse.de>
 <20b3d0956bed4338a540216df07f16e5@realtek.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <ed7c483d-b518-c74f-f66d-a812d0858f4c@suse.de>
Date: Tue, 19 Nov 2019 09:34:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20b3d0956bed4338a540216df07f16e5@realtek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_003450_703041_32AF30E3 
X-CRM114-Status: GOOD (  12.56  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXMsCgpBZGRpbmcgUGhpbGlwcC4KCkFtIDE4LjExLjE5IHVtIDEwOjIyIHNjaHJpZWIg
SmFtZXMgVGFpOgo+PiArCQkJcmVzZXQxOiByZXNldC1jb250cm9sbGVyQDAgewo+PiArCQkJCWNv
bXBhdGlibGUgPSAic25wcyxkdy1sb3ctcmVzZXQiOwo+PiArCQkJCXJlZyA9IDwweDAgMHg0PjsK
Pj4gKwkJCQkjcmVzZXQtY2VsbHMgPSA8MT47Cj4+ICsJCQl9Owo+PiArCj4+ICsJCQlyZXNldDI6
IHJlc2V0LWNvbnRyb2xsZXJANCB7Cj4+ICsJCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWxvdy1y
ZXNldCI7Cj4+ICsJCQkJcmVnID0gPDB4NCAweDQ+Owo+PiArCQkJCSNyZXNldC1jZWxscyA9IDwx
PjsKPj4gKwkJCX07Cj4+ICsKPj4gKwkJCXJlc2V0MzogcmVzZXQtY29udHJvbGxlckA4IHsKPj4g
KwkJCQljb21wYXRpYmxlID0gInNucHMsZHctbG93LXJlc2V0IjsKPj4gKwkJCQlyZWcgPSA8MHg4
IDB4ND47Cj4+ICsJCQkJI3Jlc2V0LWNlbGxzID0gPDE+Owo+PiArCQkJfTsKPj4gKwo+PiArCQkJ
aXNvX3Jlc2V0OiByZXNldC1jb250cm9sbGVyQDcwODggewo+PiArCQkJCWNvbXBhdGlibGUgPSAi
c25wcyxkdy1sb3ctcmVzZXQiOwo+PiArCQkJCXJlZyA9IDwweDcwODggMHg0PjsKPj4gKwkJCQkj
cmVzZXQtY2VsbHMgPSA8MT47Cj4+ICsJCQl9Owo+PiArCj4gCj4gV2UgZG9uJ3QgdXNlIHRoZSBE
ZXNpZ25XYXJlIElQIGZvciB0aGUgcmVzZXQgY29udHJvbGxlci4KClRoYW5rcyBmb3IgcmV2aWV3
aW5nLgoKV2UgYWxyZWFkeSBtZXJnZWQgdGhlIGVxdWl2YWxlbnQgbm9kZXMgZm9yIFJURDEyOXgg
aW50byBhcm0tc29jLmdpdC4KTm8gUmVhbHRlayByZXZpZXcgd2FzIHJlY2VpdmVkIGJhY2sgd2hl
biBpdCB3YXMgcG9zdGVkIFsxXSwgc2FkbHkuCgpIb3cgZG9lcyB5b3VyIHJlc2V0IGNvbnRyb2xs
ZXIgZGlmZmVyIGZyb20gRGVzaWduV2FyZSwgYW5kIGhvdyB3b3VsZCB5b3UKcHJlZmVyIHRvIGhh
bmRsZSBpdD8KCmEpIERvIHlvdSB3YW50IHRvIHNlbmQgcGF0Y2hlcyBmb3IgYSBuZXcgUmVhbHRl
ay1zcGVjaWZpYyBkdC1iaW5kaW5nIFsyXQphbmQgZXh0ZW5kIHJlc2V0LXNpbXBsZSBkcml2ZXIg
dG8gY292ZXIgaXQgYXMgYSBjb3B5JnBhc3RlIG9mIHRoZQpEZXNpZ25XYXJlIG9mX2RldmljZV9p
ZD8KCmIpIERvIHlvdSBiZWxpZXZlIHlvdSBuZWVkIHRvIHN1Ym1pdCBhIGNvbXBsZXRlbHkgbmV3
IHJlc2V0IGRyaXZlcj8KCkFuIGlzc3VlIEkgaGFkIHJhaXNlZCB0d2ljZSBbNCwgMV0gd2FzIHRo
YXQgcmVzZXQtc2ltcGxlIG9ubHkgYWxsb3dzIGZvcgpjb250aWd1b3VzIHJlZ2lzdGVycyBhbmQg
dGh1cyBjb3VsZG4ndCBoYW5kbGUgdGhlIGdhcCBiZXR3ZWVuIHJlc2V0MyBhbmQKcmVzZXQ0IG9u
IFJURDEyOTUsIGZvcmNpbmcgbWUgdG8gdXNlIHBlci1yZWdpc3RlciBub2RlcyBmb3IgY29uc2lz
dGVuY3kuCkkgYW0gYWdhaW5zdCBtb2RlbGluZyBSVEQxMTk1IGRpZmZlcmVudGx5IGZyb20gUlRE
MTI5NSssIGFzc3VtaW5nCnRoZXkncmUgdGhlIGVxdWl2YWxlbnQgSVAsIHNvIHdlIG5lZWQgYSBz
b2x1dGlvbiB0aGF0IHdvcmtzIGZvciBib3RoLgpQaGlsaXBwIGRpZCBpbmRpY2F0ZSBpbiBbNF0g
d2UgY291bGQgZXh0ZW5kIHJlc2V0LXNpbXBsZSBmb3IgdGhpcyBnYXAKImlmIHRoZSBpbXBsZW1l
bnRhdGlvbiBjb3VsZCBiZSBrZXB0IHJlYXNvbmFibHkgc2ltcGxlIi4KCldpdGggdjUuNC1yYzgg
YWxyZWFkeSB0YWdnZWQsIHBsZWFzZSBodXJyeSBpZiB5b3Ugd2FudCBhIGRpZmZlcmVudApiaW5k
aW5nIGluIHY1LjUuCgpSZWdhcmRzLApBbmRyZWFzCgpbMV0gaHR0cHM6Ly9wYXRjaHdvcmsua2Vy
bmVsLm9yZy9jb3Zlci8xMTIwNjI1NS8KWzJdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcv
cGF0Y2gvOTkwMjY2NS8KWzNdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvOTkw
MjY3My8KWzRdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvOTkwMjY3NS8KWzVd
IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvOTkwMjY3MS8KWzZdIGh0dHBzOi8v
cGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvOTkwMjY2My8KCi0tIApTVVNFIFNvZnR3YXJlIFNv
bHV0aW9ucyBHZXJtYW55IEdtYkgKTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnLCBHZXJt
YW55CkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIKSFJCIDM2ODA5IChBRyBOw7xybmJlcmcpCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
