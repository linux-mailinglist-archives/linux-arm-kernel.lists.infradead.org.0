Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A318BF99
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 19:27:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vPEK3pOBaVvUdBBnS2iDV2pRXo72oGuJaRF2YyP1NoA=; b=GYBhQnrbBj0DXL
	bZIvn4tJvtGHRDIx3WzKm4KVJaMDFVIhzjt1J4HnXOIhHqjWlXwqu0WAxKZCutD/xY4PEIycbMQvg
	VhLLmpo54ZCHosep7eSX4XdGAniqYAgtPWFA6LCta9Ut8PPZxXJr5o382zzoLjLOdF8LMpDZSTqc4
	+ZZDNt2TSy8ht2UMwWDPr93onaFVuiLbjEmLe6FHvXjtDv+c8Keav7sbfzgHJxplMKx2Wco+ApF6k
	7WZewYxF52vBgBPECwFymGDGO2dzQ46vic7Gl5w2OTI2GKeyFWG3fVrathYabXaFM+eyz6GnyW+IE
	jlTaJrlYRXNfe2lBMHVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxaZj-0004HP-Eg; Tue, 13 Aug 2019 17:27:11 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxaZY-0004Gj-0m
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 17:27:01 +0000
Received: by mail-pf1-x442.google.com with SMTP id w2so1165463pfi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 10:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=+dEEz2DPMg5NRkLHjMzIkO8s6nJqDPDJQGPheHmMdr8=;
 b=kOd3/31cW/3Hcupyj3kEvbLs90dUy6tmI/PaM3d8UXwIhtgtxvzoGB7Z5/bKK6ODe5
 TJKgYx7Q0FbrPQWOJg+FeLPeo5OUPr9bPzlrRPy6xejniOO9mQN2cN/Sc3hsmkaKmux5
 ldgRRhLnflOpsHyCvgrNqD6tAVGGJwPV+StaW0cHE2XUHCwfg6hBdjT+0Mg5geWVoY+G
 D1THVUo08yYVH92fQRjqx4xKgOFh+XkcYDpz3XB5GhkEAYU4fojaezbs+HbBO/T+mcuN
 C130zPb1aga3kzo4wvCJs8OpXMaHbYCmTQyoEs2tQRLOMlbLolOMz1CRXp6hy4wraFty
 x7Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=+dEEz2DPMg5NRkLHjMzIkO8s6nJqDPDJQGPheHmMdr8=;
 b=bRza+FB7DscuCSe/Uc9gArg03kR/AUpgq6o5KbNNjpY1e92ZJdUorFubvKhC7PT5hB
 FWzaskBKk6nPxGRjJXJwi0O5Lt9D4RkjgAw7UNUb6kS77g3eUEcR+nMT8eN9iHwFDzA6
 22y/9jHrCJLNwJk5hiCLkABmPBPoP6aB81MwfMSifhQm2uWMS1nSl8cCtKRqwm0g8lC4
 QJ/hFTrTH14BkZBy1lUnRUYvU1gys4DWLkFuLw7HY99+FDOMoB0tKEDrkWqDU7r4jVNN
 Gujeh37/BR2UqwVbQsWixE9J78eAs+bWqHTGFnEap1vBtnnRKG12U1VjJlZMrA48Hvy6
 YFwQ==
X-Gm-Message-State: APjAAAW3Lc4xzIHet5Fk/1hUvmfHFKwCW7h6FmAnhhLiO4Qk/OxkL3yy
 MYAdztvXbfOvEBBSJwOwLF7fPA==
X-Google-Smtp-Source: APXvYqxUs8WoMH+cvgCWvT0LeVRPkQ3vVM9aC3GV0KMJZmv0+f5n4lnRPLM5gIQ36LPzfDOH9XHD4g==
X-Received: by 2002:a62:198d:: with SMTP id 135mr41718269pfz.169.1565717218947; 
 Tue, 13 Aug 2019 10:26:58 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:35:cf9b:bad:702c])
 by smtp.gmail.com with ESMTPSA id a12sm2090093pje.3.2019.08.13.10.26.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 13 Aug 2019 10:26:58 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Subject: Re: next/master boot: 285 boots: 16 failed, 264 passed with 3 offline,
 1 untried/unknown, 1 conflict (next-20190718)
In-Reply-To: <20190718162005.GF5761@sirena.org.uk>
References: <5d3057c8.1c69fb81.c6489.8ad2@mx.google.com>
 <20190718162005.GF5761@sirena.org.uk>
Date: Tue, 13 Aug 2019 10:26:57 -0700
Message-ID: <7hv9v1yo0u.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_102700_082621_45CD13D5 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@vger.kernel.org, linux-next@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Mark Brown <broonie@kernel.org> writes:

> On Thu, Jul 18, 2019 at 04:28:08AM -0700, kernelci.org bot wrote:
>
> Today's -next started failing to boot defconfig on rk3399-firefly:
>
>> arm64:
>
>>     defconfig:
>>         gcc-8:
>>             rk3399-firefly: 1 failed lab
>
> It hits a BUG() trying to set up cpufreq:
>
> [   87.381606] cpufreq: cpufreq_online: CPU0: Running at unlisted freq: 200000 KHz
> [   87.393244] cpufreq: cpufreq_online: CPU0: Unlisted initial frequency changed to: 408000 KHz
> [   87.469777] cpufreq: cpufreq_online: CPU4: Running at unlisted freq: 12000 KHz
> [   87.488595] cpu cpu4: _generic_set_opp_clk_only: failed to set clock rate: -22
> [   87.491881] cpufreq: __target_index: Failed to change cpu frequency: -22
> [   87.495335] ------------[ cut here ]------------
> [   87.496821] kernel BUG at drivers/cpufreq/cpufreq.c:1438!
> [   87.498462] Internal error: Oops - BUG: 0 [#1] PREEMPT SMP
>
> I'm struggling to see anything relevant in the diff from yesterday, the
> unlisted frequency warnings were there in the logs yesterday but no oops
> and I'm not seeing any changes in cpufreq, clk or anything relevant
> looking.
>
> Full bootlog and other info can be found here:
>
> 	https://kernelci.org/boot/id/5d302d8359b51498d049e983/

I confirm that disabling CPUfreq in the defconfig (CONFIG_CPU_FREQ=n)
makes the firefly board start working again.

Note that the default defconfig enables the "performance" CPUfreq
governor as the default governor, so during kernel boot, it will always
switch to the max frequency.

For fun, I set the default governor to "userspace" so the kernel
wouldn't make any OPP changes, and that leads to a slightly more
informative splat[1]

There is still an OPP change happening because the detected OPP is not
one that's listed in the table, so it tries to change to a listed OPP
and fails in the bowels of clk_set_rate()

Kevin

[1] https://termbin.com/3oum

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
