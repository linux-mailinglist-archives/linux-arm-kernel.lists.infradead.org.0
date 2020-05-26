Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B06C41E328D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 00:30:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nThmOwseDMR9NQ5Si5ZECKU02vFnHNGBVa38djiSuiA=; b=CoTxR6scqOegf4
	wjaU3zXzsYD51DICj+fzh13ihTE5T55Sq4aOMx7kmk5NUmOaThBZYjhKzA+CoCkLTkS+3gH91xggd
	95utCaG9riMJhcKxl4wS2CqF/tbWg2Hw6UU4UPBaXoLU4rrptt42XqjdNhxjniJdhDwvDanBH8toV
	HMb+4PlvB32HnjOKqXhE2Utoe9CE8w98YCV/RdSddgJTL5lAwPip5p0JI5vDlR8HrQ4ouXBDY/dvy
	mMlwDahBXabpT6NWg8kr5F+KBBIa9ulF+MES40cZ+Nb2OBIhcvL+xBIZ3+WSQpqztaA1ydRn22wFk
	b17XaId+/eNYoEIBjB5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdi5y-00071N-0Y; Tue, 26 May 2020 22:30:50 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdi5n-00070k-Bt
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 22:30:41 +0000
Received: by mail-il1-f193.google.com with SMTP id a18so4881444ilp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 15:30:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=uvZTRh4Nznd0Zmmmm65kfOWsQMC5SMuK+6+fcBdpZ+o=;
 b=mepBoTWiJejo1pbezWYXJGIcXXcaHojfEisxys/E+A1/llAwxWpKcDLm9U27JOnuGq
 /UxS2vE/DUQBk+TQD74+LrMfJ5/XxrS7ZcKh5vgLO1uwRKY+r14lKJYOwQ1b/a+unLHH
 AUyuLz9Wa/rvLMATd3Uhfppe16DtU4Dkuthx8Zw+rKfJkL79S7ksiX6Hn0hy+hegub0k
 KEnDGbqzEBGcaSShWmoL0Y0Pi0fJKQzySMXoGhwDxyELhY9pRBPsKho+z86XSAQoIWDx
 Z3gmn/HscQLO0tVALX+YvWWggbCKLbGmSyow//BtAA9XEzF2LIdMCAxhQORfpStLq925
 u7CQ==
X-Gm-Message-State: AOAM533o1D4eGOPMH+5EB4NMuxm+I9Pp9ZxLYcSwEpljGIE6ColdYOd0
 kPB29dBS76M9ONTw6xP/nA==
X-Google-Smtp-Source: ABdhPJwRtqirt7lGaLtmACWvkh34S4Us9xy9DiuauaFs+bstalYo6Fnb7i5OYZ0/Fc1Btdw9dnvvUQ==
X-Received: by 2002:a92:b111:: with SMTP id t17mr3386857ilh.241.1590532238328; 
 Tue, 26 May 2020 15:30:38 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id k64sm689960ila.4.2020.05.26.15.30.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 15:30:37 -0700 (PDT)
Received: (nullmailer pid 502377 invoked by uid 1000);
 Tue, 26 May 2020 22:30:36 -0000
Date: Tue, 26 May 2020 16:30:36 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V5 1/5] dt-bindings: clock: Convert i.MX6Q clock to
 json-schema
Message-ID: <20200526223036.GA502298@bogus>
References: <1589328684-1397-1-git-send-email-Anson.Huang@nxp.com>
 <1589328684-1397-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589328684-1397-2-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_153039_404753_D6C23BD7 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
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

On Wed, 13 May 2020 08:11:20 +0800, Anson Huang wrote:
> Convert the i.MX6Q clock binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Acked-by: Stephen Boyd <sboyd@kernel.org>
> ---
> Changes since V4:
> 	- add descriptions for interrupts and each item of it.
> ---
>  .../devicetree/bindings/clock/imx6q-clock.txt      | 41 ------------
>  .../devicetree/bindings/clock/imx6q-clock.yaml     | 72 ++++++++++++++++++++++
>  2 files changed, 72 insertions(+), 41 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/imx6q-clock.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/imx6q-clock.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
