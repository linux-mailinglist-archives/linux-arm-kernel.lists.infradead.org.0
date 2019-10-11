Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E0FD3976
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 08:37:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jqGkTL9u9L57nG9GJSkHYtkIUI3VADFKxlNvAXfmSmI=; b=pLdFavbd3+X/Ph
	wIX8ZU/h3Ul0xxLhHjpguRi4vRhv2NuWLAhLZsILrp9Mtt4BH8UIrC6/oyDCCtI952kSooD0h9JpQ
	X8j+eiEa5kpRlqB/W89VvkQ3mAj+ecT/0c8aHhm+LmHgv6iGuGOL9G16i7UfpnYbnz6ctFOS004sH
	hIHFIP3iRlenmUAvHjuqYepMts7Pjwn9yTbKvkjmmmSA1oRuHhGamfwuqYzFcIgHTid6Eq5iVA8RY
	5anS4HLr6C0e4HlNwlK+zpS18Puetq9pH59A+ZzpuqG6huWFbDEitRaqsAnIuv1Mu1rwLVjw5XcAJ
	FguvpDK/O//PGz91b/mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIoXr-00068g-Mt; Fri, 11 Oct 2019 06:36:59 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIoXh-00068M-DB
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 06:36:50 +0000
Received: by mail-pf1-x444.google.com with SMTP id h195so5465328pfe.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 23:36:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4FLxp/dEwVPUkJCWIuKTHTWt7KberWtzFab1YKPFU6c=;
 b=rLzoC01nT0O1TGwVA8CD2rE2Y9cKGjZKGLgJM31cEKi8gCMVpMtRkROTRS2rRtXUy4
 Ww015Xa7LdpNbJdRXgULxCb7qgJfkClBp+tlo8MhdrUPMK9NVjULkJDnphfRyxHNxr4+
 UspiOslebs5rd0PxqrGmIP3ldHpd+WFY138dFXuSWNuk2zrZzGbPk9Ld7Zlf6jbb+R4g
 Tp6XMODF2LUm1zw9ArMOMHUi8gHRqB+5B88RI9HrHrnszhykteYTIozWlDLHHW79kVE8
 X0k8f+O2rQFvDqFY6ybZSp7j0ZTp2sbTEzHwYtS1dHbZ9wYC2UQB5g1BWKazRNe2cDoC
 SBwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4FLxp/dEwVPUkJCWIuKTHTWt7KberWtzFab1YKPFU6c=;
 b=OVc52ZhGwpoGn4Mi+LdeKJU52R0rpaDVskono6CiCXSBpUM1mVDO7oRKR2a7/wp8dF
 HrvCzEEpL8eKfFfLVAmxUJajLWSNbhKq2vkjd5QKbaVlykIHYAersN0eKryL6Ou82SlA
 aG0hi1DmNWKGYm73QYVqFwtTappQo3GzDs9b7zheIrSuSMNDnlMftbBnWlejkTX9RyGY
 1SJTsNYWTIm7MI7+xMY/zTybOuds3mU2ya+UNKE8a/SsQQDaBT4+ZmFycZ8/DU7mAg7E
 bBOIKEMDznp/bMbY3vixRXi90m1kPxtGuJkkOP797JZZbdt6Oq3RuF38eeuG+d5yHmuo
 An7A==
X-Gm-Message-State: APjAAAXZo6nvgfIANfvQrvvrOMtmM2ijcg49NN4rHwktwILaFLJx9x5Z
 zrb4B0Q/a200Y1tvAZ7yScaVXA==
X-Google-Smtp-Source: APXvYqzLkaMl6CfDTwvz0FBFkKZME+VEpDqLMNl073+AEryuW84eYEaSUg06leZ233q8TXP8R7n/AA==
X-Received: by 2002:a63:2882:: with SMTP id
 o124mr15314781pgo.320.1570775808528; 
 Thu, 10 Oct 2019 23:36:48 -0700 (PDT)
Received: from localhost ([122.172.151.112])
 by smtp.gmail.com with ESMTPSA id u9sm7255815pjb.4.2019.10.10.23.36.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Oct 2019 23:36:47 -0700 (PDT)
Date: Fri, 11 Oct 2019 12:06:45 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH ARM64 v4.4 V3 12/44] arm64: cpufeature: Test 'matches'
 pointer to find the end of the list
Message-ID: <20191011063645.n2mhemjp4yy367ds@vireshk-i7>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
 <617ad445043f040c5ab986b9620b2ba7847b561e.1567077734.git.viresh.kumar@linaro.org>
 <20190902142741.GB9922@lakrids.cambridge.arm.com>
 <20190905074506.oxsw24xoex7gcfgm@vireshk-i7>
 <20190906134935.GA17375@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190906134935.GA17375@lakrids.cambridge.arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_233649_447348_C0C244C9 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Julien Thierry <Julien.Thierry@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06-09-19, 14:49, Mark Rutland wrote:
> Sure. I'll have to take another look over the series to figure that out,
> and as above I might not be able to do so until after LPC -- sorry!

Just wanted to check if someone was able to come back to this series
to give further reviews :)

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
