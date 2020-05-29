Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 974851E72C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 04:52:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mEWmy9S+hXLDdgmHSkS4mjLtvctIrpbvDOrQy+iRqiE=; b=CyhdpK3sS5Ry4X
	7J8EdLM8erzVVSNZmUUpbV458dUJxN1utFX5GSJs8P5hT6vty7faURKGvhWkP2T1xa6Ni99YBlDzJ
	2Sjq4D71G+ZP/ov21BRMvxw2IYmk9UCWRemUIBzq+p3EHGUIlPoCN7/fs/v18uxw+0QH1QqJRy1UJ
	uW/u9BYnf2nhsfdwtLARtp1LzfU8phj1DLXAnJPMKwxdwW7m3bUHJkk3OY3+QvaAmXBa2ZQmx2UNY
	UO1I67w1BQnqjMLOfNgAedD/n8fcwdnCK2vPzWCOeDtD+LxmmFVQl9FApbh7H1qWavmZC7Q2GQgK4
	EuhliQC8aQvA2rIXBcEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeV8F-0004Ly-3A; Fri, 29 May 2020 02:52:27 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeV85-0004LN-2R
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 02:52:18 +0000
Received: by mail-io1-f68.google.com with SMTP id d7so793929ioq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 19:52:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=dYzhLoTll3frc3jvIhj6ziGjQdgJ1GYKRhqt1bvGoRU=;
 b=YtXm+iRGxQVT5/p/BEzXWFlt9RsYvAWa14KFD6tPrWtjIqFkTuca2gABztFwiF6wrS
 tBd7BGlDojQpQl78Grky+CQj09x7ZCeY2GcSVEmVm1Lf2P4nbxwFFc6JCeRCaeInlOul
 pxqrJyWEdvqLxRu2pSVbbcigY1IDwgf24+S1efHPGb2wyr4KYk7WdWLBmrsIKkhb9pHE
 3qxbSTMfGf0vPHSA1Bw8sprvfD9Ic2e4kHSKDD8RS/C1X92DygLKyVy5DbbZB2wbMUjf
 Gxh/bGo703QgSI/Jjy5z4D69y84tGbQ7La0aqwaM/HBVvufqs9BlJp7TgFfSXv/+fi9P
 XtYA==
X-Gm-Message-State: AOAM530fXAh0WKVqQCLkk38sGgBMocvhKEw0eCUFK2dlhbj5T5DTIwfp
 O0qEmyn/+TxZxvmrJqXgiNTrN+AgjA==
X-Google-Smtp-Source: ABdhPJxiE/37cei3ZpDYnIjOZrdQ0I7nL29YYsTPAhqWW70ml289YeYIcvVhAX9hwi5FSI8e4xbAAQ==
X-Received: by 2002:a6b:1543:: with SMTP id 64mr5090541iov.123.1590720736453; 
 Thu, 28 May 2020 19:52:16 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id o15sm4088313ilg.46.2020.05.28.19.52.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 19:52:16 -0700 (PDT)
Received: (nullmailer pid 1176859 invoked by uid 1000);
 Fri, 29 May 2020 02:52:14 -0000
Date: Thu, 28 May 2020 20:52:14 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 6/9] dt-bindings: clock: Convert i.MX27 clock to
 json-schema
Message-ID: <20200529025214.GA1176812@bogus>
References: <1590650879-18288-1-git-send-email-Anson.Huang@nxp.com>
 <1590650879-18288-7-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590650879-18288-7-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_195217_124607_95B47EE0 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, s.hauer@pengutronix.de, shc_work@mail.ru,
 sboyd@kernel.org, shawnguo@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, s.trumtrar@pengutronix.de, festevam@gmail.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 28 May 2020 15:27:56 +0800, Anson Huang wrote:
> Convert the i.MX27 clock binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/clock/imx27-clock.txt      | 27 -----------
>  .../devicetree/bindings/clock/imx27-clock.yaml     | 53 ++++++++++++++++++++++
>  2 files changed, 53 insertions(+), 27 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/imx27-clock.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/imx27-clock.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
