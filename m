Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C17C8CF9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 17:34:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=31+p3sQXDCSS7gCuMfwNmVfWGXjnsnSQWdEOg36oUi8=; b=Cm2mRgSuB6jk7u
	BxmAhkx0fXn7WMzijI2OP9JXLFS9wLEtf3JZboNmWt5HEn/gAglej9KnNSBpzaYFBzrvvgAya6l1w
	sLPGmvCtMrQo9RYTZ6LFguYVRwe47yJc/xn/O3FPJHKDizoT/nwq8CT7tUEar64m0xDB0B8c2jht4
	j87jJOvxkbk95rdzzCFVmLsx03hY14hZ5HpYohZXBk9zp3nyM9ckeoHGYvIBLn1aBvXHbN4w/it69
	VuK9AmAXgJnsHn0c9D1S41GddFASZqxf720jRZ0iLG8rg9Bdg1nUOlVsSZ3WUOfEz2O0wOGcW8Wxn
	jqJlGhKauuSEF91wvCxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFge0-0003vz-6P; Wed, 02 Oct 2019 15:34:24 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFgdq-0003vZ-VY
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 15:34:16 +0000
Received: by mail-pf1-x444.google.com with SMTP id y5so10543732pfo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 08:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Yc7AJae82vGiMo6VX7YtpUank71fR6SU4LS/yFdgHl0=;
 b=NPjKGtjFKMoFUYpcaHfIABEex/qVmWGz+Nc50zDxVPtlIKOEgg86pthURNy2cfnsqV
 Djvc5svVKE1M7PebuBAVjTvTzC9w+d40MNPnWNCXHiQ8I/2iYPnDBInRPPIDlwIzjw3s
 Meb7OmYN7Xghe+iAqu0aB8LlBMbHfKSFk2bJXB/lxOGnWZEMP3pFgPrIQYx4TqY9d9AM
 rN3RnEQbqpGEpgMmy6PGQTCv5vG9AgFTbj4SzOjIzr5VsdJcJ3evil7LA1efa7Cp10kr
 3h5lfEFqd9HPzdUTWiV9MHVS1cXcscvRyV2/pJfrncMR/CQNUbwpMoy+LGBEVlPfLkS6
 0Juw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Yc7AJae82vGiMo6VX7YtpUank71fR6SU4LS/yFdgHl0=;
 b=Wuu56OlX9sCfxJGV5l3dd7/eGSAIw5syXcE1ZSwS7Mpu2Tzd15kTvZ99PzRyipOLPd
 Ckaja9rDyUEdUExpnfgpDe2vPfiw9dGX3kv03qPYekbqqB3zMx3h4gvcXMaIjaRK8gPM
 XxxnHi1fiVZFdtHre9LYJNpRXb2+5Fnw67KtOu+7ivyDLB1zO9dAp6Iuaj/9kLqYxoF2
 q340QsgaGRtZq96a1vRI7hZUApMdrfwbB61ug1U1qw22aedM1wsvamTDbDyS2UfIRTfM
 xI4dANSbRdGolk6Znjc+styx/X0a5wYkM3Qe2mR+M+qVwEB/me4EBP0zxERwFyO+s7KD
 aCHw==
X-Gm-Message-State: APjAAAVkqoWuj5MFu7LgxmuUsAc/h2gK51YnIPCL1x8DXo2TfI/Sbijz
 yVqtFlXahQ12d1vKJYYPsDI9dw==
X-Google-Smtp-Source: APXvYqxaHKh32bgCIht0jGCQrMKBgsEyPuv9Y2ou6HMo231DkiBKto3ZNwc5MBfKqF8lTqE1nwkjBg==
X-Received: by 2002:aa7:8e52:: with SMTP id d18mr5425314pfr.44.1570030453604; 
 Wed, 02 Oct 2019 08:34:13 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g5sm20636662pgd.82.2019.10.02.08.34.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 02 Oct 2019 08:34:12 -0700 (PDT)
Date: Wed, 2 Oct 2019 09:34:10 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCHv9 2/3] arm64: dts: qcom: msm8998: Add Coresight support
Message-ID: <20191002153410.GA10598@xps15>
References: <cover.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <90114e06825e537c3aafd3de5c78743a9de6fadc.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <CAOCk7NrK+wY8jfHdS8781NOQtyLm2RRe1NW2Rm3_zeaot0Q99Q@mail.gmail.com>
 <16212a577339204e901cf4eefa5e82f1@codeaurora.org>
 <CAOCk7NohO67qeYCnrjy4P0KN9nLUiamphHRvj-bFP++K7khPOw@mail.gmail.com>
 <fa5a35f0e993f2b604b60d5cead3cf28@codeaurora.org>
 <CAOCk7NodWtC__W3=AQfXcjF-W9Az_NNUN0r8w5WmqJMziCcvig@mail.gmail.com>
 <5b8835905a704fb813714694a792df54@codeaurora.org>
 <CANLsYkxPOOorqcnPrbhZLzGV9Y7EGWUUyxvi-Cm5xxnzhx=Ecg@mail.gmail.com>
 <585ee38c-39d1-47df-78b7-f4b670f17a25@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <585ee38c-39d1-47df-78b7-f4b670f17a25@free.fr>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_083415_026276_A4153679 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: MSM <linux-arm-msm@vger.kernel.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 05:21:23PM +0200, Marc Gonzalez wrote:
> On 02/10/2019 17:03, Mathieu Poirier wrote:
> 
> > The problem here is that a debug and production device are using the
> > same device tree, i.e msm8998.dtsi.  Disabling coresight devices in
> > the DTS file will allow the laptop to boot but completely disabled
> > coresight blocks on the MTP board.  Leaving things as is breaks the
> > laptop but allows coresight to be used on the MTP board.  One of three
> > things can happen:
> > 
> > 1) Nothing gets done and production board can't boot without DTS modifications.
> > 2) Disable tags are added to the DTS file and the debug board can't
> > use coresight without modifications.
> > 2) The handling of the debug power domain is done properly on the
> > MSM8998 rather than relying on the bootloader to enable it.
> > 3) The DTS file is split or reorganised to account for debug/production devices.
> 
> I believe 3) is already the de facto situation.
> 
> arch/arm64/boot/dts/qcom/msm8998.dtsi is the "base" config.
> arch/arm64/boot/dts/qcom/msm8998-mtp.dtsi for the MTP board.
> arch/arm64/boot/dts/qcom/msm8998-clamshell.dtsi for the laptops.

"DTS file", i.e msm8998.dtsi

> 
> > Which of the above ends up being the final solution is entirely up to
> > David and Andy.
> 
> 2498f8c1c668 ;-)

Then it is even easier to make a decision.

> 
> Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
