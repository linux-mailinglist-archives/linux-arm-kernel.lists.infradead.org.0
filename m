Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 836D01B61D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 19:19:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Nz/MSSOz/dcZm/WtqgWmNvlDGEpIvu2WsuqGGcp1mDg=; b=oqdwUnE1nLusRKX1Kgfb1nyAk
	Iw/+OVkI9n6r2eEYoVuZCU9Rx8OZB9IuScfyCT3VspdaZ/secOytTAOy4unr2GsoTKqDIotWqXl+y
	UWA8cYVxK9/TbDc3VAWXE10wf2HfmjriB3A5tVFCxPKxEKc5p7cLHAVCy/4MvgWXFwg4e+qyATcsi
	0Oz4UxAtPSnyCNTWYcRw1i7riNiPQk8bgGQD4uKaf0djPCSM3rWqJRLsTeaAE5WQBMYFuMyE542uh
	8iXwg0+GM9lH2ce4rTZJP7Hh6gazuDRu2zwu+N/AN6F3dNXHgcXcjwfa813+pOIkr7tL9dGXIWcUF
	af2p/eZHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRfVg-00044H-OA; Thu, 23 Apr 2020 17:19:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRfVY-00043G-9R; Thu, 23 Apr 2020 17:19:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7FC5130E;
 Thu, 23 Apr 2020 10:19:27 -0700 (PDT)
Received: from [10.37.12.89] (unknown [10.37.12.89])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 713D33F68F;
 Thu, 23 Apr 2020 10:19:05 -0700 (PDT)
Subject: Re: [PATCH v6 04/10] PM / EM: add support for other devices than CPUs
 in Energy Model
To: Daniel Lezcano <daniel.lezcano@linaro.org>
References: <20200410084210.24932-1-lukasz.luba@arm.com>
 <20200410084210.24932-5-lukasz.luba@arm.com>
 <20200423151250.GB65632@linaro.org>
 <ff1c8cc5-f64d-6156-7d30-97b8426c6f99@arm.com>
 <ddf89887-4fa5-f2ca-d62a-9158f7d29db2@linaro.org>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <a826a4cd-7cbf-3d0f-352e-2978e64024d9@arm.com>
Date: Thu, 23 Apr 2020 18:19:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <ddf89887-4fa5-f2ca-d62a-9158f7d29db2@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_101928_375116_FFC90002 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: nm@ti.com, juri.lelli@redhat.com, peterz@infradead.org,
 viresh.kumar@linaro.org, liviu.dudau@arm.com, dri-devel@lists.freedesktop.org,
 bjorn.andersson@linaro.org, bsegall@google.com,
 alyssa.rosenzweig@collabora.com, festevam@gmail.com, mka@chromium.org,
 robh@kernel.org, amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com,
 khilman@kernel.org, agross@kernel.org, b.zolnierkie@samsung.com,
 steven.price@arm.com, cw00.choi@samsung.com, mingo@redhat.com,
 linux-imx@nxp.com, rui.zhang@intel.com, mgorman@suse.de, orjan.eide@arm.com,
 daniel@ffwll.ch, linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie,
 tomeu.vizoso@collabora.com, qperret@google.com, sboyd@kernel.org,
 rdunlap@infradead.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 shawnguo@kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA0LzIzLzIwIDY6MTUgUE0sIERhbmllbCBMZXpjYW5vIHdyb3RlOgo+IE9uIDIzLzA0LzIw
MjAgMTg6NTcsIEx1a2FzeiBMdWJhIHdyb3RlOgo+Pgo+Pgo+PiBPbiA0LzIzLzIwIDQ6MTIgUE0s
IERhbmllbCBMZXpjYW5vIHdyb3RlOgo+Pj4gT24gRnJpLCBBcHIgMTAsIDIwMjAgYXQgMDk6NDI6
MDRBTSArMDEwMCwgTHVrYXN6IEx1YmEgd3JvdGU6Cj4+Pj4gQWRkIHN1cHBvcnQgZm9yIG90aGVy
IGRldmljZXMgdGhhdCBDUFVzLiBUaGUgcmVnaXN0cmF0aW9uIGZ1bmN0aW9uCj4+Pj4gZG9lcyBu
b3QgcmVxdWlyZSBhIHZhbGlkIGNwdW1hc2sgcG9pbnRlciBhbmQgaXMgcmVhZHkgdG8gaGFuZGxl
IG5ldwo+Pj4+IGRldmljZXMuIFNvbWUgb2YgdGhlIGludGVybmFsIHN0cnVjdHVyZXMgaGFzIGJl
ZW4gcmVvcmdhbml6ZWQgaW4KPj4+PiBvcmRlciB0bwo+Pj4+IGtlZXAgY29uc2lzdGVudCB2aWV3
IChsaWtlIHJlbW92aW5nIHBlcl9jcHUgcGQgcG9pbnRlcnMpLiBUbyB0cmFjayB1c2FnZQo+Pj4+
IG9mIHRoZSBFbmVyZ3kgTW9kZWwgc3RydWN0dXJlcywgdGhleSBhcmUgcHJvdGVjdGVkIHdpdGgg
a3JlZi4KPj4+Cj4+PiBXaHkgbm90IGFkZCB0aGUgZW5lcmd5IG1vZGVsIHN0cnVjdHVyZSBpbiB0
aGUgc3RydWN0IGRldmljZSBkaXJlY3RseT8KPj4KPj4gRG8geW91IG1lYW4gdGhpcyBzdHJ1Y3R1
cmU/Cj4+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L2xhdGVzdC9zb3VyY2UvaW5j
bHVkZS9saW51eC9kZXZpY2UuaCNMNTM3Cj4+Cj4+IGFuZCB0byBwdXQgc29tZXRoaW5nIGxpa2U6
Cj4+IHN0cnVjdCBkZXZpY2Ugewo+PiAuLi4KPj4gIMKgwqDCoMKgc3RydWN0IGRldl9wbV9kb21h
aW7CoMKgwqAgKnBtX2RvbWFpbjsKPj4gI2lmZGVmIENPTkZJR19FTkVSR1lfTU9ERUwKPj4gIMKg
wqDCoMKgc3RydWN0IGVtX3BlcmZfZG9tYWluwqDCoMKgICplbV9wZDsKPj4gI2VuZGlmCj4+IC4u
Lgo+PiB9Owo+IAo+IFllcywgZXhhY3RseS4KPiAKClRoYW5rIHlvdSBmb3IgdGhlIGNvbmZpcm1h
dGlvbi4gSSBhbSBnb2luZyB0byBzdGFydCB3b3JraW5nIG9uIGl0LgoKQlRXLCB0aGFuayB5b3Ug
Zm9yIGFsbCBvZiB0aGUgQUNLcyBhbmQgcmV2aWV3cy4KClJlZ2FyZHMsCkx1a2FzegoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
