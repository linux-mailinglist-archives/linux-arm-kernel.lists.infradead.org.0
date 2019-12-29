Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6DB12C003
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 03:48:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZO65QxJsdVpEerP/e71+obXp057+kwNi+DPGDLjNUtc=; b=Zq5YFc588Lstj4AMz4sktGQ1i
	q+nNUHF8/MnG2Eisz9+DtdP1frV5kbAvMWwonHFZB+k7ty4tt76FLELyl/y45ZYA+c2rSCLqaHk63
	LxgJrLoaijTGfmx/ASvHRJEByNfoCgGuhrVLcPvTmQmmeFMCHzgT6KGGQsAnNslJ/6tyfWGA1V35o
	BkeimFVM9AMCYuAm6GLemGJTtKkBri3xtchpNwSlZBUXKo7EP+3wBojYLL1gSyTYrFb3lPRCMyvLH
	cFKdV01mgEEPomRXtPsmqpWy5a0x8jvUGQ74Qh9ADFJFFsK8aYnrwPe8NLm+4SptBEvRFbWkLMhRK
	JzcW7CqJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilOdJ-0008RW-As; Sun, 29 Dec 2019 02:48:45 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilOdA-0008Qo-BC; Sun, 29 Dec 2019 02:48:37 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 96E9FAC2C;
 Sun, 29 Dec 2019 02:48:32 +0000 (UTC)
Subject: Re: [PATCH v2 0/2] Initial RTD1319 SoC and Realtek PymParticle EVB
 support
To: James Tai <james.tai@realtek.com>
References: <20191228150553.6210-1-james.tai@realtek.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <9fbe4392-5028-3718-8c97-547a46efad2a@suse.de>
Date: Sun, 29 Dec 2019 03:48:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191228150553.6210-1-james.tai@realtek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_184836_532694_B9DD4E00 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXMsCgpBbSAyOC4xMi4xOSB1bSAxNjowNSBzY2hyaWViIEphbWVzIFRhaToKPiBDYzog
QW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgoKVGhpcyB0aW1lIHlvdSBDQydlZCBt
ZSBvbmx5IG9uIHRoZSBjb3ZlciBsZXR0ZXIsIHNvIHRoYXQgSSBkaWRuJ3QgZ2V0IApub3RpZmll
ZCBvZiwgZS5nLiwgTWFyYydzIHJldmlldyBjb21tZW50cy4gSSB3b25kZXIgd2h5OiByZWFsdGVr
LnlhbWwgaXMgCmluIE1BSU5UQUlORVJTLCBhbmQgc28gaXMgZHRzL3JlYWx0ZWsvLCBzbyBnZXRf
bWFpbnRhaW5lcnMucGwgc2hvdWxkJ3ZlIApwaWNrZWQgbWUgdXAsIGV2ZW4gaWYgeW91IGZvcmdv
dCB0byBleHBsaWNpdGx5IENDIG1lPyBQbGVhc2UgY2hlY2sgd2hhdCAKd2VudCB3cm9uZyB0aGVy
ZSBhbmQgbWFrZSBzdXJlIGl0IGRvZXNuJ3QgaGFwcGVuIGFnYWluIGZvciB0aGUgbmV4dCAKc3Vi
bWlzc2lvbi4KClRoYW5rcywKQW5kcmVhcwoKPiAgIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Fy
bS9yZWFsdGVrLnlhbWwgICAgICB8ICAgNiArCj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0
ZWsvTWFrZWZpbGUgICAgICAgICAgfCAgIDIgKwo+ICAgLi4uL2Jvb3QvZHRzL3JlYWx0ZWsvcnRk
MTMxOS1weW1wYXJ0aWNsZS5kdHMgIHwgIDQzICsrKysKPiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMv
cmVhbHRlay9ydGQxMzE5LmR0c2kgICAgICB8ICAxMiArCj4gICBhcmNoL2FybTY0L2Jvb3QvZHRz
L3JlYWx0ZWsvcnRkMTN4eC5kdHNpICAgICAgfCAyMTIgKysrKysrKysrKysrKysrKysrCj4gICA1
IGZpbGVzIGNoYW5nZWQsIDI3NSBpbnNlcnRpb25zKCspCj4gICBjcmVhdGUgbW9kZSAxMDA2NDQg
YXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEzMTktcHltcGFydGljbGUuZHRzCj4gICBj
cmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEzMTkuZHRz
aQo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQx
M3h4LmR0c2kKCi0tIApTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgKTWF4ZmVs
ZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55CkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIK
SFJCIDM2ODA5IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
