Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2829AA0A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 12:57:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=odIEvvZqAlCdaxXqHVsWLzqwvHMMwPfDSwQcsuu+WuQ=; b=hhyWZD9YWR3fdt
	5xcIsi5XCDtMkxchXTD41uGG9iLp1p3qxQ19v2HsSSoqDD10m/7yXn9hp96XboudrhZYM0MAE+qyG
	EiU4phtKFoaAwsTlKcBZwE+yn4F5YgMV2QS5k7yX0YEBZWKxJe6UoS8oyWMzZ8WhYKTcAhbd3Kjj/
	nXx68/fP2XcxPPJ5LSsTxBJ2RgvpYmd51dOS4XFuguYkLOmwZzoXwugh+06KFF+V77cTQ/cjEEVIK
	QBmOWk5N4bj0NXBdrhsom0lxkM1DGblO87dN+TGSV3gw8HxVT4Y0DpxNpPT0p4XInZbGrI3v+uMCR
	bV7ovYNSj95QApVq2hyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5pSV-0001CS-1F; Thu, 05 Sep 2019 10:57:47 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pSN-0001BW-LR
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 10:57:41 +0000
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B53D288311
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  5 Sep 2019 10:57:38 +0000 (UTC)
Received: by mail-wm1-f71.google.com with SMTP id t185so795961wmg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 03:57:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=u65TSO+Rvf1axEqmi3wSZZGF+sDF08PzfGTCX34no0w=;
 b=f89IhFI9UI2f6oVEJDlxlVOrZ5vGaNAlXGw3/8yhqnw/LgnuEqNYKDMkMras/w1w9H
 D+jImGOfK9ANL1IqW5i11pIcsH+ZKBTDU97HH1Nx3wuf9lGR+9HGb3qXwsvNkJwy6J9L
 gflQiuXhO579vSElz7s5Z4Pm8fpiRMM15pFEJ9aBHre8K1NQhRgK7tS2kfTurM8GqSDi
 QznoPCtoyk9NisqMUPU/UTPz6dawNsIw/Nz9Eo7XMqvYVcaeYIZUn31bLzuQTD/AAXEz
 hNJVgEPjYdozOkYC4pEDJ8rq8q7+nKNn+wkPzheAH06FEGaglH3dwNBb9nNLNmwb2+Ai
 InHg==
X-Gm-Message-State: APjAAAVwOSkvIkoj6eKOEtTHRVVtLtPocWcJ61V5GgFEEYnfAvUu0l4x
 E6dDJvqrb5Yk/tyTGZwFtj/4QLL4CLsHuuUiCUyw1M20ANx0M/jflZqXfaCkNRQztrtJ6WXu0ET
 Oe+htWw9gWxCVUJW5NGzZD/rgHMWVjN+ByUc=
X-Received: by 2002:a1c:ef09:: with SMTP id n9mr2295972wmh.23.1567681057404;
 Thu, 05 Sep 2019 03:57:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqytSMTFwKy6lxd+Xl2q9JD1L6j9P/OzvtGIshQY0oEp+mKnHzNdpLaXEnuh8y3DBKzT/FTaXA==
X-Received: by 2002:a1c:ef09:: with SMTP id n9mr2295960wmh.23.1567681057221;
 Thu, 05 Sep 2019 03:57:37 -0700 (PDT)
Received: from [192.168.1.13] ([90.168.169.92])
 by smtp.gmail.com with ESMTPSA id p19sm1745164wmg.31.2019.09.05.03.57.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Sep 2019 03:57:36 -0700 (PDT)
Subject: Re: [V2, 2/2] media: i2c: Add DW9768 VCM driver
To: Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <20190905072142.14606-1-dongchun.zhu@mediatek.com>
 <20190905072142.14606-3-dongchun.zhu@mediatek.com>
 <20190905082134.GY5475@paasikivi.fi.intel.com>
 <20190905101908.GB2680@smile.fi.intel.com>
 <20190905104001.GZ5475@paasikivi.fi.intel.com>
From: Javier Martinez Canillas <javierm@redhat.com>
Message-ID: <ad357e27-3e51-6922-1924-5d2c2daf1934@redhat.com>
Date: Thu, 5 Sep 2019 12:57:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190905104001.GZ5475@paasikivi.fi.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_035739_752199_B0E11FC8 
X-CRM114-Status: GOOD (  18.92  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, drinkcat@chromium.org,
 srv_heupstream@mediatek.com, sam.hung@mediatek.com, shengnan.wang@mediatek.com,
 tfiga@chromium.org, sj.huang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, dongchun.zhu@mediatek.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gOS81LzE5IDEyOjQwIFBNLCBTYWthcmkgQWlsdXMgd3JvdGU6Cj4gT24gVGh1LCBTZXAgMDUs
IDIwMTkgYXQgMDE6MTk6MDhQTSArMDMwMCwgQW5keSBTaGV2Y2hlbmtvIHdyb3RlOgo+PiBPbiBU
aHUsIFNlcCAwNSwgMjAxOSBhdCAxMToyMTozNEFNICswMzAwLCBTYWthcmkgQWlsdXMgd3JvdGU6
Cj4+PiBPbiBUaHUsIFNlcCAwNSwgMjAxOSBhdCAwMzoyMTo0MlBNICswODAwLCBkb25nY2h1bi56
aHVAbWVkaWF0ZWsuY29tIHdyb3RlOgo+Pj4+IEZyb206IERvbmdjaHVuIFpodSA8ZG9uZ2NodW4u
emh1QG1lZGlhdGVrLmNvbT4KPj4KPj4+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBpMmNfZGV2aWNl
X2lkIGR3OTc2OF9pZF90YWJsZVtdID0gewo+Pj4+ICsJeyBEVzk3NjhfTkFNRSwgMCB9LAo+Pj4+
ICsJeyB9LAo+Pj4KPj4+IENvdWxkIHlvdSBkcm9wIHRoZSBJwrJDIElEIHRhYmxlPwo+Pgo+PiBC
dXQgd2h5Pwo+PiBJdCB3aWxsIGFsbG93IHlvdSB0byBpbnN0YW5jaWF0ZSB0aGUgZGV2aWNlIGZy
b20gdXNlciBzcGFjZS4KClllcywgdGhlIEkyQyBkZXZpY2UgdGFibGUgaXMgc3RpbGwgbmVlZGVk
IGlmIHRoZSBkZXZpY2UgY2FuIGJlIGluc3RhbnRpYXRlZApmcm9tIHVzZXItc3BhY2UgdXNpbmcg
dGhlIHN5c2ZzIGludGVyZmFjZSwgb3Igb3RoZXJ3aXNlIHRoZSBtb2R1bGUgd29uJ3QgYmUKYXV0
b21hdGljYWxseSBsb2FkZWQuCgpLaWVyYW4gcG9zdGVkIGEgIltQQVRDSCBSRkNdIG1vZHBvc3Q6
IFN1cHBvcnQgSTJDIEFsaWFzZXMgZnJvbSBPRiB0YWJsZXMiCnBhdGNoIHRoYXQgYWRkcyBhIE1P
RFVMRV9ERVZJQ0VfVEFCTEUoaTJjX29mLCAuLikgbWFjcm8gc28gbW9kcG9zdCBjb3VsZAphZGQg
bGVnYWN5IEkyQyBtb2RhbGlhcyB1c2luZyB0aGUgaW5mb3JtYXRpb24gaW4gdGhlIE9GIGRldmlj
ZSBJRCB0YWJsZXM6CgpodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzExMDM4ODYx
LwoKSWYgdGhhdCBsYW5kcywgdGhlbiB3ZSBjb3VsZCBnZXQgcmlkIG9mIHRoZSBJMkMgZGV2aWNl
IHRhYmxlcyBhbHRvZ2V0aGVyCmZvciBub24tbGVnYWN5IEkyQyBkcml2ZXJzLgoKPiAKPiBUaGUg
ZGV2aWNlIGlzIHN1cHBvc2VkIHRvIGJlIHByZXNlbnQgaW4gRFQgKG9yIEFDUEkgdGFibGVzKSBh
bHJlYWR5Lgo+CgpBZ3JlZWQuIEFsc28gYnkgbG9va2luZyBhdCB0aGUgZHJpdmVyJ3MgcHJvYmUg
ZnVuY3Rpb24gSSBzZWUgdGhhdCB0aGUKZGV2aWNlIGxvb2t1cHMgYSAndmluJyBhbmQgJ3ZkZCcg
cmVndWxhdG9ycyBzdXBwbGllcyBhbmQgaXQgZmFpbHMgaWYKYXJlbid0IGRlZmluZWQsIHNvIGl0
IGNhbid0IGJlIGluc3RhbnRpYXRlZCBmcm9tIHVzZXItc3BhY2UgYW55d2F5cy4KCkJUVywgdGhl
c2UgdHdvIHJlZ3VsYXRvcnMgc3VwcGxpZXMgc2hvdWxkIGJlIGxpc3RlZCBhcyAndmluLXN1cHBs
eScKYW5kICd2ZGQtc3VwcGx5JyBhcyByZXF1aXJlZCBwcm9wZXJ0aWVzIGluIHRoZSBEVCBiaW5k
aW5nIGRvY3VtZW50LgoKQmVzdCByZWdhcmRzLAotLSAKSmF2aWVyIE1hcnRpbmV6IENhbmlsbGFz
ClNvZnR3YXJlIEVuZ2luZWVyIC0gRGVza3RvcCBIYXJkd2FyZSBFbmFibGVtZW50ClJlZCBIYXQK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
