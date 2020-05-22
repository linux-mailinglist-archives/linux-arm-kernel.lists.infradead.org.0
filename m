Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 812B01DE788
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 15:01:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xcuokcHUEjz4uHnAdJl+YLViO+FiQucDHUawTQbtCGE=; b=AIGFbztOkEoTnI
	hkVX+D9ujj5y1GHcAG4orAQsNpwMueljjywebbsOey0x55/hPqr6K4ZeSYekb3+QvajCRkDKN2LrD
	qHeWvTbGRUUq12vAFq/xzzN25O51RAlUBrnhmIAPTzU8xdBpQHNjH4iaFmkAxRr4KgPWUnY9bAMVg
	lVdvVXFwzdB1XMnadi+oRlbpe0moAsJhrLub675VjLjDw8ZDUBZD+HQyZyguy7kzUexxCNk8DEsa5
	y8i0grf3jkkN4fDsdM7LQrczfeYS1kBiwkc8oHM6u/snLdGsnW5UnXC2wstzzJexcl221LAe5D4An
	kiDWG/IWKhd3P8F8eviQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc7J0-0004Ou-Re; Fri, 22 May 2020 13:01:42 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc7Io-0004N1-0l
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 13:01:31 +0000
Received: by mail-wr1-x443.google.com with SMTP id l11so10136391wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 06:01:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=9X+6V5jDmeXTe6rS8P4JClAQNJrn6NvnpP1JB3UFEbw=;
 b=YWkUKysrh6+PMjjUTe5ooMNLZS4Sp7v0UQTdOOQNicRmgEf860gCAhKd4iWSHOF72e
 jm3ChkOUgSK4DLya4RvXq8yUfIpCze+gLJDZFCO4LZ3UF/6GkygmGMt2PA714u9D6mxZ
 rWMr4jB3CzL7zvC1iQ67OD0PiS4Qu7V+BO2Suu5KcIIwI72DwK5uQcICLhezjVyMk5Vn
 sIZQAuSUVqZwsHPeppZrpH7ECdE5lXD/W9xgY1CaKVzQYHaQwovjjZBDCk8UtXE0kNyo
 6bgxeerdor9S2W1uLBNNwIUeZ3h5a3GyNaxo0wFD7IkwRsetuaB/AmgtPSqlAIsttUIn
 1xfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9X+6V5jDmeXTe6rS8P4JClAQNJrn6NvnpP1JB3UFEbw=;
 b=h8USY+TVP3wN+SJLHjgejIxWdlEnvlMx9tVwCfNMV1IKE07sklZiw55EXb0gUtj+7A
 b2rplsHwSHPTD3RgAyIL3hSDk0pPhOsYY2BdXOgELBoQKCz237SF2D0GaLabtMR8qYLe
 63L0miTfyanThGWV+JEsde0o42zEZiGO9tzjXp72cvO+wD1AGg0YSiZINhie7PyfvoPX
 a55K0Dqg0XSgavASk+2htZesgXKpuOTvEe5yWFZdSo6HdGWj2scwjlHw5qjwBC9kbLxF
 XrfCxq5PhEMJdd0owvO8alcmm2w86axQipO4gWhDpFjmr1UcaDGMCv9ARAiA4P+usg+T
 iBMQ==
X-Gm-Message-State: AOAM532vz1nwdThjBjzKINEmU29shEhaOAMISERT5OFaoBWxMueGfdWj
 zo7LGAi7aAR0TFdAJ/GgC7EehA==
X-Google-Smtp-Source: ABdhPJxJ8KBrYk08oALRCUqYyvoY0fMNZPijmmysUh2NVhGB194Z3PpAkmAZwdK1JrZCQ2rLDVlmOQ==
X-Received: by 2002:a5d:4ed0:: with SMTP id s16mr3605467wrv.166.1590152488310; 
 Fri, 22 May 2020 06:01:28 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:a82f:eaec:3c49:875a?
 ([2a01:e34:ed2f:f020:a82f:eaec:3c49:875a])
 by smtp.googlemail.com with ESMTPSA id 62sm8518652wrm.1.2020.05.22.06.01.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 06:01:27 -0700 (PDT)
Subject: Re: [PATCH v7 00/15] Add support for devices in the Energy Model
To: Lukasz Luba <lukasz.luba@arm.com>, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-omap@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-imx@nxp.com
References: <20200511111912.3001-1-lukasz.luba@arm.com>
 <abff69b6-b033-18e2-f380-ceccb42c6b01@linaro.org>
 <3f6652a5-ad9b-15cb-08a8-160becd3f912@arm.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <ef4b039d-b445-6ef1-8f62-00dab112e37b@linaro.org>
Date: Fri, 22 May 2020 15:01:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <3f6652a5-ad9b-15cb-08a8-160becd3f912@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_060130_094830_5276D173 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

T24gMjIvMDUvMjAyMCAxNDo1OCwgTHVrYXN6IEx1YmEgd3JvdGU6CgpbIC4uLiBdCgo+Pj4KPj4+
IFRoZSBwYXRjaCBzZXQgaXMgYmFzZWQgb24gbGludXgtbmV4dCB0YWcgbmV4dC0yMDIwMDUwOC4K
Pj4KPj4gRG8geW91IHRoaW5rIGl0IGlzIHBvc3NpYmxlIHRvIHJlc3BpbiBhZ2FpbnN0IGxpbnV4
LXBtIG5leHQgPwo+IAo+IFllcywgSSB3aWxsIGRvIGl0IGFuZCBzZW5kIHRoZSB2OC4KPiAKPj4K
Pj4gSSB3YW50ZWQgdG8gdHJ5IHRoZSBzZXJpZXMgYnV0IEknbSBnZXR0aW5nIG5vbiB0cml2aWFs
IGNvbmZsaWN0cyB3aXRoCj4+IHRoZSBkZXZmcmVxX2Nvb2xpbmcgY2hhbmdlcwo+Pgo+Pgo+IAo+
IExldCBtZSB0YWtlIGNhcmUgb2YgdGhpcy4KClRoYW5rcyBMdWthc3ogIQotLSAKPGh0dHA6Ly93
d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBB
Uk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9M
aW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0
ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
