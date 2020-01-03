Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 691C012F316
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 03:59:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WnpO3C7ENcbIyEgvFCgMxE1Mb5e9LzSuYsDcNwLdQwM=; b=VkOEHPCdfv8OSSeztBk75Zbjx
	Y8+F1nfyZ7mD3z5G8n0O1+5IGvMAQaQ4HeQ/l2smUob9rqTDQrZJuHE2uwQ0GgPqmzJkzfBC/oEcq
	zW9iiBXelgcnYah7W/NEpRXIliSNB71wCPqwb57eq/Fu+hbA5a5FriuOj0hja7wtsGd6Gy2WLnypU
	+5KjTkDd1vXklyWJRg7o1HKKEZhljMT727GXrUX25lZkswDb5yfe7FL+x9qGXrxH6UGkYp4bbOQuV
	wnhS/oZPBVwm1HybwnD8alVbqSbuwhiVMlc6tubGiptOne4R4wgkr5srPKwMtEFKCgzQReQKFGycv
	0BacDVGHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inDAy-00069A-Bh; Fri, 03 Jan 2020 02:59:00 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inDAr-00067x-E5; Fri, 03 Jan 2020 02:58:54 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id E348EAE4B;
 Fri,  3 Jan 2020 02:58:50 +0000 (UTC)
Subject: Re: [PATCH 00/14] ARM: dts: realtek: Introduce syscon
To: James Tai <james.tai@realtek.com>
References: <20191202182205.14629-1-afaerber@suse.de>
 <0f4d6872-b764-1c5e-9c2a-4e4e415a4877@suse.de>
 <996a6968f411467cb987a14a0764726d@realtek.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <f1f3fc5f-ae6c-b803-cb02-d06d60c442ce@suse.de>
Date: Fri, 3 Jan 2020 03:58:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <996a6968f411467cb987a14a0764726d@realtek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_185853_623936_D89A1EF7 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXMsCgpBbSAzMS4xMi4xOSB1bSAxMDo0NyBzY2hyaWViIEphbWVzIFRhaToKPj4gSSdt
IHdhaXRpbmcgZm9yIHlvdXIgQWNrZWQtYnkgb2YgdGhlIGJsb2NrcyAmIG51bWJlcnMgaW4gdGhl
c2UgcGF0Y2hlcy4KPj4gT3RoZXIgUmVhbHRlayBlbmdpbmVlcnMgYXJlIGFsc28gaW52aXRlZCB0
byByZXNwb25kLCBvZiBjb3Vyc2UuCj4gCj4gSSBoYXZlIHJldmlld2VkIHRoZXNlIHBhdGNoZXMu
CgpUaGFua3MgLSBkb2VzIGFueXRoaW5nIG5lZWQgY2hhbmdlcyBpbiBwYXRjaCAwMSBvciBpcyB0
aGF0IGFjaydlZCwgdG9vPwoKUmVnYXJkcywKQW5kcmVhcwoKLS0gClNVU0UgU29mdHdhcmUgU29s
dXRpb25zIEdlcm1hbnkgR21iSApNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1h
bnkKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlcgpIUkIgMzY4MDkgKEFHIE7DvHJuYmVyZykKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
