Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D7D62D98
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 03:44:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C1HDcuvHygyzFh123Zva6rm9ijMKSHC8UPg3vJ1EhBM=; b=s4zib6SciN0b2H
	FFqX7vaNitCqzzUwLfuvpdw6OFDiOgt1SuuwZdu2E4sOIJJCkpgcQ8K4FWe2q/U7Ji1xSbuzc0Pu1
	xK1BtAEK372lk5lrfpX+9x8lSumpNn0H7SnL3IOaLmiPjLyFsZvV5tBOdTaA/lcBNPMweVxgUJ+Ke
	OJPnZjjP5l9IuoKWovap0W7OKeO9HLTj7XLF4EKiolXm17aw5Km5zh36Zy4supNfB6MhwNZJ5LFDz
	naWZPJoMC1rT/HtZ6Hvlb90XWD6oJjBnWkQ7F9GE6DdbcXN0ImR86Czqz9MkmXXxf1oxvYJulTVJg
	59a1tNSPifGcQB02Ynyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkfBg-0007bj-8G; Tue, 09 Jul 2019 01:44:56 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkfBP-0007bF-3m
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 01:44:40 +0000
Received: by mail-io1-f66.google.com with SMTP id j6so39702496ioa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 18:44:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Kd+R8U7AeHQK+dVVAxxx/vKyVP0OoTL7mSnz079YKZg=;
 b=turioJ/OJ1CTC93DoW0n3a+/RLYExger8wMSGx27e+/j/wsobmm9WM1c2VBkLPBh98
 Nq5WIU8fYRWdyVVgPQzcCuGRHvsem//JuobRIq1sZYJIpu8P9mHgeJsw+dAHRJWbm259
 4CJMhWgezXh1mtuI6hX+sjxAV8FE8NMy5uI5CdSHkiKK7DkVqpDIWxhkrhTkQgPnr2WS
 9Tm1DWHA9n6xT7SO3Qv43IAtjIbqbQzfI5/eAfhhPbuKkdmpaFt7EslO4JhIVIOOQV//
 EZWfU/1WPeaeLU8fzn2e2WnEp/YYe0VMAsEeJNqKFsAG9sUjpU3BjJRSBY2WRp1E9/Xt
 h3fg==
X-Gm-Message-State: APjAAAUNVU2k9tUdGqo+42fPYF07m1rkc58WM+U6My2XbokkZTBCWUix
 EcoBmR84o49kufaXFzhQWg==
X-Google-Smtp-Source: APXvYqwUZNHjJqnSaa51TzsLuv0W/Pd+sulwtIXpORaf4ssy3jNRBSvXFrt+gjlJKE0rUraKSVmSEw==
X-Received: by 2002:a6b:8bcb:: with SMTP id
 n194mr17670842iod.194.1562636677804; 
 Mon, 08 Jul 2019 18:44:37 -0700 (PDT)
Received: from localhost ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id m4sm31452340iok.68.2019.07.08.18.44.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 18:44:37 -0700 (PDT)
Date: Mon, 8 Jul 2019 19:44:36 -0600
From: Rob Herring <robh@kernel.org>
To: Sricharan R <sricharan@codeaurora.org>
Subject: Re: [PATCH 1/6] pinctrl: qcom: Add ipq6018 pinctrl driver
Message-ID: <20190709014436.GA9055@bogus>
References: <1559755738-28643-1-git-send-email-sricharan@codeaurora.org>
 <1559755738-28643-2-git-send-email-sricharan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559755738-28643-2-git-send-email-sricharan@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_184439_156984_6CEEA0BA 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 linux-gpio@vger.kernel.org, agross@kernel.org, linux-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 10:58:53PM +0530, Sricharan R wrote:
> Add initial pinctrl driver to support pin configuration with
> pinctrl framework for ipq6018.
> 
> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
> Signed-off-by: Rajkumar Ayyasamy <arajkuma@codeaurora.org>
> Signed-off-by: speriaka <speriaka@codeaurora.org>
> ---
>  .../bindings/pinctrl/qcom,ipq6018-pinctrl.txt      |  186 +++

Please split bindings to separate patch. Using DT schema would be nice.

>  drivers/pinctrl/qcom/Kconfig                       |   10 +
>  drivers/pinctrl/qcom/Makefile                      |    1 +
>  drivers/pinctrl/qcom/pinctrl-ipq6018.c             | 1183 ++++++++++++++++++++
>  4 files changed, 1380 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.txt
>  create mode 100644 drivers/pinctrl/qcom/pinctrl-ipq6018.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
