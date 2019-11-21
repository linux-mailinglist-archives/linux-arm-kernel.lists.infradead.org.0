Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1B4105A82
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 20:39:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xn1x5QMoQ7CJHEtF0pd8IOeZuz5FyDXNAWz1I9g58N0=; b=KVRGUOSC5SNaEQ
	Xcsw5d/aUe1XePYAOCgCMoR4g3vWj/zNNo/5EX4c6eTsVBjI0thYORAYZGdy4HE38QjkTFAG7A9b9
	dwvTfyWqXIiC0iT90Koy8XHoJmew61ruhhU+WnTQHqMRD2fHzwpc9BWyNYhuB3j3brehwEw546oIU
	XYBh0nS2lkg17z1jWEaRLujjvv5z9mX3bMuAKywXfYMr7PXLHxfgGdN6A3a8ZhVxA8Mjoz+7Y/zy2
	g+xwo2SXPcoflKxNQB85h4qbBGas6SDvS/A8KVf1Z8jVk2BAzFhJIRAxKcZbdlgYcaWm3prkcD1g2
	718hK8gfMPdBtmLXWDuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXsIo-0002lh-9r; Thu, 21 Nov 2019 19:39:42 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXsIf-0002km-A3
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 19:39:34 +0000
Received: by mail-oi1-f193.google.com with SMTP id a14so4315711oid.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 11:39:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=c4KjpD+ns0ACXFE5v6l81aoQVHuHJsxlS4JefMC5EMY=;
 b=OZQEu6KhZRrnXYTfnYr7hOtT/vdVRPPFDlZMTImpYYGKYCLBKleqweRkSkfh2NQlAS
 A+7H0BjTcII8OAwN7YDuNtAD08z30ValNVRgsAfOj4aEyQGQ4j4f3QFhBSF5+Ekp/qvF
 XH7xiPtxfArrZCkIeNEmkjDZDW5a1TXnIPsq+/y27A7lM636Ijs2xYEbunylNF1FD3Mh
 ajZJECQUoc0FKgtlzZJ+hw+2+XCZ6lii/0IQuQF4G3y/WB6kn0wj19OqCx1EBtZADcGD
 d3cgBE5Ar+6xbaxXHyOIGSidD6LnGaKDjlqii7Ax2V3ea09itueV7vGSf/VwrkeEOiYX
 K3Wg==
X-Gm-Message-State: APjAAAVma2XwHYcBZE/1dWnuFOeCH1miAO5FRo6lwsc0v8HZUdIAeAoW
 KhHQeW3TddK1KHP7SHc+jA==
X-Google-Smtp-Source: APXvYqw+O/5gVYMGrcCumNOlMYDrrdD4XmwLhJA1mxJFW4xVlHhGW1dwTOU1ghWvK2UUGvx0UeKwSA==
X-Received: by 2002:aca:1715:: with SMTP id j21mr8631035oii.6.1574365171174;
 Thu, 21 Nov 2019 11:39:31 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u204sm1229289oig.35.2019.11.21.11.39.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 11:39:30 -0800 (PST)
Date: Thu, 21 Nov 2019 13:39:29 -0600
From: Rob Herring <robh@kernel.org>
To: Alain Volmat <alain.volmat@st.com>
Subject: Re: [PATCH v2] dt-bindings: i2c: stm32: Migrate i2c-stm32
 documentation to yaml
Message-ID: <20191121193929.GA6676@bogus>
References: <1574342866-8348-1-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1574342866-8348-1-git-send-email-alain.volmat@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_113933_343785_83AE2F66 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 wsa@the-dreams.de, linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com,
 robh+dt@kernel.org, linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 21 Nov 2019 14:27:46 +0100, Alain Volmat wrote:
> The document was migrated to Yaml format and renamed st,stm32-i2c.yaml
> 
> Signed-off-by: Alain Volmat <alain.volmat@st.com>
> ---
> v2: remove i2c-scl.*time description, ref (moved into i2c-controller.yaml
>     push the st,syscfg-fmt into the if compatible st,stm32f7 part
>     fix the st,syscfg-fmt ref syntax and set minItems/maxItems to 3
>     make the clock-frequency part common and only keep enum in the st,stm32f4 case
>     remove unnecesary minItems/maxItems
>     remove address-cells/size-cells from required fields
> ---
>  .../devicetree/bindings/i2c/i2c-stm32.txt          |  65 ----------
>  .../devicetree/bindings/i2c/st,stm32-i2c.yaml      | 141 +++++++++++++++++++++
>  2 files changed, 141 insertions(+), 65 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-stm32.txt
>  create mode 100644 Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
