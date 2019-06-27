Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E76589C7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 20:22:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e5PZQ6G3Srv1gXTFI909R5KANqQ9cBYLHrH12aO2iAU=; b=GzYhwFzQtzBZyAYyISmpEbU4E
	bicj+gDq7L3Vn8QECue/MN9j1nMVrda1RPyc6E5yB6k2IyXNBhqkCtwBm5EK8pD7DXXdjyTzGnRuw
	eRs8xGZC+OZq0cZMCxo1x7jvJVw3hWduoGaAkixRXkn1gZcV2Y1XaM/htv5OggPRR0hOTrRmvDZXE
	jIlSlJwDChaFPI4F6XrWurJcl0yGCrt8Q8NvulCKw+QXZRf9IsWfp3JVIAfDpDpmXAMybY+7UCssU
	XbOsKZgq7e/JmQKPy+FkoPPXkGYFOjbQJdOwPCqUzOWQy2GxAM4bpYLfu0yv34ckq74H5RalrCIM+
	UO4d/xREg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgZ2L-0005kn-9H; Thu, 27 Jun 2019 18:22:21 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZ26-0005k4-Ec
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 18:22:07 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 28EA4607DE; Thu, 27 Jun 2019 18:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561659726;
 bh=L4rcvZr/+aW0fXo6jf8y6SY/AYN6T06PMSeRbTAx/RQ=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=bz9ZvbKk+19cPUYMoVAHtGANzVgSuBRp/ozL/ndHQM3D8RVuuxcyw0hTF86WXXS6h
 9++uVXYO49wWWrosmRXwMNfFrXvbdoXXQFNHytkfUTh7AqWIurHlJvAFBxGMSl+gX4
 iwuMbPOmm7qrzRH2MOeyYiNBi5yJumE/Ks0JAHMk=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [192.168.1.100] (unknown [157.45.87.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C9AB56021C;
 Thu, 27 Jun 2019 18:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561659725;
 bh=L4rcvZr/+aW0fXo6jf8y6SY/AYN6T06PMSeRbTAx/RQ=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=EZDHDrlLSCTmFKqx3BjfzxaFmF3ZfvGKnPZ5oWdKl9PIvqN5VaMsgsaMgh86g7I3E
 rmbmn62Xl/6Z7nbfE7QJri2QUjRtXObt411a6Tv3fJOospRRPIYZFancWErn1IpP6R
 4EcuZvfI5z8eOvnDDh7F44ysWsqGuVtl6bbrle7g=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C9AB56021C
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
Subject: Re: [RESEND PATCHv4 1/1] coresight: Do not default to CPU0 for
 missing CPU phandle
To: Mathieu Poirier <mathieu.poirier@linaro.org>
References: <cover.1561610498.git.saiprakash.ranjan@codeaurora.org>
 <0a20cf9eb34b14a191381af98af1694bbc222734.1561610498.git.saiprakash.ranjan@codeaurora.org>
 <CANLsYkyaeroow1dRaffy5pxSCH7ocb9=EMeZeSjgpjDWXu18vg@mail.gmail.com>
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Message-ID: <0e33a1f2-f535-91e3-635d-dc8852833a0b@codeaurora.org>
Date: Thu, 27 Jun 2019 23:51:56 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CANLsYkyaeroow1dRaffy5pxSCH7ocb9=EMeZeSjgpjDWXu18vg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_112206_515501_DA05FC47 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Rajendra Nayak <rnayak@codeaurora.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Brown <david.brown@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Sibi Sankar <sibis@codeaurora.org>, Vivek Gautam <vivek.gautam@codeaurora.org>,
 Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/27/2019 10:54 PM, Mathieu Poirier wrote:
> 
> I want to apply your code to my tree but it isn't easy for me to do
> so.  Did you notice the checkpatch.pl warning about the DT bindings
> being in a separate patch?  In this case it is not a new binding but
> following the process gives the DT maintainers the opportunity to at
> least look at your patch.  Because the changes are trivial they may
> decide to ignore it but that choice it theirs to make.
> 

Hmm, git log on coresight dt-bindings showed some examples like
this where bindings were updated in the same patch.

Anyways, I have separated out the patch now and resent v5.

Thanks,
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
