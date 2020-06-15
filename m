Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC45B1F9D0D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 18:20:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u8IoTcgGnBcbBPGIcxgjNs0hjiF7wqLUzgUARIVEHHc=; b=aXBDkwtBJmowJS
	phgHSq9dGxG2f4cEoGLkSDhvBZjLJoj6Oq2STHsrSRYWJU53FcU0WG2WpUuKOjyNuJQtMLlD3/kDe
	3eLhwp0EAbhhHBPfo7/Ipfj4stwYUehorqO0065L+Ihw60UAx/o9kosCmsJPMtF2LFCx3L/wG3oQX
	nxbV5FkL2g4saXpF6BPwcC/9SWQECrXOIhandGR1tpITcSrUyMv5C4dWpVn2K29bHJcL695ffQZG4
	XUTygOWowi9BUWbHaVR+G6xk0s16UeVw+pqRDTBX+czcWblWYGJkn6aekHgW2tc89Xvyg82bk7iei
	xgf3RnSuXyPfAMzikKKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkrqL-0002Bd-47; Mon, 15 Jun 2020 16:20:17 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkrq7-0002B5-UQ
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 16:20:05 +0000
Received: by mail-il1-f193.google.com with SMTP id g3so599139ilq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 09:20:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=uvbped+Dn13FUPq8GHew9vUB2jQNtfi2nsvSR22TQ8s=;
 b=oc/VNBUYkLOPQTHl2a9vr129VoiwCNVSubmhihC0WnTSqgua4qxuy3VZfyxoyj4vQt
 fBKvc/a/XhdUEp7ENNvrUAt02fCx7E/GZzWhvybvhHECcT7yYhUqgxXX6S4kkq8sf5Ww
 4xrFWdq9IlK/hUwt7sjzC3JkA0cN4Xgy4M5ND+xisAmv52pp4F2Naq8Mi+ICllVjQeYI
 6YUrtwyhFAKexx5w1Kvk/iyVxCVG9TQRAPjMUTfScCsZodRTNtIVYrNbakvmFFpCstT1
 D/GRcD3wX+h/LV3mZx+q78V0cQnKoTQrpH2rgg+cbbcVweTifkxlzNx9+fk10HgreIBr
 TACw==
X-Gm-Message-State: AOAM530dpxpZ0gKtqhFUnfANJdlMRukdNxFyVSVDY9R9kknqrDh3ewk4
 f6FReiQbWp6GL47rzRZrWVHv1gA=
X-Google-Smtp-Source: ABdhPJyWS/sstoBhKxILy/hcjEoOyepMM2wljkSKlbRqyuvaRgoPm9BvD7ypFBgSLyiSfGmJvM3WIg==
X-Received: by 2002:a92:dc89:: with SMTP id c9mr27936223iln.238.1592238002603; 
 Mon, 15 Jun 2020 09:20:02 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id i10sm8149137ilp.28.2020.06.15.09.20.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 09:20:02 -0700 (PDT)
Received: (nullmailer pid 1884267 invoked by uid 1000);
 Mon, 15 Jun 2020 16:20:00 -0000
Date: Mon, 15 Jun 2020 10:20:00 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2] dt-bindings: clock: Convert imx7ulp clock to
 json-schema
Message-ID: <20200615162000.GA1884157@bogus>
References: <1591234387-15059-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591234387-15059-1-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_092003_991146_A0DCB7D5 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org, sboyd@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 mturquette@baylibre.com, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 04 Jun 2020 09:33:07 +0800, Anson Huang wrote:
> Convert the i.MX7ULP clock binding to DT schema format using json-schema,
> the original binding doc is actually for two clock modules(SCG and PCC),
> so split it to two binding docs, and the MPLL(mipi PLL) is NOT supposed
> to be in clock module, so remove it from binding doc as well.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- add "additionalProperties: false".
> ---
>  .../devicetree/bindings/clock/imx7ulp-clock.txt    | 103 ------------------
>  .../bindings/clock/imx7ulp-pcc-clock.yaml          | 121 +++++++++++++++++++++
>  .../bindings/clock/imx7ulp-scg-clock.yaml          |  99 +++++++++++++++++
>  3 files changed, 220 insertions(+), 103 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/imx7ulp-clock.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/imx7ulp-pcc-clock.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/imx7ulp-scg-clock.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
