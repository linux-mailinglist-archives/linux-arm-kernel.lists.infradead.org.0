Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE32DB819
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 22:01:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:To:From:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ksGXpU/IB8rOWThM6IrUq0rgMPR4wxquGsbMiv6gjLc=; b=a1bubeH8BgY5qd
	l9G7eJXCLQKgXSze4W+oZj0nG92MEpbz1woc+QAIyf+usLtbIeZm42mTaRNDaJ9Hxxhe6j5AtgzNA
	s7rQI0vWLBHT1qRl7H/x087Osdau7I7CgUlOpfvZGb5pRDQxV8GEZoUt07L4lsuX06u6Of6xELjr4
	M/vbJYouppUiE/D9bJK4OS10sVQDiL3Ln2V3ybysPQLe48reTRuzANtLKYxgsiWSCVsEgvnafrVBw
	eaWwtm5FDQ2fTwq5fuVMwjoutLz/mF+SHM9eTi+kX0u1rlpE3H14DdK1WLnIn9Uavnn9Jmr9M5CZg
	eh4JEYGBoQbL4/LiOR2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLBx9-0005AH-Rr; Thu, 17 Oct 2019 20:00:55 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLBx2-00058o-Fr
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 20:00:49 +0000
Received: by mail-pf1-x443.google.com with SMTP id v4so2313760pff.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 13:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:from:to:cc:subject:user-agent:date;
 bh=QIMZdUFoVDCCgi7u9KnfgFx2D+e8lBSYkgBbx8BMeec=;
 b=CcY6khg3q6nubSARTDJ5XR1igh/NxAZFgNsGtnScPCLDJ20bsPOxhJh8YD0Ifo1HK1
 UflIjODDTFl8CRWMZf1yBr9pBsZI/xNyhdGJtRt7j6N851Pii2fEu1phfhNvF5ERh0IY
 Zl7fuIIFWYgbudcD0dq4aT9k6ojiOfJJ6/w5w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:from:to:cc:subject
 :user-agent:date;
 bh=QIMZdUFoVDCCgi7u9KnfgFx2D+e8lBSYkgBbx8BMeec=;
 b=Voq+4vPXGOA0FKOvqIpY+CQud99lnMhJnKhzQavXARSfIB6FrhQHMPC7hBOac5rjaU
 /QCcy6oQCKNE45G87Bl84+1/TgQbkbTGGyfK5HeC9HmNq4PPYSLfYb3fT1kM2LUG2GXK
 lKgHiVjOym7wpPxIkhSatQQu46Rc0ngcarpeW3ct/6B73emdBn+PKJF2mzrINaE5D2k4
 JWa9h/BsUt1Twyel9pBeEchPuqoZBcrUReSevT91nLiyd0pxUnWLrRuAAzCgwQb/HDl8
 9NEAuw790fXs8E3vUVx6X1SGUJHm7ESUvtWGO3sdo/dbZZ5hTkbmVCi358L6C3JrCsbf
 cAoA==
X-Gm-Message-State: APjAAAWszqsKzEHvWXpZPmAW/IlCuKdc1j41tz2oAVrGvrAgT4eDOj1d
 C8aHFvLKIUBWzqfNcs5Wk6+qTw==
X-Google-Smtp-Source: APXvYqxn4GjJKCMJ6/dMMs6TXVT3v+iRNGMNw4x8OnF002zaL0RZvbO7aIfYNtadR0MBs08MMHevpw==
X-Received: by 2002:a17:90a:5896:: with SMTP id
 j22mr6095736pji.55.1571342441026; 
 Thu, 17 Oct 2019 13:00:41 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id 74sm3834060pfy.78.2019.10.17.13.00.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 13:00:40 -0700 (PDT)
Message-ID: <5da8c868.1c69fb81.ae709.97ff@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <ac7599b30461d6a814e4f36d68bba6c2@codeaurora.org>
References: <b3606e76af42f7ecf65b1bfc2a5ed30a@codeaurora.org>
 <20191011105010.GA29364@lakrids.cambridge.arm.com>
 <7910f428bd96834c15fb56262f3c10f8@codeaurora.org>
 <20191011143442.515659f4@why>
 <ac7599b30461d6a814e4f36d68bba6c2@codeaurora.org>
From: Stephen Boyd <swboyd@chromium.org>
To: Marc Zyngier <maz@kernel.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: Relax CPU features sanity checking on heterogeneous architectures
User-Agent: alot/0.8.1
Date: Thu, 17 Oct 2019 13:00:39 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_130048_526799_AD41124C 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, rnayak@codeaurora.org,
 suzuki.poulose@arm.com, catalin.marinas@arm.com,
 linux-arm-kernel <linux-arm-kernel-bounces@lists.infradead.org>,
 marc.w.gonzalez@free.fr, linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
 andrew.murray@arm.com, will@kernel.org, Dave.Martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Sai Prakash Ranjan (2019-10-11 06:40:13)
> On 2019-10-11 19:04, Marc Zyngier wrote:
> > On Fri, 11 Oct 2019 18:47:39 +0530
> > Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org> wrote:
> > 
> >> Hi Mark,
> >> 
> >> Thanks a lot for the detailed explanations, I did have a look at all 
> >> the variations before posting this.
> >> 
> >> On 2019-10-11 16:20, Mark Rutland wrote:
> >> > Hi,
> >> >
> >> > On Fri, Oct 11, 2019 at 11:19:00AM +0530, Sai Prakash Ranjan wrote:
> >> >> On latest QCOM SoCs like SM8150 and SC7180 with big.LITTLE arch, below
> >> >> warnings are observed during bootup of big cpu cores.
> >> >
> >> > For reference, which CPUs are in those SoCs?
> >> >
> >> 
> >> SM8150 is based on Cortex-A55(little cores) and Cortex-A76(big cores). 
> >> I'm afraid I cannot give details about SC7180 yet.
> >> 
> >> >> SM8150:
> >> >> >> [    0.271177] CPU features: SANITY CHECK: Unexpected variation in
> >> >> SYS_ID_AA64PFR0_EL1. Boot CPU: 0x00000011112222, CPU4: >> 0x00000011111112
> >> >
> >> > The differing fields are EL3, EL2, and EL1: the boot CPU supports
> >> > AArch64 and AArch32 at those exception levels, while the secondary only
> >> > supports AArch64.
> >> >
> >> > Do we handle this variation in KVM?
> >> 
> >> We do not support KVM.
> > 
> > Mainline does. You don't get to pick and choose what is supported or
> > not.
> > 
> 
> Ok thats good.
> 

I want KVM on sc7180. How do I get it? Is something going to not work?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
