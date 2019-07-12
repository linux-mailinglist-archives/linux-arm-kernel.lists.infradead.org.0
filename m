Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1BD67397
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 18:49:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h4U45SHta2mT2lqay/WtBU3XAcmoBQbmPpyi2RhF6W8=; b=e9XSzspZATiHai4AL9jtLZ8Ws
	hk8nz8O19xn/pivHapeHzzZRXpSio+EjUUncZ11MaDHdkGeEFMoEsQZUJmbIO2Ar3NQjnNpdWoFnx
	WWY0lpq3HVntfsG8JExuNmiI+eeY3Fv24z+uYNWgeIMuLDBI+cJGDrKtIE98pisG71i+IVpsyDp2i
	vZsFegQYm16CsarChCLQeWMGHi+VDT4uNDdc1Ef5fpXaZpqj/yGkOi1mj/ofmm/tF4deifA8IDA6G
	gGAd05q3bX45CXFDpb1Lzg4sntOQXEUpshSkVUbTUhhWCBxDekyc3na3f3SXwl4rBjR2WkJ+km5Ve
	M5hfdjeUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlyk1-0001zD-Fe; Fri, 12 Jul 2019 16:49:49 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlyjo-0001y1-Ni
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 16:49:38 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 442C160213; Fri, 12 Jul 2019 16:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1562950174;
 bh=b1svF/gTguro1nK1BVoRt1d04OC7/a9WZZ0GYcXlh8Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=oHQbmGmHLU25x9yoH6gar5agOqbHYYwLbTBTI7AnUFQ539bfMmqzyvxMQ9X5JSY1f
 XcEudci5ZxW5guTKNvJo0dX9Yy2LtzCIOMpqpmacIxekLYt6l2qHCeAGTLZGtszkek
 90vAhuwQbyUgp6TlnpCO3rblvYOYYTXSCUSDPNag=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 33FC960213;
 Fri, 12 Jul 2019 16:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1562950173;
 bh=b1svF/gTguro1nK1BVoRt1d04OC7/a9WZZ0GYcXlh8Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Z26V7meMV9wSWGr9zlpTxsWeTq+y5Z9D7WaIEAdBJkpsc7uQntNv+ZZNhYirWM+lS
 5ya4cgcn3AFDmiWO2TBF2ZIl58c0kAHecFjXowk2W7RJT7fm4lmJqQNP9c7M7IALtg
 ws8Dk7oOQzCd68ZquBweSEHPNux2Hzq67xFtFk/E=
MIME-Version: 1.0
Date: Fri, 12 Jul 2019 22:19:33 +0530
From: saiprakash.ranjan@codeaurora.org
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCHv8 1/5] arm64: dts: qcom: sdm845: Add Coresight support
In-Reply-To: <06c1a087-53f7-4841-1ae3-07ccbed22a72@arm.com>
References: <cover.1562940244.git.saiprakash.ranjan@codeaurora.org>
 <52550ed9bbc10dca860eb1700aef5c97f644327b.1562940244.git.saiprakash.ranjan@codeaurora.org>
 <06c1a087-53f7-4841-1ae3-07ccbed22a72@arm.com>
Message-ID: <8b82793e7b693dbb922ef4fdbffdb76f@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_094936_796848_79704B77 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, rnayak@codeaurora.org,
 devicetree-owner@vger.kernel.org, mathieu.poirier@linaro.org,
 marc.w.gonzalez@free.fr, alexander.shishkin@linux.intel.com,
 gregkh@linuxfoundation.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
 david.brown@linaro.org, robh+dt@kernel.org, sibis@codeaurora.org,
 vivek.gautam@codeaurora.org, leo.yan@linaro.org,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On 2019-07-12 22:14, Suzuki K Poulose wrote:
> Hi Sai,
> 
> On 12/07/2019 15:16, Sai Prakash Ranjan wrote:
>> Add coresight components found on Qualcomm SDM845 SoC.
> 
>> 
>> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
>> Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/sdm845.dtsi | 451 
>> +++++++++++++++++++++++++++
>>   1 file changed, 451 insertions(+)
>> 
>> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi 
>> b/arch/arm64/boot/dts/qcom/sdm845.dtsi
>> index 4babff5f19b5..5d7e3f8e0f91 100644
>> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
>> @@ -1815,6 +1815,457 @@
>>   			clock-names = "xo";
>>   		};
>>   +		stm@6002000 {
>> +			compatible = "arm,coresight-stm", "arm,primecell";
>> +			reg = <0 0x06002000 0 0x1000>,
>> +			      <0 0x16280000 0 0x180000>;
>> +			reg-names = "stm-base", "stm-stimulus-base";
>> +
>> +			clocks = <&aoss_qmp>;
>> +			clock-names = "apb_pclk";
> 
> 
> Which tree is this based on ? I can't see aoss_qmp anywhere under 
> dts/qcom
> on 5.2-rc7.
> 

It's based on linux-next.

Thanks,
Sai

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
