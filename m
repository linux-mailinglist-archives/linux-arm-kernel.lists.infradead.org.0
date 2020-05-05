Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 512D91C6099
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 21:01:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZn+E7UAVQgYmYVCNoODwyTUnghqHvFAEQoAyJWV4Dc=; b=nELZevQSR3c3O6
	HTmOGhcVnFHQmfD1bWPLZLc3Ctzjxj+BjZ7jQ9amFKoOCgQB3ZUMVmHmKccfM9LI9C18Iydc1gIs5
	To2l40jWkPNGnMQMWmS8hvxogOll9eFWrL4kcke6cs3kUm6sfwog4XU6qwSYVPOQPSaias+2OqdoA
	54spL4oAdVd0PJ4ijtaHhbTqRPGt0zP0XfD4Rg4YvH67EkmpPt0TY3oVe9fcWeDqWt7/93zPICaLw
	ukCiq1UeV29CnDjJ1QJCF39HxMY7JxzW0QKfE4mY6gWYGcY33bbkjWjjFDywG0Uur9ytvJjhfkNrY
	C3W2iZopv8OexPXjzM+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW2oL-0000zI-4X; Tue, 05 May 2020 19:00:57 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW2nx-0000pr-E4
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 19:00:42 +0000
Received: by mail-oi1-f195.google.com with SMTP id x10so2974391oie.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 12:00:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bmNwg7qP1SBbdLMpqATS0EkQNQ8ln6bORoA+Yp7YlU8=;
 b=ZrmnP0z0MiBZTTObDkFZTb97IuCluG5yrCcFrHyxiGHo10INgozwdnu/Uw3yzMe9HX
 /PhDXrN189w2jEkv8ITCxE4b4ByitLycBO815BKSSu6wJko3W/EpAZsrDsPC5TyaD4Zz
 +JeBzJ2BKeFPGam0plCIjryC5ElcLLHe2+rWoDInLIj6i4CSdm1YV0MK+uC+X7TQNvkV
 rPtX3x9EOL+8s2qjtTesZOg+HdzzJ2YZsbzrzTqi8rZqdQlLCM4lHVpXvPO+DUFudGhr
 ecuuwmJYPbBq6bo+WbgGvCgHjMOkKAJ37DpXCQ4x4UYDCmUFihemNQtVv5EftZ1PztjG
 tN6Q==
X-Gm-Message-State: AGi0PuakvWLpB9+GvOTDfhXv+jPZ4/uJrnAx9N+ws6z9TrLFuzWbONPW
 H8iEQh404/ESnuvqPoybUA==
X-Google-Smtp-Source: APiQypJereL2KKpxqNv0a1yG++pdI5i7lA8WFCr9HMbUx7pmg6sJEAPn+1moF9GzYhbzW3m0NFF0WQ==
X-Received: by 2002:aca:f11:: with SMTP id 17mr49265oip.27.1588705232581;
 Tue, 05 May 2020 12:00:32 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q28sm763134oof.42.2020.05.05.12.00.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 12:00:31 -0700 (PDT)
Received: (nullmailer pid 7289 invoked by uid 1000);
 Tue, 05 May 2020 19:00:31 -0000
Date: Tue, 5 May 2020 14:00:31 -0500
From: Rob Herring <robh@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH v6 5/5] dt-bindings: arm: fsl: add different Protonic
 boards
Message-ID: <20200505190030.GA7194@bogus>
References: <20200421124057.19238-1-o.rempel@pengutronix.de>
 <20200421124057.19238-6-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200421124057.19238-6-o.rempel@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_120033_475362_DEEDDDE5 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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
 linux-kernel@vger.kernel.org, Oleksij Rempel <o.rempel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 21 Apr 2020 14:40:57 +0200, Oleksij Rempel wrote:
> Add Protonic PRTI6Q, WD2, RVT, VT7 boards.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
