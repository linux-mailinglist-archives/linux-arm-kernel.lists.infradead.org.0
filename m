Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A16971E32A5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 00:32:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yyRiKzqzaw7QqYrZvT3y6LhJXEZzrj+hXq2Rf387YTw=; b=EYqImdAuDSSB7X
	s0qZaZL8v4o3cns+3JwHrQFNdB0lxacteqoD0gGvalNjAi0RiOwrBrQ254R4h7wxhtiEBSpXCCL+5
	JnwL4gcsfKRUcYf4UYL7iur6Nxh5g7TW0VsfwkTeVCZBBgaAFJ0QpSiSxoguRLEHr+sAkVAQQSbP0
	rH5dvPuIrjxx+vFkQoL/sglpTv7D+igIxPmtmDdWe/0fMDQpzPSvfgRQQ/Poh1tICExj5SjoG07ky
	nRRobMssSsgf+AznPgcl36Nz1drLQ72a3T4N28wpUUgpZLRrE87BqWamv+ko1Hoiiq2O4Fo7ZwlY1
	0vtVROvlLmwXY4ogHg2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdi75-0007hk-8w; Tue, 26 May 2020 22:31:59 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdi6V-0007XE-AJ
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 22:31:26 +0000
Received: by mail-io1-f65.google.com with SMTP id h10so23841851iob.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 15:31:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=7PO7nGDx6i6iJvomFwFAJKzAEqtQa3QMoljS+fScBDg=;
 b=Wp6W9DNJRcJkbwUQtKUPXR5P4cF+YKOYivuIdnGwWkWjK7mKntFNowniRLAyYtoEux
 6igYA7/oFkQGpbj1OXsxF37Kl2gWXFE2Pm8HmilZ0LAgaD3Qxjbs6k94T4cZvFcFgysj
 t1qq3nwGe8UpqT/kpiYUI/DNhTA/WSxuKcmvDUyMzKCoTRohD3/keNf8bA7QiiGwfDyH
 A2MtZ8Tj5IonxPh+Of2OSqrB1xRXufbf0HKbqglRrUPRGdBhQwPRgGZT6pDlw6nqHaIC
 GcQtAfF2Uksv1Yb4GiAGqlVcgPcoulfpn/EdJPsxSby6lrc2JonLlOH7Lr/DNMLvDD+q
 xMrg==
X-Gm-Message-State: AOAM533Ux0QKKxCDlRy8NPA6NfrltpPNW7kb7DKuzWgKa6WnMptIrxc4
 vw+7Hg9l/rfkarcC6Bo87Q==
X-Google-Smtp-Source: ABdhPJzg3/7lwTB77ZTQN1hMWzcgg9hexWm7c31lZM6rBv5yZyP5Irit38gNDKsTOeMlYqaaRRoNkw==
X-Received: by 2002:a6b:f812:: with SMTP id o18mr18386246ioh.87.1590532282441; 
 Tue, 26 May 2020 15:31:22 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id f15sm661633ill.58.2020.05.26.15.31.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 15:31:21 -0700 (PDT)
Received: (nullmailer pid 504022 invoked by uid 1000);
 Tue, 26 May 2020 22:31:20 -0000
Date: Tue, 26 May 2020 16:31:20 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V5 4/5] dt-bindings: clock: Convert i.MX6SLL clock to
 json-schema
Message-ID: <20200526223120.GA503921@bogus>
References: <1589328684-1397-1-git-send-email-Anson.Huang@nxp.com>
 <1589328684-1397-5-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589328684-1397-5-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_153123_380358_F3AB2759 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 festevam@gmail.com, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 shawnguo@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 May 2020 08:11:23 +0800, Anson Huang wrote:
> Convert the i.MX6SLL clock binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Acked-by: Stephen Boyd <sboyd@kernel.org>
> ---
> Changes since V4:
> 	- add descriptions for interrupts and each item of it.
> ---
>  .../devicetree/bindings/clock/imx6sll-clock.txt    | 36 ------------
>  .../devicetree/bindings/clock/imx6sll-clock.yaml   | 66 ++++++++++++++++++++++
>  2 files changed, 66 insertions(+), 36 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/imx6sll-clock.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/imx6sll-clock.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
