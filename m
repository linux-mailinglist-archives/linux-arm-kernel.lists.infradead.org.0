Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E411E6D02
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 23:00:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XPlG0vW6L7+CSXW4jcO0pLKIBlgN931t5XbLNuUXZl8=; b=PhSWdAvuHfTnDJ
	kKPjhBNVG7eRDkxTl36LIXgK/iIY2/IfMMIO2WdmF03DmYMVltHQuj7K92EU4q/5mVIwsHF3Wg0uc
	6PICIpEZjCbP9Kq0zKjq7DzkA/OFfNPBvFz0pH0qCB3BweQimm4vdlA04oUTwBE/N4CPfGlopawQN
	ks85tpI2RnUbziGDFBEObItTKeQ19TweCmey4s6PpXjFydtuRm+cdOmGoLI5F/6+iL2U3cjl72Q1U
	aJ9nQ1qjeo/24l4QB4xR3tp71+VdPQWbNz7ewGMg9ZIS2gymEb/eNWcaMSymkVYtUPz9BxCb+N1Xz
	nEdN/hDus4QMR9Lb4M9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jePd6-00064I-4Y; Thu, 28 May 2020 20:59:56 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jePcr-00063d-5J
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 20:59:42 +0000
Received: by mail-il1-f195.google.com with SMTP id 9so302896ilg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 13:59:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=HEXTfzPxkJii85U9NQnqeGblmqEGIppOJ1PmKJbxo5E=;
 b=s4Dq/FHY57Hxea9n1hs/M4vb5rq6uY5wUCqKEx9pfLRLBgkvNL5mBFw8RhWohzb2it
 oV3leB93jA/mkjDk7eQrvw6T4tuVjQmvP+T03RmMA68aZBt9nBXA17qW/clGFIx4RHe+
 ASps9zumgRTBiMRRp1Ows8zA7KszuYUHwuoYAvAzUaj6WMF14tURqyJ1s/p6UJf1rhFb
 lWNQc3kDAYV2E19pV9Oej8y9EeJdXnuYxh8CXXT16StsasVYKfgTS9II9WQG5IlIQFLa
 ApqZPb1BlOAQDUGWRsz8MhPLTeulPwy/LsIiBgQ1otdY7rjFA3Bl/SZ+EplulnHMquQ/
 IxFw==
X-Gm-Message-State: AOAM532fQhZs5UCLCtwXzMsQWKXMQsNVMYl5fJFX7aX8wd+dM6QYHF7e
 bPPfhxUNDMZA2sMDh4W3rw==
X-Google-Smtp-Source: ABdhPJxONQFv7BqR15FO9E7bLkEzR41PdMboUEIHZSxeHOilpSRvD4fIiG1Wt7pM/kL6XSBPHrD5gw==
X-Received: by 2002:a92:d4cf:: with SMTP id o15mr4675328ilm.49.1590699580086; 
 Thu, 28 May 2020 13:59:40 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id n22sm2978296ioh.46.2020.05.28.13.59.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 13:59:39 -0700 (PDT)
Received: (nullmailer pid 665729 invoked by uid 1000);
 Thu, 28 May 2020 20:59:38 -0000
Date: Thu, 28 May 2020 14:59:38 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 2/3] dt-bindings: timer: Convert i.MX TPM to json-schema
Message-ID: <20200528205938.GA665682@bogus>
References: <1589860547-3207-1-git-send-email-Anson.Huang@nxp.com>
 <1589860547-3207-3-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589860547-3207-3-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_135941_196059_8F84D926 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org, ping.bai@nxp.com,
 festevam@gmail.com, s.hauer@pengutronix.de, daniel.lezcano@linaro.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, tglx@linutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 19 May 2020 11:55:46 +0800, Anson Huang wrote:
> Convert the i.MX TPM binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
> Changes since V1:
> 	- remove unnecessary maxItems for clocks/clock-names.
> ---
>  .../devicetree/bindings/timer/nxp,tpm-timer.txt    | 28 ----------
>  .../devicetree/bindings/timer/nxp,tpm-timer.yaml   | 61 ++++++++++++++++++++++
>  2 files changed, 61 insertions(+), 28 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/timer/nxp,tpm-timer.txt
>  create mode 100644 Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
