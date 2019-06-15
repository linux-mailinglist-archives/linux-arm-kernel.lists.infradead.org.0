Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F204D46F25
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 11:01:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VJCTSKpXNm5m2AlZ9/O8Kk9CuSG8Uw3dEwz1ixT1Y+s=; b=olQF0xpIMUyYyx
	F9X1cUTyfH0v6p0TDhtKA6zQq0B24duxLerg6146rwW6U6EzLg69JRaRh0PDdxEJSbgwMpvoVDe0Z
	67oGl8d6cvpF+El325JftNHWZfE2qsFOZKyGSk2WJTmSShOqm5olyAfnuEKSOYXYy9lcxy3uDW/Qb
	iz5ozW+mksk6KDynwrrFOadysTbK/WJg93K5G16i1yL/3bYHGsFlPMfKEt1+33HLX03O9PMOWZTr8
	u1CUpeMU6f9eu9wDj5ecbk9I/ZjWFmNiGPevtEf8D/RlW0AhyQ2U9erswqug/pKwM90b1K12m4+Wm
	vKeudm6ik1svEdF+kdIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc4ZB-00040G-0o; Sat, 15 Jun 2019 09:01:41 +0000
Received: from smtp.domeneshop.no ([2a01:5b40:0:3005::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc4Yv-0003zz-CE
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 09:01:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org;
 s=ds201810; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=QOdSVFJZzki1SiePQMOfV+xigT7y6gnQGS4ypEUEtWw=; 
 b=SFlQ8iYV5Rf6XrKHZzT4NB4SyfNEyvN0+tQF3weAtZrE1KiF6V5AzA67rdILUa7B1ktFiaWrb8tPezlLV5qmDzsYj5tkU311CTqt4yVPX/O458LmkLZv+sgmLGb2JpqCGBRH7b0fwysiyFtGJczwUMEFWgrIXYLRTjH1++sd/6uRiKp3eIT9EG5fq6piEpXWUjF4i3T33PYqXFw55WbDpFtRJCHXAvjj7NKdcl6kMG/v7QPS8P3/GUr/n3vB6J37a1Bpjek9a6Lg/g8B+gPAleruDd50WLk95lmK3MSy7x/bcLlLaVTFfdj3q7Ky47EkzsSJ5BmuxhVQWp0aIhL5fA==;
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:52492
 helo=[192.168.10.173])
 by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.84_2) (envelope-from <noralf@tronnes.org>)
 id 1hc4Yt-0003sY-AH; Sat, 15 Jun 2019 11:01:23 +0200
Subject: Re: [PATCH v4 04/12] drm/client: Change drm_client_panel_rotation name
To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>, Daniel Vetter <daniel.vetter@intel.com>,
 David Airlie <airlied@linux.ie>
References: <cover.5fc7840dc8fb24744516c13acb8c8aa18e44c0d0.1560514379.git-series.maxime.ripard@bootlin.com>
 <9a75b69460e0b365499562492d012824b4d341f2.1560514379.git-series.maxime.ripard@bootlin.com>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <5988eed4-6490-39a1-75f2-2b9366d27d60@tronnes.org>
Date: Sat, 15 Jun 2019 11:01:19 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <9a75b69460e0b365499562492d012824b4d341f2.1560514379.git-series.maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_020125_597433_29DE1A8E 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:5b40:0:3005:0:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: eben@raspberrypi.org, dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Eric Anholt <eric@anholt.net>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpEZW4gMTQuMDYuMjAxOSAxNC4xMywgc2tyZXYgTWF4aW1lIFJpcGFyZDoKPiBUaGUgZHJtX2Ns
aWVudF9wYW5lbF9yb3RhdGlvbiBmdW5jdGlvbiBoYXMgYmVlbiB1c2VkIHNvIGZhciB0byBzZXQg
dGhlCj4gZGVmYXVsdCByb3RhdGlvbiBiYXNlZCBvbiB0aGUgcGFuZWwgb3JpZW50YXRpb24uCj4g
Cj4gSG93ZXZlciwgd2UgY2FuIGhhdmUgbW9yZSBzb3VyY2VzIG9mIGluZm9ybWF0aW9uIHRvIG1h
a2UgdGhhdCBkZWNpc2lvbiwKPiBzdGFydGluZyB3aXRoIHRoZSBjb21tYW5kIGxpbmUgdGhhdCB3
ZSB3aWxsIGludHJvZHVjZSBsYXRlciBpbiB0aGlzIHNlcmllcy4KPiAKPiBDaGFuZ2UgdGhlIG5h
bWUgdG8gcmVtb3ZlIHRoZSBwYW5lbCBtZW50aW9uLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1heGlt
ZSBSaXBhcmQgPG1heGltZS5yaXBhcmRAYm9vdGxpbi5jb20+Cj4gLS0tCgpSZXZpZXdlZC1ieTog
Tm9yYWxmIFRyw7hubmVzIDxub3JhbGZAdHJvbm5lcy5vcmc+CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
