Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 561C91EA2AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 13:32:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bFio66K+IWNp2SWMuOAYf0fY7ZPGuStWkLOWn66Durg=; b=uv6c5jFbYXBSJZBtjyJjluu5p
	ElDS6N8+IEOFGFINcMQsK5Q4LJ6Qn1VpiWJPBTJ+GC7OVoYTbpCo19hz6hD1I3OKxhON68gc6LoNy
	TVS2zPKIC1mB0pXRwn4H3MiP8lj4LkJoCf4zpaqWxIS0T7023jHiwWvKF1XGLjL5btU56IPEyYXP9
	tYOZpfUdNP4bR4cFHg+S7lQJiomvGPlPnN/gtWsh+GFsEzF66jZwtkATBBGFzTMyElmkr//Q2kTvZ
	HOv8vlm3H2CG23aBTcvBZt9oGcyT8VkHAf2fbS6xv7beorLY4ECVd2DcfOvSvlqN8NSX1JBZo+ULy
	yELcQIKjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfigJ-0002S5-4R; Mon, 01 Jun 2020 11:32:39 +0000
Received: from smtp12.smtpout.orange.fr ([80.12.242.134]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfigC-0002RB-Nj
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 11:32:34 +0000
Received: from [192.168.1.41] ([92.140.207.208]) by mwinf5d35 with ME
 id lnXo2200Y4WJoZY03nXyvM; Mon, 01 Jun 2020 13:32:27 +0200
X-ME-Helo: [192.168.1.41]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Mon, 01 Jun 2020 13:32:27 +0200
X-ME-IP: 92.140.207.208
Subject: Re: [PATCH] pinctrl: pxa: pxa2xx: Remove 'pxa2xx_pinctrl_exit()'
 which is unused and broken
To: Robert Jarzmik <robert.jarzmik@free.fr>
Newsgroups: gmane.linux.kernel.janitors, gmane.linux.ports.arm.kernel,
 gmane.linux.kernel.gpio, gmane.linux.kernel
References: <20200531073716.593343-1-christophe.jaillet@wanadoo.fr>
 <87h7vvb1s3.fsf@belgarion.home>
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <a2e34c9a-676f-d83f-f395-7428af038c16@wanadoo.fr>
Date: Mon, 1 Jun 2020 13:31:23 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <87h7vvb1s3.fsf@belgarion.home>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_043233_054467_4C7E4062 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.134 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.134 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linus.walleij@linaro.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, haojian.zhuang@gmail.com,
 linux-gpio@vger.kernel.org, daniel@zonque.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgMDEvMDYvMjAyMCDDoCAxMDo1OCwgUm9iZXJ0IEphcnptaWsgYSDDqWNyaXTCoDoKPiBDaHJp
c3RvcGhlIEpBSUxMRVQgPGNocmlzdG9waGUuamFpbGxldEB3YW5hZG9vLmZyPiB3cml0ZXM6Cj4K
Pj4gQ29tbWl0IDZkMzNlZTdhMDUzNCAoInBpbmN0cmw6IHB4YTogVXNlIGRldm1fcGluY3RybF9y
ZWdpc3RlcigpIGZvciBwaW5jdHJsIHJlZ2lzdHJhdGlvbiIpCj4+IGhhcyB0dXJuZWQgYSAncGlu
Y3RybF9yZWdpc3RlcigpJyBpbnRvICdkZXZtX3BpbmN0cmxfcmVnaXN0ZXIoKScgaW4KPj4gJ3B4
YTJ4eF9waW5jdHJsX2luaXQoKScuCj4+IEhvd2V2ZXIsIHRoZSBjb3JyZXNwb25kaW5nICdwaW5j
dHJsX3VucmVnaXN0ZXIoKScgY2FsbCBpbgo+PiAncHhhMnh4X3BpbmN0cmxfZXhpdCgpJyBoYXMg
bm90IGJlZW4gcmVtb3ZlZC4KPj4KPj4gVGhpcyBpcyBub3QgYW4gaXNzdWUsIGJlY2F1c2UgJ3B4
YTJ4eF9waW5jdHJsX2V4aXQoKScgaXMgdW51c2VkLgo+PiBSZW1vdmUgaXQgbm93IHRvIGF2b2lk
IHNvbWUgd29uZGVyaW5nIGluIHRoZSBmdXR1cmUgYW5kIHNhdmUgYSBmZXcgTG9DLgo+Pgo+PiBT
aWduZWQtb2ZmLWJ5OiBDaHJpc3RvcGhlIEpBSUxMRVQgPGNocmlzdG9waGUuamFpbGxldEB3YW5h
ZG9vLmZyPgo+IEFja2VkLWJ5OiBSb2JlcnQgSmFyem1payA8cm9iZXJ0LmphcnptaWtAZnJlZS5m
cj4KPgo+IFdvdWxkIGJlIGV2ZW4gYSBiZXR0ZXIgcGF0Y2ggd2l0aCBhIDoKPiBGaXhlczogNmQz
M2VlN2EwNTM0ICgicGluY3RybDogcHhhOiBVc2UgZGV2bV9waW5jdHJsX3JlZ2lzdGVyKCkgZm9y
IHBpbmN0cmwgcmVnaXN0cmF0aW9uIikKCkkgd2FzIHdvbmRlcmluZyBpdCB3YXMgd2FzIG5lZWRl
ZCBpbiB0aGlzIGNhc2UuClRoZSBwYXRjaCBkb2VzIG5vdCByZWFsbHkgZml4IGFueXRoaW5nLCBh
cyB0aGUgZnVuY3Rpb24gaXMgdW51c2VkLiBPciBpdCAKZml4ZXMgdGhpbmdzIG9uIGEgdGhlb3Jl
dGljYWwgcG9pbnQgb2Ygdmlldy4KCkNKCgoKPiBDaGVlcnMuCj4KPiAtLQo+IFJvYmVydAo+CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
