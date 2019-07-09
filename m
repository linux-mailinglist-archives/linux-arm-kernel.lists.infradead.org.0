Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2849636F3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 15:28:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TkTJfHim/xJGeTG8bXPnL9Lmn3vlX0/FGhTFxnarkBI=; b=jitpA0O/bhVqTu
	szV8qyGV9YAdMTB0KuDI8hFpWGJF7jzkgCdUceKoGhjB+RwlRdl0dn8k+h+mnXoYHWHVZGAB1t33r
	IwK0HabJaokhSvl+Kj2Wuy/0HbV7lMEz7H4eAGOKUqN+m4g59c+ihr+pQfnm62VG15O4+cEhyd8vs
	8tlzoGH6qpbs6n0NIFxrlxQHLNUcuszPnfzsO8cfg/USJLWDu62P4hXo6MoxddL1EgPexBJck0cih
	w+h2CiG6ImASxy90LvQrqtAZBlMn6ikSJZpv1kXwlysFapjyJBeMaJn9goLiHwH51ZGTJ5Dcc8yhj
	jsDKT4tXUsYRg56j+icQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkqAl-0006xu-Pi; Tue, 09 Jul 2019 13:28:43 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkqAa-0006xY-RX
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 13:28:34 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d24967e0000>; Tue, 09 Jul 2019 06:28:30 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Tue, 09 Jul 2019 06:28:31 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Tue, 09 Jul 2019 06:28:31 -0700
Received: from [10.21.132.148] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 9 Jul
 2019 13:28:29 +0000
Subject: Re: [PATCH v5 05/12] drm/modes: Rewrite the command line parser
From: Jon Hunter <jonathanh@nvidia.com>
To: Dmitry Osipenko <digetx@gmail.com>, Maxime Ripard
 <maxime.ripard@bootlin.com>
References: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
 <e32cd4009153b184103554009135c7bf7c9975d7.1560783090.git-series.maxime.ripard@bootlin.com>
 <e1fcea71-b551-274e-4ea0-178bb0d5f71c@gmail.com>
 <20190709124526.36szuriteq3jumhr@flea>
 <41d24675-10df-5531-f4ee-4d801e2e4faf@gmail.com>
 <918c4477-6d59-06a6-ead0-9b2fc3e1eb10@nvidia.com>
Message-ID: <fbf926f0-dc9f-af8f-5365-1a67af8d5b60@nvidia.com>
Date: Tue, 9 Jul 2019 14:28:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <918c4477-6d59-06a6-ead0-9b2fc3e1eb10@nvidia.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1562678910; bh=pPJcMnWUZhp7ND7MDlToVqVd55UgBGsqPxIBiA7VVuk=;
 h=X-PGP-Universal:Subject:From:To:CC:References:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=QTIN4/h86TgQagXvpRabQLkdAvaJaxo+GAS/mRIbfgSEj/kUALjl4pQEne9dVMkx5
 eHBzXmpkaDPDK4R6Paxv6iDVat2JZuZfzVLFIYPNLBHYrZ7BLPJeWTj+a7cmAlJY3Z
 erwtNjdd1Tejg/Mg0M2V9nOHLEcP66DCVMY9A7v69cpTRnMEx+E301vokTWd8JsGoi
 Ti2xNTTB6pLTkSfLvVcL/yts8gpPP4hxvPuYaIslHrrDVO8AhDGtuCVhmtafq5MfqY
 yEJvTTUjCUUaVHHP1KziACy77eQbYodFsS40XneWEHgPT7R5NjZWk7ZyigU4Y+dTgC
 IIO34UFAwTT6Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_062832_895627_0FB71443 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: eben@raspberrypi.org, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Thierry Reding <thierry.reding@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDA5LzA3LzIwMTkgMTQ6MjYsIEpvbiBIdW50ZXIgd3JvdGU6Cj4gCj4gT24gMDkvMDcvMjAx
OSAxMzo1MiwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+PiAwOS4wNy4yMDE5IDE1OjQ1LCBNYXhp
bWUgUmlwYXJkINC/0LjRiNC10YI6Cj4+PiBIaSwKPj4+Cj4+PiBPbiBGcmksIEp1bCAwNSwgMjAx
OSBhdCAwNzo1NDo0N1BNICswMzAwLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+Pj4gMTcuMDYu
MjAxOSAxNzo1MSwgTWF4aW1lIFJpcGFyZCDQv9C40YjQtdGCOgo+Pj4+PiBGcm9tOiBNYXhpbWUg
UmlwYXJkIDxtYXhpbWUucmlwYXJkQGZyZWUtZWxlY3Ryb25zLmNvbT4KPj4+Pj4KPj4+Pj4gUmV3
cml0ZSB0aGUgY29tbWFuZCBsaW5lIHBhcnNlciBpbiBvcmRlciB0byBnZXQgYXdheSBmcm9tIHRo
ZSBzdGF0ZSBtYWNoaW5lCj4+Pj4+IHBhcnNpbmcgdGhlIHZpZGVvIG1vZGUgbGluZXMuCj4+Pj4+
Cj4+Pj4+IEhvcGVmdWxseSwgdGhpcyB3aWxsIGFsbG93IHRvIGV4dGVuZCBpdCBtb3JlIGVhc2ls
eSB0byBzdXBwb3J0IG5hbWVkIG1vZGVzCj4+Pj4+IGFuZCAvIG9yIHByb3BlcnRpZXMgc2V0IGRp
cmVjdGx5IG9uIHRoZSBjb21tYW5kIGxpbmUuCj4+Pj4+Cj4+Pj4+IFJldmlld2VkLWJ5OiBOb3Jh
bGYgVHLDuG5uZXMgPG5vcmFsZkB0cm9ubmVzLm9yZz4KPj4+Pj4gU2lnbmVkLW9mZi1ieTogTWF4
aW1lIFJpcGFyZCA8bWF4aW1lLnJpcGFyZEBmcmVlLWVsZWN0cm9ucy5jb20+Cj4+Pj4+IC0tLQo+
Pj4+PiAgZHJpdmVycy9ncHUvZHJtL2RybV9tb2Rlcy5jIHwgMzI1ICsrKysrKysrKysrKysrKysr
KysrKysrLS0tLS0tLS0tLS0tLS0KPj4+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAyMTAgaW5zZXJ0aW9u
cygrKSwgMTE1IGRlbGV0aW9ucygtKQo+Pj4+Cj4+Pj4gSSBoYXZlIGEgVGVncmEgZGV2aWNlIHRo
YXQgdXNlcyBhIHN0b2NrIGFuZHJvaWQgYm9vdGxvYWRlciB3aGljaAo+Pj4+IHBhc3NlcyAidmlk
ZW89dGVncmFmYiIgaW4gdGhlIGtlcm5lbHMgY21kbGluZS4gVGhhdCB3YXNuJ3QgYSBwcm9ibGVt
Cj4+Pj4gYmVmb3JlIHRoaXMgcGF0Y2gsIGJ1dCBub3cgVGVncmEgRFJNIGRyaXZlciBmYWlscyB0
byBwcm9iZSBiZWNhdXNlCj4+Pj4gdGhlIG1vZGUgaXMgMHgwOjAgYW5kIGhlbmNlIGZyYW1lYnVm
ZmVyIGFsbG9jYXRpb24gZmFpbHMuIElzIGl0IGEKPj4+PiBsZWdpdCByZWdyZXNzaW9uIHRoYXQg
c2hvdWxkIGJlIGZpeGVkIGluIHVwc3RyZWFtPwo+Pj4KPj4+IFRoaWVycnkgaW5kZWVkIHJlcG9y
dGVkIHRoYXQgaXNzdWUsIGJ1dCB0aGUgZGlzY3Vzc2lvbiBwcmV0dHkgbXVjaAo+Pj4gc3RhbGxl
ZCBzaW5jZSB0aGVuLgo+IAo+IFllcyBUaGllcnJ5IGlzIGN1cnJlbnRseSBvdXQgYW5kIGhlbmNl
IGhhcyBub3QgcmVzcG9uZGVkLiBJIGhhZCBiZWVuCj4gcGxhbm5pbmcgdG8gbG9vayBhdCB0aGlz
IHRoaXMgd2VlayBhbmQgcmVzcG9uZGVkLgo+IAo+PiBTb3JyeSwgdGhpcyBkb2Vzbid0IGFuc3dl
ciBteSBxdWVzdGlvbi4gV2hlcmUgaXQgd2FzIHJlcG9ydGVkPwo+IAo+IFNhbWUgdGhyZWFkIFsw
XS4KCkNvcnJlY3Rpb24sIGl0IHdhcyBvbiBwYXRjaCA2LzEyIGFuZCBub3QgdGhpcyBvbmUuCgpK
b24KCi0tIApudnB1YmxpYwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
