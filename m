Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 335F4E7F7D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 06:23:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4jIgUeUGJvuyjiWu7RKhBgbRO3fo6mxKnh7ZaalTZGg=; b=Ywt1h1MsU4SbLi
	U4veedXXu2WMOCzH4uVshzdtXCIUO1LkbJDj/vpXcoBTnK5k1wi5mG1TFUiK/sweIUUU+lFwn5KCM
	9gON5nLYqfE1Pu3M5WReco2V0AWjGX6qrU3zDMmY08uqNhRdOrbrD2oqWczt4Oif3AbvPsaCiyaL2
	n7B+5dlfqnLogHU3toCSZj9UoJysNK/2qGULtzb8AwCZk7oDjbdn4EyxxI5CEIW4DvrUINlsQ7U4c
	YSJsKige/L92DSE9d75wNaeyb2y3CEpnnG9Gi6bvXwgHzn1BBZi8Y7D7NAa9+dYGBeuIHU4/x+t4k
	wtLHGMyrkdsoHb4o5wHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPJyn-0005Zn-M2; Tue, 29 Oct 2019 05:23:41 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPJyd-0005Z0-Jw; Tue, 29 Oct 2019 05:23:33 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 57E43B428;
 Tue, 29 Oct 2019 05:23:30 +0000 (UTC)
Subject: Re: [PATCH v3 2/2] arm64: dts: realtek: Add watchdog node for RTD129x
To: linux-realtek-soc@lists.infradead.org
References: <20191020153612.29889-1-afaerber@suse.de>
 <20191020153612.29889-3-afaerber@suse.de>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <ab88ae16-cc8a-09d4-aefc-ba423b562e9b@suse.de>
Date: Tue, 29 Oct 2019 06:23:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191020153612.29889-3-afaerber@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_222331_795796_FE29DD1C 
X-CRM114-Status: GOOD (  11.53  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjAuMTAuMTkgdW0gMTc6MzYgc2NocmllYiBBbmRyZWFzIEbDpHJiZXI6Cj4gQWRkIHRoZSB3
YXRjaGRvZyBub2RlIHRvIHRoZSBSVEQxMjl4IERldmljZSBUcmVlLgo+IAo+IEFja2VkLWJ5OiBS
b2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgo+IEFja2VkLWJ5OiBHdWVudGVyIFJvZWNrIDxs
aW51eEByb2Vjay11cy5uZXQ+Cj4gW0FGOiBNb3ZlZCBmcm9tIFJURDEyOTUgdG8gbmV3IFJURDEy
OXhdCj4gU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgo+
IC0tLQo+ICB2MiAtPiB2MzoKPiAgKiBydGQxMjl4LmR0c2kgd2FzIGZhY3RvcmVkIG91dCBvZiBy
dGQxMjk1LmR0c2ksIGFkZCBpdCB0aGVyZQo+ICAKPiAgdjEgLT4gdjI6IFVuY2hhbmdlZAo+ICAK
PiAgYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaSB8IDYgKysrKysrCj4g
IDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKCkFwcGxpZWQgdG8gbGludXgtcmVhbHRl
ay5naXQgdjUuNS9kdDY0OgoKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tl
cm5lbC9naXQvYWZhZXJiZXIvbGludXgtcmVhbHRlay5naXQvbG9nLz9oPXY1LjUvZHQ2NAoKUmVn
YXJkcywKQW5kcmVhcwoKLS0gClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSApN
YXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkKR0Y6IEZlbGl4IEltZW5kw7Zy
ZmZlcgpIUkIgMzY4MDkgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
