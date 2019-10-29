Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B40B3E7FB3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 06:28:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=po0JbAhic89eFB9Lfquha53ojpDEzDZH3q/ffwUjGQE=; b=bvANGUWyI7JL03
	gxaS3MDYwToN/42oFAKootJhbk4VXiThzWRn6sxZHBBmBi3v1ZJa2jcPJqh3eLMzF3S+SdqiemPSN
	S0Hty0+ITqtFykM5vyqhdkvGuHFy3VL4F7R8hUv7gek22YMOCbfNMDaIPP+x32iLRiuYnXqRQfZuM
	wrKxJYNbaUVB4XulT6kshp60H6fOJNtuaih2fnYMF/2g+AtLgHz9eYHMTLqLbHa0FPW/GqzMU/I+r
	PPNhAeinJcFm4Sp+TCs6RLtZqkQ/cSCqA/d5d5Djpyot1TO4Bf0j+qgxG3RWIfwPCbZ0MDUidMwSc
	px3zOY9cIxk4+Uh/jCDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPK3L-0007oX-5r; Tue, 29 Oct 2019 05:28:23 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPK39-0007nf-8S; Tue, 29 Oct 2019 05:28:12 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 061A4AD09;
 Tue, 29 Oct 2019 05:28:09 +0000 (UTC)
Subject: Re: [PATCH v2 07/11] arm64: dts: realtek: Add RTD129x UART resets
To: linux-realtek-soc@lists.infradead.org
References: <20191023101317.26656-1-afaerber@suse.de>
 <20191023101317.26656-8-afaerber@suse.de>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <06797c33-0c22-c7b2-c0ae-196969ebe03d@suse.de>
Date: Tue, 29 Oct 2019 06:28:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191023101317.26656-8-afaerber@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_222811_448105_80986709 
X-CRM114-Status: GOOD (  11.62  )
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

QW0gMjMuMTAuMTkgdW0gMTI6MTMgc2NocmllYiBBbmRyZWFzIEbDpHJiZXI6Cj4gQXNzb2NpYXRl
IHRoZSBVQVJUIG5vZGVzIHdpdGggdGhlIGNvcnJlc3BvbmRpbmcgcmVzZXQgY29udHJvbGxlciBi
aXRzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5k
ZT4KPiAtLS0KPiAgdjEgLT4gdjI6Cj4gICogUmViYXNlZCwgbW92ZWQgZnJvbSBydGQxMjk1LmR0
c2kgdG8gcnRkMTI5eC5kdHNpCj4gIAo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRk
MTI5eC5kdHNpIHwgMyArKysKPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQoKU3F1
YXNoZWQgdGhlIHN5bWJvbGljIG5hbWVzIGFuZCBhcHBsaWVkIHRvIGxpbnV4LXJlYWx0ZWsuZ2l0
IHY1LjUvZHQ2NDoKCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwv
Z2l0L2FmYWVyYmVyL2xpbnV4LXJlYWx0ZWsuZ2l0L2xvZy8/aD12NS41L2R0NjQKClRoYW5rcywK
QW5kcmVhcwoKLS0gClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSApNYXhmZWxk
c3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlcgpI
UkIgMzY4MDkgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
