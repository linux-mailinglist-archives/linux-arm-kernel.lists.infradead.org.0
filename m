Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 124781792BA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 15:49:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oUycc1ZoqA5q94DFjd/GbdYbKKUG0jfBToEMFyRFMZw=; b=KRzOVtDuLCqmNN
	z4Kp/slrVRn3nxpA/h5YssRpel2RN+e5yPLf3L+ywghstu678l0VsRc1cDXGGt42wGQU9meCoQ91U
	jICNenFMeRhnOBc050JjJ+GIKL2wd8CeuWEWJhUH1EaaiweGSdRb5eV44zMZfCb7WS0sAobsKSNRS
	wXOqSqIZxmfQug7e12CVcalDbQFc2dqFGcd3RkCsZ7CNvrpqnDTv4ljPJ7Eyp0igUXrk4r9HsozF6
	3dJhPh/ZdTzPBAKppBvRLNamQtCLcdURFxRgbrpyQF+PjD84bCHz32OmfrgvHU3BkWot6Ssjbxu5A
	GT28yD/MOY26wzFqetjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9VKR-0007W3-Qk; Wed, 04 Mar 2020 14:48:55 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9VKF-0007VS-Iu
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 14:48:44 +0000
Received: by mail-oi1-f196.google.com with SMTP id j80so2314881oih.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Mar 2020 06:48:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Z37RDKjhEWMZSq2IhaCi4CVQ02Trmh74iEkByVgA+JY=;
 b=X+ELS++9UEoAnBnVJ6g3dVFLTKSjDPjEP3HHjJIbXSecIeIrcjlSWZ/CH9QiAwaPOv
 TV6WV93JSwKOuCIHmpbwLIG+++fxohiZiX4ZF1xoz7CeWER4Qf5keJvB48cxoWqx+ywR
 2hWUBJ3oThQfu7feWW2Opyv9HCgH8/AC44zp5DBQLgfekjCmTd6zluAK60xotOwBXNby
 MUFx1L2cWiWF0ntFb8CC7L0b/5NSu56Qs5QRQInSnshrxWa5WG6llOw7ChRB94xiVS8K
 KHUhE/oFpkwICOiX2LBPtvITEWqA0SnAYx/BuRLp4gfdMhpYUEUXSTHor2a5fuF1sqUr
 HBbQ==
X-Gm-Message-State: ANhLgQ0sP1m/2LGMDvXYNUpACKEuWm08U+crVMd7l4sLfYMnID1lW9JE
 gfGo1heiK0657qp2Egp3Tg==
X-Google-Smtp-Source: ADFU+vvpQjhrkfTrnQQhYZPi7wn7HSQ5jd9hBcoxYDvpS95Cayk9pvrQFVpg4nkd2kF3jAzlCRop0w==
X-Received: by 2002:a05:6808:d7:: with SMTP id
 t23mr1997527oic.69.1583333322201; 
 Wed, 04 Mar 2020 06:48:42 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g17sm7006076otg.55.2020.03.04.06.48.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 06:48:40 -0800 (PST)
Received: (nullmailer pid 325 invoked by uid 1000);
 Wed, 04 Mar 2020 14:48:40 -0000
Date: Wed, 4 Mar 2020 08:48:39 -0600
From: Rob Herring <robh@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 3/7] dt-bindings: power: Convert domain-idle-states
 bindings to json-schema
Message-ID: <20200304144839.GA32730@bogus>
References: <20200303150749.30566-1-ulf.hansson@linaro.org>
 <20200303150749.30566-4-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303150749.30566-4-ulf.hansson@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_064843_631939_02489820 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  3 Mar 2020 16:07:45 +0100, Ulf Hansson wrote:
> While converting to the json-schema, let's also take the opportunity to
> further specify/clarify some more details about the DT binding.
> 
> For example, let's define the label where to put the states nodes, set a
> pattern for nodename of the state nodes and finally add an example.
> 
> Fixes: a3f048b5424e ("dt: psci: Update DT bindings to support hierarchical PSCI states")
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
>  .../devicetree/bindings/arm/psci.yaml         |  2 +-
>  .../bindings/power/domain-idle-state.txt      | 33 ---------
>  .../bindings/power/domain-idle-state.yaml     | 67 +++++++++++++++++++
>  .../bindings/power/power-domain.yaml          | 22 +++---
>  .../bindings/power/power_domain.txt           |  2 +-
>  5 files changed, 79 insertions(+), 47 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/power/domain-idle-state.txt
>  create mode 100644 Documentation/devicetree/bindings/power/domain-idle-state.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
