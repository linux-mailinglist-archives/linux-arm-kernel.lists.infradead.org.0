Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB8711A4C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 08:02:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4zwtaG1V3WIyhrEHG6RYbWb1LbrqJ4BmyW3mmWSrVEg=; b=ELn8279e0iNP2k
	ft4M+y+Ud+BHCG0OQ4z5wcSo+ERic+mDk5wd4PlgDkv+GXfgUpFAwodG0UflU9g2oUpwlXQD0p2j6
	8EMz4lzvKSyJ+oGA7MH7uUBPWTQdMvx+x2p5OcCG7rdm7Tb7xXw9hTsOImuZQLDXnPCrLAZXWyr1A
	hsZjscDz0piJK75FDoPVxZY7Es0nK4dzewly38nUjh0MbxHvyMeyM38iYS/l43Zn02w/b2J3W3/Us
	hlV25h4NM732pxZqPWi5CTmaDqaJY07V7HfY5ZEE5JTqZkbQehyFBT0lkFjRABjuBNcfsjfuOIo9H
	fQitHE7JooaGuQs2MLTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iew0z-0007u0-Ms; Wed, 11 Dec 2019 07:02:29 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iew0q-0007tf-Be
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 07:02:21 +0000
Received: by mail-pl1-x644.google.com with SMTP id o9so1038196plk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 23:02:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=R08vSO6u5igpmjKjGC9D9Rc8bVfKHww3KSNBkb72big=;
 b=EbQPfpnXvegQePc3hEqXeNp6CZ97qUrsRtSRXq3taulR6nVc6G9mVUWISzUOH4Wla+
 oDz+BSHgoD4gSfPif3/OxzS0cGYLYNFMxS4PnLqnht4hjOR3LU3dfOl5RHbvwo5AMMPP
 jFbsJWCaAcIxNaYFAXnONMXtYIdo6Vx1uhk3zi8qAJPxBZRQV+pWRUUrGv2ZAe+b39A4
 jiPlzCt8fn3zg1a6vHQqDuJjgI2mU8GjFmpgUwMGQOM7J1ZpNypch3s+bpnJxBX/SjV2
 gIp1JkyEhHB/dZykup6Ucnd5mQOlMnf8QkEidHOaMT1nr9nks0jd/MWuNTkOhYi9iESc
 nTdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=R08vSO6u5igpmjKjGC9D9Rc8bVfKHww3KSNBkb72big=;
 b=mpHYzS2noJ66lDpwbfe5KQTA2njOI3fc0nyyQdo1PkeLEvtSAlqgj5VPjbsCVXpEke
 smJrtFswaDKWVWQJa03ExanPiCGDBPSSpwKEypjfEL6hDjB1EPOo9A/ItQ3FNuMC58BL
 b/tadd2Irzr73k7yjEzdl8Q/fHmSy5ArN7eWG6L5Jb4vR0IIDF0tx42G5OdbgOXBZKJX
 OG09EY0y7Sl/3BcDMdwg/pR1voNIoddjRD6Tl5TLghPSBc33VqYg7Kn0QC6VLLHvgZMe
 ZckRWCrwQMZVF3l8h8CYVGpdoQ8WByM1uw3X100rOyRBVwPPEVhhAbHj6WIrrpXx9doK
 GEWg==
X-Gm-Message-State: APjAAAU1enzjXCoC/FJzuqAVxhAkzeNjrxfXqSzA8XZ+H3axYDzo7ggX
 gLW3YdnqmC++I9cQpQFVBqEuVp4+lIQ=
X-Google-Smtp-Source: APXvYqxHIlKXfSm0XPqRQmElKLjwtt+RZCLKkIRACmHo2HN9+dAciIGlYFN98DvSZJzP54TeBK13ag==
X-Received: by 2002:a17:90a:1aa3:: with SMTP id
 p32mr1877886pjp.8.1576047739635; 
 Tue, 10 Dec 2019 23:02:19 -0800 (PST)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id e27sm1483040pfm.26.2019.12.10.23.02.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 23:02:19 -0800 (PST)
Date: Tue, 10 Dec 2019 23:02:16 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH 0/3] Add DT nodes for watchdog and llcc for SC7180 and
 SM8150 SoCs
Message-ID: <20191211070216.GF3143381@builder>
References: <0101016ef3391259-59ec5f0a-2ae7-45a8-881e-edc2d0bf7b26-000000@us-west-2.amazonses.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0101016ef3391259-59ec5f0a-2ae7-45a8-881e-edc2d0bf7b26-000000@us-west-2.amazonses.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_230220_604631_83D4584C 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 Andy Gross <agross@kernel.org>, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 10 Dec 20:30 PST 2019, Sai Prakash Ranjan wrote:

> This series adds device tree node for watchdog on SC7180 and SM8150.
> It also adds a node for LLCC (Last level cache controller) on SC7180.
> 
> Patch 3 depends on the dt binding change to LLCC node name:
>  - https://patchwork.kernel.org/patch/11246055/
> 

Series applied

Thanks,
Bjorn

> Sai Prakash Ranjan (3):
>   arm64: dts: qcom: sc7180: Add APSS watchdog node
>   arm64: dts: qcom: sm8150: Add APSS watchdog node
>   arm64: dts: qcom: sc7180: Add Last level cache controller node
> 
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 13 +++++++++++++
>  arch/arm64/boot/dts/qcom/sm8150.dtsi |  6 ++++++
>  2 files changed, 19 insertions(+)
> 
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
