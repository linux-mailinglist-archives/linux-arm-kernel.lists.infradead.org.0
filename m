Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7713B6B082
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 22:36:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xZ3kh5PzuvWIS3cTMJ57EEXkOA2aWsvA/bPcVvHVX54=; b=MPV6Gh8iWqRQVe+mwGlWCssxa
	GUFhx1TCi4LpPtifNikq3jjX9QPy6zW63cb4tS9dtafN9WzktkurGc4Vn0C/mTSWivqvq2bAaPrsP
	klCPIKfmJ0D20wLiFCi8f4hBpRXSuaQfWZ6xCd3T5ydlpQiByaLoCgPJ7YQb++QHpyHzGhJxNk/WE
	jQ+z2y0OmYPSVICk5o9BPIEqrhWChseVitOXm790Xb+I/OXfXAlBFEtx8DskADsYXpfMGZbQB0x8K
	+uxIBuA5CaDGlhXYAfiZ4crMcYhWKj/r9BHfr94uBALh0iYhMciRSY9qsh9s5qOOTy576HFff2WiW
	h8hQy6EYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnUBr-0000MQ-8P; Tue, 16 Jul 2019 20:36:47 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnUBe-0000Gq-JR
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 20:36:35 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id E2AD760D35; Tue, 16 Jul 2019 20:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563309393;
 bh=hofFwRcWzR8HLOCx0JLYE7YouqvH4oqoWzq69rSYnWk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lXxMM2xkk+eaYYG0HrehOgXt9YpY7UsHsTNWX24dt1R4vyloC1lnt8yneZoXGqMza
 ZVpi3BhxrKPGhx2JbYFyfVzXNEbStS6i4ve23JxjY31b4PLh3v5rL74u1OY8xyEnJG
 lAB7fI63LqvmaYXUU1fbKIBzIPXxWAHd1uBexFHU=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from localhost (i-global254.qualcomm.com [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: ilina@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8A23A60D35;
 Tue, 16 Jul 2019 20:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563309392;
 bh=hofFwRcWzR8HLOCx0JLYE7YouqvH4oqoWzq69rSYnWk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lxqeIxL7fH5wgBEIJ0eRhQRdb7GTxejCZarchIbaJIAS09QQkab2nu3r6udvHLYqk
 /bomMgRWEmfzlKzBIgRw90HK0pPIcct1a1Gr9EWMeMK6UxIBSSvgoBW8i+E/1Y5oyT
 wHBsZ+RKidkAiWX7UgwhDvAbCXnOUgqgGAsyE6LA=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8A23A60D35
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=ilina@codeaurora.org
Date: Tue, 16 Jul 2019 14:36:31 -0600
From: Lina Iyer <ilina@codeaurora.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 17/18] arm64: dts: Convert to the hierarchical CPU
 topology layout for MSM8916
Message-ID: <20190716203631.GC25567@codeaurora.org>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-18-ulf.hansson@linaro.org>
 <20190716144730.GA7250@e107155-lin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190716144730.GA7250@e107155-lin>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_133634_675766_44E1BCE6 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Tony Lindgren <tony@atomide.com>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, Lina Iyer <lina.iyer@linaro.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Kevin Hilman <khilman@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Andy Gross <andy.gross@linaro.org>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, Amit Kucheria <amit.kucheria@linaro.org>,
 Niklas Cassel <niklas.cassel@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 16 2019 at 08:47 -0600, Sudeep Holla wrote:
>On Mon, May 13, 2019 at 09:22:59PM +0200, Ulf Hansson wrote:
>> From: Lina Iyer <lina.iyer@linaro.org>
>>
>> In the hierarchical layout, we are creating power domains around each CPU
>> and describes the idle states for them inside the power domain provider
>> node. Note that, the CPU's idle states still needs to be compatible with
>> "arm,idle-state".
>>
>> Furthermore, represent the CPU cluster as a separate master power domain,
>> powering the CPU's power domains. The cluster node, contains the idle
>> states for the cluster and each idle state needs to be compatible with the
>> "domain-idle-state".
>>
>> If the running platform is using a PSCI FW that supports the OS initiated
>> CPU suspend mode, which likely should be the case unless the PSCI FW is
>> very old, this change triggers the PSCI driver to enable it.
>>
>> Cc: Andy Gross <andy.gross@linaro.org>
>> Cc: David Brown <david.brown@linaro.org>
>> Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
>> Co-developed-by: Ulf Hansson <ulf.hansson@linaro.org>
>> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
>> ---
>
>[...]
>
>> @@ -166,12 +170,57 @@
>>  				min-residency-us = <2000>;
>>  				local-timer-stop;
>>  			};
>> +
>> +			CLUSTER_RET: cluster-retention {
>> +				compatible = "domain-idle-state";
>> +				arm,psci-suspend-param = <0x1000010>;
>> +				entry-latency-us = <500>;
>> +				exit-latency-us = <500>;
>> +				min-residency-us = <2000>;
>> +			};
>> +
>> +			CLUSTER_PWRDN: cluster-gdhs {
>> +				compatible = "domain-idle-state";
>> +				arm,psci-suspend-param = <0x1000030>;
>> +				entry-latency-us = <2000>;
>> +				exit-latency-us = <2000>;
>> +				min-residency-us = <6000>;
>> +			};
>>  		};
>>  	};
>
>I was trying to understand the composition of composite state parameters
>in this series and that made me look at these DT examples.
>
This was meant to depict a hierarchical state format for OSI.

>What format does the above platform use ? I tried matching them to
>both original as well as extended format and I fail to understand.
>Assuming original format:
>	State         power_state PowerLevel  StateType     StateID
>	SPC           0x40000002   0(core)    0(Retention)  0x2 (Res0 b[29]=1?)
>	CLUSTER_RET   0x1000010   1(clusters) 0(Retention)  0x10
>	CLUSTER_PWRDN 0x1000030   1(clusters) 0(Retention?) 0x30
>Now extended format:
>	State         power_state StateType     StateID
>	SPC           0x40000002  0(Retention)  0x40000002 (Res0 b[29]=1?)
>	CLUSTER_RET   0x1000010   0(Retention)  0x1000010
The composite state would comprise of CPU state and  Cluster state.
So for the last CPU entering idle -
(CLUSTER_RET | SPC)
0x41000012
>	CLUSTER_PWRDN 0x1000030   0(Retention?) 0x1000030
>
(CLUSTER_PWRDN | SPC)
0x41000032

Hope this helps.

Lina

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
