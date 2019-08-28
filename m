Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D609FF14
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 12:05:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7+cYMKocsAMLGHStHXIG0VDv9hP/4CYxgRpwkq4f9ks=; b=Rz6E7NZb4CA455
	f9MdZ7ctpqqTGrgFbSdesdZEvW2tPhpKziMoJIViv1vgaIg3P0E/KXlbC87vWXKZsjoDbDqeqnkY/
	WsgMvcXwakukebcUh/5ECc2gRJz1UR8i/M+iURNg+tTMphm7le9PpAMqw2rU8eRB/moixueqx73bp
	SbQufswrUhQcDbUCo5jSKuqmsIT9Thduy7xbThOS6AOS3NfqdBsj2TYawQceBIDspGkMAFuHZ6FiG
	Si/5Bo3k5NKD5BDcdSGBLd14/NogvwV5Nappl1Mrt20SGU4eB6XPODxy9HlMEsNAOeDBYIkoJC3qf
	roeAlXbWEVineYabXf8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2up1-0001y8-QV; Wed, 28 Aug 2019 10:05:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2uon-0001xf-Qk
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 10:04:47 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 428002054F;
 Wed, 28 Aug 2019 10:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566986685;
 bh=EOZSF17euHTaHghj8+T1A1A/zZSpaxtUfc0WNa0XTGk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JoTsnKAfg8+4B7yD0zd8EXxkbu5yZQZkyBIswfZoYwVcOZLQrAunxXMwbzhSKaURP
 ERu7xVkA3PM1kwsqNJe1oM+2G0IcOl1WSKY30d0yxzo2aOJBeSP5TaXR3m5Du0kgcl
 /SvJLKadPlQfwe5DaqozKT5nU9hd1C3EktND+71o=
Date: Wed, 28 Aug 2019 11:04:41 +0100
From: Will Deacon <will@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH V8 2/3] Documentation: admin-guide: perf: add i.MX8 ddr
 pmu user doc
Message-ID: <20190828100440.melcuvu6hz5mrm3h@willie-the-truck>
References: <20190828030305.7190-1-qiangqing.zhang@nxp.com>
 <20190828030305.7190-2-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828030305.7190-2-qiangqing.zhang@nxp.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_030445_889280_26018D0B 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Frank Li <frank.li@nxp.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBBdWcgMjgsIDIwMTkgYXQgMDM6MDU6MzlBTSArMDAwMCwgSm9ha2ltIFpoYW5nIHdy
b3RlOgo+IEFkZCBpLk1YOCBkZHIgcG11IHVzZXIgZG9jLgo+IAo+IENoYW5nZUxvZzoKPiBWMSAt
PiBWNDoKPiAJKiBuZXcgYWRkIGluIFY0Lgo+IFY0IC0+IFY1Ogo+IAkqIG5vIGNoYW5nZS4KPiBW
NSAtPiBWNjoKPiAJKiBjaGFuZ2UgdGhlIGV2ZW50IG5hbWUKPiBWNiAtPiBWNzoKPiAJKiBubyBj
aGFuZ2UuCj4gVjcgLT4gVjg6Cj4gCSogaW1wcm92ZSB0aGUgZG9jLCBhZGQgbW9yZSBkZXRhaWxz
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEpvYWtpbSBaaGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5j
b20+Cj4gLS0tCj4gIERvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUvcGVyZi9pbXgtZGRyLnJzdCB8
IDUxICsrKysrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDUxIGluc2VydGlv
bnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUvcGVy
Zi9pbXgtZGRyLnJzdAo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2FkbWluLWd1aWRl
L3BlcmYvaW14LWRkci5yc3QgYi9Eb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL3BlcmYvaW14LWRk
ci5yc3QKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uNDM4ZGUz
YmU2NjdiCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUv
cGVyZi9pbXgtZGRyLnJzdAo+IEBAIC0wLDAgKzEsNTEgQEAKPiArPT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPiArRnJlZXNjYWxlIGkuTVg4IERE
UiBQZXJmb3JtYW5jZSBNb25pdG9yaW5nIFVuaXQgKFBNVSkKPiArPT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPiArCj4gK1RoZXJlIGFyZSBubyBw
ZXJmb3JtYW5jZSBjb3VudGVycyBpbnNpZGUgdGhlIERSQU0gY29udHJvbGxlciwgc28gcGVyZm9y
bWFuY2UKPiArc2lnbmFscyBhcmUgYnJvdWdodCBvdXQgdG8gdGhlIGVkZ2Ugb2YgdGhlIGNvbnRy
b2xsZXIgd2hlcmUgYSBzZXQgb2YgNCB4IDMyIGJpdAo+ICtjb3VudGVycyBpcyBpbXBsZW1lbnRl
ZC4gVGhpcyBpcyBjb250cm9sbGVkIGJ5IHRoZSBQZXJmb3JtYW5jZSBsb2cgb24gcGFyYW1ldGVy
CgpJIGRvbid0IHVuZGVyc3RhbmQgd2hhdCB5b3UgbWVhbiBieSAiUGVyZm9ybWFuY2UgbG9nIG9u
IHBhcmFtZXRlciIuCgo+ICt3aGljaCBjYXVzZXMgYSBsYXJnZSBudW1iZXIgb2YgUEVSRiBzaWdu
YWxzIHRvIGJlIGdlbmVyYXRlZC4KPiArCj4gK1NlbGVjdGlvbiBvZiB0aGUgdmFsdWUgZm9yIGVh
Y2ggY291bnRlciBpcyBkb25lIHZpYSB0aGUgY29uZmlnIHJlZ2lzdGllcnMuIFRoZXJlCgpyZWdp
c3RlcnMKCj4gK2lzIG9uZSByZWdpc3RlciBmb3IgZWFjaCBjb3VudGVyLiBDb3VudGVyIDAgaXMg
c3BlY2lhbCBpbiB0aGF0IGl0IGFsd2F5cyBjb3VudHMKPiAr4oCcdGltZeKAnSBhbmQgd2hlbiBl
eHBpcmVkIGNhdXNlcyBhIGxvY2sgb24gaXRzZWxmIGFuZCB0aGUgb3RoZXIgY291bnRlcnMgYW5k
IGFuCj4gK2ludGVycnVwdCBpZSBlbmFibGUgb2YgY291bnRlciAwIGlzIGEgZ2xvYmFsIGZ1bmN0
aW9uLgoKYnkgImNhdXNlcyBhIGxvY2sgb24gaXRzZWxmIGFuZCB0aGUgb3RoZXIgY291bnRlcnMi
IGRvIHlvdSBtZWFuIHRoYXQgQ291bnRlcgowIGNvdW50cyBkb3duIGFuZCwgd2hlbiBpdCBoaXRz
IDAsIGFsbCB0aGUgY291bnRlcnMgc3RvcCBjb3VudGluZz8KCldpbGwKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
