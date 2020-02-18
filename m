Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC111636BA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 00:03:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0wLh4RqcGUBc9lfp/oJYu0rmHmBbGZD6EBptm1UmS94=; b=AqvCUt0AWvtUPV
	0EQh0yjPo0nutJbkop91CCjFX1qf5WI93fowZY8bIwPahYIOp0Sd5wtNWr3KZTUdkZfvWmPlx4NBG
	+BL5P5YPIaRwzrXqEQJ4xb97DAmxSuK4dpXO8hYimpld9qztCr+BnlmZOsyjVHdvK1TGr+1kh9PPx
	VER8GvTUJcjdjAEAThE/Xj6UkgUNDDTExNXPW4gHz/upRV5regbK6aRg/A+1XxbNdWcG6EKEhdRra
	qOaie+L3yMZPxNGiO7Y9gH0dBczE37Ie90ulLTeFDN7DZRH9qWBXWxPs9h7eqKHezKep27aRr5qyg
	1yFJqfFwoc5U/GFgLufw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Btt-0007vu-Nc; Tue, 18 Feb 2020 23:03:33 +0000
Received: from mail-ot1-f51.google.com ([209.85.210.51])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Btj-0007vd-UZ
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 23:03:25 +0000
Received: by mail-ot1-f51.google.com with SMTP id r27so21228143otc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 15:03:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/OUq9HnmLC39bwvwK3zdiIFd4Xyuiy+9BAYMbBqnLpE=;
 b=aFJVFIMIo7cmmie9890X+LNAnxiriCs5C1tU0tb2QrL1yXWWGCG0kDw33Wx8aHEzoF
 +ie1jmPN1G2by/UiMHq5gpQ2xw0m3clDXSI00/n1qoev8VlA7RLmXNJxLkeev23ITD1Z
 tPN9DVTuqUPGgV/nvgsXhki6yrY9WjicwxVuO3C3ZYayfCF/PlhdgGKnfyncNGWZcjgz
 +xv5LeCybCfRw7+zSvU5haUykLgMjU2o7YOtcfErJMTcICJTD5LYuCtlljxYvPBqAdY4
 9wToL8+YTljR+tcSp85JPVXamkME+HMu1wh+YRHnXyVE+JnI4qeL2nEvJ2ysEJ0aWjSk
 pKxA==
X-Gm-Message-State: APjAAAUppnwR5SuwYx1pU5gFCMqOc9Zsoqh1X6tLqHle6JbHzspkQmvT
 Xpl/AlXEpE7YH/XQlqmY1g==
X-Google-Smtp-Source: APXvYqxCzDLHXIGYjFlzG6Q6f8GZsOXUYoDWJm6RVL1HBDpxsnxGVcSPSLKELpFB+g2wI947gkqZiA==
X-Received: by 2002:a9d:64ca:: with SMTP id n10mr17626635otl.325.1582067002984; 
 Tue, 18 Feb 2020 15:03:22 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w8sm1822780ote.80.2020.02.18.15.03.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 15:03:22 -0800 (PST)
Received: (nullmailer pid 11058 invoked by uid 1000);
 Tue, 18 Feb 2020 23:03:21 -0000
Date: Tue, 18 Feb 2020 17:03:21 -0600
From: Rob Herring <robh@kernel.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCHv3 2/2] dt-bindings: watchdog: Add compatible for QCS404,
 SC7180, SDM845, SM8150
Message-ID: <20200218230321.GA10954@bogus>
References: <cover.1581459151.git.saiprakash.ranjan@codeaurora.org>
 <a8bd3f4062fd7bb45aeab5aa55f6f31c14c69a96.1581459151.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a8bd3f4062fd7bb45aeab5aa55f6f31c14c69a96.1581459151.git.saiprakash.ranjan@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_150323_984338_1852B61D 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.51 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Stephen Boyd <swboyd@chromium.org>, Andy Gross <agross@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Matthias Kaehlcke <mka@chromium.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 12 Feb 2020 03:54:30 +0530, Sai Prakash Ranjan wrote:
> Add missing compatible for watchdog timer on QCS404,
> SC7180, SDM845 and SM8150 SoCs.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
