Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6304112BDBD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 15:09:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o89MgYUCSlh8fv+7TSTEMdoaxtVhT0adE+Pxk4OFAjw=; b=XGcJz2DXX86EDTxLGT/+B5lb4
	6VFMCaJm3tRl2krNEZ7ynvGnRiJIRVzYyuJLeSCD+L3AslgE1kCe8xEZou6Q5iKUDNLeEvrWjPTfQ
	w/6zQ9Sf01yHoNezi8EDaFGWFAaKzcqpSUjSFCzAW2V9yXafvOR6bCb4Br4YW6o3QW6SiPAhxg+12
	Hg6He9VB9bGCSkIq7Jdw97kl78FWzdh0cAyv4i3NFhSYeBrUoJiOO4tfCDDq7pxynNQsNzKW4KCO2
	Yxp1UxEkVLt4pHmxWfdCjZ0j+Rd9LbTkHBSiLMRc1bSVGouHRNY3/bm4c42JjY4SO8LCrXR6OaMqp
	8c2RjvU+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilCm5-0004jc-Ce; Sat, 28 Dec 2019 14:09:01 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilClw-0004j8-II; Sat, 28 Dec 2019 14:08:54 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 24853ACE3;
 Sat, 28 Dec 2019 14:08:51 +0000 (UTC)
Subject: Re: [PATCH v2 0/9] arm64: dts: realtek: Initial RTD1395 and BPi-M4 /
 Lion Skin support
To: linux-realtek-soc@lists.infradead.org
References: <20191202102910.26916-1-afaerber@suse.de>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <1c870687-1f2f-709f-2479-aeeae46dc7d7@suse.de>
Date: Sat, 28 Dec 2019 15:08:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191202102910.26916-1-afaerber@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_060852_755734_9A172D82 
X-CRM114-Status: GOOD (  10.02  )
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 James Tai <james.tai@realtek.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMDIuMTIuMTkgdW0gMTE6Mjkgc2NocmllYiBBbmRyZWFzIEbDpHJiZXI6Cj4gQW5kcmVhcyBG
w6RyYmVyICg5KToKPiAgICBhcm02NDogZHRzOiByZWFsdGVrOiBydGQxMjl4OiBGaXggR0lDIENQ
VSBtYXNrcyBmb3IgUlREMTI5Mwo+ICAgIGFybTY0OiBkdHM6IHJlYWx0ZWs6IHJ0ZDEyOXg6IFVz
ZSByZXNlcnZlZC1tZW1vcnkgZm9yIFJQQyByZWdpb25zCj4gICAgYXJtNjQ6IGR0czogcmVhbHRl
azogcnRkMTI5eDogSW50cm9kdWNlIHItYnVzCj4gICAgYXJtNjQ6IGR0czogcmVhbHRlazogcnRk
MTI5eDogQ2FydmUgb3V0IGJvb3QgUk9NIGZyb20gbWVtb3J5Cj4gICAgYXJtNjQ6IGR0czogcmVh
bHRlazogcnRkMTZ4eDogQ2FydmUgb3V0IGJvb3QgUk9NIGZyb20gbWVtb3J5Cj4gICAgZHQtYmlu
ZGluZ3M6IGFybTogcmVhbHRlazogQWRkIFJURDEzOTUgYW5kIEJhbmFuYSBQaSBCUEktTTQKPiAg
ICBhcm02NDogZHRzOiByZWFsdGVrOiBBZGQgUlREMTM5NSBhbmQgQlBpLU00Cj4gICAgZHQtYmlu
ZGluZ3M6IGFybTogcmVhbHRlazogQWRkIFJlYWx0ZWsgTGlvbiBTa2luIEVWQgo+ICAgIGFybTY0
OiBkdHM6IHJlYWx0ZWs6IHJ0ZDEzOTU6IEFkZCBSZWFsdGVrIExpb24gU2tpbiBFVkIKCkFwcGxp
ZWQgdG8gbGludXgtcmVhbHRlay5naXQgdjUuNi9kdDoKCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcv
cHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2FmYWVyYmVyL2xpbnV4LXJlYWx0ZWsuZ2l0L2NvbW1p
dC8/aD12NS42L2R0Cgp3aXRoIFJURDE2eHggcmViYXNlZCBvbnRvIFJURDEzOTUuCgpSZWdhcmRz
LApBbmRyZWFzCgotLSAKU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJICk1heGZl
bGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2VybWFueQpHRjogRmVsaXggSW1lbmTDtnJmZmVy
CkhSQiAzNjgwOSAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
