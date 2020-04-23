Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B7911B5988
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 12:47:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zJtQ/8LgfuVTeXHZ/NOz/dUsw3IvzPXD7MmTz9LsUm0=; b=Ck/NAVgxMgOfwz
	8GNs+eoluggyxmOU7uGlKUMnY8QnkQN8ePS09ZpjjBS7yxt/aSA3JyMDddTKqTpa+EvJU2+xWySeb
	VghHHXdf6JKioZe2eX/J/y72HrxLJ5KFP0RecIxWo0mdk8w6leyhPfW3ryRysuz2bTeuZ1g+ChPAI
	mVKs5jKZ1MDwdPv0kELBBSwMENBC4uu6f7iGlok7Uj9EPR+1OjgEMVL47XyBIGKn29fguHUq6drvJ
	AQ4Pks9q9UUG0gEYeqv3eP0CDcUL+scCrXsDM/ocf7s+mC7kqtcoLF3VMekdh3Z3b1UR+Dv9d330W
	egmM3pgqxcdJsUvcaySg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRZNo-0001H4-Fx; Thu, 23 Apr 2020 10:47:04 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRZNe-0001EV-35
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 10:46:56 +0000
Received: by mail-wr1-x441.google.com with SMTP id b11so6273123wrs.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 03:46:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=B1TBwFKRribKH6U+f2YHZKct8m6eaNTnkPh6s+3we4I=;
 b=LZH+oOofFZ6HTrIFYsXaoNlGuvZDH5TfmDKrwIVEwXATLJ/gyO7J7sHyrTD+/agh8O
 wWiBCM0FAZhVUMCrQXO7MVYC4rLCk7VA2qyt9dIa3ZKfWghqzp+RuJgis10Fj5K0M5sO
 pglrlJg6UBZe/QVph5+sbzAlxLr83iDJkP8jfFart0ffS4ED2ONJgo/X5zGpe2mTItrI
 D2/MiHPJ0/UjxCcnfxINq0p8TeK/xKrdedYUGtckd19yz7WTCbDj+abPTK1xTbstCekz
 /PV4W/s0wv/F/z6wBMYDWjuOGUjW1Zj5Ma6SnFE3rWo5uuxGnWI5vpdvebrxZVskGRg4
 Iiag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=B1TBwFKRribKH6U+f2YHZKct8m6eaNTnkPh6s+3we4I=;
 b=sTgc/fANuTH3wi9U67mlspFqHBgbtlQm6rij/jOCNiym4+JpJa39Z4vG4ojjXfgB0X
 gAtfEjkFsm6tR454agL4wIQWSPdchL2e+N52Cv0UfxrA28mo5Kwce2zrH1m+JiJwis+7
 l3fcVVvWoaYLckR9J97rZhj/bLAII05UHDHMaUSs/N7/w8L4tNS0HNujiIp9jeDtECcG
 nq8KFst85tzpklEe/hDgajkB0LZb6CuxRMex0IWUeS+PNWeQXRtuTocM8JKfTxHVwGRk
 bbmh6E3l9OkGKel3NvqPBM4/B9CKbBsf6768fUK/VWoKg329vH5FD1dojB0V/YcO0mFm
 ta6A==
X-Gm-Message-State: AGi0PuYkZ02n8hB23APq7AOZ5K4DLYxnw1nCqd6RE9E0I9M8L19vdcau
 ix9kRXWuy7kVm6F/f7uAvGzRfg==
X-Google-Smtp-Source: APiQypKk6XUIzuutA3wLhgUEchycCeMPsBVS0IXvX9Ni7yK3fu/lKAGauoLlCdpwWe5IfJMCbOUR+w==
X-Received: by 2002:a5d:5652:: with SMTP id j18mr4521872wrw.40.1587638812041; 
 Thu, 23 Apr 2020 03:46:52 -0700 (PDT)
Received: from [192.168.43.23] ([37.167.216.250])
 by smtp.googlemail.com with ESMTPSA id 17sm3087293wmo.2.2020.04.23.03.46.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Apr 2020 03:46:51 -0700 (PDT)
Subject: Re: [PATCH v6 02/10] PM / EM: introduce em_dev_register_perf_domain
 function
To: Lukasz Luba <lukasz.luba@arm.com>, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-omap@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-imx@nxp.com
References: <20200410084210.24932-1-lukasz.luba@arm.com>
 <20200410084210.24932-3-lukasz.luba@arm.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <4a1d8d5b-84f2-46b7-00ce-03178d7df72f@linaro.org>
Date: Thu, 23 Apr 2020 12:46:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200410084210.24932-3-lukasz.luba@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_034654_170973_FDA8F76E 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

T24gMTAvMDQvMjAyMCAxMDo0MiwgTHVrYXN6IEx1YmEgd3JvdGU6Cj4gQWRkIG5vdyBmdW5jdGlv
biBpbiB0aGUgRW5lcmd5IE1vZGVsIGZyYW1ld29yayB3aGljaCBpcyBnb2luZyB0byBzdXBwb3J0
Cj4gbmV3IGRldmljZXMuIFRoaXMgZnVuY3Rpb24gd2lsbCBoZWxwIGluIHRyYW5zaXRpb24gYW5k
IG1ha2UgaXQgc21vb3RoZXIuCj4gRm9yIG5vdyBpdCBzdGlsbCBjaGVja3MgaWYgdGhlIGNwdW1h
c2sgaXMgYSB2YWxpZCBwb2ludGVyLCB3aGljaCB3aWxsIGJlCj4gcmVtb3ZlZCBsYXRlciB3aGVu
IHRoZSBuZXcgc3RydWN0dXJlcyBhbmQgaW5mcmFzdHJ1Y3R1cmUgd2lsbCBiZSByZWFkeS4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBMdWthc3ogTHViYSA8bHVrYXN6Lmx1YmFAYXJtLmNvbT4KPiAtLS0K
CkFja2VkLWJ5OiBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZz4KCgoK
LS0gCjxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBz
b2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9v
ay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGlu
YXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJs
b2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
