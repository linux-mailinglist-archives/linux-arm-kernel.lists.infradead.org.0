Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2AA1E89A7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 23:11:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xv7LcGNRXDyyRB+DWzatROHUqDWSE0xbU91S3P4ZgVk=; b=MIfIZ+nfJxkuE0
	Ezc/nivd1H0LaUfhwgSuPeDH4oz2N61bybbIDMqfLs5Qk1WQ06hLALG82yycR+Ln/Pwzjg+2p/YzG
	UDQLCGTuKvRDCqmjVesRWqCeh7/aPhtKrKby5VQd6jThJhDMi1SivdBKY+3ynMlt+6tOPcUUXDLOC
	Lo5AX2vCadCsOvT7XQv/VcwtFPHcF3rVpCde9Fr7hJL1Z1VkOo4qZ30AEam0ypceaxdK3ejxeYiTt
	KJC60TQ5o5AGHrrft3VNqQIKBU3v/hnQ88OEMWiGLI1/eWmZe4XGePOr6M5BpoBbe91EeRT5RBEUF
	xcgs0SAhAPSpQEmEIAeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jemHf-0002Of-WA; Fri, 29 May 2020 21:11:20 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jemHS-0002KL-8s
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 21:11:07 +0000
Received: by mail-io1-f65.google.com with SMTP id y5so807834iob.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 14:11:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4+FJjDqvVakGBtWvto28UOMlal+7ScZhsCrXZRCRdMc=;
 b=AVL5+Pm3qdYYhQAEhuLbkuH6FYkFGI3aPo99wkC+C/Rph0kJl0Z3GSC4rLEcze6lzT
 rdGCcs7hwcg1yh56LwWsI5gCd9v36b6/XXvwd95HNcBFu8UEGPlnVTMLVBC28iUN4T8L
 e5qMY47ztb5VPsbFXAjO1BgQ3YQP2QyhTt5j5CdAHAduXw3bBMhHneg+VpMOy6F2pmtZ
 tMJa+rwtr3VYef0Rmk2B+yGc4+YZ6hNQqzJQmhjEVBmod0rBaybpfsye3vjTZOQoHLFC
 dQunnLDZF7jdWv6leRFOuE5Vkq0PsxBJSKsLHFR1o5/3jWSdYddVTl4cFvapO281RPEZ
 d+qw==
X-Gm-Message-State: AOAM5328xx9uEIwIqFQEXt+9UQOh9yjm6qBTKT1XzhAq/sKTM5cXFh7c
 ZqlOMcqqM+2HWi0wuXLXdQ==
X-Google-Smtp-Source: ABdhPJwTMNAfS8IROEQi5gx2Eu3kvTjYIoAAlzt3TX+9dVKYzvKUtKD6suQ2xqiCJCISCHzl9WNZ4g==
X-Received: by 2002:a5d:81d8:: with SMTP id t24mr7617148iol.98.1590786665345; 
 Fri, 29 May 2020 14:11:05 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id c1sm5255130ilq.56.2020.05.29.14.11.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 14:11:04 -0700 (PDT)
Received: (nullmailer pid 2964602 invoked by uid 1000);
 Fri, 29 May 2020 21:11:03 -0000
Date: Fri, 29 May 2020 15:11:03 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] dt-bindings: clock: Convert i.MX8QXP LPCG to json-schema
Message-ID: <20200529211103.GA2960913@bogus>
References: <1590733299-12051-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590733299-12051-1-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_141106_317299_44D6CA4F 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org, sboyd@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com, mturquette@baylibre.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 29 May 2020 14:21:39 +0800, Anson Huang wrote:
> Convert the i.MX8QXP LPCG binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/clock/imx8qxp-lpcg.txt     | 51 ---------------
>  .../devicetree/bindings/clock/imx8qxp-lpcg.yaml    | 72 ++++++++++++++++++++++
>  2 files changed, 72 insertions(+), 51 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/imx8qxp-lpcg.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
