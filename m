Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42DCF1E72BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 04:49:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SgM5FxR5z3uLBPiiI49/M3CXxDSSNyxMZ0JAZkdamH4=; b=hztHoMCOmMx6ej
	7rX1BW9ZQ+gLph0yRy3wh2SZ2T0dYEI6a2f0aaw+A2D/cThoxPBKBs1PmbSFRg2kTolw5N0tcKGC4
	073Mg5rWtig2OOm9uag3jPPflgP+ewPxHlBxJeUAgXY1ApYGT9qK4kSbqBfjJIMovxt5vqo5q1M+t
	yrRYxfo/k7utMj32S8ScfdJABUQM7n4yX4eBnA1y1Et7XR8w+uAm8W97MNSmeSw3Rjrb+iyvJHPbN
	luQOve/TciN1c42TiaBlnQ6Jb/5jrJ/E+1lp89wC2dzQ9j9bSoDPCfE+qkTIZA5s8T6vX+zAs97v9
	gF51x3+j3JkQjknsS48g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeV4p-0000dk-GE; Fri, 29 May 2020 02:48:55 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeV4c-0000d7-O8
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 02:48:43 +0000
Received: by mail-io1-f67.google.com with SMTP id o5so764861iow.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 19:48:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2wOEByp6gUNrdU4BNTFl/gH2hxnA8FPWu2vBLdfhtz0=;
 b=qaSF1drh3I/vtCweTpzS/vNw8xehSoBcavwrhE0gUQ60gdLY2SWRh5i/yKlnOfMF1V
 jIUUaIJ2F280pF4p4ispMR/XWTcGQO1RtVq5b96KiMBVP27q3Qo3AqePQZ2tkxVPJgV9
 uIsi3ENudhLV9Zl4aumNnLH+9L3KMcTO9EnG5wSrdSO3QtVjCpuqjagRgZ6CTwgiRwht
 Oxv1cqzCoPP1nFul+cBEpJV/wl6HEDaTWTpDH9M1CkOsCp/ZI0THX583Ls9/0GXj9j2E
 oCZKkzvrPamjka5KYRf8gc9rAsvEZqtLCTqNobepKBc7JhfLbuxXxyEzqQpFsUJEJHDv
 EbFA==
X-Gm-Message-State: AOAM530Z606PkPL+dI5coi3QiQESIYkw+yunUVB9zri/mzoeVmxH2SY0
 EsndUU+Kl/vaZzoBj3dHbgFxABipxA==
X-Google-Smtp-Source: ABdhPJwaVZjnnoKp02/s1snipVdrssvc2EzQh9OAl8zSZDlr1KNefyoQMWawpPD/c9VL/HI8n3SvZA==
X-Received: by 2002:a02:a80f:: with SMTP id f15mr5497366jaj.90.1590720520911; 
 Thu, 28 May 2020 19:48:40 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id o15sm4084317ilg.46.2020.05.28.19.48.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 19:48:40 -0700 (PDT)
Received: (nullmailer pid 1171117 invoked by uid 1000);
 Fri, 29 May 2020 02:48:39 -0000
Date: Thu, 28 May 2020 20:48:39 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 3/9] dt-bindings: clock: Convert i.MX31 clock to
 json-schema
Message-ID: <20200529024839.GA1170982@bogus>
References: <1590650879-18288-1-git-send-email-Anson.Huang@nxp.com>
 <1590650879-18288-4-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590650879-18288-4-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_194842_778480_0F6F3FF8 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, shc_work@mail.ru, sboyd@kernel.org,
 festevam@gmail.com, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 mturquette@baylibre.com, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, s.trumtrar@pengutronix.de, shawnguo@kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 28 May 2020 15:27:53 +0800, Anson Huang wrote:
> Convert the i.MX31 clock binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/clock/imx31-clock.txt      |  90 ----------------
>  .../devicetree/bindings/clock/imx31-clock.yaml     | 118 +++++++++++++++++++++
>  2 files changed, 118 insertions(+), 90 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/imx31-clock.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/imx31-clock.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
