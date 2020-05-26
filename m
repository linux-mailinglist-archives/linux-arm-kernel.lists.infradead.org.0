Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C070A1E3291
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 00:31:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QPTYcEDmiFnnL1YKEG2aRxsutwc4Axfl1Txuzvwfdm4=; b=csf0fNpIF5g5CP
	9NVVxtNQ53d1RMQLwXBV2CwWn4hSSSQN79lnmpK+DuWQrE17pqk2RWBV4PZwR+fOB87pRF2BvZnG5
	dPGaD7SehRk0tpRdUZ7NJn63FRHqNJv0kbvujUIVNjNlA2SvCu1fNhQor4+rnyLZQgbjnmQFIyAe1
	+8/dByxNxKGepBd2DcE8kOy5V5feNA9u8MA3qRlTqRv4T0tWZMJ0UL/wgAccwkRxTOahfM1ZV/rha
	w0HQ7bYD99VlslpAp0f9lRkkq2EGP69A9MFYtxRbJF3AeT+8ySUSQV/dcwz6bgo1OHSwkialegQ2P
	/fWERnuEdjV9ZgbzdCfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdi6N-0007F5-DB; Tue, 26 May 2020 22:31:15 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdi62-0007BL-0h
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 22:30:55 +0000
Received: by mail-io1-f65.google.com with SMTP id p20so10434822iop.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 15:30:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=rXv9v6cApyCHg24WwJoLLuZ6GgPfJ2x03E4A6LfYfrI=;
 b=rAwRTcOtAsRv5rVaCMzo0N7CHeJHwkmEhqbWAp3nznsOh3MsJMPnF3cEgkL19DrL2+
 q8rq9hgKh7sF4AYBsNvq3usKqUG4MmNAYGUEXjDKa5pVwoQB3xwc3hXzCCz8NhW0QT+P
 LKWTj0Au6O2YgNwSKV/JZRkUK0ZwfI6jD3hKcT+VKPQDL1xG2wggecaGGf6gH7hdybO5
 tCwctyJTDXmbbx1hJcRrvrR7qCAZkVy6RL6g1+RmWoCvOtmoJcIpYSwucIPFseSul4DX
 y8gGUsQ2uylsXTv9v4gomJn6Aw1o5FOm2jc27JkdVptGrF9T7ZkIoy+aQdtmugfPAoYo
 OfvQ==
X-Gm-Message-State: AOAM533xqn+CHc5H3cu5PR5xqddZpunVoL+vlWGKhJHrXaOSjG75hT6d
 hX2tWuFID5AUSglQ3xQXVQ==
X-Google-Smtp-Source: ABdhPJyfX3x2ll9BPborU/rs1EacdVehwUlTCaxQeIXf0m5LHFmkGxuQBVY+bykp6NSE7rdUNRa5Mw==
X-Received: by 2002:a6b:5c19:: with SMTP id z25mr2442629ioh.119.1590532252279; 
 Tue, 26 May 2020 15:30:52 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id z75sm681163ilc.50.2020.05.26.15.30.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 15:30:51 -0700 (PDT)
Received: (nullmailer pid 502906 invoked by uid 1000);
 Tue, 26 May 2020 22:30:50 -0000
Date: Tue, 26 May 2020 16:30:50 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V5 2/5] dt-bindings: clock: Convert i.MX6SX clock to
 json-schema
Message-ID: <20200526223050.GA502855@bogus>
References: <1589328684-1397-1-git-send-email-Anson.Huang@nxp.com>
 <1589328684-1397-3-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589328684-1397-3-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_153054_084659_2607F1BC 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, sboyd@kernel.org, shawnguo@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 May 2020 08:11:21 +0800, Anson Huang wrote:
> Convert the i.MX6SX clock binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Acked-by: Stephen Boyd <sboyd@kernel.org>
> ---
> Changes since V4:
> 	- add descriptions for interrupts and each item of it.
> ---
>  .../devicetree/bindings/clock/imx6sx-clock.txt     | 13 ----
>  .../devicetree/bindings/clock/imx6sx-clock.yaml    | 70 ++++++++++++++++++++++
>  2 files changed, 70 insertions(+), 13 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/imx6sx-clock.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/imx6sx-clock.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
