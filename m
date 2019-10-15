Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 640CCD7CF8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 19:09:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xuDMz/qyBz1y6d/HWn53/X/b8+WxdSn61ajVVQWjfHM=; b=hbSwU0PEkSIl70
	MuCDjsQ0Jc6NCwjeV29MCMzDIeiiJqGaNVGNQs0UXxwwZRLZFMfzcu+TYmQC0194rv4nbwJbODSWo
	JvFNTBAdVgen4oFRwXVzO3D0b5bpgJRi7B3m4zOH3LQcz7uA7gRpUqAu3657tCoUYdqRRPdQm7eIx
	XJf4arK4UNwFK83AhHsVaxevjrBeiK0gk8W7UDyFX3Gd9uFytJ+tXXYTVW54a8Pv2dfWg2U2gE90m
	Y5suK9f7lzInb/Vbppapjs3/EQ7rFxYo3w7dPR0aW2SVG34muQoGW/jaQWd6nRnmDIixSJXbdwX22
	FDXV27IUT3H42LWqkoCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQK9-00007b-Vu; Tue, 15 Oct 2019 17:09:30 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQK0-00006o-1r
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 17:09:21 +0000
Received: by mail-ot1-f67.google.com with SMTP id c10so17602735otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 10:09:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JHMlVw4tvcimgqLNE6cW+4izJ5ZEdiASsMVMnyNWIFE=;
 b=lmNSHb+aGFML9nQdxRLpLwL5SzqocS9nbPL0E1rRk6iP2eMKKHWcoxhQgUPv0VBXtR
 +0sVWNh20Gl4S+eV3HnDR/Qa7MT3KB7dpUy9kBXZKT0+6tXxB8nN9I4RfxFjnnGub+w5
 mQIwtb+bKgZUL/MPozEfeMH0GvyA0pL1Fy5jRzfCvZpLUVYZEaOZnd2JLdJfgSDBuFy6
 yB1xzT9w35sN6qg0Es4n+PpX2wvpxdmuGkoZ1Bl4HGV3aX2GBjtCuFRPUW52O7G40kt5
 nTBbU2sV63APEFsHltOaC3GfUeJSst+sp3o20t0xiIY9HqmwM6dHazIJ3DG0xCZvNi31
 5AJQ==
X-Gm-Message-State: APjAAAVMRquAMFrHgy0G/AfhYEi4po/4nCKa2zA0BbrhWk5ZWtz3ahkD
 AfqZFtV9cmxzBRxayTg8cw==
X-Google-Smtp-Source: APXvYqy2X9I15W25gmPVuvvFHsnO6LRLZtuacdrohlwkKPnx10p92ZlfGBeUKRra5d48a54FxaB9Kg==
X-Received: by 2002:a9d:70c3:: with SMTP id w3mr22943854otj.246.1571159359034; 
 Tue, 15 Oct 2019 10:09:19 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o184sm6585474oia.28.2019.10.15.10.09.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 10:09:18 -0700 (PDT)
Date: Tue, 15 Oct 2019 12:09:17 -0500
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v4] dt-bindings: display: Convert stm32 display bindings
 to json-schema
Message-ID: <20191015170917.GA8078@bogus>
References: <20191015123151.14828-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015123151.14828-1-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_100920_097223_BEE0948F 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 airlied@linux.ie, philippe.cornu@st.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, yannick.fertre@st.com, robh+dt@kernel.org,
 daniel@ffwll.ch, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 15 Oct 2019 14:31:51 +0200, Benjamin Gaignard wrote:
> Convert the STM32 display binding to DT schema format using json-schema.
> Split the original bindings in two yaml files:
> - one for display controller (ltdc)
> - one for DSI controller
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
> changes in v4:
> - describe interruptions items
> - remove unit address from port property
> - remove dma-ranges (DT patches send too)
> 
> changes in v3:
> - use (GPL-2.0-only OR BSD-2-Clause) license
> 
> changes in v2:
> - use BSD-2-Clause license
> - add panel property
> - fix identation
> - remove pinctrl-names: true
> - remove pinctrl-[0-9]+: true
> - rework ports block to include port@0 and port@1
> - use const for #adress-cells and #size-cells
> - add additionalProperties: false
>  .../devicetree/bindings/display/st,stm32-dsi.yaml  | 151 +++++++++++++++++++++
>  .../devicetree/bindings/display/st,stm32-ltdc.txt  | 144 --------------------
>  .../devicetree/bindings/display/st,stm32-ltdc.yaml |  81 +++++++++++
>  3 files changed, 232 insertions(+), 144 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/st,stm32-dsi.yaml
>  delete mode 100644 Documentation/devicetree/bindings/display/st,stm32-ltdc.txt
>  create mode 100644 Documentation/devicetree/bindings/display/st,stm32-ltdc.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
