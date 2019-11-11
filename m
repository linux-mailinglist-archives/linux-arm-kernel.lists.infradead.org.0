Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB33F8144
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 21:32:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zwA71TeLQLYvIFEn2DxyYDiMr+BfmlF198to0m2//jc=; b=bnIYlzXt+PMXfF
	KZP2US+BPiYeTtomuzwmIyjWuIcCE5YvJ0DAXwJF0EoPX8SUVeQXKjJL+JyQmCsGGLDipSqcueuGe
	YQhJPM9wxP+T4tA5iaJCfi428JZ+wpK91WXe8tFTk84x6EXizrXz8LR7OWxPtL6r7ZBgCoOJlW7ng
	ULsnMYOoEQOU0v9rOeFIpZ2yG84xID4ZHJbISbPwYGphlrOXBF41UKY3HULRzGMWEeDCLTqa2i5BS
	hkcucqOEh4Iwqt6ullhfK9mCSDiQWmbVaeaf08IAYnfXcNLCJSpiGA1TcPnHLBSYwdujcX7LJLf+n
	yawtIgRPkpbBXrE54kUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUGMR-0002gv-BB; Mon, 11 Nov 2019 20:32:31 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUGMJ-0002ge-E7
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 20:32:24 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 838C38047;
 Mon, 11 Nov 2019 20:32:59 +0000 (UTC)
Date: Mon, 11 Nov 2019 12:32:20 -0800
From: Tony Lindgren <tony@atomide.com>
To: Aaro Koskinen <aaro.koskinen@iki.fi>
Subject: Re: [PATCH] ARM: OMAP1: drop duplicated dependency on ARCH_OMAP1
Message-ID: <20191111203220.GX5610@atomide.com>
References: <20191111171034.28896-1-uwe@kleine-koenig.org>
 <20191111185101.GA27282@darkstar.musicnaut.iki.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191111185101.GA27282@darkstar.musicnaut.iki.fi>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_123223_513619_C3D8A073 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KiBBYXJvIEtvc2tpbmVuIDxhYXJvLmtvc2tpbmVuQGlraS5maT4gWzE5MTExMSAxODo1MV06Cj4g
SGksCj4gCj4gT24gTW9uLCBOb3YgMTEsIDIwMTkgYXQgMDY6MTA6MzRQTSArMDEwMCwgVXdlIEts
ZWluZS1Lw7ZuaWcgd3JvdGU6Cj4gPiBBbGwgb2YgYXJjaC9hcm0vbWFjaC1vbWFwMS9LY29uZmln
IGlzIGVuY2xvc2VkIGluIGEgYmlnICJpZiBBUkNIX09NQVAxIgo+ID4gYW5kIHNvIGV2ZXJ5IHN5
bWJvbCBhbHJlYWR5IGhhcyBhIGRlcGVuZGVuY3kgb24gQVJDSF9PTUFQMSBldmVuIHdpdGhvdXQK
PiA+IG1lbnRpb25pbmcgaXQgaW4gdGhlaXIgbGlzdCBvZiBkZXBlbmRlbmNpZXMuCj4gPiAKPiA+
IEFsc28gZGVwZW5kZW5jaWVzIG9uIEFSQ0hfT01BUCBjYW4gYmUgZHJvcHBlZCBhcyBpdCBpcyBz
ZWxlY3RlZCBieQo+ID4gQVJDSF9PTUFQMS4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogVXdlIEts
ZWluZS1Lw7ZuaWcgPHV3ZUBrbGVpbmUta29lbmlnLm9yZz4KPiAKPiBBY2tlZC1ieTogQWFybyBL
b3NraW5lbiA8YWFyby5rb3NraW5lbkBpa2kuZmk+CgpUaGFua3MgYXBwbHlpbmcgaW50byBvbWFw
LWZvci01LjUvb21hcDEuCgpSZWdhcmRzLAoKVG9ueQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
