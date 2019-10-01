Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD54C3F55
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 20:05:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QihdkzyvK31CrQc8pHcDodFQLMjfIcdK2wNejbJfswg=; b=AkI3T//dK9PovBXab4Tg+Vk2K
	6X/RVIYz3AjRmwn7Cf1mvwfH2rEu2+sY7OfH8Zw5X8gngglvXoWuNgEMn2K/CyucGu3lXQNZEv5tg
	4dYaOeX/EywNavthYfQk1/4xfoANDyP38AJuK3NSdLJLzoOM8/hK3xVZWo24FYSgvNYPt6161BNop
	hm8egK13t+5nPJoHg57+80bSK9DLNf+KFq/h1I3CruHjQaJWFH4kVRGjy+CRm1AC8khW2fLHUyd51
	/+wGFCVMx26v3A1dYT3sZAKMhre8X8VrblgLWhmPJFteBvEcmTcVBgNnClaagfpO8+C2+iPeGjhc9
	K36ji3ptQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFMWp-0002N9-Be; Tue, 01 Oct 2019 18:05:39 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFMWi-0002Mq-Oe
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 18:05:34 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 1554C6118F; Tue,  1 Oct 2019 18:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569953132;
 bh=kh+Qvfp+Bv7MXpGjaYCIgO1OxAjGfyr1gezkgUNBZRA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=TBbLytlCWNIC7AHixNIcvge6LvSQH1v8jJUko2JcnQ5pBGH4OMLFS1yIm+UzbC7Io
 8EpPWHBYjMAchb5x4VZ+68+qKgirovCQZ9TVvckBNtqaYYIKNWHLhMffJ67yF2pmkV
 lkrGy/hsNIUB9G+00gBhJSXVOMD/6u96Avt43nRM=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id EEBA86076C;
 Tue,  1 Oct 2019 18:05:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569953131;
 bh=kh+Qvfp+Bv7MXpGjaYCIgO1OxAjGfyr1gezkgUNBZRA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=BIv8NlU83WI675KZxJSjdebxayagKrHZlQvgxIT8ATxuQh3w/zLnh1/wrmbba+LwQ
 V0+qCkhYEDPSP+phz+JcbvMQInj4gIunYiLXPr63yaLBNKDRja/AQTx9KHhixjer/O
 +yt8sqgyzteoRnI7ngWXWyE37WTrwu0ZMBa+2X4k=
MIME-Version: 1.0
Date: Tue, 01 Oct 2019 11:05:30 -0700
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Subject: Re: [PATCHv9 2/3] arm64: dts: qcom: msm8998: Add Coresight support
In-Reply-To: <CAOCk7NodWtC__W3=AQfXcjF-W9Az_NNUN0r8w5WmqJMziCcvig@mail.gmail.com>
References: <cover.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <90114e06825e537c3aafd3de5c78743a9de6fadc.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <CAOCk7NrK+wY8jfHdS8781NOQtyLm2RRe1NW2Rm3_zeaot0Q99Q@mail.gmail.com>
 <16212a577339204e901cf4eefa5e82f1@codeaurora.org>
 <CAOCk7NohO67qeYCnrjy4P0KN9nLUiamphHRvj-bFP++K7khPOw@mail.gmail.com>
 <fa5a35f0e993f2b604b60d5cead3cf28@codeaurora.org>
 <CAOCk7NodWtC__W3=AQfXcjF-W9Az_NNUN0r8w5WmqJMziCcvig@mail.gmail.com>
Message-ID: <5b8835905a704fb813714694a792df54@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_110532_827861_3CD09FFF 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rajendra Nayak <rnayak@codeaurora.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 MSM <linux-arm-msm@vger.kernel.org>, Marc Gonzalez <marc.w.gonzalez@free.fr>,
 lkml <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, Andy Gross <agross@kernel.org>,
 Sibi Sankar <sibis@codeaurora.org>, Leo Yan <leo.yan@linaro.org>,
 linux-arm-msm-owner@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-01 11:01, Jeffrey Hugo wrote:
> On Tue, Oct 1, 2019 at 11:52 AM Sai Prakash Ranjan
> <saiprakash.ranjan@codeaurora.org> wrote:
>> 
>> 
>> Haan then likely it's the firmware issue.
>> We should probably disable coresight in soc dtsi and enable only for
>> MTP. For now you can add a status=disabled for all coresight nodes in
>> msm8998.dtsi and I will send the patch doing the same in a day or
>> two(sorry I am travelling currently).
> 
> This sounds sane to me (and is what I did while bisecting the issue).
> When you do create the patch, feel free to add the following tags as
> you see fit.
> 
> Reported-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
> Tested-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>

Thanks Jeffrey, I will add them.
Hope Mathieu and Suzuki are OK with this.

Thanks,
Sai

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
