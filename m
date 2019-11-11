Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA76EF6D82
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 05:18:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Foki35kYXKLZvZ48mKVSNeIWG3GMgtLFdTNvQCwg11c=; b=TaJrlbmM6IPPY5
	7O3sMxL3vOzRKzIcA1lInIMfblNNeb+yqrxKv3718t8JXPeH47stYK08p7pl+nreGcFjkqvaY0ECi
	ggBAcxDNLeWwHEqf9An1PxXVWBW0+l4gxXV99AeYVgBWWcpPvgAfcI4YmejKcHaKluDVbQ7jLtCx5
	5ogxAJIki1UiL+NgBF7AOwkarTAZswz7FP4Dok1K6uGLO3KbK9gDd+38uMTZ5E/jFukQPA/c/T/kk
	GKrtOZyVlo2VZ6GMhNNPhyHJxW2x/xbWD4MdXtT5AZsCnwJxeASIxIV405pnm0rL7P7Y8H8hvbNME
	JsWVCZrss+t2Pnj2OpTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU1AE-0003m3-Va; Mon, 11 Nov 2019 04:18:55 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU1A6-0003l1-Ie; Mon, 11 Nov 2019 04:18:47 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 3DE98B32D;
 Mon, 11 Nov 2019 04:18:41 +0000 (UTC)
Subject: Re: [PATCH v2 0/2] Initial RTD1619 SoC and Realtek Mjolnir EVB support
To: James Tai <james.tai@realtek.com>
References: <43B123F21A8CFE44A9641C099E4196FFCF91F9CB@RTITMBSVM04.realtek.com.tw>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <f2ce8745-e056-06a5-3d55-b00ab4d82414@suse.de>
Date: Mon, 11 Nov 2019 05:18:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <43B123F21A8CFE44A9641C099E4196FFCF91F9CB@RTITMBSVM04.realtek.com.tw>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_201846_761390_9F2F8BE8 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, 'DTML' <devicetree@vger.kernel.org>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXMsCgpBbSAwOC4xMS4xOSB1bSAxMDo0MiBzY2hyaWViIEphbWVzIFRhaToKPiBUaGlz
IHNlcmllcyBhZGRzIERldmljZSBUcmVlcyBmb3IgdGhlIFJlYWx0ZWsgUlREMTYxOSBTb0MgYW5k
IFJlYWx0ZWsncwo+IE1qb2xuaXIgRVZCLgo+IAo+IHYxIC0+IHYyOgo+ICogRGVmaW5lIGNvbXBh
dGlibGUgc3RyaW5ncyBmb3IgUmVhbHRlayBSVEQxNjE5IFNvQyBhbmQgUmVhbHRlayBNam9sbmly
Cj4gKiBBZGQgdWFydDEgYW5kIHVhcnQyIGRldmljZSBub2RlIGludG8gcnRkMTZ4eC5kdHNpCj4g
KiBtb3ZlIGNwdXMgbm9kZSBhbmQgdGhlIGludGVycnVwdC1hZmZpbml0eSBpbnRvIHJ0ZDE2eHgu
ZHRzaQo+ICogU3BlY2lmeSB0aGUgci1idXMgcmFuZ2VzCgpXaXRoIHRoZSBleGNlcHRpb24gb2Yg
ci1idXMgdGhpcyBpcyBnZXR0aW5nIHByZXR0eSBnb29kIGFscmVhZHkuClR3byBmb3JtYWwgaW1w
cm92ZW1lbnRzOgoKMSkgVGhlIHBhdGNoZXMgMS8yIGFuZCAyLzIgYXJlIGV4cGVjdGVkIHRvIGJl
IHRocmVhZGVkIHRvIDAvMiAoYnV0IG5vdAoyLzIgdG8gMS8yKS4gUGxlYXNlIGNoZWNrIHlvdXIg
Z2l0IFtzZW5kZW1haWxdIGNvbmZpZyBvciB1c2UgLS10aHJlYWQKLS1uby1jaGFpbi1yZXBseS10
by4gVGhhdCBoZWxwcyBrZWVwIHRoZSBzZXJpZXMgdG9nZXRoZXIgd2hlbiBwZW9wbGUKc3RhcnQg
cmVwbHlpbmcgdG8gaW5kaXZpZHVhbCBwYXRjaGVzLiBJZiB5b3VyIEdpdCBjb25maWcgc2VlbXMg
Y29ycmVjdCwKaXQgbWlnaHQgYWxzbyBiZSBhbiBpc3N1ZSB3aXRoIHlvdXIgU01UUCBzZXJ2ZXIu
CgoyKSBQbGVhc2UgYWxzbyBpbmNsdWRlIGEgcGVyLXBhdGNoIGNoYW5nZWxvZyBsaWtlIEkgZG8u
IEkgcHJpdmF0ZWx5CnNoYXJlZCBhIHNjcmlwdCBob3cgSSBkbyB0aGF0IGluIGEgcmVwcm9kdWNp
YmxlIHdheS4gVGhpcyBiZW5lZml0cwpyZXZpZXdlcnMgbm90IGdldHRpbmcgQ0MnZWQgb24gdGhl
IGNvdmVyIGxldHRlciBhcyB3ZWxsIGFzIHVzZXJzIG9mIHRoZQpQYXRjaHdvcmsgd2ViIGludGVy
ZmFjZS4KClRoYW5rcywKQW5kcmVhcwoKLS0gClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1h
bnkgR21iSApNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkKR0Y6IEZlbGl4
IEltZW5kw7ZyZmZlcgpIUkIgMzY4MDkgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
