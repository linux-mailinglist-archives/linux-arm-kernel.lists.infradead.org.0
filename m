Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D88AF1CE362
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 20:57:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bT9zO3cpt8xjjCKtulRl0gZvX1o8EYFFGszYVcvCTqU=; b=OTm5U2zh0TLES4
	EplSqXTAebLCbE9CKSWbtL8uiBGljPDsDogd/COvcM81MDtLr5whJKpygcNAc84j36HqqiyAd9bq7
	tg+fqVypiTZ/2oBqQ7pP4tpI7c0Q/YugRfwuMwtY00u67AwQqbzXmgogyEp7NsPwcRQpwOPALeuUW
	GELZ5hqGn44TNQ9Mqf/Arnhf3kGouzp80K4ymvsmfeFwsWr8Ft4uZSrqC7+9+PKwoJdi2wMZhmq11
	0X5P+S5LvGDDSo2R0bb9uLegay2GlUMr1D1TovCOrDDxkaF0RHQGnffEgsA+GcooAylgYBzoVRMQ2
	jJ3DSm1YYkC64IpQIAPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYDcY-00027c-1K; Mon, 11 May 2020 18:57:46 +0000
Received: from mail-oo1-f65.google.com ([209.85.161.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYDc7-0001um-Ff
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 18:57:21 +0000
Received: by mail-oo1-f65.google.com with SMTP id v6so2174103oou.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 11:57:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9DDGxEg7vQSJEKOEBrEEwpWrhqYal1ymI5IJkhpthc4=;
 b=V3JYQ8TaBYnaQ9KEdVmJL4fjzV1V1S5QqhTLdLv4g/GWdZBn51Qpxnvue0ZUfsNv1G
 jvwvA2pwDb/4rfiZ7GpZbCMC5Nq7kq3W8MvxQL35876CtyAeFHbsTELcrIot8dVpZAUI
 asZObpMgaU6Ln8bKAbGqXykVbLtKxzU0Rqm4hXF12lXZETDaKf726cKneyS3uipcvXJ4
 oGnbTUtubQid8XypwA0SKx8RPKkDcey0CUoseqU98xFvLd7TOjMFZGRgQKNMd7tMcH75
 u4lY/EElJB+QOr0igxVBB009pxIoGwZtKcVwXUK4yroEZ+90K00r1Fm9w/a5Esbfbqbf
 iarw==
X-Gm-Message-State: AGi0PuZQy3IljQJ7TZUxbn4enVlzXQe3LQ3pGKw2nG763qAR2svjD8mA
 /W3Omx7aWTVIXIwD42BrQQ==
X-Google-Smtp-Source: APiQypLRAL/UCcvc18wlicYHZc/dKZIwLzEIrilbbYwAFq3D3D0Zv/+rcU2sOWQnEJrPT5FDFuas6A==
X-Received: by 2002:a4a:95d0:: with SMTP id p16mr2892621ooi.40.1589223438020; 
 Mon, 11 May 2020 11:57:18 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id f5sm3045488oos.8.2020.05.11.11.57.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 11:57:17 -0700 (PDT)
Received: (nullmailer pid 3280 invoked by uid 1000);
 Mon, 11 May 2020 18:57:16 -0000
Date: Mon, 11 May 2020 13:57:16 -0500
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 3/3] dt-bindings: nvmem: Convert MXS OCOTP to
 json-schema
Message-ID: <20200511185716.GA3229@bogus>
References: <1587478181-21226-1-git-send-email-Anson.Huang@nxp.com>
 <1587478181-21226-3-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587478181-21226-3-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_115719_531196_8B801EF0 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 srinivas.kandagatla@linaro.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 21 Apr 2020 22:09:41 +0800, Anson Huang wrote:
> Convert the MXS OCOTP binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- drop clocks description.
> ---
>  .../devicetree/bindings/nvmem/mxs-ocotp.txt        | 24 -----------
>  .../devicetree/bindings/nvmem/mxs-ocotp.yaml       | 50 ++++++++++++++++++++++
>  2 files changed, 50 insertions(+), 24 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/nvmem/mxs-ocotp.txt
>  create mode 100644 Documentation/devicetree/bindings/nvmem/mxs-ocotp.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
