Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E9F1E6D83
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 23:20:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gKGLVhw5H+wR+LMpwC3p3GOXbDTBCrJzpy2DQSM80Eo=; b=K84C4XkwfYbZ1k
	/AuiLZVlDN8kVS8EC6SBDqmw1pcZx0TSf5pdUGMK3f48cYmRqCWTd8LF5rK2jkP9qRdMlhsmMjhvB
	MFGL72UeguZQk8a8cIxXz+moMTRhdJiQ1vorrw+XukVdLZd/xMiOwXEKmzHoC2oPI8bBfG+7P0aRy
	6WCGuHRgC1y9+iczj4WeL/0edNUIUXeYiXFI5H0OEIwT9EEjfnIufnDEpgLl0ee/HoBXOcuIjW6nw
	7yFToeDvQPnjSLBMAeq/0O9CqT74IcpAIwE6NBDjJGz8jhQ8CcmuzvW5AiRpnNP8C3UnQHu/2GynJ
	AYFN8mktnLhxLR9UPl/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jePxI-00075D-RJ; Thu, 28 May 2020 21:20:48 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jePx4-00074g-MT
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 21:20:35 +0000
Received: by mail-il1-f196.google.com with SMTP id v11so442791ilh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 14:20:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PwyjsRM4zwlzaJJrG2A1+cXj6KbCnGaQM27nEXJGJlQ=;
 b=IJhslCPrAkTyNlfLuNgrDfCKGOtQz0bj2jaMPue3Pjq0QLu5xYdZ7VCB+1gDZxrcTF
 Ejjj6Cp5G5NCiyQ4V7xCUh1o62DE6dGpSXmSuNr2B5/r+TSMf0+MSoo8ASMpIgCQ55fQ
 0L2MEPDmZ+aGG5FREB5sk19s19c26VWDHAl2Q54jrUide8iTuaknc2ZvSqcUy67RCBHp
 NRNwvW7ZMH3zGN0CgvaCUF490J+pCF0UWRLH6GmcQ+AznPlfurI6THQYAgnPafxVhSBX
 e2zPkktYPdkDU937TvSbfaRcZXv+6XILukulcSUkkEp4Aun6xiX8/OzQCquoxTdg3K07
 AY0g==
X-Gm-Message-State: AOAM533rngdvZZDTbBT2uoazpxJLBc7C/RzlmwUytFA4jrkRg4cB1b3u
 OBhr6GED4Ksjm/fMFqI9IA==
X-Google-Smtp-Source: ABdhPJzWkidAS5F05dATCxL69d3XXFijRp+EsKj191WfFxBxm6cclR4GuacDATyqOBUyfIpQclNWow==
X-Received: by 2002:a92:dc91:: with SMTP id c17mr4289794iln.65.1590700833677; 
 Thu, 28 May 2020 14:20:33 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id o28sm3145992ili.12.2020.05.28.14.20.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 14:20:32 -0700 (PDT)
Received: (nullmailer pid 705934 invoked by uid 1000);
 Thu, 28 May 2020 21:20:31 -0000
Date: Thu, 28 May 2020 15:20:31 -0600
From: Rob Herring <robh@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v1 2/4] dt-bindings: regulator: add pca9450 regulator yaml
Message-ID: <20200528212031.GA705887@bogus>
References: <1589925907-9195-1-git-send-email-yibin.gong@nxp.com>
 <1589925907-9195-3-git-send-email-yibin.gong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589925907-9195-3-git-send-email-yibin.gong@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_142034_748586_FB149E95 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, festevam@gmail.com, anson.huang@nxp.com,
 john.lee@nxp.com, catalin.marinas@arm.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, lgirdwood@gmail.com,
 broonie@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 shawnguo@kernel.org, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 20 May 2020 06:05:05 +0800, Robin Gong wrote:
> Add device binding doc for pca9450 pmic driver.
> 
> Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> ---
>  .../bindings/regulator/nxp,pca9450-regulator.yaml  | 190 +++++++++++++++++++++
>  1 file changed, 190 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/regulator/nxp,pca9450-regulator.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
