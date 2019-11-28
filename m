Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFB210C73D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 11:54:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zCwtZCMqLUiuMUG284nSysYTlLJKwh2H3ru0fezbEQs=; b=fkWiadKotZrY7fdQpU6wCAWJf
	wNzvlrj83ETBY0aKBIUP+U2UNt7JJcPfa+MtTYvJsg8CRymCj6oqSTAi4EieUjkuLQAONuYOSbHSG
	brepWwAVKGV0YSvh9/5bebBdsD3MRELzkMRu/zxslvV6IffYTLZTxJsfUOsMISPYZk6zxcIWY2SXu
	KjmcJF26ExRffbBoK5Q/yhqASX25hI7E3e6ChGL5ZAcn6He2HHRuNRKbZpksyuZ+pwCABrLk+Lg7/
	hSoee1qEhclzZNi7bpP3++OqgyLkPry066/tS07MES/2EcCDcLtYnXaK/G0VaS/EI9eaqsirMVTla
	eziKw30Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaHRB-00076D-Mj; Thu, 28 Nov 2019 10:54:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaHR3-00075n-M2
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 10:54:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 91CA61FB;
 Thu, 28 Nov 2019 02:54:08 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B60083F6C4;
 Thu, 28 Nov 2019 02:54:07 -0800 (PST)
Subject: Re: [PATCH v5 03/14] coresight: cti: Add sysfs access to program
 function regs
To: Mike Leach <mike.leach@linaro.org>, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-doc@vger.kernel.org
References: <20191119231912.12768-1-mike.leach@linaro.org>
 <20191119231912.12768-4-mike.leach@linaro.org>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <cc0eb144-48a2-bde5-4790-2fd5e1168360@arm.com>
Date: Thu, 28 Nov 2019 10:54:06 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191119231912.12768-4-mike.leach@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_025409_764721_B90FC9A7 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mathieu.poirier@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19/11/2019 23:19, Mike Leach wrote:
> Adds in sysfs programming support for the CTI function register sets.
> Allows direct manipulation of channel / trigger association registers.
> 
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> Signed-off-by: Mike Leach <mike.leach@linaro.org>


> +/*
> + * #define CTI_DEBUG_INTEGRATION_CTRL to enable the access to the integration
> + * control registers. Normally only used to investigate connection data.
> + */

On a second thought, I have some comments on this symbol.

Given that the integration control registers may be useful for people to
find the device connections, I strongly feel that this is provided
via a CONFIG symbol rather than a  debug symbol within the code.

i.e, CONFIG_CTI_DEBUG_INTEGRATION_CTRL, to help the people better.
Codewise this doesn't make much difference, but it certainly makes
it more easier for people to use it.

We have used debug symbols elsewhere in the drivers for pure functional
debugging purposes. However I feel this is case is superior.


Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
