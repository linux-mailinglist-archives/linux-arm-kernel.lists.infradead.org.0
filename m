Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 505311FBCA8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 19:19:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pWxMbLy7/ry6rjaIYwtpnSNFuUxBq9yQp8/85vLPyP0=; b=BKyvHT/ZM3kfDW
	BiPBwHf2DhYFYzkCvqgQukKVNH+xN2V31y3nV4G5Gy7m/ZBfqZ2EMAdX+t+ula+qq9pCfX3xQ3+F2
	qfJVkaZScT9sqXs3bgktt6oxWZ+LNUQRqStabGmcwLkOUfioGCl+d0zd8sJ+7lkxMPNpkoF2A2pao
	Z8kPzxsgM3X1h3SL3VvgcgH4AVCrK6O6FUXinJfln+hPYp2IP4aHnWPBvJB9D/Wyimf69GnbPL+xc
	VHp+Pdxu7ua3kBXVS+4QRXPb+tUsXITq1UmNGIQ0dSOIATFQcD6Pf+Yx/JfvU0pQke+az9x/NyMHp
	rogl30H4x05wpcGX9iew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlFFN-0008DE-PB; Tue, 16 Jun 2020 17:19:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlFFD-0008Cg-Uz
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 17:19:33 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B3D4420B1F;
 Tue, 16 Jun 2020 17:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592327971;
 bh=gRgX60qUz3xF66Epo1pYKge72Fjcdkk6WVAu0es1qPY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dVXj9EiGBhatI5TfBWI6Q84fkGyB5Z+SzVHSfQlGJWiJkzz9XFY/uZlv6+cT8cPfD
 ogDXmlrbwIGYi2fQkbG8D3gxmaanwLCIEzi81kjqscx4bmCnX0a9UOEf/OmA8Sw4Qj
 qWgqY0aZApGGjZJik01a64Xo+nNSL3jAHlkgxuo0=
Date: Tue, 16 Jun 2020 18:19:27 +0100
From: Will Deacon <will@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH 2/2] arm64/sve: Eliminate data races on sve_default_vl
Message-ID: <20200616171926.GA2129@willie-the-truck>
References: <1591808590-20210-1-git-send-email-Dave.Martin@arm.com>
 <1591808590-20210-3-git-send-email-Dave.Martin@arm.com>
 <20200616131808.GA1040@lca.pw>
 <20200616150451.GA1941@willie-the-truck>
 <20200616161704.GN25945@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616161704.GN25945@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_101932_127707_174C90D5 
X-CRM114-Status: GOOD (  21.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Qian Cai <cai@lca.pw>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdW4gMTYsIDIwMjAgYXQgMDU6MTc6MDRQTSArMDEwMCwgRGF2ZSBNYXJ0aW4gd3Jv
dGU6Cj4gT24gVHVlLCBKdW4gMTYsIDIwMjAgYXQgMDQ6MDQ6NTFQTSArMDEwMCwgV2lsbCBEZWFj
b24gd3JvdGU6Cj4gPiBPbiBUdWUsIEp1biAxNiwgMjAyMCBhdCAwOToxODowOEFNIC0wNDAwLCBR
aWFuIENhaSB3cm90ZToKPiA+ID4gT24gV2VkLCBKdW4gMTAsIDIwMjAgYXQgMDY6MDM6MTBQTSAr
MDEwMCwgRGF2ZSBNYXJ0aW4gd3JvdGU6Cj4gPiA+ID4gc3ZlX2RlZmF1bHRfdmwgY2FuIGJlIG1v
ZGlmaWVkIHZpYSB0aGUgL3Byb2Mvc3lzL2FiaS9zdmVfZGVmYXVsdF92bAo+ID4gPiA+IHN5c2N0
bCBjb25jdXJyZW50bHkgd2l0aCB1c2UsIGFuZCBtb2RpZmllZCBjb25jdXJyZW50bHkgYnkgbXVs
dGlwbGUKPiA+ID4gPiB0aHJlYWRzLgo+ID4gPiA+IAo+ID4gPiA+IEFkZGluZyBhIGxvY2sgZm9y
IHRoaXMgc2VlbXMgb3ZlcmtpbGwsIGFuZCBJIGRvbid0IHdhbnQgdG8gdGhpbmsgYW55Cj4gPiA+
ID4gbW9yZSB0aGFuIG5lY2Vzc2FyeSwgc28ganVzdCBkZWZpbmUgd3JhcHBlcnMgdXNpbmcgUkVB
RF9PTkNFKCkvCj4gPiA+ID4gV1JJVEVfT05DRSgpLgo+ID4gPiA+IAo+ID4gPiA+IFRoaXMgd2ls
bCBhdm9pZCB0aGUgcG9zc2liaWxpdHkgb2YgdG9ybiBhY2Nlc3NlcyBhbmQgcmVwZWF0ZWQgbG9h
ZHMKPiA+ID4gPiBhbmQgc3RvcmVzLgo+ID4gPiA+IAo+ID4gPiA+IFRoZXJlJ3Mgbm8gZXZpZGVu
Y2UgeWV0IHRoYXQgdGhpcyBpcyBnb2luZyB3cm9uZyBpbiBwcmFjdGljZTogdGhpcwo+ID4gPiA+
IGlzIGp1c3QgaHlnaWVuZS4gIEZvciBnZW5lcmljIHN5c2N0bCB1c2VycywgaXQgd291bGQgYmUg
YmV0dGVyIHRvCj4gPiA+ID4gYnVpbGQgdGhpcyBraW5kIG9mIHRoaW5nIGludG8gdGhlIHN5c2N0
bCBjb21tb24gY29kZSBzb21laG93Lgo+ID4gPiA+IAo+ID4gPiA+IFJlcG9ydGVkLWJ5OiBXaWxs
IERlYWNvbiA8d2lsbEBrZXJuZWwub3JnPgo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IERhdmUgTWFy
dGluIDxEYXZlLk1hcnRpbkBhcm0uY29tPgo+ID4gPiAKPiA+ID4gV2hpbGUgdGhpcyBvcmlnaW5h
bCBwYXRjaCBsb29rcyBjb3JyZWN0LCBsaW51eC1uZXh0IGhhcyB0aGlzLAo+ID4gPiAKPiA+ID4g
W3dpbGw6IG1vdmUgc2V0X3N2ZV9kZWZhdWx0X3ZsKCkgaW5zaWRlICNpZmRlZiB0byBzcXVhc2gg
YWxsbm9jb25maWcgd2FybmluZ10KPiA+ID4gCj4gPiA+IDFlNTcwZjUxMmNiZCAoImFybTY0L3N2
ZTogRWxpbWluYXRlIGRhdGEgcmFjZXMgb24gc3ZlX2RlZmF1bHRfdmwiKQo+ID4gPiAKPiA+ID4g
d2hpY2ggY2F1c2VzIGFuIGVycm9yIHdpdGggQ09ORklHX0FSTTY0X1NWRT1uLAo+ID4gPiAKPiA+
ID4gVGhpcyAuY29uZmlnLAo+ID4gPiBodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20v
Y2FpbGNhL2xpbnV4LW1tL21hc3Rlci9hcm02NC5jb25maWcKPiA+ID4gCj4gPiA+IGFyY2gvYXJt
NjQva2VybmVsL2Zwc2ltZC5jOiBJbiBmdW5jdGlvbiDigJhzdmVfcHJvY19kb19kZWZhdWx0X3Zs
4oCZOgo+ID4gPiBhcmNoL2FybTY0L2tlcm5lbC9mcHNpbWQuYzozNzU6MjogZXJyb3I6IGltcGxp
Y2l0IGRlY2xhcmF0aW9uIG9mCj4gPiA+IGZ1bmN0aW9uIOKAmHNldF9zdmVfZGVmYXVsdF92bOKA
mTsgZGlkIHlvdSBtZWFuIOKAmGdldF9zdmVfZGVmYXVsdF92bOKAmT8KPiA+ID4gWy1XZXJyb3I9
aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dCj4gPiA+ICAgc2V0X3N2ZV9kZWZhdWx0X3Zs
KGZpbmRfc3VwcG9ydGVkX3ZlY3Rvcl9sZW5ndGgodmwpKTsKPiA+ID4gICBefn5+fn5+fn5+fn5+
fn5+fn4KPiA+ID4gICBnZXRfc3ZlX2RlZmF1bHRfdmwKPiA+IAo+ID4gVGhhbmtzLCBJJ2xsIHRh
a2UgYSBsb29rLgo+IAo+IEkgaGF2ZW4ndCBsb29rZWQgaW4gZGV0YWlsIGF0IHRoaXM7IEkgZ3Vl
c3MgdGhlIG5ldyBoZWxwZXJzIGp1c3QKPiBuZWVkIHRvIGJlIG1hbnVhbGx5IHBsYWNlZCBpbiB0
aGUgcmlnaHQgI2lmZGVmIGJsb2NrLgoKVGhhdCB3YXMgd2hhdCBJIGRpZCB3aGVuIEkgbWVyZ2Vk
IHRoZSBwYXRjaCwgYnV0IHRoYXQgYnJva2UgY29uZmlndXJhdGlvbnMKd2hlcmUgU1lTQ1RMIGlz
IGVuYWJsZWQgYnV0IFNWRSBpcyBkaXNhYmxlZC4gSSd2ZSBlbmRlZCB1cCB3aXRoIHRoaXMKZGlm
ZiBvbiB0b3Agb2YgZm9yLW5leHQvZml4ZXMuCgpXaWxsCgotLS0+OAoKZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQva2VybmVsL2Zwc2ltZC5jIGIvYXJjaC9hcm02NC9rZXJuZWwvZnBzaW1kLmMKaW5k
ZXggZDllZWU5MTk0NTExLi41NWM4ZjNlYzY3MDUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQva2Vy
bmVsL2Zwc2ltZC5jCisrKyBiL2FyY2gvYXJtNjQva2VybmVsL2Zwc2ltZC5jCkBAIC0zNDksNyAr
MzQ5LDcgQEAgc3RhdGljIHVuc2lnbmVkIGludCBmaW5kX3N1cHBvcnRlZF92ZWN0b3JfbGVuZ3Ro
KHVuc2lnbmVkIGludCB2bCkKIAlyZXR1cm4gc3ZlX3ZsX2Zyb21fdnEoX19iaXRfdG9fdnEoYml0
KSk7CiB9CiAKLSNpZmRlZiBDT05GSUdfU1lTQ1RMCisjaWYgZGVmaW5lZChDT05GSUdfQVJNNjRf
U1ZFKSAmJiBkZWZpbmVkKENPTkZJR19TWVNDVEwpCiAKIHN0YXRpYyBpbnQgc3ZlX3Byb2NfZG9f
ZGVmYXVsdF92bChzdHJ1Y3QgY3RsX3RhYmxlICp0YWJsZSwgaW50IHdyaXRlLAogCQkJCSAgdm9p
ZCAqYnVmZmVyLCBzaXplX3QgKmxlbnAsIGxvZmZfdCAqcHBvcykKQEAgLTM5NCw5ICszOTQsOSBA
QCBzdGF0aWMgaW50IF9faW5pdCBzdmVfc3lzY3RsX2luaXQodm9pZCkKIAlyZXR1cm4gMDsKIH0K
IAotI2Vsc2UgLyogISBDT05GSUdfU1lTQ1RMICovCisjZWxzZSAvKiAhIChDT05GSUdfQVJNNjRf
U1ZFICYmIENPTkZJR19TWVNDVEwpICovCiBzdGF0aWMgaW50IF9faW5pdCBzdmVfc3lzY3RsX2lu
aXQodm9pZCkgeyByZXR1cm4gMDsgfQotI2VuZGlmIC8qICEgQ09ORklHX1NZU0NUTCAqLworI2Vu
ZGlmIC8qICEgKENPTkZJR19BUk02NF9TVkUgJiYgQ09ORklHX1NZU0NUTCkgKi8KIAogI2RlZmlu
ZSBaUkVHKHN2ZV9zdGF0ZSwgdnEsIG4pICgoY2hhciAqKShzdmVfc3RhdGUpICsJCVwKIAkoU1ZF
X1NJR19aUkVHX09GRlNFVCh2cSwgbikgLSBTVkVfU0lHX1JFR1NfT0ZGU0VUKSkKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
