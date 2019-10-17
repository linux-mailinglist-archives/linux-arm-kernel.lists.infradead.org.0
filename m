Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 943B0DB04D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 16:43:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4buhkEehuehQuqm//hnoex6X18o0FCj5frTIyjA9HcI=; b=CXyUCOnv4ut0k4
	N9z2OlnOBdTfWvYBaPyteGQ3IRShw0enNgM/l3EQOMlCQwlkSPljBZi1sWGqlcbET7HqDytHH1Kah
	zt5ZJPsfXig3Xjvz7fwzqn4i4pycY9rp9YfCgd6f6yY7U2m7hC92LKDUPP6l4oYJoqOIlI6rip6t0
	OoS34SjhLkQqN9wz1Lxj1TirfezVqdyNAgh+4qs+sPoQpuA4wVanOFDU2sx1jnt8onXmhG9zLla9/
	xa0Huy6xVkjq5pwEUrAQ4WV0oL76ToNLMnAFKmKhfgiNE9dF3bYiad5vx7F8yKuSKHCavGq3HhbXe
	MQDqBt0RqpCDLJi7glAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL6zo-00073f-Ur; Thu, 17 Oct 2019 14:43:20 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL6ze-00073C-NP
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 14:43:12 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6D79CBA18;
 Thu, 17 Oct 2019 14:43:06 +0000 (UTC)
Message-ID: <acdc7d0ac2f3cb35b43867ef77ef53b7a1dd998c.camel@suse.de>
Subject: Re: [PATCH] soc: actions: owl-sps: include
 <linux/soc/actions/owl-sps.h> for owl_sps_set_pg
From: Andreas =?ISO-8859-1?Q?F=E4rber?= <afaerber@suse.de>
To: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
Date: Thu, 17 Oct 2019 16:43:12 +0200
In-Reply-To: <20191017123007.26335-1-ben.dooks@codethink.co.uk>
References: <20191017123007.26335-1-ben.dooks@codethink.co.uk>
Organization: SUSE Linux GmbH
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_074310_907970_4A0D819A 
X-CRM114-Status: GOOD (  11.88  )
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
Cc: linux-kernel@lists.codethink.co.uk, linux-arm-kernel@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gQmVuLAoKQW0gRG9ubmVyc3RhZywgZGVuIDE3LjEwLjIwMTksIDEzOjMwICswMTAwIHNj
aHJpZWIgQmVuIERvb2tzCihDb2RldGhpbmspOgo+IEluY2x1ZGUgPGxpbnV4L3NvYy9hY3Rpb25z
L293bC1zcHMuaD4gZm9yIG93bF9zcHNfc2V0X3BnCj4gZGVjbGFyYXRpb24gdG8gZml4IHRoZSBm
b2xsb3dpbmcgc3BhcnNlIHdhcm5pbmc6Cj4gCj4gZHJpdmVycy9zb2MvYWN0aW9ucy9vd2wtc3Bz
LWhlbHBlci5jOjE2OjU6IHdhcm5pbmc6IHN5bWJvbAo+ICdvd2xfc3BzX3NldF9wZycgd2FzIG5v
dCBkZWNsYXJlZC4gU2hvdWxkIGl0IGJlIHN0YXRpYz8KPiAKPiBTaWduZWQtb2ZmLWJ5OiBCZW4g
RG9va3MgPGJlbi5kb29rc0Bjb2RldGhpbmsuY28udWs+Cj4gLS0tCj4gQ2M6ICJBbmRyZWFzIEbD
pHJiZXIiIDxhZmFlcmJlckBzdXNlLmRlPgo+IENjOiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1h
bml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPgo+IENjOiBsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKPiAtLS0KPiAgZHJpdmVycy9zb2MvYWN0aW9ucy9vd2wtc3BzLWhl
bHBlci5jIHwgMiArKwo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvc29jL2FjdGlvbnMvb3dsLXNwcy1oZWxwZXIuYwo+IGIvZHJpdmVy
cy9zb2MvYWN0aW9ucy9vd2wtc3BzLWhlbHBlci5jCj4gaW5kZXggMjkxYTIwNmQ2ZjA0Li5mMzVj
ZjNjNmQyM2MgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zb2MvYWN0aW9ucy9vd2wtc3BzLWhlbHBl
ci5jCj4gKysrIGIvZHJpdmVycy9zb2MvYWN0aW9ucy9vd2wtc3BzLWhlbHBlci5jCj4gQEAgLTEx
LDYgKzExLDggQEAKPiAgI2luY2x1ZGUgPGxpbnV4L2RlbGF5Lmg+Cj4gICNpbmNsdWRlIDxsaW51
eC9pby5oPgo+ICAKPiArI2luY2x1ZGUgPGxpbnV4L3NvYy9hY3Rpb25zL293bC1zcHMuaD4KCkFu
eSByZWFzb24gZm9yIHRoZSB3aGl0ZSBsaW5lIGJlZm9yZT8KCkFsc28sIGNvdWxkIHlvdSBleHBs
YWluIHdoeSB3ZSBkaWQgbm90IGdldCB0aGF0IHdhcm5pbmcgZHVyaW5nIGVhcmxpZXIKYnVpbGRz
PyBTaG91bGQgdGhlcmUgYmUgYSBGaXhlcz8KClRoYW5rcywKQW5kcmVhcwoKPiArCj4gICNkZWZp
bmUgT1dMX1NQU19QR19DVEwJMHgwCj4gIAo+ICBpbnQgb3dsX3Nwc19zZXRfcGcodm9pZCBfX2lv
bWVtICpiYXNlLCB1MzIgcHdyX21hc2ssIHUzMiBhY2tfbWFzaywKPiBib29sIGVuYWJsZSkKLS0g
ClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSApNYXhmZWxkc3RyLiA1LCA5MDQw
OSBOw7xybmJlcmcsIEdlcm1hbnkKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlcgpIUkIgMzY4MDkgKEFH
IE7DvHJuYmVyZykKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
