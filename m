Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 691461D7454
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 11:48:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5tR2s3to0MaqtrW7gds1xYaW2YAbG9lPNAwSlyCz1wM=; b=Olm5SN8CVGFrGrVsa18eypGO9
	+f+8L+nH0UoaiUtGzo0iY0/TrSZLhAFst6WeNEOgF6xYS8bPcUKp+GARF/h3dhP2AsAZsxvio7rw4
	xVrDfHWMenQE/Tm3HGZnULlOlbLn8KabCcUpEn64ZIj526nwIvyh2aFOD2q/pDOc/BVfIh+s2pFzk
	4uIA0EhOmPOU9iswYboamWUv41q4uHB9IN0FBuB3m0FPXqWI9BveYOBgiiG5w3PAMqzNVT1mAHT9o
	e+pqWHO8Prl8o9jwtBS/5VEIQfToaQVtj/h2fC/tJS8wV93ceqwxFLJNfc8sa/zO4lYO5Ex1yAY7Y
	8UpzJJpQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jacNh-0005nG-4E; Mon, 18 May 2020 09:48:21 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jacNX-0005mH-GB; Mon, 18 May 2020 09:48:13 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 655B2AA6F;
 Mon, 18 May 2020 09:48:10 +0000 (UTC)
Subject: Re: [PATCH v1 8/9] arm64: dts: actions: Add MMC controller support
 for S700
To: =?UTF-8?Q?Andr=c3=a9_Przywara?= <andre.przywara@arm.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Amit Tomer <amittomer25@gmail.com>
References: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
 <1589472657-3930-9-git-send-email-amittomer25@gmail.com>
 <b2ad8a81-619f-5f35-9596-c2061ae15e4c@arm.com>
 <CABHD4K9yjUGuo0w-RfhdZQJm3Wtj6bU2H4DXcp4Jjp=e0fFeyA@mail.gmail.com>
 <2cd3cdaf-826e-9d12-9fd4-9f7e2a517ecd@arm.com>
 <CABHD4K-OaQ4Vf_+dg9FMR97ocLeUkDswyEnChPV=H=VcbyUhkg@mail.gmail.com>
 <abbef32c-84d2-7dac-c667-49610d014710@arm.com>
 <CABHD4K-MHs4jhL_9otJJ_xjC1uv1N20mnHqT39b2kob7WjZcVQ@mail.gmail.com>
 <20200518061755.GA25113@mani> <29500523-0fe4-955d-57de-d4b9f11cedb8@arm.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <fceaf802-5923-1be3-d582-59465c6e7369@suse.de>
Date: Mon, 18 May 2020 11:48:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <29500523-0fe4-955d-57de-d4b9f11cedb8@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_024811_687753_E09E4913 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-actions@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 cristian.ciocaltea@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpBbSAxOC4wNS4yMCB1bSAxMDoyOSBzY2hyaWViIEFuZHLDqSBQcnp5d2FyYToKPiBPbiAx
OC8wNS8yMDIwIDA3OjE3LCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4+IEkgZG9uJ3Qg
a25vdyBpZiB0aGUgRFQgZmFsbGJhY2sgaXMgZGlzY291cmFnZWQgb3Igbm90Lgo+IAo+IEkgZG9u
J3Qga25vdyBpZiB0aGVyZSBpcyBhbiAib2ZmaWNpYWwiIHN0YXRlbWVudCBvbiB0aGlzLCBidXQg
bGFzdCB0aGluZwo+IEkgaGVhcmQsIGFkZGluZyBTb0Mgc3BlY2lmaWMgY29tcGF0aWJsZXMgdG8g
Z2VuZXJpYyBmYWxsYmFjayBzdHJpbmdzIHdhcwo+IGVuY291cmFnZWQuIEhlbmNlIG15IHByb3Bv
c2FsLCB0byBhZGQgb25lLgoKSSBiZWxpZXZlIHRoZSBvZmZpY2lhbCBndWlkYW5jZSB3b3VsZCBi
ZSB0byBuZXZlciBiZSB0b28gZ2VuZXJpYyBpbiB0aGUgCmZpcnN0IHBsYWNlLiBJLmUuLCBwcmVm
ZXIgczUwMCAob2xkZXN0IG1vZGVsIHRlc3RlZCkgb3ZlciBnZW5lcmljIG93bC4KCkJ1dCBub3cg
dGhhdCB3ZSBoYXZlIGl0LCBwcmVwZW5kaW5nIGEgbW9yZSBzcGVjaWZpYyBvbmUgKHJhdGhlciB0
aGFuIApyZXBsYWNpbmcgaXQpIGlzIHRoZSBvbmx5IHdheSB0byBnby4gSW4gdGhhdCBjYXNlIHRo
ZSBiaW5kaW5nIG5lZWRzIHRvIApiZSBjaGFuZ2VkIHRvIGFsbG93IGJvdGggdGhlIG9sZCBhbmQg
dGhlIHJlY29tbWVuZGVkIG5ldyB2YXJpYW50LCBhcyAKQW5kcsOpIHBvaW50cyBvdXQuIFBsZWFz
ZSBhZGQgYSBjb21tZW50IHRvIGhlbHAgYmluZGluZ3MgcmVhZGVycyBjaG9vc2UgCndoaWNoIG9m
IHRoZSB0d28gdG8gYWRvcHQgdGhlbi4KCkFtaXQsIG5leHQgdGltZSBwbGVhc2UgcXVvdGUgZXJy
b3JzIHlvdSBzZWUgcmlnaHQgYXdheSwgdGhhdCBjb3VsZCd2ZSAKc3BhcmVkIGEgaGFuZGZ1bCBv
ZiBtZXNzYWdlcyBkaXNjdXNzaW5nIGFib3V0IHRoZSBkcml2ZXIgd2hlbiBpdCB3YXMgaW4gCmZh
Y3QganVzdCBhIGJpbmRpbmdzIGlzc3VlICh3aGljaCB5b3UgaGFkIGJlZW4gYXNrZWQgdG8gZml4
IGJ5IEFuZHLDqSkuCgpSZWdhcmRzLApBbmRyZWFzCgotLSAKU1VTRSBTb2Z0d2FyZSBTb2x1dGlv
bnMgR2VybWFueSBHbWJICk1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2VybWFueQpH
RjogRmVsaXggSW1lbmTDtnJmZmVyCkhSQiAzNjgwOSAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
