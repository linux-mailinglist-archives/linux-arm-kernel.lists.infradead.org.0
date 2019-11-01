Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56433EC733
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 18:03:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:References:
	In-Reply-To:Date:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KwmSpRAHVPUhp+OQjfcc+jOuZTzkAZvmCtuaDn8n9wY=; b=L9OjkG9H06iUPy
	EnJ2n2l0t+aya7LoY849u503WodRH0IYulyDRv6kHJBE+VKRL3LfzR81tZc12gybi/Cd2XzxCqj2t
	je0otEowPjMZBUMF1JlK6Uh6iG+bY3lrsdTehvp3MyKOEn0xDucu8DK6ip4QVG/BZ7P59BrwkS24F
	VjEeklxQ+gDgfONAfcNWl2e0c3UFmCAbWu/rL+mU3lhyGF/SYi4CWuU7AUpEit5PVc38yVhFoeNCS
	7iS94eqb3b5RQraBj6WatbM5RPRHDWiIqgH2q5L1Kz0x1i9dlkKVTYA1RGB5FiEI6+jlGQtNItPKi
	vlmgymuKS7Thj4lWct8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQaL1-0000E6-I6; Fri, 01 Nov 2019 17:03:51 +0000
Received: from baldur.buserror.net ([165.227.176.147])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQaKv-0000CR-6z
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 17:03:46 +0000
Received: from [2601:449:8480:af0:12bf:48ff:fe84:c9a0]
 by baldur.buserror.net with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <oss@buserror.net>)
 id 1iQaGe-0005Iv-Bg; Fri, 01 Nov 2019 11:59:20 -0500
Message-ID: <cecd8cd067fe71f7de7db9e912f10244a44f530b.camel@buserror.net>
From: Scott Wood <oss@buserror.net>
To: Christophe Leroy <christophe.leroy@c-s.fr>, Rasmus Villemoes
 <linux@rasmusvillemoes.dk>, Qiang Zhao <qiang.zhao@nxp.com>, Li Yang
 <leoyang.li@nxp.com>
Date: Fri, 01 Nov 2019 11:59:19 -0500
In-Reply-To: <5071118d-2008-7725-a6cd-ce14b49dfa20@c-s.fr>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-27-linux@rasmusvillemoes.dk>
 <5071118d-2008-7725-a6cd-ce14b49dfa20@c-s.fr>
Organization: Red Hat
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2601:449:8480:af0:12bf:48ff:fe84:c9a0
X-SA-Exim-Rcpt-To: christophe.leroy@c-s.fr, linux@rasmusvillemoes.dk,
 qiang.zhao@nxp.com, leoyang.li@nxp.com, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: oss@buserror.net
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on baldur.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  -15 BAYES_00 BODY: Bayes spam probability is 0 to 1%
 *      [score: 0.0000]
 * -1.5 GREYLIST_ISWHITE The incoming server has been whitelisted for
 *      this recipient and sender
Subject: Re: [PATCH v3 26/36] soc: fsl: move cpm.h from powerpc/include/asm
 to include/soc/fsl
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on baldur.buserror.net)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_100345_317861_81A7E4BA 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAyMDE5LTExLTAxIGF0IDE3OjE4ICswMTAwLCBDaHJpc3RvcGhlIExlcm95IHdyb3Rl
Ogo+IAo+IExlIDAxLzExLzIwMTkgw6AgMTM6NDIsIFJhc211cyBWaWxsZW1vZXMgYSDDqWNyaXQg
Ogo+ID4gU29tZSBkcml2ZXJzLCBlLmcuIHVjY191YXJ0LCBuZWVkIGRlZmluaXRpb25zIGZyb20g
Y3BtLmguIEluIG9yZGVyIHRvCj4gPiBhbGxvdyBidWlsZGluZyB0aG9zZSBkcml2ZXJzIGZvciBu
b24tcHBjIGJhc2VkIFNPQ3MsIG1vdmUgdGhlIGhlYWRlcgo+ID4gdG8gaW5jbHVkZS9zb2MvZnNs
LiBGb3Igbm93LCBsZWF2ZSBhIHRyaXZpYWwgd3JhcHBlciBhdCB0aGUgb2xkCj4gPiBsb2NhdGlv
biBzbyBkcml2ZXJzIGNhbiBiZSB1cGRhdGVkIG9uZSBieSBvbmUuCj4gCj4gSSdtIG5vdCBzdXJl
IHRoYXQncyB0aGUgY29ycmVjdCB3YXkgdG8gZ28uCj4gCj4gQXMgZmFyIGFzIEkga25vdywgQ1BN
IGlzIHNwZWNpZmljIHRvIHBvd2VycGMgKG9yIG1heWJlIGNvbW1vbiB0byBzb21lIAo+IG1vdG9y
b2xhIDY4MDAwKS4gU28gb25seSBwb3dlcnBjIHNwZWNpZmljIGRyaXZlcnMgc2hvdWxkIG5lZWQg
aXQuCj4gCj4gSWYgY3BtLmggaW5jbHVkZXMgaXRlbXMgdGhhdCBhcmUgbmVlZGVkIGZvciBRRSwg
dGhvc2UgaXRlbXMgc2hvdWxkIGdvIGluIAo+IGFub3RoZXIgLmgKPiAKPiBPZiBjb3Vyc2UsIGl0
IGRvZXNuJ3QgbWVhbiB3ZSBjYW4ndCBtb3ZlIGNwbS5oIGluIGluY2x1ZGUvc29jL2ZzbCwgYnV0
IAo+IGFueXdheSBvbmx5IHBsYXRmb3JtcyBoYXZpbmcgQ1BNMSBvciBDUE0yIHNob3VsZCBpbmNs
dWRlIGl0LgoKUUUgaXMgYmFzaWNhbGx5IENQTTMgc28gaXQncyBub3Qgc3VycHJpc2luZyB0aGF0
IGNwbS5oIHdvdWxkIGJlIG5lZWRlZC4gIEkKd29uZGVyIGhvdyBtdWNoIGxlc3MgdW5uZWNlc3Nh
cnkgY29kZSBkdXBsaWNhdGlvbiB0aGVyZSB3b3VsZCBoYXZlIGJlZW4gaWYKbWFya2V0aW5nIGhh
ZG4ndCBkZWNpZGVkIHRvIGNoYW5nZSB0aGUgbmFtZS4KCi1TY290dAoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
