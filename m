Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 415C11271C5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 00:47:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sitw1+RXfGT2SQ/xhF5Mm2vaGUdMe+si+ghGGr6l+i8=; b=SxaC6UKeFLxJgS
	HJdWhpX2nC/D2Scc+S37Bd4IWsjQO0p2VZuRo7Lxsj/Xus6lO6X+i546X/0/SR8Pq0QHl11GsAmDm
	vMSyO1CLeQM8zYl0JV+pOxd/iyXH9O5j/g1Ka4gCQLt7LkSj21wlL9g7X6F5tpvoW90tIKw/i8VQd
	VKXkyG2eCf/+MSojdmL+ij2N7PJDERutxghDQKZHpOubk5dRHK2tfGqi+GYDmvgbJJFF7ZFPx6Byn
	q0R4kwrFEzZY2nKgMLxYbTcHp6ON90XoD9icRcqUppGxrPUwCQhMgSXUODtq2DRXgsi4JhA/OPWyB
	a/v5BIIeecslVze9UiQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii5Vt-000376-7G; Thu, 19 Dec 2019 23:47:25 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii5Vg-00035q-E0; Thu, 19 Dec 2019 23:47:14 +0000
Received: by mail-ot1-f65.google.com with SMTP id h9so6785115otj.11;
 Thu, 19 Dec 2019 15:47:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Zcnv3gHHJuKh2Cmz3rCYr47I2ejU2zRvjV1FXxWug6Y=;
 b=jFEcItNqsW6qbdCOD9pLFUq3RFxQaJCvklGmanacmqc0KF4oqh6JAlhMkahOXcjLN/
 EzE3e6D7UJmTrWm1IflhrmtM0ljyUktoE90VjpFChEi/7qiBcV0H3xsnLPedWz7gvD4o
 iCzX/D/TQEfVkd+ZoAjiJLi0o9gs3UNfkaTeqY022Z2n4Wh8D790zQIlFSEIg373WlY0
 PrRLwkZ9kX+93hzRqp7byBuaJ6l7r1IRm86aPKss/prbym2rHoBcy6lHni7c6cFSA3KB
 gSnjkA8jkViMIQ5o7eVyI19UB66YYJYRNaRDaobw3kgE5OvM86JsQPSMTvcf+ZtAH5pV
 g1zw==
X-Gm-Message-State: APjAAAWgv+hm6VKLxtP+5w2o1Du70ynmJdvt9bysVwi+5iXQdsSAjTcA
 8In2VdeSjFsigRgRb3Elv5LK6dY=
X-Google-Smtp-Source: APXvYqxT11s+igvaaRYXdU0m5rUSQPEA7PDPbe1s0vfatDy3m3p85R9FShINqEQSNREFrNp6nsFjEQ==
X-Received: by 2002:a05:6830:1289:: with SMTP id
 z9mr11961396otp.317.1576799231523; 
 Thu, 19 Dec 2019 15:47:11 -0800 (PST)
Received: from localhost (ip-184-205-174-147.ftwttx.spcsdns.net.
 [184.205.174.147])
 by smtp.gmail.com with ESMTPSA id e6sm2696345otl.12.2019.12.19.15.47.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 15:47:11 -0800 (PST)
Date: Thu, 19 Dec 2019 17:47:09 -0600
From: Rob Herring <robh@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: Fix the PX30 DSI PHY compatible in
 the example
Message-ID: <20191219234621.GA28252@bogus>
References: <20191213180019.25080-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213180019.25080-1-miquel.raynal@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_154712_473107_255A3DF9 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
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
 Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 13 Dec 2019 19:00:18 +0100, Miquel Raynal wrote:
> Use the upstream compatible instead of the BSP one in the example
> section of the DT bindings for this IP.
> 
> Fixes: 3200df7fa1d6 ("dt-bindings: phy: add yaml binding for rockchip,px30-dsi-dphy")
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml         | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
