Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E10E1FB62C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 17:31:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0h3qQrvyhGU8mRiPgATOiWxoQaKywL82Rd5xhtLsVsQ=; b=C1g6UI5eTJwkGr
	6MzcjyXicYnUNzSt8TsEKt1wLepEQJI/+XUnInO+eRzvN24OVhx8iCRh+0iK8R9DcClA+iFIA6KvC
	Yap488xzNtl2odDcFrn1Vl41qt3Whc1L2Q7XM1TE4rUHbi45tETNtfcc0YkNW+Puw2Eh7PgWyaPOh
	6UUQV2cS8DxhrtPpmcwfNXBBK+aF6jcCCAMTm3PoRMw9oXxEjFvwPszgHyuxjWTPPpC3aj/EaUzze
	3a4pI3ivTC7lR8KOjebA2PeqQ9uB6NOi+WZJKczT7IhNyNqzGX/12IKQU1j9U/Zsm6WmNKlguB0wu
	ewTfTbwWycz7ee7TlqIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlDYF-0000Cp-Es; Tue, 16 Jun 2020 15:31:03 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlDY4-0000AS-LP
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 15:30:54 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 2F8D88123;
 Tue, 16 Jun 2020 15:31:37 +0000 (UTC)
Date: Tue, 16 Jun 2020 08:30:42 -0700
From: Tony Lindgren <tony@atomide.com>
To: Tomi Valkeinen <tomi.valkeinen@ti.com>
Subject: Re: [PATCH 1/5] drm/omap: Fix suspend resume regression after
 platform data removal
Message-ID: <20200616153042.GZ37466@atomide.com>
References: <20200531193941.13179-1-tony@atomide.com>
 <20200531193941.13179-2-tony@atomide.com>
 <16ba1808-5c7f-573d-8dd0-c80cac2f476e@ti.com>
 <20200603140639.GG37466@atomide.com>
 <47e286dd-f87a-4440-5bde-1f7b53e8b672@ti.com>
 <20200609151943.GL37466@atomide.com>
 <9ed70121-2a53-d2b3-051a-88eb83e6c53f@ti.com>
 <d03dd04f-6f2c-25ba-fe1f-d5fc0dfb5c68@ti.com>
 <592501c9-2d94-b266-ae76-e383d3bffa29@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <592501c9-2d94-b266-ae76-e383d3bffa29@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_083052_750035_FBE8A783 
X-CRM114-Status: UNSURE (   6.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, "Andrew F . Davis" <afd@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Keerthy <j-keerthy@ti.com>, Suman Anna <s-anna@ti.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KiBUb21pIFZhbGtlaW5lbiA8dG9taS52YWxrZWluZW5AdGkuY29tPiBbMjAwNjE2IDEzOjAyXToK
PiBPbiAxMS8wNi8yMDIwIDE3OjAwLCBHcnlnb3JpaSBTdHJhc2hrbyB3cm90ZToKPiA+IEkgdGhp
bmssIHN1c3BlbmQgbWlnaHQgYmUgZml4ZWQgaWYgYWxsIGRldmljZXMsIHdoaWNoIGFyZSBub3cg
Y2hpbGQgb2YgdGktc3lzYywgd2lsbCBkbwo+ID4gcG1fcnVudGltZV9mb3JjZV94eHgoKSBjYWxs
cyBhdCBub2lycSBzdXNwZW5kIHN0YWdlIGJ5IGFkZGluZzoKPiA+IAo+ID4gIMKgwqDCoMKgU0VU
X05PSVJRX1NZU1RFTV9TTEVFUF9QTV9PUFMocG1fcnVudGltZV9mb3JjZV9zdXNwZW5kLAo+ID4g
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwbV9ydW50aW1lX2Zv
cmNlX3Jlc3VtZSkKPiA+IAo+ID4gQW0gSSBtaXNzaW5nIHNtdGg/Cj4gCj4gSXNuJ3QgdGhpcyBh
bG1vc3QgZXhhY3RseSB0aGUgc2FtZSBteSBwYXRjaCBkb2VzPyBJIGp1c3QgdXNlZCBzdXNwZW5k
X2xhdGUKPiBhbmQgcmVzdW1lX2Vhcmx5LiBJcyBub2lycSBwaGFzZSBiZXR0ZXIgdGhhbiBsYXRl
ICYgZWFybHk/CgpXZWxsIHVwIHRvIHlvdSBhcyBmYXIgYXMgSSdtIGNvbmNlcm5lZC4gVGhlIG5v
aXJxIHBoYXNlIGNvbWVzIHdpdGggc2VyaW91cwpsaW1pdGF0aW9ucywgZm9yIGxldCdzIHNheSBp
MmMgYnVzIHVzYWdlIGlmIG5lZWRlZC4gUHJvYmFibHkgYWxzbyBoYXJkZXIKdG8gZGVidWcgZm9y
IHN1c3BlbmQgYW5kIHJlc3VtZS4KClJlZ2FyZHMsCgpUb255CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
