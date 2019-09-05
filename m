Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 239AEA9E2A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 11:21:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xtpMIJ679P7Q52wqXHnqbmntdK6VbWv6jiK08UwhDQ0=; b=PqMAizeQl4lfk7
	iHfIr4nUcl6cNvV/LgMPXn5cZ14zt1wReLUjkBAq2i5KfmUkZBe5zHdULbsHCrUKydsuDCe06Cod4
	WpvunydXjlk+CwG1EJGu9ul/YVg9uS7KM9ACdbtdLscoNYP5uJFuse4P+3Z2VEWfbsNVNG5af+cmA
	Rj6awtAFwAnTz9GXBods32qWZ2yH2EHIy//6V2d11pNZXUWnz7YSdqQcuki4/9250ZHzLeo3seuvb
	f8lJh/Dh3WcfrHEi5IoH896R5TD01aDr4MwOdOXGPcAtaOKzO6SzKifHpgSI3nuCkLzmmarcmhNrE
	uCntc9IqN9/UssO5vPEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5nxG-0004St-JZ; Thu, 05 Sep 2019 09:21:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5nx4-0004S7-LY
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 09:21:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B590B1576;
 Thu,  5 Sep 2019 02:21:12 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5DD4B3F67D;
 Thu,  5 Sep 2019 02:21:11 -0700 (PDT)
Date: Thu, 5 Sep 2019 10:21:05 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 1/1] arm64: dts: qcom: Add Lenovo Yoga C630
Message-ID: <20190905092105.GA28839@bogus>
References: <20190904121606.17474-1-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904121606.17474-1-lee.jones@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_022114_747945_11C8E231 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, bjorn.andersson@linaro.org, agross@kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 04, 2019 at 01:16:06PM +0100, Lee Jones wrote:
> From: Bjorn Andersson <bjorn.andersson@linaro.org>
>
> The Lenovo Yoga C630 is built on the SDM850 from Qualcomm, but this seem
> to be similar enough to the SDM845 that we can reuse the sdm845.dtsi.
>
> Supported by this patch is: keyboard, battery monitoring, UFS storage,
> USB host and Bluetooth.
>

FWIW :),

Acked-by: Sudeep Holla <sudeep.holla@arm.com>

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
