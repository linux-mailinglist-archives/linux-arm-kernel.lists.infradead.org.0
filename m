Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD3A1EABF0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 20:26:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N4vPMa1ZrgyoFObYWqH2yjtXiV97emAy9V/NG3uljFc=; b=FMQdrPkGtE/JQL
	dsKfjMbBR0gKZtSSsHGgAafk3kYn/GxN3/w/GnduQBwkOr2ta2G1q9VauDejJ6pAqcdVKsYGxvBIi
	PtsqVWV+b1ro43HxXntQQJTYhiy5FFrzsSwsRQTNjXzzjZD0SWfkqKVXyKa2/sAzwXWA89gjJetXw
	GDDAqJSH+o3gucs8jgQP3uXXuz6Zj+mHkvwlJilnXUkVHf+5U1o+tZmnM5l9rTLlt/TvkwFVE7Enl
	eguASFR8CTeeRBg+uX9yJNMjdCWk0/AUB/oI7rxOQHRJds8L96fvLFphGQFtP3shZuFYrzRMqC7DM
	GxARpZEapF/7wnEBrIwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfp91-0002M1-Pg; Mon, 01 Jun 2020 18:26:43 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfp8p-0002J3-Ii
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 18:26:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CpB7nCiOHth7G0+bKDlWGpYMQSufxub4WvL1UZYxUiM=; b=lLP7HgHyNrFOSucRGlI0jVd/9
 XQWkmPUBiOeOVFqJQRYfR8oZF/og/m2RQXsIISmVygdlgv+hwsIbsJVxsPCE2Odk5iAHPFQGVmhd6
 yJRo+Xohg/igU96un8t3FG3eCWOH52u+1pUvSwCbDYDmmDPoD2z+BFMU8KaQ4JP0/oRVRRY7tJ8JP
 NLRTI8N+AVR249xDDLmmHeZRQeqbwxGJcCthH28DMrO1RRgBynjvXEtgogo709jXA3lh8H+IpRo0Q
 GKbuviSTibX6fshgTHCtQAeEjCJTU6tRvFAqhEQyd4IsOD0+EaNJcUc7lD5ahqplO9HtsW9dQCR/w
 ItYnxLNiA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:37610)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jfp8Q-00010n-AB; Mon, 01 Jun 2020 19:26:06 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jfp8F-0003XJ-QP; Mon, 01 Jun 2020 19:25:55 +0100
Date: Mon, 1 Jun 2020 19:25:55 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Lukasz Stelmach <l.stelmach@samsung.com>
Subject: Re: [PATCH 3/5] arm: decompressor: define a new zImage tag
Message-ID: <20200601182555.GP1551@shell.armlinux.org.uk>
References: <20200601145502.GJ1551@shell.armlinux.org.uk>
 <CGME20200601162002eucas1p28eb08a42de6f313458e9391bd5976e90@eucas1p2.samsung.com>
 <dleftjwo4qsqqf.fsf%l.stelmach@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dleftjwo4qsqqf.fsf%l.stelmach@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_112631_616903_6EEF454C 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kees Cook <keescook@chromium.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, Ben Dooks <ben-linux@fluff.org>,
 Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdW4gMDEsIDIwMjAgYXQgMDY6MTk6NTJQTSArMDIwMCwgTHVrYXN6IFN0ZWxtYWNo
IHdyb3RlOgo+IEl0IHdhcyA8MjAyMC0wNi0wMSBwb24gMTU6NTU+LCB3aGVuIFJ1c3NlbGwgS2lu
ZyAtIEFSTSBMaW51eCBhZG1pbiB3cm90ZToKPiA+IE9uIE1vbiwgSnVuIDAxLCAyMDIwIGF0IDA0
OjI3OjUyUE0gKzAyMDAsIMWBdWthc3ogU3RlbG1hY2ggd3JvdGU6Cj4gPj4gQWRkIERDU1ogdGFn
IHdoaWNoIGhvbGRzIGR5bmFtaWMgbWVtb3J5IChzdGFjaywgYnNzLCBtYWxsb2MgcG9vbCkKPiA+
PiByZXF1aXJlbWVudHMgb2YgdGhlIGRlY29tcHJlc3NvciBjb2RlLgo+ID4KPiA+IFdoeSBkbyB3
ZSBuZWVkIHRvIGtub3cgdGhlIHN0YWNrIGFuZCBCU1Mgc2l6ZSwgd2hlbiB0aGUgdXNlcnNwYWNl
Cj4gPiBrZXhlYyB0b29sIGRvZXNuJ3QgbmVlZCB0byBrbm93IHRoaXMgdG8gcGVyZm9ybSB0aGUg
c2FtZSBmdW5jdGlvbi4KPiAKPiAKPiBrZXhlYy10b29scyBsb2FkIHpJbWFnZSBhcyBsb3cgaW4g
RFJBTSBhcyBwb3NzaWJsZSBhbmQgcmVseSBvbiB0d28KPiBhc3N1bXB0aW9uczoKPiAKPiAgICAg
KyB0aGUgekltYWdlIHdpbGwgY29weSBpdHNlbGYgdG8gbWFrZSBlbm91Z2ggcm9vbSBmb3IgdGhl
IGtlcm5lbCwKPiAgICAgKyBzaXplb2YoekltYWdlK21lbSkgPCBzaXplb2Yoa2VybmVsK21lbSks
IHdoaWNoIGlzIHRydWUgYmVjYXVzZQo+ICAgICAgIG9mIGNvbXByZXNzaW9uLgo+IAo+ICAgICAg
ICBEUkFNIHN0YXJ0Cj4gICAgICAgICsgMHg4MDAwCj4gCj4gekltYWdlICAgIHwtLS0tLS0tLS0t
LXwtLS0tLXwtLS0tLS0tfAo+ICAgICAgICAgICAgIHRleHQrZGF0YSAgIGJzcyAgIHN0YWNrIAo+
IAo+ICAgICAgICAgICAgICAgICAgdGV4dCtkYXRhICAgICAgICAgICBic3MgICAKPiBrZXJuZWwg
ICAgfC0tLS0tLS0tLS0tLS0tLS0tLS0tLXwtLS0tLS0tLS0tLS0tLS0tLS0tfAo+IAo+IAo+IGlu
aXRyZCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8LWluaXRy
ZC18LWR0Yi18CgpUaGlzIGlzIGFjdHVhbGx5IGluY29ycmVjdCwgYmVjYXVzZSB0aGUgZGVjb21w
cmVzc29yIHdpbGwgc2VsZi0KcmVsb2NhdGUgaXRzZWxmIHRvIGF2b2lkIHRoZSBhcmVhIHRoYXQg
aXQgaXMgZ29pbmcgdG8gZGVjb21wcmVzcwppbnRvLiAgU28sIHdoaWxlIHRoZSBkZWNvbXByZXNz
b3IgcnVucywgaW4gdGhlIGFib3ZlIHNpdHVhdGlvbiBpdAplbmRzIHVwIGFzOgoKCnJhbSAgICB8
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLi4u
CiAgICAgICAgICAgICAgICAgdGV4dCtkYXRhICAgICAgICAgICBic3MgICAKa2VybmVsICAgIHwt
LS0tLS0tLS0tLS0tLS0tLS0tLS18LS0tLS0tLS0tLS0tLS0tLS0tLXwKekltYWdlICAgICAgICAg
ICAgICAgICAgICAgICAgICB8LS0tLS0tLS0tLS18LS0tLS18LS0tLS0tLXwKICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHRleHQrZGF0YSAgIGJzcyAgIHN0YWNrK21hbGxvYwoKV2hl
cmUgInRleHQrZGF0YSIgaXMgYWN0dWFsbHkgc21hbGxlciB0aGFuIHRoZSBpbWFnZSBzaXplIHRo
YXQKd2FzIGxvYWRlZCAtIHRoZSBwYXJ0IG9mIHRoZSBpbWFnZSB0aGF0IHBlcmZvcm1zIHRoZSBy
ZWxvY2F0aW9uCmlzIGRpc2NhcmRlZCAodGhlIGZpcnN0IGNodW5rIG9mIGNvZGUgdXAgdG8gInJl
c3RhcnQiIC0gMjAwCmJ5dGVzLikgIFRoZSBCU1MgaXMgdHlwaWNhbGx5IHNtYWxsZXIgdGhhbiAy
MDAgYnl0ZXMsIHNvIHdlJ3ZlCmJlZW4gYWJsZSB0byBnZXQgYXdheSB3aXRob3V0IGtub3dpbmcg
dGhlIGFjdHVhbCBCU1Mgc2l6ZSBzbwpmYXIuCgoKcmFtICAgIHwtLXwtLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLXwtLS0tLS0tLS0uLi4KICAgICAgIHw8PnwgVEVYVF9P
RkZTRVQKa2VybmVsICAgIHwtLS0tLS0tLS0tLS0tLS0tLS0tLS18LS0tLS0tLS0tLS0tLS0tLS0t
LXwKICAgICAgICAgIHw8LS0tLWVkYXRhX3NpemUtLS0tLT58PC0tLS0tYnNzX3NpemUtLS0tPnwK
ICAgICAgICAgIHw8LS0tLS0tLS0tLS0tLS0ta2VybmVsX3NpemUtLS0tLS0tLS0tLS0tPnwKeklt
YWdlICAgICAgICAgICAgICAgICAgICAgICAgICB8LS0tLS0tLS0tLS18LS0tLS18LS0tLS0tLXwK
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8PC0tLS0tLS1sZW4tLS0tLS0tPnwgKGlu
aXRpYWwpCgkJCQl8PC0tLS0tLS0tLS1sZW4tLS0tLS0tLS0tLS0+fCAoZmluYWwpCgpUaGUgImZp
bmFsIiBsZW4gdmFsdWUgaXMgd2hhdCB0aGUgZGVjb21wcmVzc29yIHByaW50cyBhcyB0aGUgInpJ
bWFnZQpyZXF1aXJlcyIgZGVidWdnaW5nIHZhbHVlLgoKSGVuY2UsIHRoZSBzaXplIHRoYXQgdGhl
IGRlY29tcHJlc3NlZCBrZXJuZWwgcmVxdWlyZXMgaXMga2VybmVsX3NpemUuCgpUaGUgc2l6ZSB0
aGF0IHRoZSBkZWNvbXByZXNzb3IgcmVxdWlyZXMgaXMgZWRhdGFfc2l6ZSArIGxlbihmaW5hbCku
CgpOb3csIGlmIHlvdSBpbnRlbmQgdG8gbG9hZCB0aGUga2VybmVsIHRvIHJhbSArIFRFWFRfT0ZG
U0VUICsgZWRhdGFfc2l6ZQp0aGVuIGl0IGlzbid0IGdvaW5nIHRvIGxvc2UgdGhlIGZpcnN0IDIw
MCBieXRlcyBvZiBjb2RlLCBzbyBhcyB5b3UKY29ycmVjdGx5IHBvaW50IG91dCwgd2UgbmVlZCB0
byBrbm93IHRoZSBCU1Mgc2l6ZS4KCj4gPj4gK3N0cnVjdCBhcm1femltYWdlX3RhZ19kYyB7Cj4g
Pj4gKwlzdHJ1Y3QgdGFnX2hlYWRlciBoZHI7Cj4gPj4gKwl1bmlvbiB7Cj4gPj4gKyNkZWZpbmUg
WklNQUdFX1RBR19ERUNPTVBfU0laRSBBUk1fWklNQUdFX01BR0lDNAo+ID4+ICsJCXN0cnVjdCB6
aW1hZ2VfZGVjb21wX3NpemUgewo+ID4+ICsJCQlfX2xlMzIgYnNzX3NpemU7Cj4gPj4gKwkJCV9f
bGUzMiBzdGFja19zaXplOwo+ID4+ICsJCQlfX2xlMzIgbWFsbG9jX3NpemU7Cj4gPj4gKwkJfSBk
ZWNvbXBfc2l6ZTsKCllvdSBjZXJ0YWlubHkgZG9uJ3QgbmVlZCB0byBrbm93IGFsbCB0aGlzLiAg
QWxsIHlvdSBuZWVkIHRvIGtub3cgaXMKaG93IG11Y2ggc3BhY2UgdGhlIGRlY29tcHJlc3NvciBy
ZXF1aXJlcyBhZnRlciB0aGUgZW5kIG9mIHRoZSBpbWFnZSwKZW5jb21wYXNzaW5nIHRoZSBCU1Mg
c2l6ZSwgc3RhY2sgc2l6ZSBhbmQgbWFsbG9jIHNpemUsIHdoaWNoIGlzIG9uZQp2YWx1ZS4KCi0t
IApSTUsncyBQYXRjaCBzeXN0ZW06IGh0dHBzOi8vd3d3LmFybWxpbnV4Lm9yZy51ay9kZXZlbG9w
ZXIvcGF0Y2hlcy8KRlRUQyBmb3IgMC44bSAoZXN0LiAxNzYybSkgbGluZSBpbiBzdWJ1cmJpYTog
c3luYyBhdCAxMy4xTWJwcyBkb3duIDQyNGticHMgdXAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
