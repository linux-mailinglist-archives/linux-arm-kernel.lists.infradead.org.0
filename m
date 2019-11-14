Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABDDEFBD3C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 01:58:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F30bfPqNsBaf6OPSJTeRZRkzxMeb9eo61/5nQANEFz4=; b=hAdgZwDXEXHor5C2hhX6HNIk/
	ZceKn/Zix71lbdrbqV9lvE9Xhg4O0+9v7Kq35uI7bSSthQKIgfM7uAX4pPba3Ri/4dZSFAAcGsUYM
	p1PGkBfGfHK+uwaz9N7DOqF2qAlRwbmeG+HCl1ZO1SmI3H8Ho4eLkMW+/J0db1RX12cvgfQwMpbsd
	kY8VMS8JrFvB9cJ4Xv0y/b/YIBVh7f8qFZpBbvv4b5aCX1CZRgiQtAZN5Ak5y91quMCOQPcoA7eIm
	KboKAEc8ni/iM82wMHyVDY+GqmHoP+4cwy75VMqbGd9ezlA3NgKa0SqYZwE5RQ3nkCEcDRYyc3jEw
	aeNWPF3Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV3T8-0007mS-5b; Thu, 14 Nov 2019 00:58:42 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV3T0-0007m5-Ux
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 00:58:36 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 16:58:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,302,1569308400"; d="scan'208";a="229945949"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.6]) ([10.239.13.6])
 by fmsmga004.fm.intel.com with ESMTP; 13 Nov 2019 16:58:29 -0800
Subject: Re: [kbuild-all] Re: [arm-platforms:kvm-arm64/vcpu-xarray 42/49]
 arch/powerpc/kvm/powerpc.c:792:29: error: 'kvmppc_decrementer_wakeup' defined
 but not used
To: Marc Zyngier <maz@kernel.org>, kbuild test robot <lkp@intel.com>
References: <201911140103.uQVAr0CN%lkp@intel.com>
 <c11fdfaa843e2d0131680c864d061950@www.loen.fr>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <5f2c6f45-1607-c77a-ab08-9723701e9901@intel.com>
Date: Thu, 14 Nov 2019 08:58:10 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <c11fdfaa843e2d0131680c864d061950@www.loen.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_165835_035719_0955503B 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
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
Cc: kbuild-all@lists.01.org, linux-arm-kernel@lists.infradead.org,
 Sean Christopherson <sean.j.christopherson@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMS8xNC8xOSAyOjAyIEFNLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4gT24gMjAxOS0xMS0x
MyAxNzo1MSwga2J1aWxkIHRlc3Qgcm9ib3Qgd3JvdGU6Cj4+IHRyZWU6Cj4+IGh0dHBzOi8vZ2l0
Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L21hei9hcm0tcGxhdGZvcm1zLmdp
dAo+PiBrdm0tYXJtNjQvdmNwdS14YXJyYXkKPj4gaGVhZDrCoMKgIDE0ODc0ODA5OTM2MzMyN2Q4
Y2I1NmFhZmQzODZiNzBhYzhjNjg4MzcKPj4gY29tbWl0OiA2NGU2OTkxYzIyMzRjM2JhMWUzNmY5
OTEzMDJiMWJiZTFiYjc5MWYxIFs0Mi80OV0gS1ZNOiBQUEM6Cj4+IE1vdmUgYWxsIHZjcHUgaW5p
dCBjb2RlIGludG8ga3ZtX2FyY2hfdmNwdV9jcmVhdGUoKQo+PiBjb25maWc6IHBvd2VycGMtZGVm
Y29uZmlnIChhdHRhY2hlZCBhcyAuY29uZmlnKQo+PiBjb21waWxlcjogcG93ZXJwYzY0LWxpbnV4
LWdjYyAoR0NDKSA3LjQuMAo+PiByZXByb2R1Y2U6Cj4+IMKgwqDCoMKgwqDCoMKgIHdnZXQKPj4K
Pj4gaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2ludGVsL2xrcC10ZXN0cy9tYXN0
ZXIvc2Jpbi9tYWtlLmNyb3NzCj4+IC1PIH4vYmluL21ha2UuY3Jvc3MKPj4gwqDCoMKgwqDCoMKg
wqAgY2htb2QgK3ggfi9iaW4vbWFrZS5jcm9zcwo+PiDCoMKgwqDCoMKgwqDCoCBnaXQgY2hlY2tv
dXQgNjRlNjk5MWMyMjM0YzNiYTFlMzZmOTkxMzAyYjFiYmUxYmI3OTFmMQo+PiDCoMKgwqDCoMKg
wqDCoCAjIHNhdmUgdGhlIGF0dGFjaGVkIC5jb25maWcgdG8gbGludXggYnVpbGQgdHJlZQo+PiDC
oMKgwqDCoMKgwqDCoCBHQ0NfVkVSU0lPTj03LjQuMCBtYWtlLmNyb3NzIEFSQ0g9cG93ZXJwYwo+
Pgo+PiBJZiB5b3UgZml4IHRoZSBpc3N1ZSwga2luZGx5IGFkZCBmb2xsb3dpbmcgdGFnCj4+IFJl
cG9ydGVkLWJ5OiBrYnVpbGQgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4KPgo+IFdlbGwsIHRo
aXMgYnJhbmNoIHdhcyBub3Qgc3VwcG9zZWQgdG8gYmUgdGVzdGVkIGF0IGFsbC4uLgo+IEkgZ3Vl
c3MgaXQgaXMgdG9vIGxhdGUgdG8gdGFrZSBpdCBkb3duIDotKAo+Cj4gwqDCoMKgwqDCoMKgwqAg
TS4KCkhpIE1hcmMsCgpUaGFua3MgZm9yIHRoZSBleHBsYW5hdGlvbiwgd2UnbGwgYmxhY2tsaXN0
IHRoaXMgYnJhbmNoIHRvIGF2b2lkaW5nIHRlc3QgCml0IGFnYWluLgoKQmVzdCBSZWdhcmRzLApS
b25nIENoZW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
