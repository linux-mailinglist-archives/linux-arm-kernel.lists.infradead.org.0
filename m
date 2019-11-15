Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D99EFD255
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 02:18:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d7n4BFNTfSbOofRbxIWAV6atpTHyUPEc0vDlMJG1LP8=; b=ji2Gib+pjmw5qG
	USSB6gMRSycsJoKx2pto6nBHXEwAYCdZpcyxjoCKobPVy0F5/D9dtFtoKMy99fZG36u/wQ+8+/Z8a
	B1zol7HiSFlzBDMCtuVaMjOT8kat7tEyO9P9FYTDNjE19HT84qD3wz/2hfS2OoWzKo7XZT2dkcNfM
	cG+lNlExplOJ7zbtUTvea0YZ/FSpCI9V1UO9TLoVxhWUkisYA6lh5APK9UN35Ql4mU3jWm406bFDo
	Ed++1x2Bfeh5g/ZIrDbuaPOXuXW1ioA8/1iCLCzeXpAlPKt8C8Pj7mhxBklDaPWfBP5pr3tQj4wMt
	BGSye10FVM69wUfFHEhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVQFP-0002lE-JT; Fri, 15 Nov 2019 01:18:03 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVQFG-0002km-5R; Fri, 15 Nov 2019 01:17:55 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id DF891AEAB;
 Fri, 15 Nov 2019 01:17:52 +0000 (UTC)
Subject: Re: [PATCH 7/7] arm64: dts: realtek: Add RTD1395 and BPi-M4
To: James Tai <james.tai@realtek.com>
References: <20191111030434.29977-1-afaerber@suse.de>
 <20191111030434.29977-8-afaerber@suse.de>
 <c0dfa7d415ed4883ade0a903547270b3@realtek.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <09a0983f-cd5a-d855-4ab3-cd95490ec391@suse.de>
Date: Fri, 15 Nov 2019 02:17:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <c0dfa7d415ed4883ade0a903547270b3@realtek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_171754_350893_25783FAF 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXMsCgpBbSAxMy4xMS4xOSB1bSAwMzo1NyBzY2hyaWViIEphbWVzIFRhaToKPj4gKwlz
b2Mgewo+PiArCQljb21wYXRpYmxlID0gInNpbXBsZS1idXMiOwo+PiArCQkjYWRkcmVzcy1jZWxs
cyA9IDwxPjsKPj4gKwkJI3NpemUtY2VsbHMgPSA8MT47Cj4+ICsJCXJhbmdlcyA9IDwweDk4MDAw
MDAwIDB4MCAweDk4MDAwMDAwIDB4NjgwMDAwMDA+Owo+PiArCj4+ICsJCXJidXM6IHItYnVzQDk4
MDAwMDAwIHsKPj4gKwkJCWNvbXBhdGlibGUgPSAic2ltcGxlLWJ1cyI7Cj4+ICsJCQlyZWcgPSA8
MHg5ODAwMDAwMCAweDEwMDAwMD47Cj4+ICsJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPj4gKwkJ
CSNzaXplLWNlbGxzID0gPDE+Owo+PiArCQkJcmFuZ2VzID0gPDB4MCAweDk4MDAwMDAwIDB4MTAw
MDAwPjsKPiAKPiBUaGUgci1idXMgc2l6ZSBvZiBSVEQxMzk1IGlzIDB4MjAwMDAw4oCsLgoKRml4
ZWQuCgpUaGFua3MsCkFuZHJlYXMKCi0tIApTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55
IEdtYkgKTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55CkdGOiBGZWxpeCBJ
bWVuZMO2cmZmZXIKSFJCIDM2ODA5IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
