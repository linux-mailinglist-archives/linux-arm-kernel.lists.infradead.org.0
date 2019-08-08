Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 513328614F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 14:06:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XE5fEGTe9fTn4Qxl6dlJ/axRocB+QQnz6H8Lm8FZz2A=; b=nurG9mYRpCZh2o
	D6rY+WnzSJ5tDwFsCp/lhnyZ7FTijKnT9AidN5TedKcI23b6E3vDkbmqhKEb+d0zu4ZjqT6DN2Vvt
	CfGppsqJdND9GZHWYtjMiGmfYZa9wxsYDTKOasQyjqbxOpryQLHz8LVBMAynnqVbe2W2ceWOeN7iC
	t37JM57wfosXgwXuKuL0ad+OL3gwHSjKGJqD0AazhNgbdJIw2HSu5HPAhvTSJdkNh9UiTlVI4+3mr
	MeHp8VzMiOvobN+dPxP6SuSf1QX/TapBIl9t7ld7sCBfA2ihXpr9inIkhXQshAgFlZyK11UlKoYVb
	31uNdf0BMNt3kNZlWt3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvhBQ-00027M-Nr; Thu, 08 Aug 2019 12:06:16 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvhBF-000270-IH
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 12:06:06 +0000
Received: by mail-pg1-x542.google.com with SMTP id n9so37746149pgc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 05:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QY0vLTd/DtI+BoLweHV1eyVNR0ivfIadKEaonMSKMLc=;
 b=jIWEMf5er9+tizK+48ReAsiaE2Mx+XlmpxAjYYpH8V4xa24nefI94dko4/5d8RKzsB
 hp2mpx2wUrJaM/EgGqO+IUY9/2/oDHY8eMGH98DTznmhLr4vUzERTdyTZdguwxVwflD0
 nIORxE1+1nG2rj1yb7P75bpC8YmecV9XVOw4OgCnOpVHc6d8xMu3XIwwex6PUtJfpRdK
 9nrFUy51veES1U2I8U9JMEoEtdoIC9KXXZy0UgFGtULnWrxtnc06Tl5RGm3cnXsUbLou
 MN7fa0dAxafGXqCJqoDuPk1ErOcsCQ98uqKesoQzpd4mKEf8mKs3KR+xxTk4YVtIda16
 nzpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QY0vLTd/DtI+BoLweHV1eyVNR0ivfIadKEaonMSKMLc=;
 b=qUIowSi1zp/IcXexsMZe+bRSZClBrxR7Plnn9rMES/sLW1NtQEDCwK7zzBvkprH/kD
 ZsL+DaAUAO+TvuEIT/qUL7pYjBjRaDxfaMaRHaKRGNzzQAQ/+NWAw7CLa20xMvqw/y+I
 cNbgDnyJHMwfM8CIr9BTRa/xS/B2lVo+rNZIAzJRIolnydIDvMTSGBuF3M08EJaRnnuZ
 Xoj7KsA9d19IIRGF2QrWzmU1iQCmFSsb8nJU9nFxvK2eWNaQ2+JTy6CLqGVI8f7twxBb
 xhB9Sv0IzkajdTjagAFsRYQlxAi9w8HfLlEYNvZbvLh8NzBqk4nQnlzj0Bd/v1sLqnRC
 2tbg==
X-Gm-Message-State: APjAAAVvpTlbO2JrX6eQivksG6ovH8DZCEmKvhCU/V+rmBZ5a4nPuimm
 ce6pSmdXEuXm+c8AVghHqqKIDw==
X-Google-Smtp-Source: APXvYqwgaHdyFFRt/3UHo8TtFBzfu7jVV1XBtXs2OzBXhleDGl37AKrxd6WRcphUmYdBbpg0Hx3MWA==
X-Received: by 2002:a17:90a:ab0b:: with SMTP id
 m11mr3838423pjq.73.1565265963879; 
 Thu, 08 Aug 2019 05:06:03 -0700 (PDT)
Received: from localhost ([122.172.76.219])
 by smtp.gmail.com with ESMTPSA id y23sm100491085pfo.106.2019.08.08.05.06.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 05:06:02 -0700 (PDT)
Date: Thu, 8 Aug 2019 17:36:00 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v4.4 V2 24/43] arm64: Add skeleton to harden the branch
 predictor against aliasing attacks
Message-ID: <20190808120600.qhbhopvp4e5w33at@vireshk-i7>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
 <4349161f0ed572bbc6bff64bad94aa96d07b27ff.1562908075.git.viresh.kumar@linaro.org>
 <20190731164556.GI39768@lakrids.cambridge.arm.com>
 <20190801052011.2hrei36v4zntyfn5@vireshk-i7>
 <20190806121816.GD475@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806121816.GD475@lakrids.cambridge.arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_050605_668859_F63275F3 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Julien Thierry <Julien.Thierry@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06-08-19, 13:18, Mark Rutland wrote:
> Upstream and in v4.9, the meltdown patches came before the spectre
> patches, and doing this in the opposite order causes context problems
> like the above.
> 
> Given that, I think it would be less surprising to do the meltdown
> backport first, though I apprecaite that's more work to get these
> patches in. :/

I attempted meltdown backport in the last two days and the amount of
extra patches to be backported is enormous. And I am not sure if
everything is alright as well now, and things will greatly rely on
reviews from you for it.

For this series, what about just backporting for now to account for
CSV3 ? And attempting meltdown backport separately later ?

179a56f6f9fb arm64: Take into account ID_AA64PFR0_EL1.CSV3

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
