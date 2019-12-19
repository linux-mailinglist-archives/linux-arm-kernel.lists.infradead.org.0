Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD52F12652A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 15:49:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FjZQX1uZtTFRA5r7dPS4avpu7ZvGRhK4WuDqCT6OQ/4=; b=g98zHKjC91VOeVg6oAtDafqeY
	cnHn+nyizZR0i5/Om+wR2e/FyvcShOYLDiff4Ddr+2fFduoeSyqHLATtorbJ2fAa9Cu7Ew7lvdpc/
	fTnpI2v80ql1A1TSxom7INQIjgxLW/Tqq2CfCJ2lyxdc08mlfy9x44gJ6mZ3GDlXhN6J7zTrWrV1n
	1XFZQ9HbV14zUaMftlOHrXHKwJuAYt357Q1mh2R7zUBk8Q2ChVOt9m2j/50nNJF+L4s4pgqG5BV8i
	nyrTD/G/Po9JjKZq+yR37kJOtShOS7KXmR6NC2W+dG/a2hl3j39U7Yt5hPit6LrQ3fa/yBebJCEpP
	m58l014XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihx6w-00035j-II; Thu, 19 Dec 2019 14:49:06 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihx6j-000353-29
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 14:48:55 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1576766934; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=3zKPnWBvxLfobydpG1oWipP1FXmPrlABqmI/X79v9lQ=;
 b=kQn2E6xXKjuePlhb/N4xwGAL95VX2imHqf4TSNjZRyYPNff19y5ncFeIQ2j81JeY5gzdkwCZ
 LtKkCR3HFlrEWuuU0LCHmu2q/rgBgr1RMZb/7dkfiSmXTV5gXD2ofoLo+oUN5XngcYBkPGsI
 YcGDYe1w55fnN/296zfINwENQGg=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5dfb8dd0.7fe8812b7f80-smtp-out-n02;
 Thu, 19 Dec 2019 14:48:48 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 6BD40C0453D; Thu, 19 Dec 2019 14:48:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E782CC5383A;
 Thu, 19 Dec 2019 14:48:47 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 19 Dec 2019 20:18:47 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: edac: Add DT bindings for Kryo EDAC
In-Reply-To: <CAL_JsqL-uBGy5ekHUZAJB4L1QYoCpnOw-4QPpZraXnsZ49wZ6w@mail.gmail.com>
References: <cover.1575529553.git.saiprakash.ranjan@codeaurora.org>
 <0101016ed57a3259-eee09e9e-e99a-40f1-ab1c-63e58a42615c-000000@us-west-2.amazonses.com>
 <20191218233714.GA30302@bogus>
 <7469b239edd4beed3e8fefdf02f10ada@codeaurora.org>
 <CAL_JsqL-uBGy5ekHUZAJB4L1QYoCpnOw-4QPpZraXnsZ49wZ6w@mail.gmail.com>
Message-ID: <86b3a0735df320bc7808930f2bbd0d97@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_064854_147752_4A8AF062 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.25 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tony Luck <tony.luck@intel.com>, Prasad Sodagudi <psodagud@codeaurora.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Trilok Soni <tsoni@codeaurora.org>,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Robert Richter <rrichter@marvell.com>, Andy Gross <agross@kernel.org>,
 Borislav Petkov <bp@alien8.de>, James Morse <james.morse@arm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 linux-edac <linux-edac@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-19 19:28, Rob Herring wrote:
>> > Is that your intent?
>> >
>> 
>> No, I want any combination of interrupts to be valid with atleast one
>> interrupt as mandatory.
>> I thought specifying minItems as 1 and maxItems as 4 will take care of
>> this,  am I doing something wrong?
> 
> Interrupts (really all properties) have a defined order in DT and an
> 'items' list defines both the order and index. You'll need to use
> oneOf and list out the possibilities. Stick to ones you actually need.
> 

Thanks, I will make the change in the next spin.

-Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
