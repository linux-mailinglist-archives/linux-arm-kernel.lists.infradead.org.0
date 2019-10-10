Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78AF8D2E84
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 18:23:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hmykLHUPfE5hzr4bCVZtDwVS3Pk2muHywRDGrt7i65U=; b=Wns9PSbDNJ2ppH
	2TbqgWqA+F6OrTm4NzSAc0bU+MbTxsbvledTGWo3eT0+p7m7wgx7Z07fw/pQuG+N/FidMSz6lfr8z
	e6ZeArx8eV4NMBZPgdUMxJxgVusjPdb0N+rPtWG2GUPc9thKREx3yj0fkFZcVgAXRaC4mxCagrh1U
	b6LfMGbdrlgq/u4vsERkzdOcTdyhXJ1k1ONb/3TkesnTiS3pkZjYjD24jGlM31Xcn+PXJH3+/yiA6
	tEzKU6uYeUL9GwOzQo7oX2n8jjCaLtV5PKc3cw5Gc0QftzAm7uydW8uZBghFlIbbLEcYy49N9GFFK
	E/ULdYJSkWwDfAQ5omGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIbDy-0001dt-Ry; Thu, 10 Oct 2019 16:23:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIbDp-0001cV-0N
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 16:23:26 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D989B214E0;
 Thu, 10 Oct 2019 16:23:23 +0000 (UTC)
Date: Thu, 10 Oct 2019 12:23:21 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v4 4/8] recordmcount: Rewrite error/success handling
Message-ID: <20191010122321.7329329f@gandalf.local.home>
In-Reply-To: <20191009152217.whklst5vwrwvsjc4@pengutronix.de>
References: <cover.1564596289.git.mhelsley@vmware.com>
 <8ba8633d4afe444931f363c8d924bf9565b89a86.1564596289.git.mhelsley@vmware.com>
 <20191009104626.f3hy5dcehdfagxto@pengutronix.de>
 <20191009110538.5909fec6@gandalf.local.home>
 <20191009152217.whklst5vwrwvsjc4@pengutronix.de>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_092325_090121_B1634C65 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>, kernel@pengutronix.de,
 Matt Helsley <mhelsley@vmware.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCA5IE9jdCAyMDE5IDE3OjIyOjE4ICswMjAwClV3ZSBLbGVpbmUtS8O2bmlnIDx1Lmts
ZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+IHdyb3RlOgoKPiA+IGRpZmYgLS1naXQgYS9zY3Jp
cHRzL3JlY29yZG1jb3VudC5oIGIvc2NyaXB0cy9yZWNvcmRtY291bnQuaAo+ID4gaW5kZXggMzc5
NmViMzdmYjEyLi42ZGJlYzQ2Yjc3MDMgMTAwNjQ0Cj4gPiAtLS0gYS9zY3JpcHRzL3JlY29yZG1j
b3VudC5oCj4gPiArKysgYi9zY3JpcHRzL3JlY29yZG1jb3VudC5oCj4gPiBAQCAtMzg5LDExICsz
ODksOCBAQCBzdGF0aWMgaW50IG5vcF9tY291bnQoRWxmX1NoZHIgY29uc3QgKmNvbnN0IHJlbGhk
ciwKPiA+ICAJCQltY291bnRzeW0gPSBnZXRfbWNvdW50c3ltKHN5bTAsIHJlbHAsIHN0cjApOwo+
ID4gIAo+ID4gIAkJaWYgKG1jb3VudHN5bSA9PSBFbGZfcl9zeW0ocmVscCkgJiYgIWlzX2Zha2Vf
bWNvdW50KHJlbHApKSB7Cj4gPiAtCQkJaWYgKG1ha2Vfbm9wKSB7Cj4gPiArCQkJaWYgKG1ha2Vf
bm9wKQo+ID4gIAkJCQlyZXQgPSBtYWtlX25vcCgodm9pZCAqKWVoZHIsIF93KHNoZHItPnNoX29m
ZnNldCkgKyBfdyhyZWxwLT5yX29mZnNldCkpOwo+ID4gLQkJCQlpZiAocmV0IDwgMCkKPiA+IC0J
CQkJCXJldHVybiAtMTsKPiA+IC0JCQl9ICAKPiAKPiBZZXMsIHRoaXMgcGF0Y2ggZml4ZXMgYnVp
bGRpbmcgZm9yIG1lLgoKTWF5IEkgYWRkIHRvIG15IHBhdGNoOgoKUmVwb3J0ZWQtYnk6IFV3ZSBL
bGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+ClRlc3RlZC1ieTog
VXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KCj8KCi0t
IFN0ZXZlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
