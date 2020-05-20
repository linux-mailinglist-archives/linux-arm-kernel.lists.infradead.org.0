Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F671DC0D4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 23:03:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y9zIqlryopd8BmrSmRmdmHIcZE8RUuJe4w9XJWvmdQ4=; b=iNlxMXCiNz2Zzu
	zhPv8bKTdo7OM9sZDXsdnMgp06eJ3YjOa6n1pMp1ZoeAjmGb7JBdGLTGfVOQPcr40km9E38EIu1We
	ZAzKnMqxUC6kgCW+x1v/Lj0tK7IaZfDIY2dOJnqH1lkkGny4O+wwnbRB2u34oY7r9L7NdUfUlL7Mw
	FuOQP1a2r9iSBEngA35hu5TPV2wSc5BO5wj5EbuUpzyFNYlba3KsOJ8k2X5iOHEc4IBT9GKTpMdWG
	llE3tfweSdfRhg75b99OCyBRlh73v9LJujfgX5qPltGgte+zzkDR3X64M9RMZJ9UjWqRBEa4M+DOY
	YOmrOyMC0hJZhohMGdYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbVre-0007uh-MU; Wed, 20 May 2020 21:02:58 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbVrS-0007tm-LP
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 21:02:47 +0000
Received: by mail-il1-f194.google.com with SMTP id a14so4810138ilk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 14:02:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=tKXDCZ5gEz5aPjczgSqplV+XkA066a4YqfUj91jMyEc=;
 b=KpsOrVGKX8uWvBHprCHSfsbG8SZlbjijiW1AO4/zndjg57fAEsGOtA2MxQd3nm3zhd
 RQNtinNDT6gjDBcxuNOc7d/U17O1vo5WZpXL9d62HD8flXoff5U4szJWUOOAnshVRGkr
 eQpKctdHnu6O0c9zMI1R2D8QY2IrSQnTUvLohiAnDsNoybj4TmkMwxVviZiFsfU7ntC+
 dBSJJ8bJ0ocORFqsJbDm5lwxT23+8l5fs+UOvFGbH6Si1zBMXqMPi8MWhylv2/xBS1Ap
 1W32hUgHqV3OFcj/Z9W5XzPC2pHCv94QcXZTHZnERxh+qwdLWiERTncWgtdSoHjBiBbM
 r6hw==
X-Gm-Message-State: AOAM530kQtRoCnF/cMPCWfOLpg25gknyaVYDI76CxOa1MN7Uzn8zKxzH
 yHDy0gJuHuzl2FzosgtLog==
X-Google-Smtp-Source: ABdhPJw5G4Y3m7OOQfc/yaq+fGm0W7AyUUtUGpQ2t8/mZ5jJ9GW/M/76VDdwg5wcYV1Q8Yk09ay07g==
X-Received: by 2002:a05:6e02:1292:: with SMTP id
 y18mr5534871ilq.143.1590008565856; 
 Wed, 20 May 2020 14:02:45 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id 4sm1565239ioy.43.2020.05.20.14.02.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 14:02:45 -0700 (PDT)
Received: (nullmailer pid 575316 invoked by uid 1000);
 Wed, 20 May 2020 21:02:44 -0000
Date: Wed, 20 May 2020 15:02:44 -0600
From: Rob Herring <robh@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v4 03/14] PCI: cadence: Add support to use custom read
 and write accessors
Message-ID: <20200520210244.GA575238@bogus>
References: <20200506151429.12255-1-kishon@ti.com>
 <20200506151429.12255-4-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506151429.12255-4-kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_140246_703988_5046CA69 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 6 May 2020 20:44:18 +0530, Kishon Vijay Abraham I wrote:
> Add support to use custom read and write accessors. Platforms that
> don't support half word or byte access or any other constraint
> while accessing registers can use this feature to populate custom
> read and write accessors. These custom accessors are used for both
> standard register access and configuration space register access of
> the PCIe host bridge.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  drivers/pci/controller/cadence/pcie-cadence.h | 107 +++++++++++++++---
>  1 file changed, 94 insertions(+), 13 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
