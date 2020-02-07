Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D8D15524B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 07:11:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7MImNfMHwhQMTTjkMwZRLA4yeH5LYxvw8wsapFG8yeI=; b=m2TN8tJuaBnCi2dcDEIKJO48Y
	i2eIPXX9ZL1YgacACLMPgpEsdn7NFJQWv47HwtW7nbbRa+Qo1fMk0ULSE+z2+6XTJyf+y46yMXf/U
	LTuqD7zonyx7xMKKn9gCWekob0ti+DNsm+Ze56nkIvGlVIjdRUIwKxAYAyOyPKYyQqdJyX5h5Wzek
	HEQ1UX/bh8eghb86Od70eOJtiyBJJjq4KUum55rPHMnUuMdI0a2hocd8UKMVAEM53ikzYTTSD/30i
	ImrOA0DtaMXrE5pSIxyHhU1+voFHzHkngLMQ8pfir/4Q8RUuMUGi+R7HiZskEND6ZDGSULLLxGyNT
	rKrDGPVgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izwr5-0006ci-9O; Fri, 07 Feb 2020 06:11:07 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izwqv-0006bk-Lh
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 06:11:00 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581055853; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=9dWo6uK9jKsDwewb71Iojt0lLBywexIt8UvMHWOd8gc=;
 b=UvqNzFIcs5mkEdBK61didkE3NJ3uQ1KnzyvHSp8bIDfJDNduiAkR0CLid6XP2XA+QbiGAIJK
 ENCVbNuEyrqoRJ8yrY6B/LrcPjz/rvYbXYPKb/tnQIwZ5sHsNtmEIL9BLupq3W9SMKkqemra
 VI9dfhQFjdSfFzyhgcyJp1AmSLQ=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e3cff6a.7f7f2539e340-smtp-out-n01;
 Fri, 07 Feb 2020 06:10:50 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 200DFC433CB; Fri,  7 Feb 2020 06:10:50 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A6F35C43383;
 Fri,  7 Feb 2020 06:10:49 +0000 (UTC)
MIME-Version: 1.0
Date: Fri, 07 Feb 2020 11:40:49 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCHv2 2/2] dt-bindings: watchdog: Add compatible for QCS404,
 SC7180, SDM845, SM8150
In-Reply-To: <20200206183808.GA5019@bogus>
References: <cover.1580570160.git.saiprakash.ranjan@codeaurora.org>
 <ff71077aa09c489b2b072c6f5605dccb96f60051.1580570160.git.saiprakash.ranjan@codeaurora.org>
 <20200206183808.GA5019@bogus>
Message-ID: <f26464226f74dffe2db0583b9482a489@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_221057_770323_33EA7414 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, devicetree-owner@vger.kernel.org,
 linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Stephen Boyd <swboyd@chromium.org>, Andy Gross <agross@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Matthias Kaehlcke <mka@chromium.org>, Guenter Roeck <linux@roeck-us.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 2020-02-07 00:08, Rob Herring wrote:
> On Sat, Feb 01, 2020 at 08:59:49PM +0530, Sai Prakash Ranjan wrote:
>> Add missing compatible for watchdog timer on QCS404,
>> SC7180, SDM845 and SM8150 SoCs.
> 
> That's not what the commit does. You are changing what's valid.
> 
> One string was valid, now 2 are required.
> 

Does this look good?

diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml 
b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
index 46d6aad5786a..3378244b67cd 100644
--- a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
@@ -14,19 +14,22 @@ allOf:

  properties:
    compatible:
-    items:
+    oneOf:
        - enum:
            - qcom,apss-wdt-qcs404
            - qcom,apss-wdt-sc7180
            - qcom,apss-wdt-sdm845
            - qcom,apss-wdt-sm8150
-          - qcom,kpss-timer
-          - qcom,kpss-wdt
            - qcom,kpss-wdt-apq8064
            - qcom,kpss-wdt-ipq4019
            - qcom,kpss-wdt-ipq8064
            - qcom,kpss-wdt-msm8960
+          - qcom,kpss-timer
+          - qcom,kpss-wdt
            - qcom,scss-timer
+      - const: qcom,kpss-timer
+      - const: qcom,kpss-wdt
+      - const: qcom,scss-timer

    reg:
      maxItems: 1

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
