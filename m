Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F0C1C325C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 07:46:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hT35ww39oHZHae94XmxvR2rNvTLN5CL3Tmay4T9qRI4=; b=Sh4CKz5jUuHdcoliRvpKX72B1
	5LTAVHm5SVtESVeJAhLjfCpQ2UrMHI673NJYzkLckgAAvJK2SwbVCXiayjI5Dgn+Z1yfn2V3AQ4aD
	BciyXK00aHl+dTZhlgScbIRfBO074VeDprgHHJ0jjhRuzHNjcp6/soHiVw9e6VOLhr54vJIieqO3n
	VFn8GZP0aW5L1sWn2J/B+yGJfDia0igEzv9x9r+1dpheq7oBr0JCL9bcIrS9Nf01dXRPpi+RroNrh
	GO9SXEgmKCQU+0wFrj7EaHjl2QRHf2Pnr6NUFF6dz6TL0xojrOtpQMk7QDlevlG4Vmc4KJKis9Ot9
	sl6FKo5nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVTvu-0005Dp-TD; Mon, 04 May 2020 05:46:26 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVTvp-0005DT-1K
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 05:46:22 +0000
IronPort-SDR: 10NbxSFodZ5DJefUy7DaxChV6DRkd59hWdVsP/REyO1P3fcnL5/dGo1C8AP9CB0++1QGC2JIhz
 P0VSIi9SqXsA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2020 22:46:19 -0700
IronPort-SDR: TXvKDZUMGElupqRIHsEDPTP3SAOJqu/4Te3id4ZK9HdrJQLpbjoszE0PQZf2gLedKfVr3+DDuR
 77c9leqmWWZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,350,1583222400"; d="scan'208";a="433989799"
Received: from mylly.fi.intel.com (HELO [10.237.72.167]) ([10.237.72.167])
 by orsmga005.jf.intel.com with ESMTP; 03 May 2020 22:46:16 -0700
Subject: Re: [PATCH] i2c: fix missing pm_runtime_put_sync in i2c_device_probe
To: Wolfram Sang <wsa@the-dreams.de>, Alain Volmat <alain.volmat@st.com>
References: <1588261401-11914-1-git-send-email-alain.volmat@st.com>
 <20200430163503.GA15047@ninjato>
From: Jarkko Nikula <jarkko.nikula@linux.intel.com>
Message-ID: <0a0b4ad7-3c5a-075d-1484-1e95b976ff48@linux.intel.com>
Date: Mon, 4 May 2020 08:46:16 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200430163503.GA15047@ninjato>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_224621_124284_E6C7D1A3 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/30/20 7:35 PM, Wolfram Sang wrote:
> On Thu, Apr 30, 2020 at 05:43:21PM +0200, Alain Volmat wrote:
>> In case of the I2C client exposes the flag I2C_CLIENT_HOST_NOTIFY,
>> pm_runtime_get_sync is called in order to always keep active the
>> adapter. However later on, pm_runtime_put_sync is never called
>> within the function in case of an error. This commit add this
>> error handling.
>>
>> Fixes: 72bfcee11cf8 ("i2c: Prevent runtime suspend of adapter when Host Notify is required")
> 
Right, I was blind to see this.

Reviewed-by: Jarkko Nikula <jarkko.nikula@linux.intel.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
