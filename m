Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2003C15BD2B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 11:54:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qV73A51T+35gqHXH7grza7XJS5D3UPTzLbwMoFQcqTU=; b=h4J2QEkLRwnWEQ
	r1YrLpZewxOnQxPHTlVWvsbegEBTkxLAqzcW8kPRjSkRAhCuS9LTsjPUwDdYgsa0TlQabr5ibI+1H
	ZuvxBI8UPaF/aRSPE2XslxWmE7SWgm4UbHmIBKvtObBnLtwnzh60vo6hN4R6UjvoZR7eh5F+PlCoi
	Cowk++kvWLrM2/QJfuMo29Anh26HDHC8+6/OZ18lAzQezrHex9JfnQ7eXESZs29M7jKHSnPbHLgmv
	lmyJB3nP9dgh+4F4bPeMjyjBoL2MSq7bWNmh7uHkS0Yz2gfWXKyzTBnHy5NG3g0hvQNuKclt2F/DN
	Z+91F5t6S/5Zx/Z3GIZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2C8h-0003gC-M2; Thu, 13 Feb 2020 10:54:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2C8U-0003Xi-5h
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 10:54:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 804641FB;
 Thu, 13 Feb 2020 02:54:19 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 134BA3F6CF;
 Thu, 13 Feb 2020 02:54:17 -0800 (PST)
Date: Thu, 13 Feb 2020 10:54:13 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: peng.fan@nxp.com
Subject: Re: [PATCH V2 1/2] dt-bindings: arm: arm, scmi: add smc/hvc transports
Message-ID: <20200213105413.GA23374@bogus>
References: <1581566330-1029-1-git-send-email-peng.fan@nxp.com>
 <1581566330-1029-2-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581566330-1029-2-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_025422_796159_778AE7C7 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, f.fainelli@gmail.com,
 viresh.kumar@linaro.org, Sudeep Holla <sudeep.holla@arm.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 andre.przywara@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 11:58:49AM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> SCMI could use SMC/HVC as tranports. Since there is no
> standardized id, we need to use vendor specific id. So
> add into devicetree binding doc.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  Documentation/devicetree/bindings/arm/arm,scmi.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/arm,scmi.txt b/Documentation/devicetree/bindings/arm/arm,scmi.txt
> index f493d69e6194..dacc62dc248b 100644
> --- a/Documentation/devicetree/bindings/arm/arm,scmi.txt
> +++ b/Documentation/devicetree/bindings/arm/arm,scmi.txt
> @@ -25,6 +25,7 @@ The scmi node with the following properties shall be under the /firmware/ node.
>  	  protocol identifier for a given sub-node.
>  - #size-cells : should be '0' as 'reg' property doesn't have any size
>  	  associated with it.
> +- smc-id : SMC id required when using smc or hvc transports

IIUC, "arm,smc-id" is preferred more.

Why did you drop "arm,scmi-smc" ?

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
