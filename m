Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86BC791FB5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 11:10:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iqlSplpgR8+GIqE9UFq3DYkTtvNTOob6gXRbNao7WPY=; b=c4WD9OH4yMxxC2
	eAd2wRDSqa6H3ZQyJ9dcMFv62Agd4yeIp3iIcahirldidCggeh6n6tAgX/RD8BEbBQJYaE0wTwvQ+
	RoKOqivG8pMZtNf4ntx/y6LxdTqDhlV2+c7Jkb0PEf8EGQvRAqG82iSBf9rwprqXAFB9/wqUFRf+w
	vIY8MgBrkAX3Ae9xr9LDMHj5oOU7neqzsxsGbOORDcw+7MzMIRvVhM2thUV1rumc6movuShk+SVtB
	A5eOSwzkYZLB0sAi18J+gasV37G9uBoWLSaxKlRxg0Pyok6strDGFjM+f7xUXTUBwoVo8DU54NahK
	kzbQc1eZtlUpG2pY/HrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzdgA-0006z0-Jh; Mon, 19 Aug 2019 09:10:18 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzdfR-0006wa-AF
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 09:09:39 +0000
Received: by mail-pl1-x641.google.com with SMTP id m9so667174pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 02:09:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NbQHubvtE7M8Mm9C2LyqFuVWNwA8k3gi8WsBVYz2BKg=;
 b=pc8kLgoVhNLslClp12JPBSjxR0z3JujowkefS6jDPR1UHNdaucastVWa59gQ8D8lbt
 0MGRCHg9mrrnVUEfo2wUi3Iuo4Wu/u4lTKjXKpkr+Tlfx/BRr9ewsDbvTa439fOCKAWy
 gTNy7KwC7wgAB85feFTYk/OxyRVTcFs813go5F4A5aBrEQw9RGPiNr2rZIGcrlgWyz5N
 6pgP0WkpVzuKxOY1AQNKLZxQAzOGxLLYsNoE6uTn4EPuyi7iNjn+PiZk2iz7xo/9yaMa
 nFp2BO9hS20XmNof1YVo4GXNSbggWhClhVXVv57TZFoKGOoMpANkEOqkT11+rV6L9FFv
 LnKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NbQHubvtE7M8Mm9C2LyqFuVWNwA8k3gi8WsBVYz2BKg=;
 b=TVTcfHgegXyPYkvWF5bKNy6ABySdlpJ4ChtizgVHK3bQR/WJIHwtcrl08JqKSNDUou
 vjZPQloITTS5+9WVrdcdObO1qSinMl5yf5Y2V29ojy6c8rro67CuycXfzCqJamfpdBW/
 kKcKNsT6FhsYkTLBqGrCqVawlQyBY2A3V5BQYnv/wHXNSjH4gNI/6ro11Z3LrjZblrlJ
 leuNguJBQbv29eNhx5RRiJljJrq9CvHfDL4DMJ/W76pQ/NxToMwKvOgaehDZUeuB236E
 XJbFSMxLUntP8nX0dNhI2W9wDW15GjPU0K2lH9SwGpLkHBfEHAnRvhQyrZYW6BCS77ZJ
 8a4w==
X-Gm-Message-State: APjAAAV/42KYkfP51QgjLYn/2bi3LUdqpm03c/F2PfN+PoREXwvsDcXJ
 iS1jz/TznTqMq3dkC5eJ/XmaCA==
X-Google-Smtp-Source: APXvYqwkWKQ15NL5sU2NfelXo3wfOTdqz6Icamd3E43Zqn+osblR5WcJ5sPyUi8DObCUnMzd+CCJow==
X-Received: by 2002:a17:902:a8:: with SMTP id
 a37mr6159528pla.316.1566205772237; 
 Mon, 19 Aug 2019 02:09:32 -0700 (PDT)
Received: from localhost ([122.172.76.219])
 by smtp.gmail.com with ESMTPSA id z19sm13413609pgv.35.2019.08.19.02.09.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Aug 2019 02:09:31 -0700 (PDT)
Date: Mon, 19 Aug 2019 14:39:28 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v2 0/9] Exynos Adaptive Supply Voltage support
Message-ID: <20190819090928.pke6cov52n4exlbp@vireshk-i7>
References: <CGME20190718143117eucas1p1e534b9075d10fbbbe427c66192205eb1@eucas1p1.samsung.com>
 <20190718143044.25066-1-s.nawrocki@samsung.com>
 <20190723020450.z2pqwetkn2tfhacq@vireshk-i7>
 <5ef302a4-5bbf-483d-dfdf-cf76f6f69cee@samsung.com>
 <20190725022343.p7lqalrh5svxvtu2@vireshk-i7>
 <562dd2e7-2b24-8492-d1c1-2dc4973f07be@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <562dd2e7-2b24-8492-d1c1-2dc4973f07be@samsung.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_020933_658049_A2763EC9 
X-CRM114-Status: GOOD (  16.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, vireshk@kernel.org, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 kgene@kernel.org, pankaj.dubey@samsung.com,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09-08-19, 17:58, Sylwester Nawrocki wrote:
> Thank you for your suggestions.
> 
> For some Exynos SoC variants the algorithm of selecting CPU voltage supply
> is a bit more complex than just selecting a column in the frequency/voltage 
> matrix, i.e. selecting a set of voltage values for whole frequency range.
> 
> Frequency range could be divided into sub-ranges and to each such a sub-range 
> part of different column could be assigned, depending on data fused in 
> the CHIPID block registers.
> 
> We could create OPP node for each frequency and specify all needed voltages 
> as a list of "opp-microvolt-<name>" properties but apart from the fact that 
> it would have been quite many properties, e.g. 42 (3 tables * 14 columns), 
> only for some SoC types the dev_pm_opp_set_prop_name() approach could be 
> used. We would need to be able to set opp-microvolt-* property name 
> separately for each frequency (OPP).
> 
> Probably most future proof would be a DT binding where we could still 
> re-create those Exynos-specific ASV tables from DT. For example add named 
> opp-microvolt-* properties or something similar to hold rows of each ASV 
> table. But that conflicts with "operating-points-v2" binding, where 
> multiple OPP voltage values are described by just named properties and 
> multiple entries correspond to min/target/max.
> 
> opp_table0 {
> 	compatible = "...", "operating-points-v2";
> 	opp-shared;
> 	opp-2100000000 {
> 		opp-hz = /bits/ 64 <1800000000>;
> 		opp-microvolt = <...>;
> 		opp-microvolt-t1 = <1362500>, <1350000>, ....;
> 		opp-microvolt-t2 = <1362500>, <1360000>, ....;
> 		opp-microvolt-t3 = <1362500>, <1340000>, ....;
> 	};
> 	...
> 	opp-200000000 {
> 		opp-hz = /bits/ 64 <200000000>;
> 		opp-microvolt = <...>;
> 		opp-microvolt-t1 = <900000>, <900000>, ....;
> 		opp-microvolt-t2 = <900000>, <900000>, ....;
> 		opp-microvolt-t3 = <900000>, <900000>, ....;
> 	};
> };
> 
> I might be missing some information now on how those Exynos ASV tables 
> are used on other SoCs that would need to be supported.
> 
> There will be even more data to include when adding support for the Body
> Bias voltage, for each CPU supply voltage we could possibly have 
> corresponding Body Bias voltage.

Will something like this help ?

https://lore.kernel.org/lkml/1442623929-4507-3-git-send-email-sboyd@codeaurora.org/

This never got merged but the idea was AVS only.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
