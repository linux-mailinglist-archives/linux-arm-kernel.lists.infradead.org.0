Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 642A81A1555
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 20:56:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eoVTwd2+HIOa5eJPOB6ibcXkJSqytUOEtAQzgGVLa30=; b=rW1JBk/zMs2G0zQhyNO/PrLQ3
	RkqG6hixtck3Gb572rCGbcdANEzpyI88kcSJ+vRT/KkG3rwBqK5wUId3BVqFEIiqQpJ7BxadYBL2p
	4rzryhuIOdvKcLbSx7ts2yWYBO5khKGCUjUDDzl+LSkEJsaVXLSHnN253++S61pBQB62iCxOy1pH/
	kaYHEgm5XFq3dpcxaUFtvSin84BSNJNKAc5tEaA+eczKdvEgse82G58oaMUk+rTkU/kQGpFeBwMqz
	ZRl3xeqEmBeIQgaPZ3SnTZxaR67XEZCfejgK5VqdEUhBKG6xaVLTWn5mVhWn1SJSkmyXBpx0U3kOL
	Sj+HK0nkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLtOH-0006kH-MJ; Tue, 07 Apr 2020 18:56:05 +0000
Received: from hqnvemgate26.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLtO9-0006ja-N1
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 18:55:58 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate26.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e8cccaf0000>; Tue, 07 Apr 2020 11:55:43 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Tue, 07 Apr 2020 11:55:56 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Tue, 07 Apr 2020 11:55:56 -0700
Received: from DRHQMAIL107.nvidia.com (10.27.9.16) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 7 Apr
 2020 18:55:56 +0000
Received: from [10.24.37.103] (10.124.1.5) by DRHQMAIL107.nvidia.com
 (10.27.9.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 7 Apr 2020
 18:55:52 +0000
From: sumitg <sumitg@nvidia.com>
Subject: Re: [TEGRA194_CPUFREQ Patch v2 2/3] cpufreq: Add Tegra194 cpufreq
 driver
To: Dmitry Osipenko <digetx@gmail.com>, <rjw@rjwysocki.net>,
 <viresh.kumar@linaro.org>, <catalin.marinas@arm.com>, <will@kernel.org>,
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>, <talho@nvidia.com>,
 <linux-pm@vger.kernel.org>, <linux-tegra@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <1586028547-14993-1-git-send-email-sumitg@nvidia.com>
 <1586028547-14993-3-git-send-email-sumitg@nvidia.com>
 <ba12496f-ac27-d4f2-dc69-d0a7e2d58679@gmail.com>
Message-ID: <9004e519-61c0-83fd-dc24-07f84c384f8a@nvidia.com>
Date: Wed, 8 Apr 2020 00:26:22 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <ba12496f-ac27-d4f2-dc69-d0a7e2d58679@gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 DRHQMAIL107.nvidia.com (10.27.9.16)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1586285743; bh=64QyJ4TUbgO1pBh2CRY7c5Q8fJPeuJLJBdC3Q0tjXdQ=;
 h=X-PGP-Universal:From:Subject:To:CC:References:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=n2cusTcLOgy11bAq/RqsEFwFiXE290u6N7UZltFIwxJsmttTW60QQrcP4VH9vwAET
 VPkZ6LW24GfHmyMHXwB1v7sjc46E1yW+lpfs7efhTjAqLV/1bsmj5nJfoDVFpjBQ5x
 +R8snfDT2DFJAJNm/7+GS8Vt2lX6ZZvztbHaA90WI833NlXGgR/cTgSkEy78+Y2Hlk
 PUZcIkkADtZ1lwocfkVFVjooe5LNI/WjNz1Yo9HodpfEJGqNOhzD8g1eV+4YJWqwAN
 swv0UdjlTm6iEUmKQ7IuTpnh792gt14tgEwK5LHIwQNJaDZ7Pofw+6tKpc1aisHNHg
 Fj9HnMM99t0tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_115557_751356_EA48D0CF 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: sumitg@nvidia.com, bbasu@nvidia.com, mperttunen@nvidia.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwNS8wNC8yMCA3OjQxIFBNLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4gRXh0ZXJuYWwg
ZW1haWw6IFVzZSBjYXV0aW9uIG9wZW5pbmcgbGlua3Mgb3IgYXR0YWNobWVudHMKPiAKPiAKPiAw
NC4wNC4yMDIwIDIyOjI5LCBTdW1pdCBHdXB0YSDQv9C40YjQtdGCOgo+IC4uLgo+PiArc3RhdGlj
IHZvaWQgdGVncmFfcmVhZF9jb3VudGVycyhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCj4+ICt7
Cj4+ICsgICAgIHN0cnVjdCByZWFkX2NvdW50ZXJzX3dvcmsgKnJlYWRfY291bnRlcnNfd29yazsK
Pj4gKyAgICAgc3RydWN0IHRlZ3JhX2NwdV9jdHIgKmM7Cj4+ICsgICAgIHU2NCB2YWw7Cj4+ICsK
Pj4gKyAgICAgLyoKPj4gKyAgICAgICogcmVmX2Nsa19jb3VudGVyKDMyIGJpdCBjb3VudGVyKSBy
dW5zIG9uIGNvbnN0YW50IGNsaywKPj4gKyAgICAgICogcGxsX3AoNDA4TUh6KS4KPiAKPiBJcyBj
aGFuZ2luZyBQTExQIHJhdGUgcmVhbGx5IGltcG9zc2libGUgb24gVDE5ND8gV2hhdCBtYWtlcyB5
b3Ugc2F5IHRoYXQKPiBpdCBydW5zIG9uIGEgZml4ZWQgNDA4TUh6Pwo+IApQYXN0aW5nIGJlbG93
IGZyb20gVFJNLgpSZWdpc3RlciAiTlZGUkVRX0ZFRURCQUNLX0VMMSI6Ci4uLi4KWzMxOjBdIFBM
TFAgY291bnRlcjogVGhpcyBjb3VudGVyIGNvdW50cyBhdCBhIGZpeGVkIGZyZXF1ZW5jeSAoNDA4
IE1IeikuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
