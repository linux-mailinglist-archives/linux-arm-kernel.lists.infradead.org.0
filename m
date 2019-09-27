Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9800BC0AB2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 19:59:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=69HHg/DdWlVMwahF67YiDaid7+r9yY4nTDwf/Wasc5E=; b=d+2n9DIWHzdJQW
	NU1/kiMxrpe2Ev4tvk/D/e5aJYHDIRAe2jZEtClzKEmihqYE6NTYUXth0MjtXo/zUeNagKyNf/bhV
	5oJubBwypqShXiTwIpl9UNH9QObYjEE28IW5P/vhf4BxDYJpTDTP267Gg/NeKYBGYAZw0d9y15Srs
	rvGNbZPiw9K2Jjhhql/xPmJnPrqG8y1aypwFg+Bra8N2IHCgtSuyXbb8a2vL6wpfzcgrwHCzI3sxj
	7XX0J+Ao1gBuKjdBdfadOFCmhO1CD/JFf4FTV9KTX4mK8cfKAFVmk09t+X6LLwalx+J0UxAE8wHLG
	zsu++6uliWXCeA9StL/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDuW1-00067Q-KS; Fri, 27 Sep 2019 17:58:49 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDuVs-00066i-CI
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 17:58:41 +0000
Received: by mail-ot1-f66.google.com with SMTP id 67so3016478oto.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 10:58:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5DqIrMbfbUSxw6P4Viq/PLdOhtJhDfVLbGztJVk8LJE=;
 b=JrKQwcJpbcXWcYHSPOqggYFXzk3EUIvWu+TFh/9BJQS5eVTtftxYlQqjHgi2azTqVd
 kRRrNAgs65jceR5neZkRY2iDYSwgK/7SQPpwgZ5Ea96Jsh5hIte7vlMqSZonjsP3P5UA
 DrdfkLFUZYY+wlUS0loobnkzG2ZPeRFyOfnrJtz2FMqP5cZWk5AD5X40vP4xynCNPz/G
 55a8ppmmxrMlMkc4K/xdbODtAv4fMQ7cpGZ1B5XPqj2PtcW+VNHCPzDJiTgAIBBSUJGv
 4vrTrRnKCz9ksmpNY2gdoW//9QBlUnJNUZmKO87AaOI7JmvB6ydyulsJK42BqEE9c22W
 gWfg==
X-Gm-Message-State: APjAAAUc2d0ntfSgEn8D1hr6cYYo5ZFvsWfJk8o5yAxDx+erK6wWwZ03
 4k4TezLP5srcvs+w/Rr126sFQNc=
X-Google-Smtp-Source: APXvYqxh7UQtB4K6EwJ90sqVkNEtGKfHhSzYF7AK9XxtQJamydovnwqR9hpgIrckULvXwVW29+hxNw==
X-Received: by 2002:a9d:625a:: with SMTP id i26mr3960317otk.43.1569607119429; 
 Fri, 27 Sep 2019 10:58:39 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t207sm1884662oif.11.2019.09.27.10.58.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 10:58:38 -0700 (PDT)
Date: Fri, 27 Sep 2019 12:58:38 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: samsung: Convert Exynos System
 Registers bindings to json-schema
Message-ID: <20190927175838.GA20682@bogus>
References: <20190920162600.7486-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920162600.7486-1-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_105840_410862_6988BC06 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 20 Sep 2019 18:25:59 +0200, Krzysztof Kozlowski wrote:
> Convert Samsung Exynos System Registers (SYSREG) bindings to DT schema
> format using json-schema.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v2:
> 1. Use select to skip other syscon nodes,
> 2. Indent example with four spaces (more readable),
> ---
>  .../bindings/arm/samsung/sysreg.txt           | 19 --------
>  .../bindings/arm/samsung/sysreg.yaml          | 45 +++++++++++++++++++
>  2 files changed, 45 insertions(+), 19 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/samsung/sysreg.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/samsung/sysreg.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
