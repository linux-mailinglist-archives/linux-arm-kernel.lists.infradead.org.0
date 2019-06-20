Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 253C64D415
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 18:45:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wfE/BGVI7p3s9KUj4VDM7nLe/sIpQTAAyk7gGe7qvyw=; b=WqYFMeN7Uwr5ny7b8hsmNMpKS
	7ORtUzJty6oTRinXQjGtrJOWQ8XDtttJNgtFzRbtq7kfewpWo0whmS09D1w27BqvFPGe4mxBVirSk
	Eh71WLoLqV2Y5KIdW4Zw938vi/Msfxwkuv86PzwWAS5DJt7uYjFPxjk/zZdHqIxWSwUFz6p0ZtBrJ
	VKManNNm91Sd9WQGM2eczDoE7+GwXl2Hpwvq1ToObl61rAFFvjqlceRlm3zp5N1KjVeiNjnpFHI+W
	ScTmyynqJmPwooBnpGooVwXj6eqV7nI+vGEsXlfaaYYuMk3CqVGncst8YESR0a8GD93f39yw9NCDB
	3Uapfp9dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he0C2-0008B8-0k; Thu, 20 Jun 2019 16:45:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1he0BX-0008Ah-6H
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 16:45:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 88B9BCFC;
 Thu, 20 Jun 2019 09:45:13 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F1EA13F246;
 Thu, 20 Jun 2019 09:45:12 -0700 (PDT)
Subject: Re: [PATCH v1 0/5] coresight: etm4x: save/restore ETMv4 context
 across CPU low power states
To: andrew.murray@arm.com, mathieu.poirier@linaro.org,
 alexander.shishkin@linux.intel.com
References: <20190618125433.9739-1-andrew.murray@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <1e4193ca-ebd2-920a-dc88-127ffc279990@arm.com>
Date: Thu, 20 Jun 2019 17:45:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190618125433.9739-1-andrew.murray@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_094515_284783_2B97D0D2 
X-CRM114-Status: GOOD (  13.64  )
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 18/06/2019 13:54, Andrew Murray wrote:
> Some hardware will ignore bit TRCPDCR.PU which is used to signal
> to hardware that power should not be removed from the trace unit.
> Let's mitigate against this by saving and restoring the trace
> unit state when the CPU enters low power states.
> 
> To provide a benefit to both self-hosted and external debuggers
> we save/restore the entire state which includes etmv4_config data
> and dynamic data such as inflight counter values, sequencer
> states, etc.

Andrew,

Please could you also mention that there is a kernel command line parameter
to control the save/restore here and in the patch which introduces it ?
I think this missing information is creating the confusion.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
