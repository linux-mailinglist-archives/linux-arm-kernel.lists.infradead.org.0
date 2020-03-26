Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD2A193DCE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 12:23:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r6NHjDJ0vfRVo65XhFmj0FecfCE6UtqzP7K+BW6Juc4=; b=iElU1vA/rGYQMC
	ApF1wPl21T2pmWKtsB5W7RW0Nqqqq22atVHNQj122Usl9rnANi6X58fLJHkPr7S9SB9kW78Sz9T3K
	IyKCeQWm9hdV45JB/DJ/M6WkfQNdcjwBTvkVyDLqVYL9U4ZyQFTO4J1zck3uyYQZqLRgefJgOaRRp
	riExzpTh4rwinZd6W7nwSxYjDEqeC2Xug3MCdoybq0P8zmR+SCq/nV0LrnSAIEwhZaqy7hgtlla6v
	vXz8H6kSxDbHpjY57XO7sBmXBWygb9l+fBsmX9YI6grw74zVtGwQ2HEYiOARV0iO+mi2z3JYnUbIG
	vwV9woW13aANYyujMbrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHQbs-0006cP-MJ; Thu, 26 Mar 2020 11:23:40 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHQbi-0006bV-O6
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 11:23:32 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585221811; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: Date: Subject: In-Reply-To: References: Cc:
 To: From: Sender; bh=V7U5JvFT204MJ8+8hEWOkXRat6eH6xB2Y/6EMB2A6vY=;
 b=O3rj+28HebTJ4zVXBj0km+r35F+4ZDVk9AKaJ33a77Uld+pell1zZ8VPsUeCLh7p1SCCG6g5
 gxEC0L1DZpQM4M8KRsigurINJ48gb5PAwbsBKPiuhXALfwbOh9ua7az6SqaGIMa+vm/leYhP
 jlJBr9F3X2KrnOVnFjV4E12mxVU=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e7c90a1.7fb8da2a1378-smtp-out-n03;
 Thu, 26 Mar 2020 11:23:13 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 08D50C433F2; Thu, 26 Mar 2020 11:23:13 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from Pillair (unknown [183.83.66.17])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: pillair)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6C65AC433D2;
 Thu, 26 Mar 2020 11:23:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6C65AC433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=pillair@codeaurora.org
From: <pillair@codeaurora.org>
To: "'Evan Green'" <evgreen@chromium.org>
References: <1580822300-4491-1-git-send-email-pillair@codeaurora.org>
 <CAE=gft7EOALEMUWzoR3+pjoxCUTYWbiXoXY=dXH1BDhS3KwBzg@mail.gmail.com>
 <000901d60295$3acc79b0$b0656d10$@codeaurora.org>
 <CAE=gft7zqbUnx+BULDD+35z2p1=545=jF0=n6kFXZgo3ZTdCHQ@mail.gmail.com>
In-Reply-To: <CAE=gft7zqbUnx+BULDD+35z2p1=545=jF0=n6kFXZgo3ZTdCHQ@mail.gmail.com>
Subject: RE: [PATCH v6] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module
 device node
Date: Thu, 26 Mar 2020 16:53:05 +0530
Message-ID: <000c01d60360$eea25c90$cbe715b0$@codeaurora.org>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIr1eNiqDxek+JigOIeIUW3T4FxSwDFrKGDAq7vyx4BaNAawqeIIUVw
Content-Language: en-us
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_042331_420277_4162709E 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "'open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS'"
 <devicetree@vger.kernel.org>, 'LKML' <linux-kernel@vger.kernel.org>,
 'linux-arm Mailing List' <linux-arm-kernel@lists.infradead.org>,
 'linux-arm-msm' <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Evan,

I have sent out the v7 patch by marking a dependency on the below mentioned series
https://patchwork.kernel.org/project/linux-wireless/list/?series=261367 

> The clocks are missing:
> clocks = <&rpmhcc RPMH_RF_CLK2>;
> clock-names = "cxo_ref_clk_pin";
These clocks are optional and were required for older firmware.
It's not needed now.

Thanks,
Rakesh Pillai

> -----Original Message-----
> From: Evan Green <evgreen@chromium.org>
> Sent: Wednesday, March 25, 2020 9:34 PM
> To: pillair@codeaurora.org
> Cc: open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS
> <devicetree@vger.kernel.org>; linux-arm Mailing List <linux-arm-
> kernel@lists.infradead.org>; LKML <linux-kernel@vger.kernel.org>; linux-
> arm-msm <linux-arm-msm@vger.kernel.org>
> Subject: Re: [PATCH v6] arm64: dts: qcom: sc7180: Add WCN3990 WLAN
> module device node
> 
> On Wed, Mar 25, 2020 at 4:05 AM <pillair@codeaurora.org> wrote:
> >
> > Hi Evan,
> >
> > I will send out a v7 for this patchset.
> > Since I have to configure the S2 SIDs, it is dependent on below ath10k
> patchset.
> > https://patchwork.kernel.org/project/linux-wireless/list/?series=261367
> 
> Ah, right. Thanks for the info, I'll check out that series as well.
> -Evan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
