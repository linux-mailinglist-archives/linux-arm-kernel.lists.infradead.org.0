Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E4D1C3223
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 07:16:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yssvN5dR5+XhZvAMlqsD6eIOzFA2JDe1oisP5ghkWMI=; b=qiZ4LN+3JMUqQp
	7OPIIRSze3UvovVLBZmh0+Xvxjd6mrt7P2p74aubSK8KU1a29GFG415Q+jWhZfvp28eMJGLICVEOM
	AYTBBvNju6odpqkhEegB21jMXO7Qpk/JmVLedMxaayIM9dk0GTaTnDgxgrncnMiTpW7Y+AE+CcCsp
	S0qVvULbagDAPWU0GVd1hjcrMtgkIslUOvHLftSPmk80m2+iJKwx7u/nbi6KRZp2RWBWeIHHXOiXN
	amUuaFQBb0h1WBZRhQKH4M5jIew5y6Uct4o22dWJhM4y2j2BxqhqgP9eoVKN+KGvCuW0rY6V6DlP/
	ICJFicJSgFz++Aj7JpoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVTT1-0003kS-8b; Mon, 04 May 2020 05:16:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVTSu-0003k4-AI
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 05:16:29 +0000
Received: from localhost (unknown [171.76.84.84])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 14099206C0;
 Mon,  4 May 2020 05:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588569387;
 bh=NDLbS7H6KX8JKKif2MK4betfRmG+k4ZuMRllise3FH4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LK29ZRn37F496akRaG3GcO+JOrxhO4ifvkyc5p8z9aryf4UhKyF+AThH5xKRPGT49
 JYYrGGeesrtjQwRtI9m/4zOrMGJ11uFjbZdrd0pUmVDP5037K61cLpFCuYyME+Ne21
 3EKAg5il2Xg3hUuTZb/FKfFmfRCy0okr1oTZG+yU=
Date: Mon, 4 May 2020 10:46:23 +0530
From: Vinod Koul <vkoul@kernel.org>
To: =?utf-8?B?UmFmYcWC?= Hibner <rafal.hibner@secom.com.pl>
Subject: Re: [PATCH] dma: zynqmp_dma: Initialize descriptor list after
 freeing during reset
Message-ID: <20200504051623.GE1375924@vkoul-mobl>
References: <20200428143225.3357-1-rafal.hibner@secom.com.pl>
 <20200502123242.GB1375924@vkoul-mobl>
 <1330934e-342e-1e16-6451-d8952463119c@secom.com.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1330934e-342e-1e16-6451-d8952463119c@secom.com.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_221628_377188_157BDC92 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>,
 open list <linux-kernel@vger.kernel.org>,
 Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>,
 "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 Harini Katakam <harini.katakam@xilinx.com>,
 Dan Williams <dan.j.williams@intel.com>,
 "moderated list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDItMDUtMjAsIDE1OjAwLCBSYWZhxYIgSGlibmVyIHdyb3RlOgo+IEhlbGxvIFZpbm9kLAo+
IAo+IE9uIDAyLjA1LjIwMjAgMTQ6MzIsIFZpbm9kIEtvdWwgd3JvdGU6Cj4gPiBXb3VsZCBpdCBu
b3QgYmUgYmV0dGVyIHRvIHVzZSBsaXN0X2RlbF9pbml0KCkgd2hlcmUgd2UgZGVsZXRlIGl0IHJh
dGhlcgo+ID4gdGhhbiBkbyB0aGUgaW5pdCBoZXJlPwo+ID4KPiAKPiBJdCBpcyBub3QgYSBwcm9i
bGVtIG9mIGxpc3QgZWxlbWVudCBpdHNlbGYgbm90IGJlaW5nIGluaXRpYWxpemVkLgo+IFRoZSBw
cm9ibGVtIGlzIHRoYXQgZHVyaW5nIGZhdWx0IGNvbmRpdGlvbnMgKHp5bnFtcF9kbWFfcmVzZXQp
IGFsbAo+IGVsZW1lbnRzIGFyZSBtb3ZlZCB0byBmcmVlIGxpc3QuIExpc3QgaGVhZCBob3dldmVy
IGlzIG5vdCByZWluaXRpYWxpemVkLgo+IAo+IEluIG5vcm1hbCBmbG93IGVsZW1lbnRzIGFyZSBy
ZW1vdmVkIGJ5IGxpc3RfZGVsIGFuZCByZXN1Ym1pdHRlZCB0bwo+IGZyZWUgbGlzdCB3aXRoIHp5
bnFtcF9kbWFfZnJlZV9kZXNjcmlwdG9yLgo+IAo+IHN0YXRpYyB2b2lkIHp5bnFtcF9kbWFfY2hh
bl9kZXNjX2NsZWFudXAoc3RydWN0IHp5bnFtcF9kbWFfY2hhbiAqY2hhbikKPiB7Cj4gwqDCoMKg
IC4uLgo+IMKgwqDCoCBsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUoZGVzYywgbmV4dCwgJmNoYW4t
PmRvbmVfbGlzdCwgbm9kZSkgewo+IMKgwqDCoMKgwqDCoMKgIC4uLgo+IMKgwqDCoMKgwqDCoMKg
IGxpc3RfZGVsKCZkZXNjLT5ub2RlKTsKPiDCoMKgwqDCoMKgwqDCoCAuLi4KPiDCoMKgwqDCoMKg
wqDCoCB6eW5xbXBfZG1hX2ZyZWVfZGVzY3JpcHRvcihjaGFuLCBkZXNjKTsKPiDCoMKgwqAgfQo+
IH0KPiAKPiBUaGUgenlucW1wX2RtYV9mcmVlX2Rlc2NyaXB0b3IgZG9lcyBub3QgZGVsZXRlIGVs
ZW1lbnRzIGZyb20gdGhlCj4gbGlzdCBieSBpdHNlbGYuCj4gSSBhbSBub3QgaGUgYXV0aG9yIG9m
IHRoaXMgZHJpdmVyIHNvIEkgZml4ZWQgaXQgYnkKPiBkb2luZyBub24gaW50cnVzaXZlIGNoYW5n
ZXMuCj4gCj4gQW55d2F5cywgSSBkbyBub3Qgc2VlIGhvdyB1c2luZyBsaXN0X2RlbF9pbml0IHdv
dWxkIGZpeCB0aGUgYnVnLgoKTG9va2luZyBhdCB0aGlzLCBpIHRoaW5rIGl0IHdvdWxkIG1ha2Ug
c2Vuc2UgdG8gZG8gbGlzdF9zcGxpY2VfaW5pdCgpCmJlZm9yZSB3ZSBzZW5kIHRoZSBsaXN0IHRv
IGJlIGZyZWVkLgoKUmFkaGV5L0FwcGFuYSBhcmUgY2NlZCwgdGhleSBzaG91bGQgdGVzdCB0aGlz
LgoKLS0gCn5WaW5vZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
