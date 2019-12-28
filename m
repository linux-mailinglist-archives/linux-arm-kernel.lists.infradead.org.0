Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0419F12BDBA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 15:03:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Zwd/l40LC/4UO1VD+S0PFgTfG3Tm7k7+uuY1MqD6vas=; b=CVik3lT7JyzCP6fV+geM/GKTB
	KAgvtUcOMGi8JwHiU50SpmbT/xSftuni5sXZudPONe+YoUmJh8NGtmbI3ddnoSSVA15vE+ISOs5UZ
	3p+pJhbRbUpUX7sBhxNUOd+il13oeH18K+WdU++xBXLhC8MT9QEGCOqMwGTEqHbBOJ37+3rzPBekh
	Mqa5Xs1wWlQmy3LA+C1ScwITCdLorMPRiYg/TRmMtvUZWhYr5uUHa2Vnlj5Z0DoPRnLZLE6xfzPf0
	Fb5klhmXQu4KnU5ck/WXHUEbL5UeXXOwSUYxakOVYTuj24Xgnizi6Qdr2QICxvIFj/Qm8u7HC1DEC
	GUHQDFZmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilCh0-00037j-RH; Sat, 28 Dec 2019 14:03:46 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilCgr-000372-UC; Sat, 28 Dec 2019 14:03:39 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id F0112B193;
 Sat, 28 Dec 2019 14:03:33 +0000 (UTC)
Subject: Re: [PATCH v4 0/8] ARM: Initial RTD1195 and MeLE X1000 & Horseradish
 support
To: linux-realtek-soc@lists.infradead.org
References: <20191123203759.20708-1-afaerber@suse.de>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <0b8a87e8-057a-27ff-ff10-d1c09d55a585@suse.de>
Date: Sat, 28 Dec 2019 15:03:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191123203759.20708-1-afaerber@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_060338_119520_283565F3 
X-CRM114-Status: UNSURE (   9.72  )
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
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: Rob Herring <robh@kernel.org>, James Tai <james.tai@realtek.com>,
 Arnd Bergmann <arnd@arndb.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjMuMTEuMTkgdW0gMjE6Mzcgc2NocmllYiBBbmRyZWFzIEbDpHJiZXI6Cj4gQW5kcmVhcyBG
w6RyYmVyICg4KToKPiAgICBkdC1iaW5kaW5nczogYXJtOiByZWFsdGVrOiBBZGQgUlREMTE5NSBh
bmQgTWVMRSBYMTAwMAo+ICAgIEFSTTogUHJlcGFyZSBSZWFsdGVrIFJURDExOTUKPiAgICBBUk06
IGR0czogUHJlcGFyZSBSZWFsdGVrIFJURDExOTUgYW5kIE1lTEUgWDEwMDAKPiAgICBBUk06IGR0
czogcnRkMTE5NTogRXhjbHVkZSBib290IFJPTSBmcm9tIG1lbW9yeSByYW5nZXMKPiAgICBBUk06
IGR0czogcnRkMTE5NTogSW50cm9kdWNlIHItYnVzCj4gICAgZHQtYmluZGluZ3M6IGFybTogcmVh
bHRlazogQWRkIFJlYWx0ZWsgSG9yc2VyYWRpc2ggRVZCCj4gICAgQVJNOiBkdHM6IHJ0ZDExOTU6
IEFkZCBSZWFsdGVrIEhvcnNlcmFkaXNoIEVWQgoKQXBwbGllZCB0aGVzZSB0byBsaW51eC1yZWFs
dGVrLmdpdDoKCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0
L2FmYWVyYmVyL2xpbnV4LXJlYWx0ZWsuZ2l0L2xvZy8/aD12NS42L2R0Cmh0dHBzOi8vZ2l0Lmtl
cm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2FmYWVyYmVyL2xpbnV4LXJlYWx0ZWsu
Z2l0L2xvZy8/aD12NS42L3NvYwoKPiAgICBBUk06IHJlYWx0ZWs6IEVuYWJsZSBSVEQxMTk1IGFy
Y2ggdGltZXIKCkhvbGRpbmcgdGhpcyBvbmUgYmFjayBzdGlsbC4KClJlZ2FyZHMsCkFuZHJlYXMK
Ci0tIApTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgKTWF4ZmVsZHN0ci4gNSwg
OTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55CkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIKSFJCIDM2ODA5
IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
