Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C7E47090
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 16:55:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Y5VitqTpXVZMydJnXM31dSIzEzRtsOa1B/dP6iuM5I=; b=Ao9IP0KNUShJp2
	QGq8fkLc+Vpt/cBe7MWDP1xWVS+nfg/soc1UEJZiMnkCco4mouAEnbSEy3DDJHKCt8yEzfB+r8+F0
	f4pn5hmGksTDYkqcB84ZsndGOIyAS4lS6rXyhlkVu9127uw3aPdvbxcYYPMDYjmcmuA4Vf/rhRfw/
	fVmCo987VJm0BpWaQiT0vTQ7tCbn5wg8Jxdo25OHfKTZqjUTN+Ql5OLfLya1im15A+oCJwQLnquAI
	toVImb3qBSoas+mpsYMmQzoj5lF9KI8J32/5b7X5RaQTH2rIZutTHCgUBgcSlsP1mRFpdwpKVAwrQ
	EpheVtVtIzSkloDsALgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcA5S-0001N6-OM; Sat, 15 Jun 2019 14:55:23 +0000
Received: from smtp.domeneshop.no ([2a01:5b40:0:3005::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcA52-0001MW-4Q
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 14:54:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org;
 s=ds201810; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=B+uqqynN4mH/2Ogm2FosLTGCZbrbohWe7l+SY/ukVaI=; 
 b=s0+cbQ+dhIRh75mZUE41cvtBjtVTPujKJ0HXWkn7M3qLPMagjhqJ8wQbZo2gtwp884SafSGR5d4MmrsxIplqW3LSKKSASb9Zu7Kd75kFieEmr6RWnLJXCyWntXI1kwRe56Z2Ne8MQWM3uvQVyo8rAFHrYgte7gqOb4kOuKziGzuzP5f7ylSyE3d6A47hwSTOyq20Kbpcrrf+2gQI3V+ZHGGPaFLb3UIpXDkj5xZYIeRTK+bQrpJ6WXQkRLtDAo14iH1wMZ9nLNvxFE8MnyoYDUgDy+329Heie7TmMAN3GLiM+IYxLp47P/AMWdWZW5IFyuL1ujZZXySYcQHfizke4A==;
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:54201
 helo=[192.168.10.173])
 by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.84_2) (envelope-from <noralf@tronnes.org>)
 id 1hcA4z-0006Hh-OZ; Sat, 15 Jun 2019 16:54:53 +0200
Subject: Re: [PATCH v4 08/12] drm/connector: Introduce a TV margins structure
To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>, Daniel Vetter <daniel.vetter@intel.com>,
 David Airlie <airlied@linux.ie>
References: <cover.5fc7840dc8fb24744516c13acb8c8aa18e44c0d0.1560514379.git-series.maxime.ripard@bootlin.com>
 <06f9c2fdbca44d9c04a0420cc78265c83ccd0d41.1560514379.git-series.maxime.ripard@bootlin.com>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <bbdae758-1964-2891-f82d-d020adba9f8e@tronnes.org>
Date: Sat, 15 Jun 2019 16:54:43 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <06f9c2fdbca44d9c04a0420cc78265c83ccd0d41.1560514379.git-series.maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_075456_362003_E187A741 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:5b40:0:3005:0:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: eben@raspberrypi.org, dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Eric Anholt <eric@anholt.net>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpEZW4gMTQuMDYuMjAxOSAxNC4xMywgc2tyZXYgTWF4aW1lIFJpcGFyZDoKPiBUaGUgVFYgbWFy
Z2lucyBoYXMgYmVlbiBkZWZpbmVkIGFzIGEgc3RydWN0dXJlIGluc2lkZSB0aGUKPiBkcm1fY29u
bmVjdG9yX3N0YXRlIHN0cnVjdHVyZSBzbyBmYXIuIEhvd2V2ZXIsIHdlIHdpbGwgbmVlZCBpdCBp
biBvdGhlcgo+IHN0cnVjdHVyZXMgYXMgd2VsbCwgc28gbGV0J3MgbW92ZSB0aGF0IHN0cnVjdHVy
ZSBkZWZpbml0aW9uIHNvIHRoYXQgaXQgY2FuCj4gYmUgcmV1c2VkLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IE1heGltZSBSaXBhcmQgPG1heGltZS5yaXBhcmRAYm9vdGxpbi5jb20+Cj4gLS0tCj4gIGlu
Y2x1ZGUvZHJtL2RybV9jb25uZWN0b3IuaCB8IDM0ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9jb25uZWN0b3IuaCBiL2luY2x1
ZGUvZHJtL2RybV9jb25uZWN0b3IuaAo+IGluZGV4IDY4YTA0MTY5ZWEzNi4uYzU4YTM1YjM0YzFh
IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvZHJtL2RybV9jb25uZWN0b3IuaAo+ICsrKyBiL2luY2x1
ZGUvZHJtL2RybV9jb25uZWN0b3IuaAo+IEBAIC00NjQsMTMgKzQ2NCwzNyBAQCBpbnQgZHJtX2Rp
c3BsYXlfaW5mb19zZXRfYnVzX2Zvcm1hdHMoc3RydWN0IGRybV9kaXNwbGF5X2luZm8gKmluZm8s
Cj4gIAkJCQkgICAgIHVuc2lnbmVkIGludCBudW1fZm9ybWF0cyk7Cj4gIAo+ICAvKioKPiArICog
c3RydWN0IGRybV9jb25uZWN0b3JfdHZfbWFyZ2lucyAtIFRWIGNvbm5lY3RvciByZWxhdGVkIG1h
cmdpbnMKPiArICoKPiArICogRGVzY3JpYmVzIHRoZSBtYXJnaW5zIGluIHBpeGVscyB0byBwdXQg
YXJvdW5kIHRoZSBpbWFnZSBvbiBUVgo+ICsgKiBjb25uZWN0b3JzIHRvIGRlYWwgd2l0aCBvdmVy
c2Nhbi4KPiArICovCj4gK3N0cnVjdCBkcm1fY29ubmVjdG9yX3R2X21hcmdpbnMgewo+ICsJLyoq
Cj4gKwkgKiBAYm90dG9tOiBCb3R0b20gbWFyZ2luIGluIHBpeGVscy4KPiArCSAqLwo+ICsJdW5z
aWduZWQgaW50IGJvdHRvbTsKPiArCj4gKwkvKioKPiArCSAqIEBsZWZ0OiBMZWZ0IG1hcmdpbiBp
biBwaXhlbHMuCj4gKwkgKi8KPiArCXVuc2lnbmVkIGludCBsZWZ0Owo+ICsKPiArCS8qKgo+ICsJ
ICogQHJpZ2h0OiBSaWdodCBtYXJnaW4gaW4gcGl4ZWxzLgo+ICsJICovCj4gKwl1bnNpZ25lZCBp
bnQgcmlnaHQ7Cj4gKwo+ICsJLyoqCj4gKwkgKiBAdG9wOiBUb3AgbWFyZ2luIGluIHBpeGVscy4K
PiArCSAqLwo+ICsJdW5zaWduZWQgaW50IHRvcDsKPiArfTsKPiArCj4gKy8qKgo+ICAgKiBzdHJ1
Y3QgZHJtX3R2X2Nvbm5lY3Rvcl9zdGF0ZSAtIFRWIGNvbm5lY3RvciByZWxhdGVkIHN0YXRlcwo+
ICAgKiBAc3ViY29ubmVjdG9yOiBzZWxlY3RlZCBzdWJjb25uZWN0b3IKPiAtICogQG1hcmdpbnM6
IG1hcmdpbnMgKGFsbCBtYXJnaW5zIGFyZSBleHByZXNzZWQgaW4gcGl4ZWxzKQo+IC0gKiBAbWFy
Z2lucy5sZWZ0OiBsZWZ0IG1hcmdpbgo+IC0gKiBAbWFyZ2lucy5yaWdodDogcmlnaHQgbWFyZ2lu
Cj4gLSAqIEBtYXJnaW5zLnRvcDogdG9wIG1hcmdpbgo+IC0gKiBAbWFyZ2lucy5ib3R0b206IGJv
dHRvbSBtYXJnaW4KPiArICogQG1hcmdpbnM6IFRWIG1hcmdpbnMKPiAgICogQG1vZGU6IFRWIG1v
ZGUKPiAgICogQGJyaWdodG5lc3M6IGJyaWdodG5lc3MgaW4gcGVyY2VudAo+ICAgKiBAY29udHJh
c3Q6IGNvbnRyYXN0IGluIHBlcmNlbnQKPiAKClRoZSBhY3R1YWwgc3RydWN0IGNvbnZlcnNpb24g
aXMgbWlzc2luZyBoZXJlLCBpdCBoYXMgZW5kZWQgdXAgaW46CgpbUEFUQ0ggdjQgMTAvMTJdIGRy
bS9tb2RlczogUGFyc2Ugb3ZlcnNjYW4gcHJvcGVydGllcwoKV2l0aCB0aGF0IG1vdmVkIGluIGhl
cmU6CgpSZXZpZXdlZC1ieTogTm9yYWxmIFRyw7hubmVzIDxub3JhbGZAdHJvbm5lcy5vcmc+Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
