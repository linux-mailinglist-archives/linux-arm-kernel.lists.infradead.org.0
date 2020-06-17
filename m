Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C53151FC683
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 08:57:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=j1XO4PGCHF10sYkYmewH5mILL3pbnmtqUYJDKuupSqQ=; b=bwqVKFtgTUXXvca9T/c8VEnig
	isFiIhxRYFG916sAyJzBiXIH/uBZObNr7n6rA2GC9W9QptmhpAg3BBQVdXFjhE+KpnzSREDaWXFtr
	H+3KLrFBhecy34DCfm0NLT2HCHG5Mfyxyxtu/s24Y24zrF0n8BSA/K86gjsyJsjANVZW1O1ya2Sra
	g45VKWtJsfzOuchU+qqsOWrjATBS5wCUF7yWztDMAjI7imCKeg4KCWPoeLKeU4MGaYFPbjCKVJenA
	6ZbW6Ev0fPfHbXaUNTT62lCr5tEzA19oL6LePbdqBjurvTEYsWc/GAXw6q0bgRfvN5fQc/fN065uM
	vbC/z7Ssg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlS0I-0003x4-Nz; Wed, 17 Jun 2020 06:56:58 +0000
Received: from mail29.static.mailgun.info ([104.130.122.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlS06-0003wK-SY
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 06:56:49 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1592377007; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=QDAPNg4/kJBIPrrC24qiYUrNEkN8hgr7WOxOCGbJ8R4=;
 b=fZ/GiEF/Ip8NiS9yVHzn30hW/KVyDM7zr27+6fQsWDqAKZk+8jGXvD7/RYXbSw39tFCbLTIX
 btChZuqTDzd9h6Gh1B2Swu/FYAJhSeX652ArM4xASknOJ0+As87o5MtmDBB8hA1VRjqP4X25
 b6jZbbjcVWrDsVxFX2c12fg0Le0=
X-Mailgun-Sending-Ip: 104.130.122.29
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n08.prod.us-east-1.postgun.com with SMTP id
 5ee9bea70206ad41d1637e9c (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 17 Jun 2020 06:56:39
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 7A705C433CB; Wed, 17 Jun 2020 06:56:38 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0BF65C433C8;
 Wed, 17 Jun 2020 06:56:38 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 17 Jun 2020 12:26:38 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>
Subject: Re: [PATCHv3 0/2] Convert QCOM watchdog timer bindings to YAML
In-Reply-To: <cover.1581459151.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1581459151.git.saiprakash.ranjan@codeaurora.org>
Message-ID: <c2b8fabcf82b27c7334482bd53ebba62@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_235647_732972_0A73C15D 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.29 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Douglas Anderson <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>,
 Guenter Roeck <linux@roeck-us.net>, Stephen Boyd <swboyd@chromium.org>,
 linux-arm-msm-owner@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bjorn,

On 2020-02-12 03:54, Sai Prakash Ranjan wrote:
> This series converts QCOM watchdog timer bindings to YAML. Also
> it adds the missing SoC-specific compatible for QCS404, SC7180,
> SDM845 and SM8150 SoCs.
> 
> v1:
> https://lore.kernel.org/lkml/cover.1576211720.git.saiprakash.ranjan@codeaurora.org/
> v2:
> https://lore.kernel.org/lkml/cover.1580570160.git.saiprakash.ranjan@codeaurora.org/
> 
> Changes since v2:
>  * Add missing compatibles to enum.
> 
> Changes since v1:
>  As per Rob's suggestion:
>   * Replaced oneOf+const with enum.
>   * Removed timeout-sec and included watchdog.yaml.
>   * Removed repeated use of const:qcom,kpss-wdt and made use of enum.
> 
> Sai Prakash Ranjan (2):
>   dt-bindings: watchdog: Convert QCOM watchdog timer bindings to YAML
>   dt-bindings: watchdog: Add compatible for QCS404, SC7180, SDM845,
>     SM8150
> 
>  .../devicetree/bindings/watchdog/qcom-wdt.txt | 28 -----------
>  .../bindings/watchdog/qcom-wdt.yaml           | 48 +++++++++++++++++++
>  2 files changed, 48 insertions(+), 28 deletions(-)
>  delete mode 100644 
> Documentation/devicetree/bindings/watchdog/qcom-wdt.txt
>  create mode 100644 
> Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml


Gentle ping!

Thanks,
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
