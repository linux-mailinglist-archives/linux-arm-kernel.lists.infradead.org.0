Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFE21C708
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 12:29:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aV2769h8gdKwnvVpdpF4qWuUMigj4FMFd+GENys2t9o=; b=JhLY9WERPK/L9xCOmLEvY/1TrU
	IewZ7x/vtBiqdoLwJDqnmbd0kTMr7t86d9UHr6A3VPH4L4osUiLo+kFm3O/I3FG/hCHN0SwnC3JaR
	XrOIoU2uClAfS207A31rs88FgSitrAH8BEOh5j0pFzGVPInWblUIFBJWVmOf1tIg9ofm898r8pAxw
	YXC16KAu0jH+FBLuCLfRE2NBNWdIh6iFPDw9PH7QMVilmouza83tMMkJigNiBn9eU3oCeFskDqltD
	l8kw9534sHCuryl7IeVdd2cM4yx0YehkHepU4viZo9zVOVOs4X08jH5vDs6c8AlRq+48nJkhKPON6
	3SqLBcsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQUgY-00019b-CM; Tue, 14 May 2019 10:29:26 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQUgP-00018a-SO
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 10:29:20 +0000
Received: by mail-wr1-x444.google.com with SMTP id w12so18599613wrp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 03:29:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=zx18v+pt5qpFKWZn4kjcD7LGGT6wQN2CufNatm+c9iM=;
 b=CcGeR7lcefXCrbxNad2WXV3L3Hy4IRqV9YbVNLIJWDMe6ih+wkswr0C02urPKoWci4
 T7praIeAr7UvdW8cSfMfn1xTp5XCQ9APVEZcYm9dfvbJDkmg+JKbyKCn+J8Qe58WJqlH
 UwUlTwzp/bREiZx4mAW7p6Ts8hqF6rc4dBJTY5DHMboSQ5qHGa1TzLQ7ZaBF+997wI2j
 pDoBzDCfZshScfLYgh71YmcEBNLi5LOQWvkW3ZbkB7VYMbrKiVUpa/qgcHmCtSh+nJiF
 D60h1Kd5NXH9WjNlY3FaFi7S5nmLdsgtDgbfi6WGUdnXKmlvmBB1BYYwyTShhZSjbzWV
 wRIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=zx18v+pt5qpFKWZn4kjcD7LGGT6wQN2CufNatm+c9iM=;
 b=Gqthy0vnxGqWO8KH9di//jv7bkQnsO/1l1lYfSUl+NXyY7mQLSeJxtkYxYy7v9E0rZ
 dYtDtSH1Fd67SbSe6sq/u0gqbbOtZMsAbGCyZWCnNTrXk4SMxtrnYZmZvUowRrf4+CCq
 eNTc3qUV4c5vkcC8+27GWPmzktcIP7Iezu9PJZESZSExIcuBo6Jy2HdasZuHGjkFa6Uf
 jNv+NcY5BhiH11Ns7pnxHCz7AhRsOdrXbJmo6MIvO+1JYvW0PSH9cM7hru6HHRnZF5Al
 2bfnf5r6qHz9QdxQeHfdc2fNhWKjiVv5rEY7Tmax9YnN6YnCywSSIrmtQZZHY18YepFw
 VVzw==
X-Gm-Message-State: APjAAAWUoXoIq2JkyECBtdiGuY6GoWjY+CZd4KeGjoggALBVcHXu05y7
 LvECE2eqK0wQ0I3ziC8K2+fzfw==
X-Google-Smtp-Source: APXvYqxPXMnsuqdgIhu95mY5T47oJBUtljTX+OwiJkwLm4JKIF8EZ4gbi4r9/RvR7z7zcT99Xl130Q==
X-Received: by 2002:a5d:5701:: with SMTP id a1mr21686965wrv.52.1557829756032; 
 Tue, 14 May 2019 03:29:16 -0700 (PDT)
Received: from [192.168.1.62] (176-150-251-154.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id
 q26sm1922915wmq.25.2019.05.14.03.29.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 03:29:15 -0700 (PDT)
Subject: Re: [PATCH v4 0/8] Allwinner H6 Mali GPU support
To: peron.clem@gmail.com, David Airlie <airlied@linux.ie>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@googlegroups.com
References: <20190512174608.10083-1-peron.clem@gmail.com>
 <20190513151405.GW17751@phenom.ffwll.local>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <de50a9da-669f-ab25-2ef2-5ffb90f8ee03@baylibre.com>
Date: Tue, 14 May 2019 12:29:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190513151405.GW17751@phenom.ffwll.local>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_032917_919328_B8C0141E 
X-CRM114-Status: GOOD (  20.26  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAxMy8wNS8yMDE5IDE3OjE0LCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+IE9uIFN1biwg
TWF5IDEyLCAyMDE5IGF0IDA3OjQ2OjAwUE0gKzAyMDAsIHBlcm9uLmNsZW1AZ21haWwuY29tIHdy
b3RlOgo+PiBGcm9tOiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgo+Pgo+
PiBIaSwKPj4KPj4gVGhlIEFsbHdpbm5lciBINiBoYXMgYSBNYWxpLVQ3MjAgTVAyLiBUaGUgZHJp
dmVycyBhcmUKPj4gb3V0LW9mLXRyZWUgc28gdGhpcyBzZXJpZXMgb25seSBpbnRyb2R1Y2UgdGhl
IGR0LWJpbmRpbmdzLgo+IAo+IFdlIGRvIGhhdmUgYW4gaW4tdHJlZSBtaWRnYXJkIGRyaXZlciBu
b3cgKHNpbmNlIDUuMikuIERvZXMgdGhpcyBzdHVmZiB3b3JrCj4gdG9nZXRoZXIgd2l0aCB5b3Vy
IGR0IGNoYW5nZXMgaGVyZT8KCk5vLCBidXQgaXQgc2hvdWxkIGJlIGVhc3kgdG8gYWRkLgoKQ2zD
qW1lbnQsIG5vIG5lZWQgdG8gcmVzZW5kIHRoZSBmaXJzdCBwYXRjaCwgaXQncyBub3cgb24KbGlu
dXMgbWFzdGVyLgoKQ291bGQgeW91IGFsc28gYWRkIHN1cHBvcnQgZm9yIHRoZSBidXMgY2xvY2sg
aW4gcGFuZnJvc3QKaW4gdGhlIHNhbWUgcGF0Y2hzZXQgc2luY2UgaXQncyBhbHNvIG9uIG1hc3Rl
ciBub3cgPwoKTmVpbAoKPiAtRGFuaWVsCj4gCj4+IFRoZSBmaXJzdCBwYXRjaCBpcyBmcm9tIE5l
aWwgQW1zdHJvbmcgYW5kIGhhcyBiZWVuIGFscmVhZHkKPj4gbWVyZ2VkIGluIGxpbnV4LWFtbG9n
aWMuIEl0IGlzIHJlcXVpcmVkIGZvciB0aGlzIHNlcmllcy4KPj4KPj4gVGhlIHNlY29uZCBwYXRj
aCBpcyBmcm9tIEljZW5vd3kgWmhlbmcgd2hlcmUgSSBjaGFuZ2VkIHRoZQo+PiBvcmRlciBoYXMg
cmVxdWlyZWQgYnkgUm9iIEhlcnJpbmcuCj4+IFNlZTogaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVs
Lm9yZy9wYXRjaC8xMDY5OTgyOS8KPj4KPj4gVGhhbmtzLAo+PiBDbMOpbWVudAo+Pgo+PiBDaGFu
Z2VzIGluIHY0Ogo+PiAgLSBBZGQgUm9iIEhlcnJpbmcgcmV2aWV3ZWQtYnkgdGFnCj4+ICAtIFJl
c2VudCB3aXRoIGNvcnJlY3QgTWFpbnRhaW5lcnMKPj4KPj4gQ2hhbmdlcyBpbiB2MyAoVGhhbmtz
IHRvIE1heGltZSBSaXBhcmQpOgo+PiAgLSBSZWF1dGhvciBJY2Vub3d5IGZvciBoZXIgcGF0Y2gK
Pj4KPj4gQ2hhbmdlcyBpbiB2MiAoVGhhbmtzIHRvIE1heGltZSBSaXBhcmQpOgo+PiAgLSBEcm9w
IEdQVSBPUFAgVGFibGUKPj4gIC0gQWRkIGNsb2NrcyBhbmQgY2xvY2stbmFtZXMgaW4gcmVxdWly
ZWQKPj4KPj4gQ2zDqW1lbnQgUMOpcm9uICg2KToKPj4gICBkdC1iaW5kaW5nczogZ3B1OiBtYWxp
LW1pZGdhcmQ6IEFkZCBINiBtYWxpIGdwdSBjb21wYXRpYmxlCj4+ICAgYXJtNjQ6IGR0czogYWxs
d2lubmVyOiBBZGQgQVJNIE1hbGkgR1BVIG5vZGUgZm9yIEg2Cj4+ICAgYXJtNjQ6IGR0czogYWxs
d2lubmVyOiBBZGQgbWFsaSBHUFUgc3VwcGx5IGZvciBQaW5lIEg2NAo+PiAgIGFybTY0OiBkdHM6
IGFsbHdpbm5lcjogQWRkIG1hbGkgR1BVIHN1cHBseSBmb3IgQmVlbGluayBHUzEKPj4gICBhcm02
NDogZHRzOiBhbGx3aW5uZXI6IEFkZCBtYWxpIEdQVSBzdXBwbHkgZm9yIE9yYW5nZVBpIEJvYXJk
cwo+PiAgIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogQWRkIG1hbGkgR1BVIHN1cHBseSBmb3IgT3Jh
bmdlUGkgMwo+Pgo+PiBJY2Vub3d5IFpoZW5nICgxKToKPj4gICBkdC1iaW5kaW5nczogZ3B1OiBh
ZGQgYnVzIGNsb2NrIGZvciBNYWxpIE1pZGdhcmQgR1BVcwo+Pgo+PiBOZWlsIEFybXN0cm9uZyAo
MSk6Cj4+ICAgZHQtYmluZGluZ3M6IGdwdTogbWFsaS1taWRnYXJkOiBBZGQgcmVzZXRzIHByb3Bl
cnR5Cj4+Cj4+ICAuLi4vYmluZGluZ3MvZ3B1L2FybSxtYWxpLW1pZGdhcmQudHh0ICAgICAgICAg
fCAyNyArKysrKysrKysrKysrKysrKysrCj4+ICAuLi4vZHRzL2FsbHdpbm5lci9zdW41MGktaDYt
YmVlbGluay1nczEuZHRzICAgfCAgNSArKysrCj4+ICAuLi4vZHRzL2FsbHdpbm5lci9zdW41MGkt
aDYtb3JhbmdlcGktMy5kdHMgICAgfCAgNSArKysrCj4+ICAuLi4vZHRzL2FsbHdpbm5lci9zdW41
MGktaDYtb3JhbmdlcGkuZHRzaSAgICAgfCAgNSArKysrCj4+ICAuLi4vYm9vdC9kdHMvYWxsd2lu
bmVyL3N1bjUwaS1oNi1waW5lLWg2NC5kdHMgfCAgNSArKysrCj4+ICBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaSAgfCAxNCArKysrKysrKysrCj4+ICA2IGZpbGVz
IGNoYW5nZWQsIDYxIGluc2VydGlvbnMoKykKPj4KPj4gLS0gCj4+IDIuMTcuMQo+Pgo+IAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
