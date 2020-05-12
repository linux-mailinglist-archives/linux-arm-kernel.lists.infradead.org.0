Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7068A1CF3DC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 13:57:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t46b8TXTdczByPQ51Zp7RdSdA25uf1v7sI+/lTcE7c4=; b=lkBtGX933qa3A+UXAwkQ9Usen
	PVLgQzBMfX4eSR9m9+GaAtEq8bo0gYOuVdoFVP8aN8J1yZrgs8Ym9SfF8pg9jv+9QOlnUMquWv+D6
	KiZcn8FBEPUbNJKwWNb1/TLRCsd9NySYWVWc3vGvi3pX9gH+FhoizVk5krJO7GjdXTvP+s1qGxtJa
	Q0Nss9UIny4Wzf/K1pe8SS53o/IN/Q9SYX5aDccD/rFFFUZo8+glMoHuj9vLDFOD2YfKkpmzDa6Ej
	4oqhLK038XVo8J0xdGwBTKKMS5xjEyYIDvwAbPLAmxlEJMACZyuDNziUg8ahZe+YgwAuzymhjaYVG
	b0VtKj8tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYTX0-0005xI-N2; Tue, 12 May 2020 11:57:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYTWn-0005wo-Sb
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 11:56:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0AEAD30E;
 Tue, 12 May 2020 04:56:53 -0700 (PDT)
Received: from [10.37.12.83] (unknown [10.37.12.83])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ECEF53F71E;
 Tue, 12 May 2020 04:56:50 -0700 (PDT)
Subject: Re: [PATCH v2] memory/samsung: reduce unnecessary mutex lock area
To: Markus Elfring <Markus.Elfring@web.de>, Bernard Zhao <bernard@vivo.com>,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org
References: <edf839ce-cc61-73dc-e017-b49648b94d1c@web.de>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <c910fa00-c27b-9854-9ab2-6f37c28b87f6@arm.com>
Date: Tue, 12 May 2020 12:56:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <edf839ce-cc61-73dc-e017-b49648b94d1c@web.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_045653_985759_022976D1 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: opensource.kernel@vivo.com, Kukjin Kim <kgene@kernel.org>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA1LzEyLzIwIDEyOjQwIFBNLCBNYXJrdXMgRWxmcmluZyB3cm90ZToKPj4gTWF5YmUgZG1j
LT5kZi0+bG9jayBzZWVtcyBub3QgbmVlZGVkIHRvIHByb3RlY3QgImlmIChyZXQpCj4+ICYgZGV2
X3dhcm4iIGJyYW5jaC4gTWF5YmUgdGhpcyBjaGFuZ2Ugc3BlZWQgdXAgdGhlIGNvZGUgYSBiaXQu
Cj4gCj4gSSBzdWdnZXN0IHRvIGltcHJvdmUgYWxzbyB0aGlzIGNvbW1pdCBtZXNzYWdlLgo+IAo+
ICogUGxlYXNlIHJlZHVjZSB1bmNlcnRhaW50eS4KPiAKPiAqIEFuIGltcGVyYXRpdmUgd29yZGlu
ZyBpcyBwcm9iYWJseSBwcmVmZXJyZWQsIGlzbid0IGl0Pwo+ICAgIGh0dHBzOi8vZ2l0Lmtlcm5l
bC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL0Rv
Y3VtZW50YXRpb24vcHJvY2Vzcy9zdWJtaXR0aW5nLXBhdGNoZXMucnN0P2lkPTE1MjAzNmQxMzc5
ZmZkNjk4NTI2Mjc0M2RjZjZiMGY5Yzc1ZjgzYTQjbjE1MQo+IAo+ICogV2lsbCBpdCBiZSBtb3Jl
IGFwcHJvcHJpYXRlIHRvIHJlZmVyIHRvIHRoZSB0cmFuc2Zvcm1hdGlvbiDigJxSZWR1Y2UgdGhl
IGxvY2sgc2NvcGXigJ0/Cj4gCj4gKiBXb3VsZCB5b3UgbGlrZSB0byBhZGQgdGhlIHRhZyDigJxG
aXhlc+KAnSB0byB0aGUgY2hhbmdlIGRlc2NyaXB0aW9uPwo+IAo+IFJlZ2FyZHMsCj4gTWFya3Vz
Cj4gCgpUaGFuayB5b3UgTWFya3VzIGZvciBwcm92aWRpbmcgdG8gQmVybmFyZCBoZWxwZnVsIHN1
Z2dlc3Rpb25zLgoKQEJlcm5hcmQgcGxlYXNlIHJlYWQgdGhlIGxpbmsgYWJvdmUgYW5kIHNlbmQg
djMKClNvbWV0aGluZyBsaWtlOiAnbWVtb3J5L3NhbXN1bmc6IHJlZHVjZSBwcm90ZWN0ZWQgY29k
ZSBhcmVhIGluIElSUQpoYW5kbGVyJyBmb3IgdGhlIHN1YmplY3QgaGVhZGVyIHdvdWxkIGJlIGJl
dHRlci4KVGhlbiBpbiB0aGUgbWVzc2FnZSBleHBsYWluICh3aXRob3V0ICdtYXliZScpIHRoYXQg
aXQgd2lsbCBzcGVlZC11cCBhCmJpdCB0aGlzIElSUSBwcm9jZXNzaW5nIGFuZCB0aGVyZSBpcyBu
byBuZWVkIHRvIHByb3RlY3QgcmV0dXJuIHZhbHVlIG9yCnByaW50aW5nLgoKUmVnYXJkcywKTHVr
YXN6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
