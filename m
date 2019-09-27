Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2B1C0C15
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 21:29:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0nO0mCrvVhh15gQrapoEUTbdS7jrxc+OS1wPoLlEXrE=; b=Xhmhencwh3bcsQ
	tSCzZSdQZebJRBSYAsvvXj3Y3LubXqB30CvVZuhidITgEMq9f6fHMWKn9DXD7Oz9B+K6ywW7oQLUB
	8799JzsCwmui5ZnZqhPJhGIYWqBXNE09S7/8ETB4lK09+yqvm29PT8KkedKSJoEAYoUsdEtWFKV3t
	0Rkor8XQ22biLQRGx4F8+bBz/qHWpyrPO6gs2eumpcHFRviaDiI9lGLIe0THyW0AuvwVKBd2WlFaE
	FYJkozzu3t0ysthOWcLYBV4lza8xh8I1z7IydHnIAta/NMGykEpBNibZvq/qhrCs0qZ5bufn5q3PK
	9UsZqyWk/Wk32UZOhojQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDvvV-0002Mg-Dt; Fri, 27 Sep 2019 19:29:13 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDvvM-0002Lz-G7; Fri, 27 Sep 2019 19:29:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1569612522;
 bh=LqPvzgMl3M/SdWVKtQw9Xc3eQlGWH+qD7BITZ5irqno=;
 h=X-UI-Sender-Class:Subject:From:To:Cc:References:Date:In-Reply-To;
 b=CFD2KyoQN+r9Ao45VZBsbIkex6rouXGNx1P6G9ThoDHBExPJePHm/mFyYEjY6E1Y0
 9tF31PL87m2KUNY8iIF4Wlg9Stde9oWqgOfZdD1aV55hn1KqF6JonvtK1qOgYr63iE
 s6IoYlu33Ng8vSgNisENPwrtpCvm5IM1D12y0SlA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.130]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MDQeK-1iL3BU1H7u-00AWac; Fri, 27
 Sep 2019 21:28:42 +0200
Subject: Re: [PATCH 12/18] pinctrl: bcm2835: Add support for BCM2711 pull-up
 functionality
From: Stefan Wahren <wahrenst@gmx.net>
To: Linus Walleij <linus.walleij@linaro.org>
References: <1563776607-8368-1-git-send-email-wahrenst@gmx.net>
 <1563776607-8368-3-git-send-email-wahrenst@gmx.net>
 <CACRpkdabfiDbGmAQciAUSThY-KfTsVq3tHz0bBszs2j_ej18Nw@mail.gmail.com>
 <63f17284-5551-9492-9eff-f8a4c003196b@gmx.net>
Message-ID: <66dc2cad-673e-0a0b-0aeb-3d62fa2d4ccf@gmx.net>
Date: Fri, 27 Sep 2019 21:28:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <63f17284-5551-9492-9eff-f8a4c003196b@gmx.net>
Content-Language: en-US
X-Provags-ID: V03:K1:m931275HWhQSHbM32Q2ns3BKfQMzOJGFIpVmiNhwMIwCERHWzwd
 GdA69OHtFGIOg9L5HvHVmVV3UkZrKSNrU1wrNrTrky0BgiM6pkL1wOsGdtF74/GJA8dUsL4
 cgwvQDVUiL9Pm/Ud8wSyB2rsofVTjJzglVE8JkOnMkrZMQZOlogqd55IfwqzPlq/sQN66uQ
 SbJfpK26XEFSWZYIYKZng==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:uN12ArYQTqI=:N2NdjvtlX4d+KMqCzXJHy/
 LwlhKOBE/9+a9x3NcTCDBva1MO3aWOUJ9NLD8FY8LfUaXhtKi+hLyT6eX/TgZ0JwQffNLEOLd
 k3YG7QOhWAwmUT8luYD5rqOOoJAPAYU/kSZ/dMIsKwVI5GEfyY0oJoa73RBU9amnDwF4htCC8
 eASmoCkk1jUcfkgc16pP07tG2jgDS0DJIqNg67w/vT29LGeneTzWMi+kl1AVtzf2L6sZ/yPe3
 K1ZHogbIjyXtKPhheOVHXuAOW1n10r44AsS9/Hyr8oEMx2ctp2u4gN1GKoUKh46A+PgINUrHa
 7CDTeVxYcB6mMjLgLMhlZMXq+0dOrrBjoFaOtznayoG1VG2uWR3Z5Yoev9/OFebhIDxke4G4G
 BGfSgSPkx2Gr6zfaQTRXgL5K5WnzpYMhDcRW3UQAH0pb7Re7l7UjbqKzCvjOUCZroF9lvsuq7
 vjjMHUrO9bAWULnwOBXK3HJVHfhRStCnsRTqwWMAHSbxfLY5SAXTf/YJ3WxE0yRwRth/5Dkhd
 /8N+ZtIgDittChpexcidZDuk5rBKQTeJTHVUNuVjBUpDT2DQH/bcJDyXMBgL8pW0GBN/TSi/o
 jYHO5JICD8dEFBw8CSytfGLxdrJ+dTKu2POAjRJLbRVwtqslQuWDleU/OW8XBqlSv/94ZkOnE
 Y95Pid0hPoKc/tDL4Uh50woskDPHbKs8CbNTIVCOmO7VncTfMXhTFQAB0rYU2hUI084mQSH/E
 Y4intc7DUfM9TXEyxaEzIfixP9E8SNH/vIN+KFz+0gLN0TYfvvp0VkudBJYZyGjacmOwW3uYv
 pf9Xbav0+2tFPkwOS6Hagg/G68wBTQbPCxFOFZ8UcRZTwI9TZ+2aO8IyF8z8OhhJ41KpOIIsf
 4olVDb3hZM1qD55CB87cG2jkoh95F5jEk+SV8ftkSEPvs7e0RDAp9EUyuUnKaWRjTrSxX7iNm
 ZB+ypwn3RtH5PptbzJehT80bnh7axN5VqF/bXici45WkmE0eT+kUgcPmFAYHErECRGg2U7sBA
 icyTIZArbl3s1Q97JadbxnQejrSEXPpMJqpvwLHysMTlrKO5862x1QN6syEfnodYahbbnUuo9
 cb38ECoRlWvv7h9GEsZi2Ael5+QdQ9luDG++oENAKEdip37ptpaeATr4xxnpbZJBidLqaIXz9
 9yTLDtC0IW0KsWarjkuxC+i1WD2xGhR9dhAzZcjZla9kaj2zqDpzPJ51sjUqtGb18b4jNPfW3
 2Z+PvXvA/I/3+7uB2n/6d7j8U1d1lUJ9O5zdBCM9MosPZe9prr3C83puXKQU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_122904_878698_227896C3 
X-CRM114-Status: GOOD (  19.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.15.18 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Matthias Brugger <mbrugger@suse.com>, Scott Branden <sbranden@broadcom.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-mmc <linux-mmc@vger.kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Rob Herring <robh+dt@kernel.org>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTGludXMsCgpBbSAxMS4wOC4xOSB1bSAyMjoxNSBzY2hyaWViIFN0ZWZhbiBXYWhyZW46Cj4g
QW0gMDUuMDguMTkgdW0gMTE6Mzggc2NocmllYiBMaW51cyBXYWxsZWlqOgo+PiBPbiBNb24sIEp1
bCAyMiwgMjAxOSBhdCA4OjI0IEFNIFN0ZWZhbiBXYWhyZW4gPHdhaHJlbnN0QGdteC5uZXQ+IHdy
b3RlOgo+Pgo+Pj4gVGhlIEJDTTI3MTEgaGFzIGEgbmV3IHdheSBvZiBzZWxlY3RpbmcgdGhlIHB1
bGwtdXAvcHVsbC1kb3duIHNldHRpbmcKPj4+IGZvciBhIEdQSU8gcGluLiBUaGUgcmVnaXN0ZXJz
IHVzZWQgZm9yIHRoZSBCQ00yODM1LCBHUF9QVUQgYW5kCj4+PiBHUF9QVURDTEtuMCwgYXJlIG5v
IGxvbmdlciBjb25uZWN0ZWQuIEEgbmV3IHNldCBvZiByZWdpc3RlcnMsCj4+PiBHUF9HUElPX1BV
UF9QRE5fQ05UUkxfUkVHeCBtdXN0IGJlIHVzZWQuIFRoaXMgY29tbWl0IHdpbGwgYWRkCj4+PiBh
IG5ldyBjb21wYXRpYmxlIHN0cmluZyAiYnJjbSxiY20yNzExLWdwaW8iIGFuZCB0aGUga2VybmVs
Cj4+PiBkcml2ZXIgd2lsbCB1c2UgaXQgdG8gc2VsZWN0IHdoaWNoIG1ldGhvZCBpcyB1c2VkIHRv
IHNlbGVjdAo+Pj4gcHVsbC11cC9wdWxsLWRvd24uCj4+Pgo+Pj4gVGhpcyBwYXRjaCBiYXNlZCBv
biBhIHBhdGNoIGJ5IEFsIENvb3BlciB3aGljaCB3YXMgaW50ZW5kZWQgZm9yIHRoZQo+Pj4gQkNN
NzIxMS4gVGhpcyBpcyBhIGJ1Z2ZpeGVkIGFuZCBpbXByb3ZlZCB2ZXJzaW9uLgo+Pj4KPj4+IFNp
Z25lZC1vZmYtYnk6IFN0ZWZhbiBXYWhyZW4gPHdhaHJlbnN0QGdteC5uZXQ+Cj4+IFBhdGNoIGFw
cGxpZWQuCj4gVGhhbmtzCj4+IEkgdGhpbmsgSSBjb21wbGFpbmVkIGFib3V0IHNvbWUgb3RoZXIg
dmVyc2lvbiBvZiB0aGlzIHBhdGNoLCB0aGlzIG9uZQo+PiBsb29rcyBlbnRpcmVseSBhY2NlcHRh
YmxlLgo+Pgo+PiBDYW4gd2UgZ2V0IHJpZCBvZiBjdXN0b20gcHVsbCBzZXR0aW5ncyBldGMgZnJv
bSB0aGUgdXBzdHJlYW0gZGV2aWNlCj4+IHRyZWVzIHNvIHdlIGRvbid0IHNldCBiYWQgZXhhbXBs
ZXM/IEkgaGF2ZSBhIHN0cm9uZyB1cmdlIHRvCj4+IHRocm93IGluIGEgcHJfd2FybigpIGFib3V0
IGFueSB1c2Ugb2YgaXQuCj4gSXJvbmljYWxseSwgbXkgcHJlLVJGQyB2ZXJzaW9uIHRyaWVkIHRv
IGNvbnZlcnQgYWxsIEJDTTI4MzUgcGlubXV4Cj4gc2V0dGluZ3MgdG8gZ2VuZXJpYyBvbmVzLiBV
bmZvcnR1bmF0ZWx5IGl0IHNlZW1zIHRoYXQgaSBtYWRlIGEgbWlzdGFrZSwKPiBiZWNhdXNlIGl0
IGRpZG4ndCB3b3JrIGFzIGV4cGVjdGVkLiBTaW5jZSB3ZSBzdHVtcGxlZCBhYm92ZSBtb3JlIGFu
ZAo+IG1vcmUgb3RoZXIgaXNzdWVzIChub3QgcmVsZXZhbnQgdG8gcGluY3RybCkgZHVyaW5nIHVw
c3RyZWFtIHJldmlldywgaQo+IGRlY2lkZWQgdG8gc3RhcnQgd2l0aCBsZWdhY3kgcHVsbC11cCBz
dXBwb3J0LCBzbyB3ZSBjYW4gZml4IHRoaXMgbGF0ZXIKPiBpbiB0aGUgZGV2aWNldHJlZSBmb3Ig
Ym90aCBwbGF0Zm9ybXMgKGN1cnJlbnRseSBCQ00yNzExIHVzZXMgbW9zdCBvZiB0aGUKPiBvbGQg
QkNNMjgzNSBwaW5tdXhlcyBpbmNsdWRpbmcgdGhlIGxlZ2FjeSBzdHVmZikuIFNvIHllcyBteSBw
bGFuIGlzIHRvCj4gZml4IHRoaXMgc29vbi4KCnRvZGF5IGkgaGFkIHRoZSB0aW1lIHRvIHRyeSB0
aGlzIG91dC4gSW5zdGVhZCBvZiB0aGUgZm9sbG93aW5nOgoKwqDCoMKgIGkyYzBfZ3BpbzA6IGky
YzBfZ3BpbzAgewrCoMKgwqAgwqDCoMKgIGJyY20scGlucyA9IDwwIDE+OwrCoMKgwqAgwqDCoMKg
IGJyY20sZnVuY3Rpb24gPSA8QkNNMjgzNV9GU0VMX0FMVDA+OwrCoMKgwqAgwqDCoMKgIGJyY20s
cHVsbCA9IDxCQ00yODM1X1BVRF9VUArCoMKgwqAgwqDCoMKgIMKgwqDCoCDCoMKgwqDCoCBCQ00y
ODM1X1BVRF9PRkY+OwrCoMKgwqAgfQoKeW91IHdhbnQgdGhpcz8KCsKgwqDCoCBpMmMwX2dwaW8w
OiBpMmMwX2dwaW8wIHsKwqDCoMKgIMKgwqDCoCBwaW4tc2RhIHsKwqDCoMKgIMKgwqDCoCDCoMKg
wqAgZnVuY3Rpb24gPSAiYWx0MCI7CsKgwqDCoCDCoMKgwqAgwqDCoMKgIHBpbnMgPSAiZ3BpbzAi
OwrCoMKgwqAgwqDCoMKgIMKgwqDCoCBiaWFzLXB1bGwtdXA7CsKgwqDCoCDCoMKgwqAgfTsKwqDC
oMKgIMKgwqDCoCBwaW4tc2NsIHsKwqDCoMKgIMKgwqDCoCDCoMKgwqAgZnVuY3Rpb24gPSAiYWx0
MCI7CsKgwqDCoCDCoMKgwqAgwqDCoMKgIHBpbnMgPSAiZ3BpbzEiOwrCoMKgwqAgwqDCoMKgIMKg
wqDCoCBiaWFzLWRpc2FibGU7CsKgwqDCoCDCoMKgwqAgfTsKwqDCoMKgIH07CgpVbmZvcnR1bmF0
ZWx5IGkgZG9uJ3Qga25vdyBVLUJvb3QgaXMgaGFuZGxlIHRoZSBCQ00yODM1IHNwZWNpZmljIHBp
bmN0cmwKZnVuY3Rpb25zLgoKPgo+IFN0ZWZhbgo+Cj4+IFlvdXJzLAo+PiBMaW51cyBXYWxsZWlq
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
