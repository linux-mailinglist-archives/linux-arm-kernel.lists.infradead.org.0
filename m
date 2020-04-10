Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 117761A4758
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 16:25:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BdmQOvVhdflfGl6upz+DLwM76qO1hgroxiiaIg21ASU=; b=ObMxZXocrHXLpq
	UUlm9uSAEHcAkVUIPcKmNbNtuG8MH29dZM/lUCB4QMjJTbPwkVYvRP/RhQTWK1sBYDhHdGKg/5EzJ
	Lydq5zpf7WlxL3U7A6qc9vTILduDkTOfFUJFB8sI6fzLAZQwNN/DVYiUxOKgkjBZipbeF3P3ah8xm
	Yl7Q/ab4FnTUb1CElX0g4tGlyFpV0J6+sngKwT29ZjBpnwBMn3JvpiLCVV/zkrW8yAX1RVtnrk4sB
	n35im2QkK1hc7NzBIlBDIsNXVT4u4SPOcRmY2C0Hlwc3eJ30PaTwmvivTSYc+TiTHqgn6tgxn+qoH
	Ib3gFEQ/EEHtmmR/SwZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMuaq-0007JZ-LP; Fri, 10 Apr 2020 14:25:16 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMuaj-0006ay-R5
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 14:25:11 +0000
Received: by mail-lj1-x244.google.com with SMTP id q22so2144071ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 07:25:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=/ehD8KhbGw8RBYjKOC/7NdBUZTspDLoiPEM0cA7IzLg=;
 b=HVedsMouIpPMOaSrnhVBKi63szMGWlLxEa27tg43u0relHpAyYMi3dWhY1RHA8BDbb
 UZon6lQA99NPZtftBD02/JjDqZljY9DZAyM4jWOPdRxXkHmighbUucl0ny+7C9X8VJZ7
 tHxmfEYjdP2DjIXpRuYsLqto3FUkzwYjUvGroWFmgijlXbX0Gwp+WmWCz2nL1kUEGTBS
 wGdnRCkmLa2L10aid/ixr9N71D3OyiImoS9xn84fFOHGOiP8qx2JKiRgu44gTuYwD6+b
 JCjq+5Ys//9sf1zrnIrDA2p0JGLauesr5rKKg0ocyX0nRAnZh1rjGlVzMS2Ttm4K/rbw
 wvig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/ehD8KhbGw8RBYjKOC/7NdBUZTspDLoiPEM0cA7IzLg=;
 b=nMMuKgU86lSzFeq34as3/neGa5POMY+0Cye1cJuh11WB9dJDn/+5MqdPkleX7fOHSN
 /sS4JXQE6hiX9+GQiEep4W2INzjKqzm2Mof8RnfaG2kw+ywF6mCjPYasLySx1HTrtXaJ
 EqWX4t93473yxtm004qjgSmbRMbNbYUOSJqms/0FdeDiD9z5Zu1hTgcbzU3gwD5O47So
 xFNDSmbPGV4BT2a/4MRdjeeW3TQnivxHOJQFYhBMBkYZ5ZcWdo3aaJ54dARElqp5SmkZ
 CNuRt+CCnNGNku59NGMA5u1L7p9oqVFW2FZjEy04UG1B3lDO1MWif2kFD6dW43DCO9If
 plBQ==
X-Gm-Message-State: AGi0PuZJCtk82UAuK6vjkirxA1ac1dXijcds2QrCOaleiCnZZcMleznk
 agcnPcmDA6EwHlrTMRv314tRT92O
X-Google-Smtp-Source: APiQypIswk2UCbpggVuwhy5A//01Aw69rwyJgIWFTzqJMd7aT0+hrS4oHybBAqFTMhBEThRNArHOWg==
X-Received: by 2002:a2e:9c8:: with SMTP id 191mr3043405ljj.259.1586528707812; 
 Fri, 10 Apr 2020 07:25:07 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.googlemail.com with ESMTPSA id c203sm1378946lfd.38.2020.04.10.07.25.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Apr 2020 07:25:07 -0700 (PDT)
Subject: Re: [PATCH v6 09/14] memory: tegra: Add EMC scaling support code for
 Tegra210
To: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh+dt@kernel.org>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-10-thierry.reding@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <e015e35b-3f82-56e1-2d86-ebc467eb92f7@gmail.com>
Date: Fri, 10 Apr 2020 17:25:06 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200409175238.3586487-10-thierry.reding@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_072509_912674_53ABDC43 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDkuMDQuMjAyMCAyMDo1MiwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKLi4uCj4gK3N0YXRp
YyBpbnQgdGVncmEyMTBfZW1jX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+
ICt7Cj4gKwlzdHJ1Y3QgdGVncmEyMTBfZW1jICplbWMgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShw
ZGV2KTsKPiArCj4gKwlkZWJ1Z2ZzX3JlbW92ZV9yZWN1cnNpdmUoZW1jLT5kZWJ1Z2ZzLnJvb3Qp
Owo+ICsJdGVncmEyMTBfY2xrX2VtY19kZXRhY2goZW1jLT5jbGspOwoKSXQncyBncmVhdCB0aGF0
IHlvdSB3YW50IHRvIG1ha2UgdGhpcyBkcml2ZXIgbW9kdWxhciwgYnV0IEkgZG9uJ3QgdGhpbmsK
dGhhdCBpdCdzIGEgZ29vZCBpZGVhIHRvIHN1ZGRlbmx5IHJpcCBvZmYgdGhlIEVNQyBjbG9jayBm
cm9tIHRoZSB1c2Vycy4KCkl0IHNob3VsZCBiZSBiZXR0ZXIgdG8gc2ltcGx5IGRpc2FsbG93IHVu
bG9hZGluZyBvZiB0aGlzIGRyaXZlciBvbmNlCml0J3MgbG9hZGVkLgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
