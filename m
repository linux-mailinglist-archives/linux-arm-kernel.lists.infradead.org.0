Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44318C3E12
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 19:04:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SH0sLTy1UmANhtPdgq15zjtbx2jbd/iuzjWDx06Yd9k=; b=bWsWC1vS0aAGoPiRIZcAbgwPU
	M2VN/Mn3Svway8Z3Y2jCqLoYjlz8wt72c5qJ6aFBitkRMkT+x0nVM53Yek3wpt5/RGb8CsmKj/9Xk
	fQrDgBtUHiL3t3uKynyXq63xfsZoQX8435LRGd+JMKxGeMSY0PoPrmtHK7d+mjWuw9YbOFJfnvDmC
	L+/eta7CKL4WwZVvo5JGrLmN2Uu4QVQ+nZLdp2NwxRKoJdwEMeiZPilpgMYSyI8FoIPg4h3+FygJm
	C9sx3clqmvN43U7I+tuAHbRz0YfNAtzjMLEjbysiVqF9hmvsP1bX9tr3jsd6M4smeyS5K4ltAElIo
	kgBRSRcmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFLZi-0000wy-40; Tue, 01 Oct 2019 17:04:34 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFLZV-0000ug-MP
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 17:04:23 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id A6DD16178B; Tue,  1 Oct 2019 17:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569949460;
 bh=UEkX/cHMbQ0sDePOFVv3FYadMtUY51cOeHadyFKhHvY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Vfjl1LlHwNim8eCtDhB71OUlt/h4EIAkbeUH7HXiZOKM8pEnvBRALO9p9CSL9DRPR
 6m0UcVVYVt7n1zpbqFooykbr4j+TChUbXsDTKaA4+QHCIMUQ4JjLJ19EVf++mjiH5K
 UaMtqlGmoEWHXXvJXGERT1j3uDtq7UJFbGZVSNeE=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 62D5561728;
 Tue,  1 Oct 2019 17:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569949454;
 bh=UEkX/cHMbQ0sDePOFVv3FYadMtUY51cOeHadyFKhHvY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Amc4WfDqR/Ia2oe2RA7vGkjDeZHnbdBIgta2AynRkAwnAg0DKlyrue7DBbGM2Zhb5
 vGwuYZkfCUQAHLfmEkZ4PpW4V1SYojQvaVT//h5rwM4kfQ3lgT6iOMSdCCmBo8q1bl
 uGQDcZFuvPCNecg3TlEHS0/XCvOgiPl9Mv/+wDig=
MIME-Version: 1.0
Date: Tue, 01 Oct 2019 10:04:14 -0700
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Subject: Re: [PATCHv9 2/3] arm64: dts: qcom: msm8998: Add Coresight support
In-Reply-To: <CAOCk7NrK+wY8jfHdS8781NOQtyLm2RRe1NW2Rm3_zeaot0Q99Q@mail.gmail.com>
References: <cover.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <90114e06825e537c3aafd3de5c78743a9de6fadc.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <CAOCk7NrK+wY8jfHdS8781NOQtyLm2RRe1NW2Rm3_zeaot0Q99Q@mail.gmail.com>
Message-ID: <16212a577339204e901cf4eefa5e82f1@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_100421_760249_0C6DB830 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rajendra Nayak <rnayak@codeaurora.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 MSM <linux-arm-msm@vger.kernel.org>, Marc Gonzalez <marc.w.gonzalez@free.fr>,
 lkml <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, Andy Gross <agross@kernel.org>,
 Sibi Sankar <sibis@codeaurora.org>, Vivek Gautam <vivek.gautam@codeaurora.org>,
 Leo Yan <leo.yan@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-01 09:13, Jeffrey Hugo wrote:
> Sai,
> 
> This patch breaks boot on the 835 laptops.  However, I haven't seen
> the same issue on the MTP.  I wonder, is coresight expected to work
> with production fused devices?  I wonder if thats the difference
> between the laptop and MTP that is causing the issue.
> 
> Let me know what I can do to help debug.
> 

I did test on MSM8998 MTP and didn't face any issue. I am guessing this 
is the same issue which you reported regarding cpuidle? Coresight ETM 
and cpuidle do not work well together since ETMs share the same power 
domain as CPU and they might get turned off when CPU enters idle states. 
Can you try with cpuidle.off=1 cmdline or just remove idle states from 
DT to confirm? If this is the issue, then we can try the below patch 
from Andrew Murray for ETM save and restore:

https://patchwork.kernel.org/patch/11097893/

It is not merged yet. They would appreciate your tested by ;)

Thanks,
Sai

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
