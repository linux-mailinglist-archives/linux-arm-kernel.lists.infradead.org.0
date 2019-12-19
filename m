Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1131126903
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 19:25:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pyG1k+TaqtUQRhDL7AqSvZ6Gye9Cker4Pz7aA46xoiY=; b=jysopPpF3bTIIg
	uIC8ZIZnAvIlLYh/jwT0rGf3S6RVwEhmlbCyBu1xUaEmDR5hKA+m+Or1OlSw/nXycUtT4DoO8ZbhE
	lDUWWMx9D12YweuvwyvtZot8hlVi4XjQ6MUXpzsUN4yeOLmerP37XEEEgSck02BpeVu39opeFeejn
	rDRfONqdRLKR4AxRPVUXH5tf+gqMqG8nZzSP9c3CLhEhM5kwO5Xzwd8bNuo/wFzG4W/m0+9kSmiGD
	QaAfm7nT9R/Dz2M+rciUPC1subE0k67NdFeCOlA8ind0iiwbitSmn2RVRnc6WXFlxBMnsvYjFQ0hj
	8dYTw5L25utuBKJY3MuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii0U0-0002Zu-Ms; Thu, 19 Dec 2019 18:25:09 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii0TT-0002Ld-LX
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 18:24:37 +0000
Received: by mail-oi1-f194.google.com with SMTP id a67so3427318oib.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 10:24:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ubbzcYJgK4J86pN20uK4XO1/Lq32GjugkrqkcPBc/FQ=;
 b=BQRtQbo+fCinvsP2OaSb1CKqxbeFApm1FmwYHriPjck23vFgiZpEzHwcSiBos9tTk0
 TRVbdiyhQ4S+AJu5SKbp/Xe8w9IKwDeifZXFJsEHA5bRILZ4ewnvg2XCu4a1wda7Jck4
 ZcXQ5G5ZsaUz4+WiTIhXJXR7RuXVM/x2BP3ShUVW6paX2Vk5W8xFI48s73gS7j1StzCE
 5bZ/IfG0phW72YcVKSYk4vKLEaKcTvU3Qn2XIPPZyC16cK95vUYzYY5Z2AWAI5Hdq9Ry
 FqP0yOzmjJ5T43GAqujsjgCXqcL60bLBeJYGU9e1lbtQcoxsVYM/OuBuWxArq8D0y6Lu
 qdcA==
X-Gm-Message-State: APjAAAUN12JVLAL24IsZBGUS2cBmVr1+911CgGjD5ya4GaxBPf/u8wG+
 eLboARPaSgMzIHiU4ondAg==
X-Google-Smtp-Source: APXvYqwP+cokLxTWgWJHG2u8DLdl2oWM5ybBdugsg2ffv/IoIVKtZicq+YLqD5RB1XijlarWQmG0Gg==
X-Received: by 2002:aca:4fc2:: with SMTP id d185mr1123274oib.33.1576779874375; 
 Thu, 19 Dec 2019 10:24:34 -0800 (PST)
Received: from localhost ([2607:fb90:bdf:98e:3549:d84c:9720:edb4])
 by smtp.gmail.com with ESMTPSA id p24sm2374547oth.28.2019.12.19.10.24.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 10:24:33 -0800 (PST)
Date: Thu, 19 Dec 2019 12:24:31 -0600
From: Rob Herring <robh@kernel.org>
To: Sricharan R <sricharan@codeaurora.org>
Subject: Re: [PATCH V2 4/7] clk: qcom: Add DT bindings for ipq6018 gcc clock
 controller
Message-ID: <20191219182431.GA25227@bogus>
References: <1576752109-24497-1-git-send-email-sricharan@codeaurora.org>
 <1576752109-24497-5-git-send-email-sricharan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576752109-24497-5-git-send-email-sricharan@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_102435_758046_C97F0785 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, sboyd@kernel.org, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, agross@kernel.org, sivaprak@codeaurora.org,
 linux-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 04:11:46PM +0530, Sricharan R wrote:
> Add the compatible strings and the include file for ipq6018
> gcc clock controller.
> 
> Co-developed-by: Anusha Canchi Ramachandra Rao <anusharao@codeaurora.org>
> Signed-off-by: Anusha Canchi Ramachandra Rao <anusharao@codeaurora.org>
> Co-developed-by: Abhishek Sahu <absahu@codeaurora.org>
> Signed-off-by: Abhishek Sahu <absahu@codeaurora.org>
> Co-developed-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
> Signed-off-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
> ---
> 
>  [V2] Addressed review comments.
> 
>  .../devicetree/bindings/clock/qcom,gcc.yaml        |   3 +-
>  include/dt-bindings/clock/qcom,gcc-ipq6018.h       | 262 +++++++++++++++++++++
>  include/dt-bindings/reset/qcom,gcc-ipq6018.h       | 157 ++++++++++++
>  3 files changed, 421 insertions(+), 1 deletion(-)
>  create mode 100644 include/dt-bindings/clock/qcom,gcc-ipq6018.h
>  create mode 100644 include/dt-bindings/reset/qcom,gcc-ipq6018.h

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
