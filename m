Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A063712565D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 23:15:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=laRPoWkd9mzPjVxY/7oRmsJn5YMNEyNl+ImUxEF2X74=; b=AhzfXYoPOPqW1Y
	J3DnoMPyuDK7BSy6k8EQeGl7eVIWKIvgfSL2jbkgKl2YEji+LYb6MPMullfd67ANBnHrMzpC/lBZe
	OQ3V54fQQ4Dlyi6FVM/D0oNhGmIpI6F3/fr8yDQ0Gox8UaUmSTJGHmh2y16/G49nVGnQZbfrxxoBr
	QcohDENha50EG+fnc+OsnqrVFZf0zupeTV9yjAeoik9+TfkX/Il64VFhJXr49oQfUwW6eqESZPOXB
	sXlegtQ9slqMtuITC0ur3b3YqiXN+dqKxNJMwitNwF4W0Qd5Y5UuVQTp7plZ9iTFdpFVVqcOEHzVS
	nB9zqa1cUA7p+rvdFzYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihhbh-0007BO-FC; Wed, 18 Dec 2019 22:15:49 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihhbX-0007Ay-6w; Wed, 18 Dec 2019 22:15:40 +0000
Received: by mail-ot1-f68.google.com with SMTP id p8so4342157oth.10;
 Wed, 18 Dec 2019 14:15:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=E8QNYLhSSLLibIm1kZjDoiOQpQC1DNZLoqpFwXuZW3A=;
 b=k50Das+poY7fvqOAQBT/K7XYaaXL7w+Yh7AdHnjoaM070DOYwTsGcomHwBFvYp2GeJ
 nMAvK8gVERHAGliynal29ZI96PvkmIUBpffqOjCZV+P9OGr3dGps0CaUtBwLmVz94D9h
 HASIRoEf0Cnp03q4g0FJPLM9MSecLu3FK89Q4XlO8wFhoL0723Bkyamrn4XtRJUMdfBa
 WEjoL2zQonocyDaa0yv8UIZVMvjE+k140pCRMXl/n6bqsH6bO+7gD0jkBCpywXI+33oV
 IhXyskViez80UT91jrUz3inRz7tM6z6yAIeoQ6q5bgvpbDtTy11ruPb0c+FY2xRL/9rZ
 w/nQ==
X-Gm-Message-State: APjAAAU3z8N4hLnWtubTufld5MhS+SQTF46hvbASQD8q/an0Yg/cujYr
 RM8JoBOV5z4YTOTeWIEcDA==
X-Google-Smtp-Source: APXvYqxbsuqp+Q5pltR9/cjYWkBjYlpqcAOa2oySxbaVfYzkDPTaEZs731kr8mefYacuVUAq7T78Yg==
X-Received: by 2002:a9d:6396:: with SMTP id w22mr5120271otk.364.1576707338086; 
 Wed, 18 Dec 2019 14:15:38 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w8sm1270084ote.80.2019.12.18.14.15.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 14:15:37 -0800 (PST)
Date: Wed, 18 Dec 2019 16:15:36 -0600
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: arm: rockchip: Add Rock Pi N10 binding
Message-ID: <20191218221536.GA20127@bogus>
References: <20191216174711.17856-1-jagan@amarulasolutions.com>
 <20191216174711.17856-2-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216174711.17856-2-jagan@amarulasolutions.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_141539_252565_8A79C7FF 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Tom Cubie <tom@radxa.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 16 Dec 2019 23:17:08 +0530, Jagan Teki wrote:
> Rock Pi N10 is a Rockchip RK3399Pro based SBC, which has
> - VMARC RK3399Pro SOM (as per SMARC standard) from Vamrs.
> - Compatible carrier board from Radxa.
> 
> VMARC RK3399Pro SOM need to mount on top of dalang carrier
> board for making Rock PI N10 SBC.
> 
> Add dt-bindings for it.
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v3:
> - Move som binding on board side
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
