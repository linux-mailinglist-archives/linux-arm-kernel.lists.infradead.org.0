Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0963C11F132
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 10:48:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ikx69L3zWl1RDALMGrzqBukYTt+wrBBv+KV/6Sog7Mw=; b=qlLzY0ZjwD5xl+5zG5aQ6/yii
	8/kt/hU4MPvf9VNZLpmWkADbmro2emUf/wIAbImeFK6mQ6AvXivdb5B8F49fCwmuS2FeSn7RVcBIy
	YGuNAuAyvGOwZG3KcQaRFjezhsXRpVwt+IfBDfSwReMe6jT6C3VivzBCBmGH8UDqZcZEMYLI6HBPl
	T1sp0ynRMTGQ98C9wtIxFQMx2ywQ5SqaaCn9GqKVskaLA/tWoYZw4xDHwjYIRDV0aHzFCEUv95Wtn
	hrT6cnPbmRzDxX8wcxXoNtW1c2tegnA7fVSUK0ZwMoqW3KEuHsXClalQMLhtIkaSG+vkvQ32i8M4e
	cCHi6G9QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ig427-00075z-Qg; Sat, 14 Dec 2019 09:48:19 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ig41x-00075V-A8; Sat, 14 Dec 2019 09:48:10 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D7DC5AC71;
 Sat, 14 Dec 2019 09:48:05 +0000 (UTC)
Subject: Re: [RFC 07/25] leds: Add Titan Micro Electronics TM1628
To: linux-realtek-soc@lists.infradead.org, linux-leds@vger.kernel.org
References: <20191212033952.5967-1-afaerber@suse.de>
 <20191212033952.5967-8-afaerber@suse.de>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <7441a2d5-f10a-8ca9-8df9-10c0a78cbeb7@suse.de>
Date: Sat, 14 Dec 2019 10:48:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191212033952.5967-8-afaerber@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_014809_496752_513332EB 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, Dan Murphy <dmurphy@ti.com>,
 linux-kernel@vger.kernel.org, Pavel Machek <pavel@ucw.cz>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMTIuMTIuMTkgdW0gMDQ6Mzkgc2NocmllYiBBbmRyZWFzIEbDpHJiZXI6Cj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbGVkcy9sZWRzLXRtMTYyOC5jIGIvZHJpdmVycy9sZWRzL2xlZHMtdG0xNjI4
LmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uMzE5YmYzNGNl
ODM1Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvbGVkcy9sZWRzLXRtMTYyOC5jClsu
Li5dCj4gK3N0cnVjdCB0bTE2Mjggewo+ICsJc3RydWN0IHNwaV9kZXZpY2UJCSpzcGk7Cj4gKwlj
b25zdCBzdHJ1Y3QgdG0xNjI4X2luZm8JKmluZm87Cgo+ICsJdTMyCQkJCWdyaWRzOwo+ICsJdW5z
aWduZWQgaW50CQkJc2VnbWVudHM7CgpUaGVzZSBmaWVsZHMgd2VyZSB1bnVzZWQgc2luY2UgaW50
cm9kdWNpbmcgbW9kZV9pbmRleCwgZHJvcHBpbmcuCgo+ICsJaW50CQkJCW1vZGVfaW5kZXg7Cj4g
KwlpbnQJCQkJcHdtX2luZGV4Owo+ICsJdTgJCQkJZGF0YVsxNF07Cj4gKwl1bnNpZ25lZCBpbnQJ
CQludW1fbGVkczsKPiArCXN0cnVjdCB0bTE2MjhfbGVkCQlsZWRzW107Cj4gK307ClJlZ2FyZHMs
CkFuZHJlYXMKCi0tIApTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgKTWF4ZmVs
ZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55CkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIK
SFJCIDM2ODA5IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
