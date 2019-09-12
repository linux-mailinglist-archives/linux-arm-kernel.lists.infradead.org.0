Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7640B15B7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 23:10:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e/+6XLC5UVr7JSctWA7gj2I9sVqrN17YpfYuUfj21Xs=; b=NbIyiwYXE/qASE
	b3xSBaBMBNdJQUEtqu1w9hNpsCW2FMBF2lYefGXbnKi0Qt41yfByFfvlxP3Hvn7uoDgY/565gOlZW
	GTZdN3vo4SfvlOta+da+f+Cq3Fp0kcJMI2R1XYgszvlmRzPiE7nP+qQo973uD+cU0xhoqitxDyfUW
	tmdYkKZJEVDOSNM6Q4AQnokNlipki0rLOt8TWhojrqayIxFI+B8JDe3y2VPUvJAG2UiM/fSJYDhec
	lDZsdp662C6WoBa413+rov3yp26GldD+IJucWCM86QZBTAz17bCQB7TEWAG/KBH5rpIZ2u7rJrqsn
	HNE0V+TH2CnF66pHbJ1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8WLm-0004Mx-NN; Thu, 12 Sep 2019 21:09:58 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8WLX-0004Me-TZ
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 21:09:45 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 218FE80B6;
 Thu, 12 Sep 2019 21:10:11 +0000 (UTC)
Date: Thu, 12 Sep 2019 14:09:37 -0700
From: Tony Lindgren <tony@atomide.com>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH 1/3] OMAP3: PM: Set/clear T2 bit for Smartreflex on TWL
Message-ID: <20190912210937.GU52127@atomide.com>
References: <20190801012823.28730-1-neolynx@gmail.com>
 <20190801012823.28730-2-neolynx@gmail.com>
 <CAHCN7x+Vd+ECoa4fmUfoX47znag+NxKSzRt3iouQCZ2CQ2T--A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7x+Vd+ECoa4fmUfoX47znag+NxKSzRt3iouQCZ2CQ2T--A@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_140943_997124_F3A1889D 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Nishanth Menon <nm@ti.com>, Kevin Hilman <khilman@ti.com>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Shweta Gulati <shweta.gulati@ti.com>,
 =?utf-8?B?QW5kcsOp?= Roth <neolynx@gmail.com>, Thara Gopinath <thara@ti.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KiBBZGFtIEZvcmQgPGFmb3JkMTczQGdtYWlsLmNvbT4gWzE5MDkxMiAxOTowMF06Cj4gT24gV2Vk
LCBKdWwgMzEsIDIwMTkgYXQgODoyOSBQTSBBbmRyw6kgUm90aCA8bmVvbHlueEBnbWFpbC5jb20+
IHdyb3RlOgo+ID4KPiA+IEZyb206IFRoYXJhIEdvcGluYXRoIDx0aGFyYUB0aS5jb20+Cj4gPgo+
ID4gVm9sdGFnZSBjb250cm9sIG9uIFRXTCBjYW4gYmUgZG9uZSB1c2luZyBWTU9ERS9JMkMxL0ky
Q19TUi4KPiA+IFNpbmNlIGFsbW9zdCBhbGwgcGxhdGZvcm1zIHVzZSBJMkNfU1Igb24gb21hcDMs
IG9tYXAzX3R3bF9pbml0IGJ5Cj4gPiBkZWZhdWx0IGV4cGVjdHMgdGhhdCBPTUFQJ3MgSTJDX1NS
IGlzIHBsdWdnZWQgaW4gdG8gVFdMJ3MgSTJDCj4gPiBhbmQgY2FsbHMgb21hcDNfdHdsX3NldF9z
cl9iaXQuIE9uIHBsYXRmb3JtcyB3aGVyZSBJMkNfU1IgaXMgbm90IGNvbm5lY3RlZCwKPiA+IHRo
ZSBib2FyZCBmaWxlcyBhcmUgZXhwZWN0ZWQgdG8gY2FsbCBvbWFwM190d2xfc2V0X3NyX2JpdChm
YWxzZSkgdG8KPiA+IGVuc3VyZSB0aGF0IEkyQ19TUiBwYXRoIGlzIG5vdCBzZXQgZm9yIHZvbHRh
Z2UgY29udHJvbCBhbmQgcHJldmVudAo+ID4gdGhlIGRlZmF1bHQgYmVoYXZpb3Igb2Ygb21hcDNf
dHdsX2luaXQuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogTmlzaGFudGggTWVub24gPG5tQHRpLmNv
bT4KPiA+IFNpZ25lZC1vZmYtYnk6IFRoYXJhIEdvcGluYXRoIDx0aGFyYUB0aS5jb20+Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBTaHdldGEgR3VsYXRpIDxzaHdldGEuZ3VsYXRpQHRpLmNvbT4KPiA+IENj
OiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+IFNpZ25lZC1vZmYtYnk6
IEtldmluIEhpbG1hbiA8a2hpbG1hbkB0aS5jb20+Cj4gCj4gVG9ueSwKPiAKPiBJcyB0aGVyZSBh
IHN0YXR1cyB1cGRhdGUgb24gdGhpcyBzZXJpZXM/ICBJdCdzIGJlZW4gc2V2ZXJhbCBtb250aHMs
Cj4gYW5kIEkgaGF2ZW4ndCBzZWVuIGFueSBmZWVkYmFjayBvbiBpdCwgbm9yIGRvZXMgaXQgYXBw
ZWFyIHRvIGJlIGluIGFueQo+IG9mIHlvdXIgYnJhbmNoZXMgdGhhdCBJIGNhbiBzZWUuCgpXZWxs
IGl0IHdhcyB0YWdnZWQgUkZDLi4gRG9lcyBzb21ldGhpbmcgbmVlZCB1cGRhdGluZwp3aXRoIGl0
PwoKQXQgbGVhc3QgdGhlIGZpcnN0IHR3byBwYXRjaGVzIGxvb2tlZCBPSyB0byBtZS4KClJlZ2Fy
ZHMsCgpUb255CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
