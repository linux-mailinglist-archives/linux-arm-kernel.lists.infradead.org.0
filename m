Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 793A7177843
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 15:07:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JSaHY+6P+40lSyZFUTWcotZbAnpTuyRrMQ+JvgWogkk=; b=IYBYMLDZz+6jXX
	4+FGPwz0718Jjk5Uzjh1xUuZ9K63niVh9/nCIhc32G1YiVvG89peLFysR7cFacWh5yO5pfYENQ743
	3ITiHMedjd5W855DKhHuX0qHl6D+rMHhwM9Bu2gWTgtpijF9KtSseSQjtn20w3HwahTQS+IuEVON6
	ZI1MgaJ+zMK4wj6HKlnONs+qd/edYlnUNrYc2KLzLOY0hfF+NQO8+2kbR/85KuSqgfW6KCWxPvuly
	DjO2nAMYpaA609Tnf+1Py8Myw3JBhyf7aGtjLv1K8vyl3cEDUp66wHbEcPO6q14tndpF4Ff1LzRd1
	lLAQhmArIqka8ABnlgkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j98Cs-0000K9-LL; Tue, 03 Mar 2020 14:07:34 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j98Cj-0000Jg-8X
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 14:07:26 +0000
Received: by mail-oi1-f196.google.com with SMTP id c1so1672747oiy.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 06:07:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zFIsnwQFwh0IBQohYKBmj547QANxUwC+KF2hmGIR0Ow=;
 b=Rq7/uLVHbhonB3x3O1rCWjA9mIknsY8ihStlY9QwZlSMu2Q8RG59EqODrUp2N9L5sT
 O+et5gPCF7b5Sp+DmycxGb5imglVKv/oBwhR1h4w9VDwb+46FrCCCAncictdTcb26Bzk
 AXswVTwzy4PlA4r8Nz3qV7MRYEQUzWPgOA+qgWYCTbLj/uZCFdNoPfLKC3IwBt1qXZZQ
 YNRzJdHs2IKcxwurmFgDxHYaDqdY2e7OMf7J7TYPY8s/5NJqDEShoUGVBQsEzDDqaBxz
 vR76YkpBgN9tJj6CgUtB7uR/beDxXiL3SrwIF1D4F0VRMlvKASL+vNx2qaX+atEqXkGf
 snnQ==
X-Gm-Message-State: ANhLgQ2oZE1uTJjPdzQ9oKVD8UehGq/fYLn6ohjeEyT6e71xZIRJosYy
 yESxc2XnH0U+njGP01ojbQ==
X-Google-Smtp-Source: ADFU+vsVm+4W8shQKXXamje89m5ALBPTBaOj3e+mjiz/h8BntqDjw1US47u3zF3zYwvdiyaccvpHDg==
X-Received: by 2002:a05:6808:218:: with SMTP id
 l24mr2384100oie.108.1583244442931; 
 Tue, 03 Mar 2020 06:07:22 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p24sm3601078oth.21.2020.03.03.06.07.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 06:07:21 -0800 (PST)
Received: (nullmailer pid 23694 invoked by uid 1000);
 Tue, 03 Mar 2020 14:07:20 -0000
Date: Tue, 3 Mar 2020 08:07:20 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/4] dt-bindings: reset: imx7: Add support for i.MX8MN
Message-ID: <20200303140720.GA23633@bogus>
References: <1582708431-14161-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582708431-14161-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_060725_302954_322B9168 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, p.zabel@pengutronix.de,
 festevam@gmail.com, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 26 Feb 2020 17:13:48 +0800, Anson Huang wrote:
> i.MX8MN can reuse i.MX8MQ's reset driver, update the compatible
> property and related info to support i.MX8MN.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/reset/fsl,imx7-src.txt     |  4 +-
>  include/dt-bindings/reset/imx8mq-reset.h           | 56 +++++++++++-----------
>  2 files changed, 31 insertions(+), 29 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
