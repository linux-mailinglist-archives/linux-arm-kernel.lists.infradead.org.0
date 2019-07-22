Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF4570DC8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 01:56:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+85BOLjUvE+PnrPlGNRwNxFzT5mvjKJC99Nhac2v6c=; b=ZSyBUC3XxlJPD9
	S1L3zNEqnNBvGU8rgmA3VBRkAqLK3Kw0s34fehLzPp4CInK3DRMwXqbI3gL1vOrCKXTRl26xe3nzR
	DZ3qmGPJO+VUFz9XcZuM2DdVa6fauhirVsAc3PsA6PfILM4mI+f0dpAumukS5Usl33X2YdHIQvAgR
	4wPpp4y2Z9Wet30mDlH1jO4C0/tX4EqUyTMgNYYoZ9kff/qhtRYwTNQIwnC3LCd1ZBuIHEXJIoqQh
	PVeRmoTNYHQY0vFSL+m3ekvu4NVceBFAXNvK0owloYccIY5blzbR1XcGXmw54okBTzif0/krZsA06
	BL7LgCZ2NcVwnsQjIu2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpiAm-0000RE-5Y; Mon, 22 Jul 2019 23:56:52 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpiAP-0000Qd-6M
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 23:56:30 +0000
Received: by mail-io1-f67.google.com with SMTP id k20so77896973ios.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 16:56:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XUUEucdf5T/q+oP9Dd4eyb+UhdjwkWdUVolZWtaE55M=;
 b=kG3zfSGoYbxjG9eSlp+tXQymhRWI2r7ILPkHKL/FAiLDAFJXL47P02+aws5jOJEE4/
 GCJyvhGFDlfhkpYxvEKF1/wQSaxKYqO68ab7XEjJvvsTsZkL4f6AhfxgG4XVbXB8K8/H
 0/NmeWkyzpO0bbqIw9VPjMZAf6yel/CKxRJCaEDo31MXq/g2enkTlmXn91/v+IDv9+Bx
 zqpbbiM0j7YhuKDeXDW5ldlHrCsbUbXTrBz9SdlmaN3zmZifkrSia60sJ3khP5rpp5g3
 ddQ3YVZ86gPf1BKbzf5A+Z+HiSUcOMwF5EHCXAdz8fBzVkFJT8W4gxcWKFpxBM4wMuUG
 WU+Q==
X-Gm-Message-State: APjAAAVeFf5+qPS9pNcRFzq540R5aUtn7FYLp2ALyGmvD9rab4vgtPtN
 7yvPIOPdEr6ughGNZchaaA==
X-Google-Smtp-Source: APXvYqzG3dQHFCuA6ypYHdFZwx9UhmEjXjrpCvFnOpu8YvQ597D8wid4CFtIc1uEUSwyP3Pb43rAkQ==
X-Received: by 2002:a6b:bf87:: with SMTP id
 p129mr59307174iof.253.1563839788473; 
 Mon, 22 Jul 2019 16:56:28 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id y20sm32775270ion.77.2019.07.22.16.56.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 16:56:27 -0700 (PDT)
Date: Mon, 22 Jul 2019 17:56:27 -0600
From: Rob Herring <robh@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH V4 1/2] dt-bindings: reset: imx7: Add support for i.MX8MM
Message-ID: <20190722235627.GA3749@bogus>
References: <20190705085406.22483-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190705085406.22483-1-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_165629_230122_79085BD3 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
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
 daniel.baluta@nxp.com, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, viresh.kumar@linaro.org, leonard.crestez@nxp.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org, ping.bai@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  5 Jul 2019 16:54:05 +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> i.MX8MM can reuse i.MX8MQ's reset driver, update the compatible
> property and related info to support i.MX8MM.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V3:
> 	- Add comments to those reset indices to indicate which are NOT supported on i.MX8MM.
> ---
>  .../devicetree/bindings/reset/fsl,imx7-src.txt     |  6 +++--
>  include/dt-bindings/reset/imx8mq-reset.h           | 28 +++++++++++-----------
>  2 files changed, 18 insertions(+), 16 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
