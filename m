Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45216109C73
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 11:42:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vkoiw+JYWYY8/6j89Vz9PotBKRqFmfb8qslxyJ3dVWI=; b=c3i/dDbWBhemZWDn1YIXRoAA4B
	bQtcggXOYMi2A0s/hXYihjJDoRzu+OdozOniWO78CmCUD2b7LPy146jymldsAlKzBsY1jkzwD9/qy
	AFMKq8j0um0mhOXc3tCz7xvxukfEVbZJ+aODnUlXnAw8e2FyoAJgnryc7Mbqi6LF2ViGtRVClpmyl
	UfVkGVcRTUjAmGFx1EGu9em/9/azhJWrJKTYWMD5lz5LUKrBWRsbRFUWnxoleoax1sX6lkzqymxp4
	pp1E2q4LOoId9aACTK8UakS2mSPHfv5crScgqgDB/2Wg/MsbGBJToy1QiBvkB+bQP7TTeViZHbxjs
	bj7tLPuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZYIg-0007E7-Kg; Tue, 26 Nov 2019 10:42:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZYIJ-0006p5-IT
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 10:42:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BE9A230E;
 Tue, 26 Nov 2019 02:42:04 -0800 (PST)
Received: from [192.168.0.9] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9F5FC3F52E;
 Tue, 26 Nov 2019 02:42:03 -0800 (PST)
Subject: Re: [PATCH] arm: Fix topology setup in case of CPU hotplug for
 CONFIG_SCHED_MC
To: Atish Patra <atish.patra@wdc.com>, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Morten Rasmussen <morten.rasmussen@arm.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Sudeep Holla <sudeep.holla@arm.com>
References: <20191120104212.14791-1-dietmar.eggemann@arm.com>
 <20191124214753.m6lwcdemnddltctw@core.my.home>
From: Dietmar Eggemann <dietmar.eggemann@arm.com>
Message-ID: <50dfafee-55c3-767c-55f4-7d263feafe87@arm.com>
Date: Tue, 26 Nov 2019 11:42:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191124214753.m6lwcdemnddltctw@core.my.home>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_024207_668249_8CD6F42B 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjQvMTEvMjAxOSAyMjo0NywgT25kxZllaiBKaXJtYW4gd3JvdGU6Cj4gSGVsbG8sCj4gCj4g
T24gV2VkLCBOb3YgMjAsIDIwMTkgYXQgMTA6NDI6MTJBTSArMDAwMCwgRGlldG1hciBFZ2dlbWFu
biB3cm90ZToKClsuLi5dCgo+PiBGaXhlczogY2E3NGIzMTZkZjk2ICgiYXJtOiBVc2UgY29tbW9u
IGNwdV90b3BvbG9neSBzdHJ1Y3R1cmUgYW5kIGZ1bmN0aW9ucyIpCj4+IFNpZ25lZC1vZmYtYnk6
IERpZXRtYXIgRWdnZW1hbm4gPGRpZXRtYXIuZWdnZW1hbm5AYXJtLmNvbT4KPiAKPiBUaGlzIGZp
eGVzIENQVSBob3RwbHVnIGFuZCBjb3JyZXNwb25kZW50IHN1c3BlbmQgdG8gcmFtL3Jlc3VtZSBm
YWlsdXJlcyAodGhhdAo+IGRpc2FibGVzIGFuZCByZS1lbmFibGVzIG5vbi1ib290IENQVXMpIG9u
IEE4M1QgU29DLCB0aGF0IEkndmUgc2VlbiBzaW5jZQo+IDUuNC1yYzEuCj4gCj4gVGVzdGVkLWJ5
OiBPbmRyZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4KClRoYW5rcyBmb3IgdGVzdGluZyEg
V2hpY2ggQ3B1ZnJlcSBkcml2ZXIgaXMgeW91ciBzeXN0ZW0gdXNpbmc/CgpbLi4uXQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
