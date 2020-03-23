Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 845E418F5A2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 14:21:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Du7Jw0bNqknkTr4nKgnLtINgeXx5Gue6C/icnv988KI=; b=XK3t9/J3Vx4yxh
	THZeyI/LBdq2lFPzNTOWY5Nk7HYWTL/FsjxTfNzxJynI+RnKACt3wtti7fgZQa9Lx6784pXfJh+nS
	zwypWtGPHf120rGNfXFnP3EM9hs5RzJ+atDAKaOModVZzYaBoUNxxXN0/aqZkYweLVuRSAPqKHrwJ
	AsMhYrtyVxwIewxJIxsPkjmfokPLs4U9a+indJ7fzfb+Kqn5EAUdXS25hVGTifb1HfBpyo8wwc8Pd
	8HX3cZjOJwf7vuwIEOb41ANi1SV94QekxBQMeB0ObthBerKzdhZiBtdJSbHLtSYuIgGCR1Bpi/L1W
	TwyY71QCffgh6GvClpHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGN19-0004Tk-05; Mon, 23 Mar 2020 13:21:23 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGN11-0004Su-9Y
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 13:21:16 +0000
Received: by mail-lf1-x141.google.com with SMTP id c5so4732732lfp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 06:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Xxi6l1fclcJsr5+CKBYbupw6npgtZlkO+8fmQyf+EsY=;
 b=Ou9NqB+7RrddepQ984O33P/tq2gZ5gJo2BJ57OHVBgXamswQgPXBiUlSQ+vaQtgnxi
 ytWbCwFtIoFWOcwj6qFoDy1T1YaIkmFYQurWVeuN/6avRstYoBMgeExBA/uSvgkC5Hq8
 AlhshJ0U4TDklxFMuVpM2/25MCTX52hjVKQtTvl5AVSGdUIJ2bqc66YFJ2pLPsp/5wJF
 rpMJ3MeOJd0uKOUSpY1ickWtL2rE/FrkxqdjeQc/PTWBhu4Dx+HsSOt4I33BvYLN69P1
 v9JLk6EiAeIJ6SyZW80o54wj/k3C92jaovUQ8apeyjMvjPgyLaxo0IeDXP+YpL103Dfa
 6/Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Xxi6l1fclcJsr5+CKBYbupw6npgtZlkO+8fmQyf+EsY=;
 b=cXbC7YD8QzxeWIT6ovsy5ChEBoXvqAk/6R1qX9LQIwSjgagYt51wgvSDoViMTLL96f
 oIDOowwhraQg+P8SkeFUnuovHL9IDfKdNSgVM7T/oIIi4fkMOBUVdljl62NwGAQs0+LE
 6v8JhGPPXRVL28s1GwOGXmwlusviEpoN/pRe2sRxrZk/rpMEZcVSn9mIxa8nBOzvAZmS
 ii1mYg4SDcCflu6s+kjKk+syHvmgupxdIhLxpd07tDMVHPfEvCgzHqiNvEJdWiP6o7gx
 l6yj1coVYz+BLpXwWm7j1uHDUX+NZzGcHlyeeGQLDUAFwMR2u/FHNmWP3xNsfT0eoBdE
 r3Yg==
X-Gm-Message-State: ANhLgQ1PaAry2op/SHfOJWqjVGHGnIVnGIo857AR4mxUreJWcqzbQ8zj
 vKHpL76uvVkPM43r3rEkuTjKK16e
X-Google-Smtp-Source: ADFU+vv/DDlXXllROgGPOZCQ2p80fEzGQ1G7DOdeC4Itk4FFwdCQQA0zXRgV7tLnBj0v44Otl+k+Uw==
X-Received: by 2002:a19:3803:: with SMTP id f3mr13350164lfa.160.1584969673354; 
 Mon, 23 Mar 2020 06:21:13 -0700 (PDT)
Received: from [192.168.2.145] (94-29-39-224.dynamic.spd-mgts.ru.
 [94.29.39.224])
 by smtp.googlemail.com with ESMTPSA id h14sm8214874lfc.24.2020.03.23.06.21.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Mar 2020 06:21:12 -0700 (PDT)
Subject: Re: [PATCH v5 3/8] clk: tegra: Implement Tegra210 EMC clock
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
 <20200310152003.2945170-4-thierry.reding@gmail.com>
 <a5c9e3d6-2b65-ec93-d8f1-7c7680092e53@gmail.com>
 <20200323110023.GB3883508@ulmo>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <baf98213-39fd-468f-58ec-fadd33c8ba5e@gmail.com>
Date: Mon, 23 Mar 2020 16:21:11 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200323110023.GB3883508@ulmo>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_062115_359901_1A57B8AE 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjMuMDMuMjAyMCAxNDowMCwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKLi4uCj4+PiArCWlm
ICghcHJvdmlkZXIgfHwgIXByb3ZpZGVyLT5jb25maWdzIHx8IHByb3ZpZGVyLT5udW1fY29uZmln
cyA9PSAwKQo+Pj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4+Cj4+IFdoeSBhbGwgdGhlc2UgY2hlY2tz
IGFyZSBuZWVkZWQ/IEkgZG9uJ3QgdGhpbmsgaXQgZXZlciBjb3VsZCBmYWlsLAo+PiBjb3VsZG4n
dCBpdD8KPiAKPiBUaGlzIGNvdWxkIGZhaWwgaWYgbm8gRU1DIHByb3ZpZGVyIGlzIGF0dGFjaGVk
LCB3aGljaCBoYXBwZW5zLCBmb3IKPiBleGFtcGxlLCB3aGVuIHRoZSBFTUMgZHJpdmVyIGlzIG5v
dCBsb2FkZWQuCgpSZXF1ZXN0aW5nIEVNQyBjbG9jayBzaG91bGQgcmV0dXJuIEVQUk9CRV9ERUZF
UiB1bnRpbCBwcm92aWRlciBpcwphdmFpbGFibGUuIFBsZWFzZSBzZWUgdGVncmEyMF9jbGtfc3Jj
X29uZWNlbGxfZ2V0IGZvciB0aGUgZXhhbXBsZS4KVGVncmExMjQgc2hvdWxkIGRvIHRoZSBzYW1l
LCBCVFcuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
