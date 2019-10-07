Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C78CDC70
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 09:34:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=60uB+IpK+CE7B/8AO0YxjE1r+w52zFv9kLn+LgAIEto=; b=eruFvKMr41w5daQhEb5agc2cV
	Hffg7H7Mqn/WZSQHqXsyDArl7YMBTpiyBoDoVuZ0eEhYmNksb4tTzycloIfSTLH76MYjDS7Tjb3Ve
	fpO2z08NA6FNQLi2fCw85FlGDzKGzsknwFTNoG8+Sa2NLZnJ5Xptw73WmA7E0nplQ7eqf9zypXP4p
	3S1gjUM8V1F3Sj2UUB3sLSs77n0lIGKMXpC4sHr17DOCX6it4NiOVgUeps/4BQ2Ddq4CGVYPJaR65
	1qwB/8ROfIwYbn+AB4WecidsvJUzESD/DTSOGr8Qwo7r7peJDkcXH1OaUCgrGyH17NfONNL+wf0eA
	u1BBxdadA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHNWp-00038O-OJ; Mon, 07 Oct 2019 07:33:59 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHNWf-00037V-J0
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 07:33:50 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 00:33:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,265,1566889200"; d="scan'208";a="392948085"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga005.fm.intel.com with ESMTP; 07 Oct 2019 00:33:47 -0700
Received: from [10.226.38.27] (unknown [10.226.38.27])
 by linux.intel.com (Postfix) with ESMTP id CA96C580332;
 Mon,  7 Oct 2019 00:33:44 -0700 (PDT)
Subject: Re: [PATCH v1 2/2] mmc: sdhci-of-arasan: Add Support for Intel LGM
 SDXC
From: "Ramuthevar, Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>
To: Adrian Hunter <adrian.hunter@intel.com>, ulf.hansson@linaro.org,
 linux-mmc@vger.kernel.org
References: <20191003040032.37696-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20191003040032.37696-3-vadivel.muruganx.ramuthevar@linux.intel.com>
 <329a38b4-4fba-eb6e-0d40-c241cfa28e25@intel.com>
 <0c3d406c-dc28-a670-91df-7c7e6f818f87@linux.intel.com>
Message-ID: <535ae010-c8b1-ceda-39dc-2dda049b1952@linux.intel.com>
Date: Mon, 7 Oct 2019 15:33:43 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <0c3d406c-dc28-a670-91df-7c7e6f818f87@linux.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_003349_670461_A3B10DDA 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 andriy.shevchenko@intel.com, cheol.yong.kim@intel.com,
 linux-kernel@vger.kernel.org, michal.simek@xilinx.com, robh+dt@kernel.org,
 qi-ming.wu@intel.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQWRyaWFuLAoKT24gMy8xMC8yMDE5IDM6NDYgUE0sIFJhbXV0aGV2YXIsIFZhZGl2ZWwgTXVy
dWdhblggd3JvdGU6Cj4gSGkgQWRyaWFuLAo+Cj4gwqBUaGFuayB5b3UgZm9yIHRoZSBjb21tZW50
cy4KPgo+IE9uIDMvMTAvMjAxOSAzOjAyIFBNLCBBZHJpYW4gSHVudGVyIHdyb3RlOgo+PiBPbiAz
LzEwLzE5IDc6MDAgQU0sIFJhbXV0aGV2YXIsVmFkaXZlbCBNdXJ1Z2FuWCB3cm90ZToKPj4+IEZy
b206IFJhbXV0aGV2YXIgVmFkaXZlbCBNdXJ1Z2FuIAo+Pj4gPHZhZGl2ZWwubXVydWdhbngucmFt
dXRoZXZhckBsaW51eC5pbnRlbC5jb20+Cj4+Pgo+Pj4gVGhlIGN1cnJlbnQgYXJhc2FuIHNkaGNp
IFBIWSBjb25maWd1cmF0aW9uIGlzbid0IGNvbXBhdGlibGUKPj4+IHdpdGggdGhlIFBIWSBvbiBJ
bnRlbCdzIExHTShMaWdodG5pbmcgTW91bnRhaW4pIFNvQyBkZXZpY2VzLgo+Pj4KPj4+IFRoZXJl
Zm9yZSwgYWRkIGEgbmV3IGNvbXBhdGlibGUsIHRvIGFkYXB0IHRoZSBJbnRlbCdzIExHTQo+Pj4g
U0RYQyBQSFkgd2l0aCBhcmFzYW4tc2RoYyBjb250cm9sbGVyIHRvIGNvbmZpZ3VyZSB0aGUgUEhZ
Lgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IFJhbXV0aGV2YXIgVmFkaXZlbCBNdXJ1Z2FuIAo+Pj4g
PHZhZGl2ZWwubXVydWdhbngucmFtdXRoZXZhckBsaW51eC5pbnRlbC5jb20+Cj4+IEFyZW4ndCB0
aGVzZSBwYXRjaGVzIGFscmVhZHkgaW4gdjUuNC1yYzEKPgo+IMKgTm8sIHRoZXNlIHBhdGNoZXMg
YXJlIG5vdCB0aGVyZSBpbiB2NS40LXJjMS4KPgo+IMKgVGhlIG9uZSB3aGljaCBpcyBpbiB2NS40
LXJjMSBzdXBwb3J0cyBvbmx5IGVNTUMsIGRvZXMgbm90IFNEL1NESU8sIHNvIAo+IHRoZXNlIHBh
dGNoZXMgYXJlIHJlcXVpcmVkLgo+CmNhbiB5b3UgcGxlYXNlIHByb3ZpZGUgeW91ciBzdWdnZXN0
aW9ucyBhbmQgb3BpbmlvbnMgZnVydGhlciBvbiB0aGUgCmFib3ZlIHJlcGx5LMKgIHRvIHByb2Nl
ZWQsIFRoYW5rcyEKPiAtLS0KPiBXaXRoIEJlc3QgUmVnYXJkcwo+IFZhZGl2ZWwgTXVydWdhbgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
