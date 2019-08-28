Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2621C9FFB0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 12:24:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dSb0sk01PA8U5+kE6nHMpjXGq4MYfLJ0dSDVelHq3lM=; b=hQ2uk26vMVSKJP
	vxP5GNSR2CIDeJ30wf1HcMd7c+ohAqmpJbppqg3yb/ZhmbWyiN0Vvd3A3jCxRBtzmYXujK1qZk88R
	dQKkdYkxrxs5L6h/QpJxRz8Fo0PThOiiut3sniE0hGqcjblEO6DT/4t2pvY8bCW4c0eqYReF0eYQl
	P0s7Xy8wEyneSdgKDFZfrPdsEKxVCtqZUuHCgnHaz8aSFsrlg2U+mRksioeoWJR/q7G7xLsDbOrCs
	c0mnBn7WG9xU2Dul96xrdjaNHyi057bBFMEUhGjqG+RblY1GDalRMW4pgTI9bFghRcS8e3A85LUw4
	IONRqUSg5CVnmXESBhmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2v7d-0002jJ-Ma; Wed, 28 Aug 2019 10:24:13 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2v7T-0002in-Bp
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 10:24:04 +0000
Received: by mail-pf1-x443.google.com with SMTP id y200so1435260pfb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 03:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zSFcplridhj7y02Ycdc0QCZBu/Jgfc6+2J1eLEdrC8U=;
 b=dJOPjff/iJGCBo/PjQjOwXMlyxp5nLDKFpJrw+KCeMIdQy013C7aUggWOC+/HJzc5i
 2/JshmhyjqvLRSwJyMBMwjOon/e+jI0gdmX5AYtw1wysjz1/2uXRcQVVWcpyZNswZCbY
 YxzKDd9+MBjQ/k2YFTc4mSbc3Ybb1OxHkbLYVTA8VGdkCqdvdt2VS+S3VaWfgmuOn8aw
 7XwYWlNY4FYKtQ4ibpKP7kyFGztCnqecRGVCqJcdMoFMgrMfEss+RkmLRwmMY77MoXwy
 azM+MaHKBHXJ8RGNmafhqRLc/zYHT8voOIMmZznjMzjZ1wThLPTCFP6VBYBFYjJAfiBa
 RW2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zSFcplridhj7y02Ycdc0QCZBu/Jgfc6+2J1eLEdrC8U=;
 b=boNPlq0cH+iyf2zG2Vz9D8zvZFLEwq95IMzMsUOaqQ+0ocZ+bx39qc6kZA/EZ5zsQj
 XqsPI573jfMz9aO4NQYibHsDFAupf1EkP+KdWl5LlAOY61JH2z8wZ7rhvCnMioZp55zg
 vNwBa3kx8kHsKcgLLLeWeMRUtAl+DgG6dE36UEasfWNO7dU4AcDnj4bYhLDO8/A3u9VQ
 8k4Ejlq5ta07gcWIbmslYkWz/45iU9xj24McNKMuF1aaS9l7OyuDEgWMdX3TRqqwxarN
 SVTp5VBUrDypDRtMF0Oc3JjQIAHSITUEy30yk9iuj/CvUzYVrkF+pjs7/ZENlu94KOXP
 5E6A==
X-Gm-Message-State: APjAAAWLUbjnPCs6O7mUFgr2oe59/zJlhes2VCR3Rn8VBYhncJPp3+Zq
 0Q/acN6WKJ3Elhslp99NWL09oQ==
X-Google-Smtp-Source: APXvYqxxjScNWNqUf4XJIY8BRc5y0WHCZv7XV1cQaiSqTGH7clqNM6xU6KCYvNjD2avSjsBnU1e1HQ==
X-Received: by 2002:a65:41c2:: with SMTP id b2mr2804787pgq.320.1566987841270; 
 Wed, 28 Aug 2019 03:24:01 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id e185sm3129030pfa.119.2019.08.28.03.23.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 28 Aug 2019 03:23:58 -0700 (PDT)
Date: Wed, 28 Aug 2019 15:53:56 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v4.4 V2 24/43] arm64: Add skeleton to harden the branch
 predictor against aliasing attacks
Message-ID: <20190828102356.tlhgi3riue3bl5p4@vireshk-i7>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
 <4349161f0ed572bbc6bff64bad94aa96d07b27ff.1562908075.git.viresh.kumar@linaro.org>
 <20190731164556.GI39768@lakrids.cambridge.arm.com>
 <20190801052011.2hrei36v4zntyfn5@vireshk-i7>
 <20190806121816.GD475@lakrids.cambridge.arm.com>
 <20190808120600.qhbhopvp4e5w33at@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808120600.qhbhopvp4e5w33at@vireshk-i7>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_032403_404428_0293CBD3 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Julien Thierry <Julien.Thierry@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08-08-19, 17:36, Viresh Kumar wrote:
> On 06-08-19, 13:18, Mark Rutland wrote:
> > Upstream and in v4.9, the meltdown patches came before the spectre
> > patches, and doing this in the opposite order causes context problems
> > like the above.
> > 
> > Given that, I think it would be less surprising to do the meltdown
> > backport first, though I apprecaite that's more work to get these
> > patches in. :/
> 
> I attempted meltdown backport in the last two days and the amount of
> extra patches to be backported is enormous. And I am not sure if
> everything is alright as well now, and things will greatly rely on
> reviews from you for it.
> 
> For this series, what about just backporting for now to account for
> CSV3 ? And attempting meltdown backport separately later ?
> 
> 179a56f6f9fb arm64: Take into account ID_AA64PFR0_EL1.CSV3

@Mark ?

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
