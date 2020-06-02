Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9901EC372
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 22:08:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d4ACqFJA+FqJKlpjBx8NfPNKu0kk4oYZaCiBCBaPWOw=; b=rUmFAeuDi4pzmgKNR6osWgvBz
	/nDWHfLsNhzni0bnw97WzGu/8C1dlpe4wLsy8NVK+I1sFyVFL8OyGrBLYN2Zp7YRHAB5BpscPgtn6
	xqWhaoIDDXZKWOX2CYR4GcziIPoKj5E2/zoJHx5XI6Pr4FlUQsiumly6qxVMCzKccXbwxI3cvpMOo
	foVbrW20OsTtDMGYytYuXFz6J8oorGv/Sb0zI94nPXetEVYfslc92C3FSXV9ee1inP/EWUrNWzQYb
	nGDjScdoa6xo8U7CXZrH7/hCybjipe0WtzIGIK7iOSjfGwOKWqeySvK+a4Eior89gFj4VG7iYOZ5s
	3t2JG1tBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgDCn-0003J5-EX; Tue, 02 Jun 2020 20:08:13 +0000
Received: from smtp05.smtpout.orange.fr ([80.12.242.127]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgDCg-0003IU-4R
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 20:08:07 +0000
Received: from [192.168.42.210] ([93.22.133.243]) by mwinf5d52 with ME
 id mL83220025FEkrh03L83SZ; Tue, 02 Jun 2020 22:08:04 +0200
X-ME-Helo: [192.168.42.210]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Tue, 02 Jun 2020 22:08:04 +0200
X-ME-IP: 93.22.133.243
Subject: Re: [PATCH] pinctrl: freescale: imx: Fix an error handling path in
 'imx_pinctrl_probe()'
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20200530204955.588962-1-christophe.jaillet@wanadoo.fr>
 <20200602101346.GW30374@kadam>
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <9e186840-aece-cfcc-918a-8441db9f6f7b@wanadoo.fr>
Date: Tue, 2 Jun 2020 22:08:02 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200602101346.GW30374@kadam>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_130806_471201_7E9ACF0F 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.127 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.127 listed in wl.mailspike.net]
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
Cc: aisheng.dong@nxp.com, shawnguo@kernel.org, linus.walleij@linaro.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, stefan@agner.ch,
 gary.bisson@boundarydevices.com, linux-gpio@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgMDIvMDYvMjAyMCDDoCAxMjoxMywgRGFuIENhcnBlbnRlciBhIMOpY3JpdMKgOgo+IE9uIFNh
dCwgTWF5IDMwLCAyMDIwIGF0IDEwOjQ5OjU1UE0gKzAyMDAsIENocmlzdG9waGUgSkFJTExFVCB3
cm90ZToKPj4gJ3BpbmN0cmxfdW5yZWdpc3RlcigpJyBzaG91bGQgbm90IGJlIGNhbGxlZCB0byB1
bmRvCj4+ICdkZXZtX3BpbmN0cmxfcmVnaXN0ZXJfYW5kX2luaXQoKScsIGl0IGlzIGFscmVhZHkg
aGFuZGxlZCBieSB0aGUgZnJhbWV3b3JrLgo+Pgo+PiBUaGlzIHNpbXBsaWZpZXMgdGhlIGVycm9y
IGhhbmRsaW5nIHBhdGhzIG9mIHRoZSBwcm9iZSBmdW5jdGlvbi4KPj4gVGhlICdpbXhfZnJlZV9y
ZXNvdXJjZXMoKScgY2FuIGJlIHJlbW92ZWQgYXMgd2VsbC4KPj4KPj4gRml4ZXM6IGE1MWMxNThi
ZjBmNyAoInBpbmN0cmw6IGlteDogdXNlIHJhZGl4IHRyZWVzIGZvciBncm91cHMgYW5kIGZ1bmN0
aW9ucyIpCj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdG9waGUgSkFJTExFVCA8Y2hyaXN0b3BoZS5q
YWlsbGV0QHdhbmFkb28uZnI+Cj4+IC0tLQo+IFlvdSBkaWRuJ3QgaW50cm9kdWNlIHRoaXMgYnV0
IHRoZToKPgo+IAlpcGN0bC0+aW5wdXRfc2VsX2Jhc2UgPSBvZl9pb21hcChucCwgMCk7Cj4KPiBz
aG91bGQgYmUgY2hhbmdlZCB0byBkZXZtX29mX2lvbWFwKCkuCkRvbmUgYXMgYSBzZXBhcmF0ZWQg
cGF0Y2guCgpUaHggZm9yIHRoZSByZXZpZXcgYW5kIHRoZSBjb21tZW50LgoKCkNKCgo+IHJlZ2Fy
ZHMsCj4gZGFuIGNhcnBlbnRlcgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
