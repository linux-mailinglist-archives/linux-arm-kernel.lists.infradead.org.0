Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B93E9011
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 20:37:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mIijGTwKMZ8C6UqOLMu9t0G/Dffs7itbnnSxTI85lnY=; b=rY+KdSfLzaBAw+
	xC4v7bdsTyewJCWb9qbjmH6pmnmNLZYx7yBD5oZRNSW+huKCWHRDot/cMM+Mj3ZS5MZIgoXYbuFUw
	mme3gaPMcMc4lvQn9C/3ogZtxfDUgGCYmxz2IRfNouYWWz+hFF+9HWfzwwm/4wpl1ETaMCM/Ul+pU
	53R0H7HPDmrnf7Cqhgo/LGOpcvbuIi1DVz6U88luEo0jF+Vag89b7ty/ZwEHC6rDLAR5RSaq3NahF
	i0lvMXADL/J0s5Tikujy4lPa6lZksTsYNAV99wlkphfldAuA55c2uIgDonpg6jgvu/G6FwBgFAcH1
	ZEqAQ02e+DSSs6dmMgnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPXJT-00022e-HA; Tue, 29 Oct 2019 19:37:55 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPXJI-00021w-OY
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 19:37:45 +0000
Received: by mail-ot1-f67.google.com with SMTP id t8so4720737otl.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 12:37:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OaBB0CUagHiRXxagwoyDSZGw2BJpV74SXdj8bbEIrrA=;
 b=SbB+zKbvac0PMWNauKIonlwr4r4iiwyEB6q60IBGjPYuaucQwdtiHj6xoWy5io/1Or
 VJcy/STfzbaCBodvfCk/LXIU2lRn0WN6XlRo0yJCX822XRlfMfJPW8Z7bxsGZ6EhuD+j
 VJmdPjF4mq/Aal9dLYMPKCx2060di38Sd8JvEKRKSp1/Soqxu+5yxMqIaqlhA43qARtf
 2XDlStUjpYiP8CRe69JA/N99DxwogWjsQ2xcm56SFuoQc8Oi+96v9gY0NmDiZ78ZBgKQ
 /W5ai5oNRZ48hp/jTcWL0RLgjM1vNU/wUVhYWuNHNkp5RnBsLKbDuT1SW88V5yQxzCKH
 EZDg==
X-Gm-Message-State: APjAAAWMWCbVNcIivgyBnSlSq2EkH1evyB8wUL1WAT05u9AuPin+8gZz
 8e/kcfcig4XEfoc++grlGg==
X-Google-Smtp-Source: APXvYqwZ2xIiHy2/3tXNmgZ6nBmM979oLi3UT7TFiyN04uFGKSjWipp3wWwBMve5J2DU09YvST5EwQ==
X-Received: by 2002:a9d:5f89:: with SMTP id g9mr19011647oti.227.1572377863984; 
 Tue, 29 Oct 2019 12:37:43 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k204sm4253897oif.33.2019.10.29.12.37.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 12:37:43 -0700 (PDT)
Date: Tue, 29 Oct 2019 14:37:42 -0500
From: Rob Herring <robh@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH 1/3] dt-bindings: arm: Add devicetree binding for Thor96
 Board
Message-ID: <20191029193742.GA14965@bogus>
References: <20191024144235.3182-1-manivannan.sadhasivam@linaro.org>
 <20191024144235.3182-2-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024144235.3182-2-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_123744_799657_665926ED 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-kernel@vger.kernel.org, darshak.patel@einfochips.com, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, prajose.john@einfochips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 24 Oct 2019 20:12:33 +0530, Manivannan Sadhasivam wrote:
> Add devicetree binding for Thor96 Board from Einfochips. This board is
> one of the 96Boards Consumer Edition platform powered by NXP i.MX8MQ SoC.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
