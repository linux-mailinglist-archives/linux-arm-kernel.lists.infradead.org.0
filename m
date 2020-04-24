Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8196F1B724C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 12:43:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Yna78IHAY3aYJSOaZ4MiCdKxr9iwQyWraqB2CUoEPw=; b=YCeBIYxY+Hs5fx
	oE7oxeRfjRW4BdpJmra0oKWbEJe6oRJTaLXM/Ch0PncVpyW/AKPjICC3+vCot9BZO8yrD1LqPelkw
	gCrvIjgRHAxvouzUhSM0X7LF2OngPB7wXNsxROD3aTw3jgirvECQkmNYw/M0ErnEEv+fycDmFvwNT
	3Os88KGNjS+lzW/iIYunZQ6QBbhbfCaZ8qDauXWocM1ucAKkLbC5IqG1/72ITpEdihXEr0v4CCI54
	i0J4zk8YWIAb56/9DGzrGe9j/IEh5ul3jHnMxPV3KWn/OK51DoZSuCWSJsrXp9NQYVkBLQgbsxOKQ
	ggtCsTMh7hMejwMAIXRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRvo0-00015c-3i; Fri, 24 Apr 2020 10:43:36 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRvnr-00013j-LR
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 10:43:30 +0000
Received: by mail-wm1-x342.google.com with SMTP id z6so10173649wml.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 03:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=dnKniRRBm6KLmX43VEEOIzRt6LvZaDlvdGMTuziUADI=;
 b=piLvENvWl4DmoeSXfPxu8cdGgMrHv2thfba7D+KeyKcqRq/kNFVVmKom7MLokxYEuw
 879epAZEr1e2PpWgseR+b75NAsekCVl6NCQoM153pJJCSpIeP+6b3oEHRZLWZiNP58hl
 P9DroLVXk/DWSoF5KHOurjOqNB4LOM7EUPV4Gi6X5heKiiaM55ttbsdUycg2GLZQcxul
 gF90xjqqxT8NIuixcLqed8aWxMKSXoOgeufFHqDlxj/esFD8joBr4w3NLmBGoxdujOlc
 OLzS4B4TB0qg1ReZnFkVVNfYELkuLqzE0zceluUvZmW1Yd7rSGF0/vctUFq9hZkFtRje
 8wZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dnKniRRBm6KLmX43VEEOIzRt6LvZaDlvdGMTuziUADI=;
 b=gorFEVHyGWDmPeDVv4Car2nK7npUZqOJV+Ae8Fcj/MQirbKClLWJP2KqFrmQ2S1HGC
 pq2NJV5W9Wc4spbj2wveIrMJ/WXrcQUbtDE/nYWgiV4fc6tjuu/HeEDcrvn7Y4X+L015
 X9tQXxaDx6dcau63QHdQVj2AdBUy+V/aA+qQdDNJ/MK+eguJNkAsa71qHqnVOMrH+d4j
 FJwf9ZoAJ0Jyd4/rbWbZBQ9mAc1uQb/uKsdWLD5mEI+evbdr3k8fPQiiW3q1CrQ5yKfP
 mMLEW0RKFGK+TUdSz8kKvFLAyT4XGf2mIekrEDrnNRRRnyDhCrO0IvaCt4fY6KI9R1r2
 P1xA==
X-Gm-Message-State: AGi0PuZOPslwIg3gOyVDH5e/bpSxOK7Z8omJ9L2APQmkFWu5nVuMt7ol
 mrMcTUa0GTLjVp2vq9eSgpOeqw==
X-Google-Smtp-Source: APiQypI2Afy4s5XfsjxxMEU/3JcXJfiG2GDyNW0Ogfm/BVtwSxQPPPiy1JiCL97MEDi+IXKQD3oz7Q==
X-Received: by 2002:a1c:5448:: with SMTP id p8mr9189810wmi.173.1587725005656; 
 Fri, 24 Apr 2020 03:43:25 -0700 (PDT)
Received: from [192.168.43.23] ([37.166.159.243])
 by smtp.googlemail.com with ESMTPSA id t2sm2341981wmt.15.2020.04.24.03.43.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Apr 2020 03:43:24 -0700 (PDT)
Subject: Re: [PATCH v6 09/10] thermal: devfreq_cooling: Refactor code and
 switch to use Energy Model
To: Lukasz Luba <lukasz.luba@arm.com>
References: <20200410084210.24932-1-lukasz.luba@arm.com>
 <20200410084210.24932-10-lukasz.luba@arm.com>
 <20200423175708.GG65632@linaro.org>
 <b93226ac-a1f1-c1d0-fc25-0bd0f336252a@arm.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <73fb5d45-d8ac-534f-fd38-619739130160@linaro.org>
Date: Fri, 24 Apr 2020 12:43:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <b93226ac-a1f1-c1d0-fc25-0bd0f336252a@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_034328_071971_2AF9705E 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjQvMDQvMjAyMCAxMjowMiwgTHVrYXN6IEx1YmEgd3JvdGU6Cj4gSGkgRGFuaWVsLAo+IAo+
IE9uIDQvMjMvMjAgNjo1NyBQTSwgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4+IE9uIEZyaSwgQXBy
IDEwLCAyMDIwIGF0IDA5OjQyOjA5QU0gKzAxMDAsIEx1a2FzeiBMdWJhIHdyb3RlOgo+Pj4gVGhl
IG92ZXJoYXVsZWQgRW5lcmd5IE1vZGVsIChFTSkgZnJhbWV3b3JrIHN1cHBvcnQgYWxzbyBkZXZm
cmVxIGRldmljZXMuCj4+PiBUaGUgdW5pZmllZCBBUEkgaW50ZXJmYWNlIG9mIHRoZSBFTSBjYW4g
YmUgdXNlZCBpbiB0aGUgdGhlcm1hbAo+Pj4gc3Vic3lzdGVtIHRvCj4+PiBub3QgZHVwbGljYXRl
IGNvZGUuIFRoZSBwb3dlciB0YWJsZSBub3cgaXMgdGFrZW4gZnJvbSBFTSBzdHJ1Y3R1cmUgYW5k
Cj4+PiB0aGVyZSBpcyBubyBuZWVkIHRvIG1haW50YWluIGNhbGN1bGF0aW9uIGZvciBpdCBsb2Nh
bGx5LiBJbiBjYXNlIHdoZW4KPj4+IHRoZQo+Pj4gRU0gaXMgbm90IHByb3ZpZGVkIGJ5IHRoZSBk
ZXZpY2UgYSBzaW1wbGUgaW50ZXJmYWNlIGZvciBjb29saW5nCj4+PiBkZXZpY2UgaXMKPj4+IHVz
ZWQuCj4+Pgo+Pj4gW2xrcDogUmVwb3J0ZWQgdGhlIGJ1aWxkIHdhcm5pbmddCj4+PiBSZXBvcnRl
ZC1ieToga2J1aWxkIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+Cj4+PiBSZXZpZXdlZC1ieTog
U3RldmVuIFJvc3RlZHQgKFZNd2FyZSkgPHJvc3RlZHRAZ29vZG1pcy5vcmc+ICMgZm9yCj4+PiB0
cmFjaW5nIGNvZGUKPj4+IFNpZ25lZC1vZmYtYnk6IEx1a2FzeiBMdWJhIDxsdWthc3oubHViYUBh
cm0uY29tPgo+Pgo+PiBJcyBpdCBwb3NzaWJsZSB0byBzcGxpdCB0aGlzIHBhdGNoIGludG8gc21h
bGxlciBwYXJ0cz8gSXQgaXMgaGFyZCB0bwo+PiB1bmRlcnN0YW5kCj4+IHdoYXQgaXMgcmVsYXRl
ZCB0byB0aGUgZW0gY29udmVyc2lvbiBhbmQgb3RoZXIgY2hhbmdlcyB3aGljaCBsb29rIG5vdAo+
PiByZWxhdGVkCj4+IHNvIGZhci4KPj4KPiAKPiBObyBwcm9ibGVtLCBJIHdpbGwgZG8gdGhlIHNw
bGl0IChpdCB3aWxsIGJlIGluIHRoZSB2NykuCgpUaGFua3MgTHVrYXN6CgoKLS0gCjxodHRwOi8v
d3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3Ig
QVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMv
TGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0
dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
