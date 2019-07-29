Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E317890E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 12:01:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qxEoOAFYrfe2OGrokFJxAA7BeH8BQNfJCEMU4a2vV4M=; b=CcQIOY6iXtPmUu
	sSE3rAUsuzeqdzB7plF9CqZmPpkQBqf2UuH9SoYwFvpHTfg2LmGU7a2W+p/NaaV/qTaRmOms+FQXk
	R1pnwxjiQOs1EeRbqIPEMz4X9RyzaCmVO/SDcIAxYL4JprRF/GEIj3ZBDSj7mdiyrnZVzglZOeF10
	sAGjGzzVuWAg2rvgQKfj3pkCLAZkPY9CFGtzLijJdfknmiKrRroyYRJc+zK7Ex8sc1pyoVXRAGY6S
	poJEz/f6XxkdEGrM/4F1BDK1lAUKeDfZ1UFY9KMMjgiTTL9MvNLpxYGwb0EIg0Jyt/+VQAyyErOoL
	dzL+rPnOOP1jRl8M03UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs2Sg-0004Ll-GA; Mon, 29 Jul 2019 10:00:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs2SV-0004LN-Hs
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 10:00:48 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 40C2A206DD;
 Mon, 29 Jul 2019 10:00:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564394447;
 bh=tjmolPTc29GDDlVhstCNDA965qRQR0mrcfv5TkVOaFI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FsDvFPrF529TTN8MIbJOaN82wViv22NBjZWqnAsx+Bh45mXqyaWBJkJi7TVimrTyL
 lgQVUnE36Use4y1D19Q2hwjtIa4r13QaMmQHwLUcWU7RIWeqsSw3/KEHVw/8IJIm9o
 vWJ0CWp9c9GoI89K3RdNZkATAq0INKkD/PrHAry4=
Date: Mon, 29 Jul 2019 11:00:43 +0100
From: Will Deacon <will@kernel.org>
To: Matteo Croce <mcroce@redhat.com>
Subject: Re: [PATCH] arm64: mark expected switch fall-through
Message-ID: <20190729100043.keo3kfsbgbbcthml@willie-the-truck>
References: <20190728230310.5924-1-mcroce@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190728230310.5924-1-mcroce@redhat.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_030047_611770_CD42BE12 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdWwgMjksIDIwMTkgYXQgMDE6MDM6MTBBTSArMDIwMCwgTWF0dGVvIENyb2NlIHdy
b3RlOgo+IE1vdmUgdGhlICJmYWxsdGhyb3VnaCIgY29tbWVudCBqdXN0IGJlY2F1c2UgdGhlIGNh
c2Uga2V5d29yZCwKPiBmaXhlcyB0aGUgZm9sbG93aW5nIHdhcm5pbmc6Cj4gCj4gSW4gZmlsZSBp
bmNsdWRlZCBmcm9tIC4vaW5jbHVkZS9saW51eC9rZXJuZWwuaDoxNSwKPiAgICAgICAgICAgICAg
ICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L2xpc3QuaDo5LAo+ICAgICAgICAgICAgICAgICAgZnJv
bSAuL2luY2x1ZGUvbGludXgva29iamVjdC5oOjE5LAo+ICAgICAgICAgICAgICAgICAgZnJvbSAu
L2luY2x1ZGUvbGludXgvb2YuaDoxNywKPiAgICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRl
L2xpbnV4L2lycWRvbWFpbi5oOjM1LAo+ICAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUv
bGludXgvYWNwaS5oOjEzLAo+ICAgICAgICAgICAgICAgICAgZnJvbSBhcmNoL2FybTY0L2tlcm5l
bC9zbXAuYzo5Ogo+IGFyY2gvYXJtNjQva2VybmVsL3NtcC5jOiBJbiBmdW5jdGlvbiDigJhfX2Nw
dV91cOKAmToKPiAuL2luY2x1ZGUvbGludXgvcHJpbnRrLmg6MzAyOjI6IHdhcm5pbmc6IHRoaXMg
c3RhdGVtZW50IG1heSBmYWxsIHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQo+ICAg
cHJpbnRrKEtFUk5fQ1JJVCBwcl9mbXQoZm10KSwgIyNfX1ZBX0FSR1NfXykKPiAgIF5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gYXJjaC9hcm02NC9rZXJuZWwv
c21wLmM6MTU2OjQ6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhwcl9jcml04oCZCj4g
ICAgIHByX2NyaXQoIkNQVSV1OiBtYXkgbm90IGhhdmUgc2h1dCBkb3duIGNsZWFubHlcbiIsIGNw
dSk7Cj4gICAgIF5+fn5+fn4KPiBhcmNoL2FybTY0L2tlcm5lbC9zbXAuYzoxNTc6Mzogbm90ZTog
aGVyZQo+ICAgIGNhc2UgQ1BVX1NUVUNLX0lOX0tFUk5FTDoKPiAgICBefn5+Cj4gCj4gU2lnbmVk
LW9mZi1ieTogTWF0dGVvIENyb2NlIDxtY3JvY2VAcmVkaGF0LmNvbT4KPiAtLS0KPiAgYXJjaC9h
cm02NC9rZXJuZWwvc21wLmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQoKQWxyZWFkeSBmaXhlZCB2aWEgWzFdLiBQbGVhc2UgY2FuIHlvdSBw
ZW9wbGUgd29yayB0b2dldGhlcj8KCldpbGwKClsxXSBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9waXBlcm1haWwvbGludXgtYXJtLWtlcm5lbC8yMDE5LUp1bHkvNjY4OTM0Lmh0bWwKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
