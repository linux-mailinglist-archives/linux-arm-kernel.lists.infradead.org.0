Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F120C10AE7B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 12:06:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KJhZ/F9MvRRsc2/qVP9ubEQHSNBomLWA1+7baemKrUU=; b=mGiZwRR7ITDvc4
	g+AueEhN4Dkqa2c0hRSR30odmhoBvBuPaVm7JOuP/wLEbcqkMqLLv7CvO+ezfmC2pSe46/qfHfiBN
	0LLxBoZ35uZ2Yj8an6rnBzSxETVXckZY/bHTTVRLHW4FBFaZYFXibIRAT9MxFnZNP8sUO67s/0oCV
	DiYxl3aY/qEyNX+qUhhzFOZ93DuXgqnSEje5W/qlzUN+4iutNxnNe4y0zLUeoD/QNja7uaVpYKbnZ
	JgF09LWy/Fl+7IMwk9+HtQNoPrCO82IKZkn1z10330kiv/rlx08AtuWiJszhHh4TOAfcNauQZWKIH
	NLA+FaHHOFb8OEtW6jhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZv9e-0000Bo-Px; Wed, 27 Nov 2019 11:06:42 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZv9T-0000BM-SY
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 11:06:33 +0000
X-Originating-IP: 90.76.211.102
Received: from xps13 (lfbn-1-2154-102.w90-76.abo.wanadoo.fr [90.76.211.102])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 4D5DA1C000B;
 Wed, 27 Nov 2019 11:06:19 +0000 (UTC)
Date: Wed, 27 Nov 2019 12:06:18 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Sven Auhagen <sven.auhagen@voleatech.de>
Subject: Re: CP110 Comphy Issue
Message-ID: <20191127120618.66c46b7a@xps13>
In-Reply-To: <4EC81A7A-C1D1-4DDD-BD09-88D46BC0D058@voleatech.de>
References: <4EC81A7A-C1D1-4DDD-BD09-88D46BC0D058@voleatech.de>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_030632_057115_9DE5E582 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Baruch Siach <baruch@tkos.co.il>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3ZlbiwKClN2ZW4gQXVoYWdlbiA8c3Zlbi5hdWhhZ2VuQHZvbGVhdGVjaC5kZT4gd3JvdGUg
b24gV2VkLCAyNyBOb3YgMjAxOQowNjowODoxNiArMDAwMDoKCj4gSGkgTWlxdcOobCwKPiAKPiBJ
IGxvb2tlZCB0aHJvdWdoIHRoZSBBVEYgY29kZSBhbmQgYXMgZmFyIGFzIEkgY2FuIHRlbGwgdGhl
IHBjaWUgY2xvY2sgZGlyZWN0aW9uIGlzIHNldCBiYXNlZCBvbiB0aGUgc2FyIHJlZ2lzdGVyIGlu
IGNwMTEwX3BjaWVfY2xrX2NmZwo+IEkgYW0gbm90IHN1cmUgaG93IHRoaXMgY2FuIGxlYWQgdG8g
dGhlIHByb2JsZW0gb2YgdGhlIGNvbXBoeSBub3QgY29taW5nIHVwLgoKQ2xvY2tzIGFyZSBvZnRl
biByZXNwb25zaWJsZSBvZiBzdGFsbHMgd2hlbiBhY2Nlc3NpbmcgcmVnaXN0ZXJzLgoKSSBkb24n
dCBrbm93IHdoYXQgeW91ciBwcm9ibGVtIGlzLCBJIGFtIGdpdmluZyB5b3Ugc3VnZ2VzdGlvbnMu
Cgo+IEkgY2FuIGFsc28gc2VlIHRoYXQgdGhlIFBDSWUgd29ya3MgaW4gdWJvb3QgYW5kIHRoZSBJ
bnRlbCBOSUMgaXMgcmVjb2duaXplZCBqdXN0IGZpbmUgdGhlcmUgc28gdGhlIGludGlhbCBjb21w
aHkgc2V0dXAgbXVzdCBiZSB3b3JraW5nLgoKSXMgVS1Cb290IGRvaW5nIFNNQyBjYWxscyB0b28/
IEkgc3VwcG9zZSBpdCBkb2VzIG5vdC4KCj4gSSBjb3VsZCBub3QgZmluZCB0aGUgcmVzZXQgY29k
ZSwgY2FuIHlvdSBzZW5kIG1lIHRoZSBmaWxlIHdoZXJlIGl0IGlzPwoKSSB0aG91Z2h0IHdlIGhh
ZCBzb21lIGluIHRoZSBjb21waHkgZHJpdmVyLCBhcHBhcmVudGx5IG5vdC4KCkkgZG9uJ3QgaGF2
ZSBtb3JlIGlucHV0cyBzbyBmYXIuIElzIHlvdXIgZGVidWdnaW5nIGdpdmluZyBpbnRlcmVzdGlu
ZwppbmZvcz8gSGF2ZSB5b3UgY2hlY2tlZCBpbiAtPnNldF9tb2RlKCkgZXZlcnl0aGluZyBsb29r
cyBmaW5lPwoKClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
