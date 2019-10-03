Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3E7C9925
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 09:47:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VwF8V+lvvUI3VfoE/by8oPlQwTy108zMVXwLG5XEN0E=; b=NCMAyUzJWMkdxlykeVPy6nK31
	acKIjQBAj0DYuKZjhQCfZ5f2xdIPPNGmZg97RM42q3OOPeuViSueFY5ZhlXMmX/Y2+Ca+Q37IZ2/U
	Az9J7cERiEPy5vB0AY/rBDaEL3URPwg837tURyEnoulIW8o7o1vsUpNP08EcnJf+EGNq/T76SH+IB
	eCWURjpfWzrrD4zWobeR62LPZ0Z6Hx7yJJluRsg+r+JYrBZ3BA2JURnekVWZQqApbWGfI7zlKYlbS
	Bfh+0S1mLT8svJh/64SJTMXH8EtzlbH/6J6GaCnBSAGI8xF0BAWX5pl3DlI+TTDbq6iEqIdhDg9tT
	TFzbHX4Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFvpP-00035o-8N; Thu, 03 Oct 2019 07:47:11 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFvpH-00034w-40
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 07:47:04 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 00:47:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,251,1566889200"; d="scan'208";a="205558147"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga001.fm.intel.com with ESMTP; 03 Oct 2019 00:47:00 -0700
Received: from [10.226.38.25] (unknown [10.226.38.25])
 by linux.intel.com (Postfix) with ESMTP id AB2F55803A5;
 Thu,  3 Oct 2019 00:46:57 -0700 (PDT)
Subject: Re: [PATCH v1 2/2] mmc: sdhci-of-arasan: Add Support for Intel LGM
 SDXC
To: Adrian Hunter <adrian.hunter@intel.com>, ulf.hansson@linaro.org,
 linux-mmc@vger.kernel.org
References: <20191003040032.37696-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20191003040032.37696-3-vadivel.muruganx.ramuthevar@linux.intel.com>
 <329a38b4-4fba-eb6e-0d40-c241cfa28e25@intel.com>
From: "Ramuthevar, Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>
Message-ID: <0c3d406c-dc28-a670-91df-7c7e6f818f87@linux.intel.com>
Date: Thu, 3 Oct 2019 15:46:56 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <329a38b4-4fba-eb6e-0d40-c241cfa28e25@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_004703_200723_D37521BB 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 andriy.shevchenko@intel.com, cheol.yong.kim@intel.com,
 linux-kernel@vger.kernel.org, michal.simek@xilinx.com, robh+dt@kernel.org,
 qi-ming.wu@intel.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQWRyaWFuLAoKIMKgVGhhbmsgeW91IGZvciB0aGUgY29tbWVudHMuCgpPbiAzLzEwLzIwMTkg
MzowMiBQTSwgQWRyaWFuIEh1bnRlciB3cm90ZToKPiBPbiAzLzEwLzE5IDc6MDAgQU0sIFJhbXV0
aGV2YXIsVmFkaXZlbCBNdXJ1Z2FuWCB3cm90ZToKPj4gRnJvbTogUmFtdXRoZXZhciBWYWRpdmVs
IE11cnVnYW4gPHZhZGl2ZWwubXVydWdhbngucmFtdXRoZXZhckBsaW51eC5pbnRlbC5jb20+Cj4+
Cj4+IFRoZSBjdXJyZW50IGFyYXNhbiBzZGhjaSBQSFkgY29uZmlndXJhdGlvbiBpc24ndCBjb21w
YXRpYmxlCj4+IHdpdGggdGhlIFBIWSBvbiBJbnRlbCdzIExHTShMaWdodG5pbmcgTW91bnRhaW4p
IFNvQyBkZXZpY2VzLgo+Pgo+PiBUaGVyZWZvcmUsIGFkZCBhIG5ldyBjb21wYXRpYmxlLCB0byBh
ZGFwdCB0aGUgSW50ZWwncyBMR00KPj4gU0RYQyBQSFkgd2l0aCBhcmFzYW4tc2RoYyBjb250cm9s
bGVyIHRvIGNvbmZpZ3VyZSB0aGUgUEhZLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBSYW11dGhldmFy
IFZhZGl2ZWwgTXVydWdhbiA8dmFkaXZlbC5tdXJ1Z2FueC5yYW11dGhldmFyQGxpbnV4LmludGVs
LmNvbT4KPiBBcmVuJ3QgdGhlc2UgcGF0Y2hlcyBhbHJlYWR5IGluIHY1LjQtcmMxCgogwqBObywg
dGhlc2UgcGF0Y2hlcyBhcmUgbm90IHRoZXJlIGluIHY1LjQtcmMxLgoKIMKgVGhlIG9uZSB3aGlj
aCBpcyBpbiB2NS40LXJjMSBzdXBwb3J0cyBvbmx5IGVNTUMsIGRvZXMgbm90IFNEL1NESU8sIHNv
IAp0aGVzZSBwYXRjaGVzIGFyZSByZXF1aXJlZC4KCi0tLQpXaXRoIEJlc3QgUmVnYXJkcwpWYWRp
dmVsIE11cnVnYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
