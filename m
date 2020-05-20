Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2502D1DC0C3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 23:00:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VZ2pKSBGkiGrQTKAklCu23tI2G68Z4jxaz5yIDnip6o=; b=MtAxER6GPG9VuD
	spbvsWGrpSSSUVhhy+2S802kZ6PHvbSuissWEg5ilhZJLv9dRlJg99AxTVoYgyjp91V8KFqToRbX0
	xNU2NsLlmkqmVUM95xlQUNCeB4szPGY5xxacnzRlhXUVb7vlLIOFtYjyl4zUPu4fJcg4cW/pAM5dr
	fRPeJbKwUepPg+2hI1TKSc1kOPtZCzoNC3Jr/8TMYAP32oiwXCte8+aDqXj2XaZ7D1yodcrj47W8t
	jiKEdCn1LfGzjYu/k+md589eGO6iwR/2QAEFEumVdv7c1DbuhOiNazmW3GMpQ6FGNZzyyHZuhU/CH
	VENaQ/QZ5R00NvTfLeQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbVp9-0004Qg-GR; Wed, 20 May 2020 21:00:23 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbVok-0004Om-O7
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 20:59:59 +0000
Received: by mail-il1-f196.google.com with SMTP id n11so4795847ilj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 13:59:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=UAntt9LZM4aXhtYbB5IsDq5XlgAc1476xVm09j70Cvc=;
 b=IzaLoZJJPCwrtWV2puVg3+L+UhqhVBLBRIZow7Z2vMnJz2GcslhhXl+tAD29gli0d9
 dFTPCXt6eF5DqHmztlRvR1uduJZ70MyyaMiaoVgE9SoxSKz5iarbs6tCRkRiLS0PMRw8
 vyC//65AonvpxxP6PNKlQnM6Lnr5GQRJjP+RTv7UkBItBUEkiMexGH3J3JnLsSLYgdRV
 ae6Z4uFi//XRgWCzuclNwF7J3B51iDLrPSiCahm6H63F1RaJMZk0O92qRNC84YzFfpfs
 TNx/fSlzjKidWoV3EjafWC6jM/IuNrI3LXOPflSm2nWH9qhUl5uFRgVuaJ87xMI5Rjeu
 s6Wg==
X-Gm-Message-State: AOAM531PX7OmY0w2exiPZmkQ72Xwk0bktEqJRjzA/XyudmnVxONKN1Bj
 U2bLZrki9fTpOoO84lvOJg==
X-Google-Smtp-Source: ABdhPJzPaTCpz4Tn8plu0LlLEYCHFebPD9zDcz7rBBGbnzlj8cCSRMP2lemNIxHg9WTA5zFlXjkBKg==
X-Received: by 2002:a92:afc6:: with SMTP id v67mr5758075ill.292.1590008397663; 
 Wed, 20 May 2020 13:59:57 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id o70sm1993204ild.3.2020.05.20.13.59.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 13:59:57 -0700 (PDT)
Received: (nullmailer pid 568868 invoked by uid 1000);
 Wed, 20 May 2020 20:59:56 -0000
Date: Wed, 20 May 2020 14:59:56 -0600
From: Rob Herring <robh@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v4 01/14] PCI: cadence: Fix cdns_pcie_{host|ep}_setup()
 error path
Message-ID: <20200520205956.GA568767@bogus>
References: <20200506151429.12255-1-kishon@ti.com>
 <20200506151429.12255-2-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506151429.12255-2-kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_135958_792014_E983E6AC 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
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

On Wed, 6 May 2020 20:44:16 +0530, Kishon Vijay Abraham I wrote:
> commit bd22885aa188 ("PCI: cadence: Refactor driver to use as a core
> library") while refactoring the Cadence PCIe driver to be used as
> library, removed pm_runtime_get_sync() from cdns_pcie_ep_setup()
> and cdns_pcie_host_setup() but missed to remove the corresponding
> pm_runtime_put_sync() in the error path. Fix it here.
> 
> Fixes: bd22885aa188 ("PCI: cadence: Refactor driver to use as a core library")
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  drivers/pci/controller/cadence/pcie-cadence-ep.c   | 9 ++-------
>  drivers/pci/controller/cadence/pcie-cadence-host.c | 6 +-----
>  2 files changed, 3 insertions(+), 12 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
