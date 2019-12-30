Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 450FB12D473
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 21:23:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vMK4UFZ3g4QPYoM2XEOmXhBv/Rt7YspCJ/A7L22ZZt4=; b=VqLp28J+pHQmkG
	LpXWvz2/aPQ5ExbdzzHbkZduAOGymiVO9nyY778FJOL9/O1ZXdSabrxF1Miab1PlXOUMJkQHO2V7e
	4RU2wXptbRjzOb9caGoxy6nTL/E2vA3EsmAvclkjnYTWfRXbGnNBOJvQEiDoZ+y5gQiMFFxZAPatN
	7QQ/ZOknepeUuOYH7SAZ+FCqot53LjB2t5XYjJx0mr6rkSp4eVughSUtlqQzuW4RuRYLRzEaymd2a
	YokupMdZlkb5ksIh5fQ/4zlyobrdJWMA6n1xXMJHdh5iOKxCDQifu5kH9ojpuxUa5+p15SPZYH9B3
	59TKB2wbITjrK8SoO+4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im1Zo-0001Mr-Vw; Mon, 30 Dec 2019 20:23:44 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im1Zg-0001MS-4A
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 20:23:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1577737414;
 s=strato-dkim-0002; d=dawncrow.de;
 h=In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=v/8MrpIUFBPW/f+lA2CtHfFaaqBCeq3F8gQxYbULoDY=;
 b=QxbMtyCMtJA5NfTf642K807V544sekI/YB8YciMANEKxj7+Or53tAIINOkeSuaaric
 We8u22AN+/li81dgmDCoMfzPS7/M7X/CeuaBDdqG8Pd0ih1Zt+56b8dEcYWRFGcIE1Dz
 Xu7zmdEBCQ6T06AMHzYXZGmH2jSk+ZhsKQWe5rsaSZv+nSGx+oKgdtOatRKKJbIHwYtq
 oyalrnhJe23SUmC/nUdmltY1id511TIwSDmPZnNSl60gb1ViNtIo0mnFD84Q19VX/q2p
 W6rfB5pgQbrzklYUFu1w3U46z1ytPpriyyo9PXjZX3HxmQxNJ3un9OtQtEFHuUVr1Sgw
 iB3w==
X-RZG-AUTH: ":ImkWY2CseuihIZy6ZWWciR6unPhpN+aXzZ6bi4rK0b8tGDimOzIxQbIOZSqtgWHzDs8="
X-RZG-CLASS-ID: mo00
Received: from [192.168.178.40] by smtp.strato.de (RZmta 46.1.3 DYNA|AUTH)
 with ESMTPSA id I099d1vBUKMGG84
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Mon, 30 Dec 2019 21:22:16 +0100 (CET)
Subject: Re: [PATCH] ARM: dts: Add omap3-echo
To: Tony Lindgren <tony@atomide.com>
References: <20191224161005.28083-1-nerv@dawncrow.de>
 <20191224184503.GK35479@atomide.com>
 <60412339-53BF-4DC1-8AF6-4FB0E75D429C@goldelico.com>
 <53e6cbbd-1094-cba2-4942-981502a738d4@dawncrow.de>
 <20191230172948.GL35479@atomide.com>
From: =?UTF-8?Q?Andr=c3=a9_Hentschel?= <nerv@dawncrow.de>
Autocrypt: addr=nerv@dawncrow.de; prefer-encrypt=mutual; keydata=
 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
 BZtrxq8dmex7tFXvQoJV4PIa20fGXq6S
Message-ID: <56d6f5d9-1afb-9986-0c91-ba9b973f927e@dawncrow.de>
Date: Mon, 30 Dec 2019 21:22:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191230172948.GL35479@atomide.com>
Content-Language: de-LU
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_122336_415728_4E5248EF 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:11 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux@arm.linux.org.uk,
 "H. Nikolaus Schaller" <hns@goldelico.com>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, bcousson@baylibre.com, linux-omap@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMzAuMTIuMTkgdW0gMTg6Mjkgc2NocmllYiBUb255IExpbmRncmVuOgo+ICogQW5kcsOpIEhl
bnRzY2hlbCA8bmVydkBkYXduY3Jvdy5kZT4gWzE5MTIyNyAxNDoyOV06Cj4+IEZvciBjbGFyaWZp
Y2F0aW9uIHRoaXMgcmVkdWNlZCB0YWJsZSBzaG91bGQgaGVscDoKPj4gICAgICBETTM3MzAgfCBE
TTM3MjUgfCBBTTM3MTUgfCBBTTM3MDMKPj4gRFNQICAgIFggICAgfCAgIFggICAgfCAgICAgICAg
fCAgICAKPj4gU0dYICAgIFggICAgfCAgICAgICAgfCAgIFggICAgfCAgICAKPj4KPj4gV2hlcmUg
WCBpcyAic3VwcG9ydGVkIgo+IAo+IEFuZCBsZXQncyBhbHNvIGFkZCBtaW5pbWFsIGRtMzcyNS5k
dHNpLCBhbTM3MTUuZHRzaSBhbmQgYW0zNzAzLmR0c2kKPiB0byBtYWtlIHRoaW5ncyBzaW1wbGUu
IFRoZSBkZXZpY2UgdHJlZSBpcyBzdXBwb3NlZCB0byBkZXNjcmliZSB0aGUKPiBoYXJkd2FyZSwg
YW5kIGluIG1vc3QgY2FzZXMgdGhlIFNvQyB2ZXJzaW9uIGlzIGZpeGVkIGFuZCBuZWVkIG5vCj4g
ZHluYW1pYyBkZXRlY3Rpb24uCj4gCj4gQW5kcsOpLCBjYW4geW91IHBsZWFzZSBhZGQgdGhvc2Ug
dGhyZWUgZHRzaSBmaWxlcyBzaW5jZSB5b3UgaGF2ZSBhdAo+IGxlYXN0IG9uZSB0ZXN0IGNhc2U/
IDopCgpEb25lLCBidXQgSSdtIG5vdCBzdXJlIGhvdyB0byBoYW5kbGUgdGhlIERTUCBzdHVmZiwg
c28gSSBvbmx5IHNlbnQgdGhlIFNHWCBjaGFuZ2VzIGFzIEkgdW5kZXJzdG9vZCB5b3Ugd2FudCB0
aGVtIHRvIGJlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
