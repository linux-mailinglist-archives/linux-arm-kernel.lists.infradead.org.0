Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1691A13BCE4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 10:55:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b1K3eKZ8aSwaoRFogZoK8auftxpd8bFxoWWSEsrWd8Q=; b=eVX8S8+R+wnNnhQoqUyhxutff
	jtzP9zGxk1twT6DAD0RzsE6Qu8Zw3syJ3ih94BClDFrOqZ5q9emIj9HfcaYO8fGBgU14MlF3vmGO0
	3dudiXbMzC7w8iM/IGrcKBoVsdxpPtts1AC+ZFfKDQ5vPIuPi+z1mUuJOVCSHP1M4+prUqahSIeWZ
	6B+0WIGOM7JYRNMBC/6N7QSkM6tGmKJP6dGT10SuqikCSsfwQOyBJfoa2fwkAm0+yX1NtinRlmEDX
	bI5ZzI4nSpdExHZmDS8bp8b75pdV+xhC9XYEOFNmuToTNHsw/YRR/bM8gjjOxLVDjrwBOOE1jHxzV
	QU3Ki3few==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irfOk-0001pF-Js; Wed, 15 Jan 2020 09:55:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irfOZ-0001nf-Qf
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 09:55:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8CCA031B;
 Wed, 15 Jan 2020 01:55:26 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DB2FB3F6C4;
 Wed, 15 Jan 2020 01:55:24 -0800 (PST)
Subject: Re: [PATCH v8 07/15] coresight: cti: Add device tree support for
 custom CTI.
To: Mike Leach <mike.leach@linaro.org>, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
References: <20200113213149.25599-1-mike.leach@linaro.org>
 <20200113213149.25599-8-mike.leach@linaro.org>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <a1883b7f-159b-f52c-c27b-dd6c9953bba3@arm.com>
Date: Wed, 15 Jan 2020 09:55:23 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200113213149.25599-8-mike.leach@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_015527_913997_82A0834D 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: lorenzo.pieralisi@arm.com, mathieu.poirier@linaro.org, corbet@lwn.net,
 linux-arm-msm@vger.kernel.org, liviu.dudau@arm.com, agross@kernel.org,
 robh+dt@kernel.org, maxime@cerno.tech, sudeep.holla@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/01/2020 21:31, Mike Leach wrote:
> Adds support for CTIs whose connections are implementation defined at
> hardware design time, and not constrained by v8 architecture.
> 
> These CTIs have no standard connection setup, all the settings have to
> be defined in the device tree files. The patch creates a set of connections
> and trigger signals based on the information provided.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
