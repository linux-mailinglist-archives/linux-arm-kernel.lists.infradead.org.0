Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B13B31792B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 15:47:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2cTrHgrMo2QLNK1Kih2vTqfMVFOmkSD0gnA6cNNeI8Q=; b=rqIsrd7OxoHaKp
	0svr1n0gNMRCVrsQ9E51gcq/NpnBPTWPtY/rXy7yZBNBxTU5bFlKXUI/82fbbj3UBb05vwfgkyRXD
	JUMPYqYKtUeUNHlhQYHsliGF0EDA6/XRqTYn9EIX2bP4PBGtDhLeA9LFoXW3iBmk1qlufPnddI3nD
	mk0XY0t4F4dEiKZOI+07M+HXHub64vGiYZvAqc3rlILWp6lDI+AMoZJiMFMutBa8qPb7LXSEwM6hq
	bV6xXdURgMfk1FxBeRO8eBHGxv1kX2QorCEqSITNkOs/Hf37yAlXenWRnsDYiWgDfrneqMk+JDdsK
	dsemE2e2GLeziQt7d3iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9VIw-0006uU-Rz; Wed, 04 Mar 2020 14:47:22 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9VIi-0006u3-CN
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 14:47:09 +0000
Received: by mail-ot1-f68.google.com with SMTP id x97so2227188ota.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Mar 2020 06:47:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=e1DUnUjPD4cs9mZrpkxpL4JIApSZcJjsqgIO7F3uZcw=;
 b=drDFbhPUp22vLRPutEimcF5bJDtW6iBGQYNb5rCaXK/MLKN43kNxuMfzmcJhsviCt6
 nBXJXN0aTEFs51zDQ4HAhGHr/fe6vdOl5OXKP5v/y+4T21jDf25fz0nFNBlKVavurrsV
 T/QhvEaOKt4DZJW+fmQ+wYA9jayNyHeHOj2ppsSFdL5Z2w5/17lE6tRtsiLFGBzNEBV5
 Vtls84H9T62Vv/IWQgV+tNR0pJpDiA6LnGBr90J7Jyl6pOfyIetpYKOgS32diafwGdRQ
 K24aO32TvtzNT3FAc5jkWQeG0BzMyMl65OVBcXV2pmzjCjVuJNFtGDRs4OAGW6vsBib/
 BcgA==
X-Gm-Message-State: ANhLgQ1OKsT/wFo1dX5YVdPm5FqxSYACYNJkIt1pVd+vs+qtqefPHVwk
 YIHjxVbR+ia3EvT1KJv7JQ==
X-Google-Smtp-Source: ADFU+vuv2Nvk4B7ivVbJLVEh0/GC20+gc6oP+nZrLgfo1+h+gcHdpJZ5L8QZydnr2GL6G7+II3O/RQ==
X-Received: by 2002:a05:6830:155a:: with SMTP id
 l26mr2644933otp.339.1583333226403; 
 Wed, 04 Mar 2020 06:47:06 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id f20sm184242ots.47.2020.03.04.06.47.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 06:47:05 -0800 (PST)
Received: (nullmailer pid 30371 invoked by uid 1000);
 Wed, 04 Mar 2020 14:47:04 -0000
Date: Wed, 4 Mar 2020 08:47:04 -0600
From: Rob Herring <robh@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 1/7] dt-bindings: arm: Correct links to idle states
 definitions
Message-ID: <20200304144704.GA30104@bogus>
References: <20200303150749.30566-1-ulf.hansson@linaro.org>
 <20200303150749.30566-2-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303150749.30566-2-ulf.hansson@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_064708_424341_C7BCDF90 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  3 Mar 2020 16:07:43 +0100, Ulf Hansson wrote:
> The arm,idle-state DT bindings recently got converted to the json-schema,
> but some links are still pointing to the old, non-existing, txt file. Let's
> update the links to fix this.
> 
> Fixes: baac82fe06db ("dt-bindings: arm: Convert arm,idle-state binding to DT schema")
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
>  Documentation/devicetree/bindings/arm/cpus.yaml               | 2 +-
>  Documentation/devicetree/bindings/arm/msm/qcom,idle-state.txt | 2 +-
>  Documentation/devicetree/bindings/arm/psci.yaml               | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
