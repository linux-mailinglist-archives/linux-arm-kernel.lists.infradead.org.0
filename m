Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A05551E8575
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 19:43:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rng4zchLLu4i0hefHhDzzGKm758LNvztm83rPxWwTF8=; b=F4rUN4aHrkrpq1
	EJTD65oVF7Qr5RlxfuFN7FxZ/e6eVbiNftEvnWcVZfTwkiNY2JD86f21UG2k+KIrCTUTxu+YyPYCH
	NK8H/2esaVRYLX8HdZvxp6DBeTOwsWNXmGSpMjAfqZY3Dk8DqHsvbjyPCjYWogLmXcLzdQQCf9iWY
	YPFBtuk2IcHu4r5Yq+yx2dejKy5PBzu/TYfs9J3Bn85l4TQlcBEFUS6dgSU7Muy4nfw3zm9Hp4DzW
	9Zb3bxVIISa4GqoZ0RIpU8GgbaKmAHDzW8A8w1BToYS8fNMh3HhMhG9T8lpTuS3CEQz2KCMDWkzq+
	cnI8sT8ZD2O+/ERf4udw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jej2h-0001Dh-4U; Fri, 29 May 2020 17:43:39 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jej2b-0001Cn-4h
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 17:43:34 +0000
Received: by mail-wm1-x343.google.com with SMTP id j198so7295104wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 10:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=gVHswwd0kSAFGKu/imUZP8zXFuR2uDAO/9AxJgTWj2k=;
 b=vNp+WRPzmVLo1r8+DFAF8gNmZb/28QvNPt/T2VsGiAimd+bWW8HoyDgA44dOUlNzMk
 fY65A1nqYFgcKpVZcbbW6tYLMtlh1ht+H5UUiLrE4WcIm9kEtdVSx+NatHrZ+lmYrhhC
 TEkORAF/qRMaBY4K+bWEZXNc34wV8hrH9Sl3bfCSd73vqQudGr/rBOnFlwIQXYpV3J4O
 YveoFJuluD6cvfUPa7l+Qm9w38CmY64aFpgFFPWvaEWCWqOWPw39DK4zY7+IW5lqL77K
 De+wvJPgksSh0vXciTQWXdpFVX/+YAGuASngCU8rlZeV4qPQ6T0jq8K2Odu8OOwprjGT
 T3UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gVHswwd0kSAFGKu/imUZP8zXFuR2uDAO/9AxJgTWj2k=;
 b=juGy3rcbG84yJzn5wkNpdmu271cbjqE7IHky2s3DjOF9TnPoezci/kTNoEId5qWLpj
 SxUrGFhYfNPgpB1WyEAVXDCSiS5nzm9UoWYaP2LbUW/R1eynIF0fJftcG3r6Wwzsf02x
 vK2QvkyNZI8gDEbPnEReWqH4tvrxDTi/j04tOeMwVJ++Z3bFV0APvSQ+lnFGatE1WYqC
 S7uP0cycHjfiIS9OrRUX6zDinL8OF83NDLEBtH0LFUbGIbnkdteRN6peBP/NmhcYX2Wc
 5Q2tTQE62Wz9o/31WfIuKgUO4OKzwOd6jDjRHeEGOQSc2bsvG6VVTQsrZA1SaB0Ou1Uu
 2+2g==
X-Gm-Message-State: AOAM5318JeybIOCgFI8KaIeYaj7quLidoby/cdRy30di1KxQCilY3gYn
 BpgYXQ11g0qNPPo4Rc62tup3Ug==
X-Google-Smtp-Source: ABdhPJw5RPN4E4dGorLBaNA+WhTMk21B9a7oGwIJp3X1RT5IwHv1j8KNJcB+UIWbVhdzlIO7TazAAQ==
X-Received: by 2002:a1c:a403:: with SMTP id n3mr9510567wme.98.1590774210138;
 Fri, 29 May 2020 10:43:30 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:5568:5913:8a3a:5e4e?
 ([2a01:e34:ed2f:f020:5568:5913:8a3a:5e4e])
 by smtp.googlemail.com with ESMTPSA id q13sm10600040wrn.84.2020.05.29.10.43.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 29 May 2020 10:43:29 -0700 (PDT)
Subject: Re: [PATCH v8 3/8] PM / EM: update callback structure and add device
 pointer
To: Lukasz Luba <lukasz.luba@arm.com>, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-omap@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-imx@nxp.com
References: <20200527095854.21714-1-lukasz.luba@arm.com>
 <20200527095854.21714-4-lukasz.luba@arm.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <666b2f9e-d7ed-6ddb-80aa-e63ab9909ee6@linaro.org>
Date: Fri, 29 May 2020 19:43:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200527095854.21714-4-lukasz.luba@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_104333_214294_DE7068DC 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 viresh.kumar@linaro.org, liviu.dudau@arm.com, bjorn.andersson@linaro.org,
 bsegall@google.com, festevam@gmail.com, mka@chromium.org, robh@kernel.org,
 amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com, khilman@kernel.org,
 steven.price@arm.com, cw00.choi@samsung.com, mingo@redhat.com, mgorman@suse.de,
 rui.zhang@intel.com, alyssa.rosenzweig@collabora.com, orjan.eide@arm.com,
 daniel@ffwll.ch, b.zolnierkie@samsung.com, s.hauer@pengutronix.de,
 rostedt@goodmis.org, matthias.bgg@gmail.com, Dietmar.Eggemann@arm.com,
 airlied@linux.ie, tomeu.vizoso@collabora.com, qperret@google.com,
 sboyd@kernel.org, rdunlap@infradead.org, rjw@rjwysocki.net, agross@kernel.org,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 shawnguo@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjcvMDUvMjAyMCAxMTo1OCwgTHVrYXN6IEx1YmEgd3JvdGU6Cj4gVGhlIEVuZXJneSBNb2Rl
bCBmcmFtZXdvcmsgaXMgZ29pbmcgdG8gc3VwcG9ydCBkZXZpY2VzIG90aGVyIHRoYXQgQ1BVcy4g
SW4KPiBvcmRlciB0byBtYWtlIHRoaXMgaGFwcGVuIGNoYW5nZSB0aGUgY2FsbGJhY2sgZnVuY3Rp
b24gYW5kIGFkZCBwb2ludGVyIHRvCj4gYSBkZXZpY2UgYXMgYW4gYXJndW1lbnQuCj4gCj4gVXBk
YXRlIHRoZSByZWxhdGVkIHVzZXJzIHRvIHVzZSBuZXcgZnVuY3Rpb24gYW5kIG5ldyBjYWxsYmFj
ayBmcm9tIHRoZQo+IEVuZXJneSBNb2RlbC4KPiAKPiBBY2tlZC1ieTogUXVlbnRpbiBQZXJyZXQg
PHFwZXJyZXRAZ29vZ2xlLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBMdWthc3ogTHViYSA8bHVrYXN6
Lmx1YmFAYXJtLmNvbT4KCkFja2VkLWJ5OiBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9A
bGluYXJvLm9yZz4KClsgLi4uIF0KCgotLSAKPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFy
by5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFy
bzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0
dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5h
cm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
