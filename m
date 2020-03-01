Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC90174C2E
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 08:45:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PAtnbsUaQjxJQ4klH7FEuSxwKNj3PkvjsiAxZMoIoSE=; b=JZKv8H3c3TxXo/
	OTXwUp/83Dko9ScAlgYNGObB7y1xDHUTRik7FqGJ4H60x7gaPCYkDBuMoBAlRtjdg0CcilMee3pnK
	DYKIVoQXNExxt6YV7VdIvafelXWfY/hmufyyh+amms/braoWLVLmaPXvJ2Mg+msQWd6mgwYm3DKdr
	GfuER6qROBuyTb+XH5/y9ulsO0HCm1fPlhYncKWiOtQHN8M4nv6aTBoBZpdU/MkZbEXQCypGPmizH
	mq8dEpqP75KRVoiRzZmkvOBz3G9AIjxZokqHcvwlfoi0k778nAl1sDRsFgMe75u3TMhUk26g1fHn1
	ehd8XYgId2DLBkxKwPDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8JHy-0003SI-2A; Sun, 01 Mar 2020 07:45:26 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8JHr-0003SB-V2
 for linux-arm-kernel@bombadil.infradead.org; Sun, 01 Mar 2020 07:45:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-ID:From:CC:To:Subject:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
 Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=Gw5jIim4mE6D+jlpf5XDaVk+HudgZF5XdLKqeviIaOQ=; b=YBZR8+dFZoOOz+kNHZzirEtzsq
 3MAGVV4V6Ntzgy8bKmTSNasY69n6Kimv1asrZZYXJBdjGNI+qTojz8+UxQKROloYrvfiQ9rKr8oOT
 WJwc7uF/SDTYiss4hSEnHM/whfBc9jJoy5y4OPoiGHSrI1ulkHAQ0DHvV4YcmmgkfuXGDnWvuEENX
 y7tdo0fz06A5hRB5+ozGmTt/368wrCRKzAbNM7cdjqXVwF0gSxvRYmuyAEMAMgZciM+F/mjVv472R
 m3zq2nxhcPS04quuXcclH3cWYyG7ADRnoeJlzi5A7qGx/Yv67RXbSTaUB8bmojFo5dS9FyVJcb1aI
 eRFwiGPw==;
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8JHY-0008A2-AK
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Mar 2020 07:45:17 +0000
X-Originating-IP: 90.112.224.173
Received: from pc-39.home (lfbn-gre-1-269-173.w90-112.abo.wanadoo.fr
 [90.112.224.173]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 6C1A9FF809;
 Sun,  1 Mar 2020 07:44:21 +0000 (UTC)
Date: Sun, 01 Mar 2020 08:44:19 +0100
User-Agent: K-9 Mail for Android
In-Reply-To: <20200229230648.GA21220@plvision.eu>
References: <20200209212016.27062-1-vadym.kochan@plvision.eu>
 <20200229230648.GA21220@plvision.eu>
MIME-Version: 1.0
Subject: Re: [PATCH] arm64: dts: marvell: fix non-existed cpu referrence in
 armada-ap806-dual.dtsi
To: Vadym Kochan <vadym.kochan@plvision.eu>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>
From: Gregory CLEMENT <gregory.clement@bootlin.com>
Message-ID: <647B367B-4278-4D00-98D3-1FCA76D87488@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_074501_032018_13AF8C48 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-2.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAxIG1hcnMgMjAyMCAwMDowNjo1NiBHTVQrMDE6MDAsIFZhZHltIEtvY2hhbiA8dmFkeW0u
a29jaGFuQHBsdmlzaW9uLmV1PiBhIMOpY3JpdCA6Cj5IaSwKPgoKSGVsbG8KPkp1c3Qgc29mdGx5
IHBpbmcgaWYgSSBzZW50IGl0IHRvIHRoZSByaWdodCBkaXJlY3Rpb24uCkl0IGxvb2tzIG9rLCBh
bmQgd2FzIG9uIHRoZSBsaXN0IG9mIHBhdGNoZXMgdG8gYXBwbHkgCgpTb3JyeSBmb3IgdGhlIGRl
bGF5Cj4KPk9uIFN1biwgRmViIDA5LCAyMDIwIGF0IDExOjIwOjMwUE0gKzAyMDAsIFZhZHltIEtv
Y2hhbiB3cm90ZToKPj4gYXJtYWRhLWFwODA2LWR1YWwuZHRzaSBpbmNsdWRlcyBhcm1hZGEtYXA4
MDYuZHRzaSB3aGljaCBkZXNjcmliZXMKPj4gdGhlcm1hbCB6b25lcyBmb3IgNCBjcHVzIGJ1dCBv
bmx5IGNwdTAgYW5kIGNwdTEgb25seSBleGlzdHMgZm9yIGR1YWwKPj4gY29uZmlndXJhdGlvbiwg
dGhpcyBtYWtlcyBkdGIgY29tcGlsYXRpb24gZmFpbC4gRml4IGl0IGJ5IHJlbW92aW5nCj4+IHRo
ZXJtYWwgem9uZSBub2RlcyBmb3Igbm9uLWV4aXN0ZWQgY3B1cyBmb3IgZHVhbCBjb25maWd1cmF0
aW9uLgo+PiAKPj4gU2lnbmVkLW9mZi1ieTogVmFkeW0gS29jaGFuIDx2YWR5bS5rb2NoYW5AcGx2
aXNpb24uZXU+Cj4+IC0tLQo+PiAgYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS1h
cDgwNi1kdWFsLmR0c2kgfCA1ICsrKysrCj4+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25z
KCspCj4+IAo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFk
YS1hcDgwNi1kdWFsLmR0c2kKPmIvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS1h
cDgwNi1kdWFsLmR0c2kKPj4gaW5kZXggMDk4NDk1NThhNzc2Li5mY2FiNTE3M2ZlNjcgMTAwNjQ0
Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtYXA4MDYtZHVhbC5k
dHNpCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtYXA4MDYtZHVh
bC5kdHNpCj4+IEBAIC01Myw0ICs1Myw5IEBACj4+ICAJCQljYWNoZS1zZXRzID0gPDUxMj47Cj4+
ICAJCX07Cj4+ICAJfTsKPj4gKwo+PiArCXRoZXJtYWwtem9uZXMgewo+PiArCQkvZGVsZXRlLW5v
ZGUvIGFwLXRoZXJtYWwtY3B1MjsKPj4gKwkJL2RlbGV0ZS1ub2RlLyBhcC10aGVybWFsLWNwdTM7
Cj4+ICsJfTsKPj4gIH07Cj4+IC0tIAo+PiAyLjE3LjEKPj4gCj4KPlJlZ2FyZHMsCj5WYWR5bSBL
b2NoYW4KCi0tIApHcmVnb3J5IENsZW1lbnQsIEJvb3RsaW4KRW1iZWRkZWQgTGludXggYW5kIEtl
cm5lbCBlbmdpbmVlcmluZwpodHRwOi8vYm9vdGxpbi5jb20KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
