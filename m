Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B8A1E72DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 04:53:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DRsyeB3qpi2kbnSDoD49VnAxTVwgX3vKKRcRRa+lgxs=; b=V3AeqRUigp9MJy
	kySObsyBV/UgiQTnvNf2G4DJg5JAbbTZ/g2uLG14NbpABxUd4qlBKRuSvMPIGV3MMralbNkt85m0d
	BCAZDYrFQoXcMZRH5B2C3KQs8Hzi/xowmzzZCWhWWqBEoUuDZI56x/hqs6DE3Unqkgl4qnoGToXhm
	V+Qu6MjwfpzZbbWjYNpV4bVAksOgdrh1tSnyzqQnC1i4gLhXKHOkhD805EHrAiXByFoUgtffLd2Dk
	Sb5IRx5FnSla32KUvKMZOTxj506s2VJLQs2OPT3pyKSwco2uHp+f9JwlfMW7PgTKABiswNLz6IIHt
	ocPYTI3J4CccQ22Et1pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeV9P-0004tJ-SC; Fri, 29 May 2020 02:53:39 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeV9E-0004sh-Nr
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 02:53:29 +0000
Received: by mail-io1-f67.google.com with SMTP id y5so750902iob.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 19:53:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=BB4lLcpMa2PslwRty00Xdd8pENQOq/huAzPVj8i1Pbw=;
 b=rqG4T28lqczSMw/8dbD512J74YD2N5cAwD3fRfkRUJpHtSgmahILBytR4gYAbxDghI
 KGStuzC0F+/ssrDP7D/U48dKhLj43f4luzvhxlBlDKn1wyK+L44dngn8f9Vcj3cbVjaT
 2r4eXouUA62JHjGitdu+1Sh1IuwLKzKqyaditZOTJGHMTZw4OWYfDwYb14UjNl2jdGDh
 VLM4SSiRrb7jMY8HWfufnhKFnCWGnVHJt949JknTJ/BZzRUcbE3jp4i+m3NBNw+vu53Y
 8apypicrMvUlwR9+W8SqoVyWP8REWiH/h05vxI61pHFbgvFcrhUrUvl8KEKA25iLlAcO
 6JYw==
X-Gm-Message-State: AOAM533fYLTPCta4zMUGfb7ZhcpsgBxKlgc70c2qboK1OTMuYODbAgpN
 8K2k7R6lMo4+Qex25QlErA==
X-Google-Smtp-Source: ABdhPJxL8YRfUnqzI0MeilUY+kZQmhRhFFfqAq5VdSU6IuES4gLxlGvgMmEi6ls8ReOorou28Z5Sbw==
X-Received: by 2002:a02:3344:: with SMTP id k4mr5156192jak.140.1590720808120; 
 Thu, 28 May 2020 19:53:28 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id w26sm4382292ill.19.2020.05.28.19.53.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 19:53:27 -0700 (PDT)
Received: (nullmailer pid 1178822 invoked by uid 1000);
 Fri, 29 May 2020 02:53:26 -0000
Date: Thu, 28 May 2020 20:53:26 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 8/9] dt-bindings: clock: Convert i.MX21 clock to
 json-schema
Message-ID: <20200529025326.GA1178771@bogus>
References: <1590650879-18288-1-git-send-email-Anson.Huang@nxp.com>
 <1590650879-18288-9-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590650879-18288-9-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_195328_775670_0C7E1558 
X-CRM114-Status: UNSURE (   9.48  )
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
Cc: devicetree@vger.kernel.org, s.hauer@pengutronix.de, shc_work@mail.ru,
 sboyd@kernel.org, shawnguo@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, s.trumtrar@pengutronix.de, festevam@gmail.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 28 May 2020 15:27:58 +0800, Anson Huang wrote:
> Convert the i.MX21 clock binding to DT schema format using json-schema,
> can NOT find any CCM interrupt info from reference manual and DT file,
> so interrupts property is removed from original binding doc.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/clock/imx21-clock.txt      | 27 ------------
>  .../devicetree/bindings/clock/imx21-clock.yaml     | 49 ++++++++++++++++++++++
>  2 files changed, 49 insertions(+), 27 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/imx21-clock.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/imx21-clock.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
