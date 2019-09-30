Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1044AC293C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 00:01:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zQsGOrwKPVziweHa1ZXcSWpX1JghP98mgse9DahnNMA=; b=OmrE6rbNzyafez
	5jmDylQQeBr2t5Rg+Zv9taD2jJYScMXptQffF0fVZ3R5Cu7htYaygHdsoxX7O26NZA7JjPrDm3+yN
	7X2r5UvLsn2XB6mW5XoWA49NO+7ZB8ondZ6rRfuZx2HWt1HAahAx0/ibSl0Ha0aE245GIRFbkCC1L
	PpHGdq4x7/1gvJ8e/kzQwOHwbgbMjZGuu7xe3WRbmy8eHpBnwXOURt1AhX/7YUwXj5fnWhMzCD0u3
	g7LUH5h2HyiGb4y+Eud7nVhPrZSs2dHAEaVD7DNiFDsjnGbZ24BjvBJNuHGYXHQ2gVmMpy0TilZFf
	EeSL4uPBjBf3rJuVFyPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF3jM-0007LV-I2; Mon, 30 Sep 2019 22:01:20 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF3jD-0007Kx-Gz
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 22:01:12 +0000
Received: by mail-lf1-x144.google.com with SMTP id 72so8224918lfh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 15:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hmCtOoNN+IAWQ9Fu28/tn+TumfgRjlSGKb0ukLkHfB8=;
 b=iue2Bq/gal7TgW5wPEwYaAYnajZSR+fEPp1OrCDDAzcq/ZmRxPAkKS8G4qmB+PCTji
 472OELfznm1aFvrGAeGi2rye/uvrIGPAwQaITT8N/OYOrAfZoyuxvj39DAzhZyYwZZNR
 JcPA1Rlt0vZARbKHjpMUcos+eQs+ydX0/x22K2gvGyplGK6bSKyTFx93lz52ljMNk2Qq
 Eu2zrXbwifuRkDC5xMr7/LAEY2HLBJeSLIUfg/3kMFs/EI0sGPWmRho/O0c9jSlPfiWx
 nAd5AXNEQYJ5hb4uzK7s4mD7UscrJFI3U2vDDAjdh4zOjQoWBrxRn9EnWJce4Lo8bbzf
 dCOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hmCtOoNN+IAWQ9Fu28/tn+TumfgRjlSGKb0ukLkHfB8=;
 b=JUQVz4DeAyv+pmanDNWKaM7jdE17quu6PXBVMIBTwNYyvPxugHCdggMYzG2/ThZ3g4
 GDsBAPbkWLfM5d5xYsOb89z3uC1lYcOecryFrIo4mg9EkWIAWwRH6PsLVkmjAWMVe81Z
 9YIsZqWkh3nTuRVidHLPGP97JBRFsjUV6dQ1lXIy/as1uaeYNZDp+Ypdu59dqC/XfZNX
 w8/d8GZwTJvAF+s344zec7oM22L4avUwhS1wMhC8uM2284QN1Wbsial3V+GWL5Buv7TV
 FbovCCxYljVE5QasnSnicUTXGb3qcK8nS9u0ijl3k8kqayhIgK5vFTi5L/oENULSCQY/
 RgbA==
X-Gm-Message-State: APjAAAVkSZc/lwwzMEtVsndZi7cVNnDDthej0Fqv3RW1mlCRu+VYQczw
 t7IfpJaX47y+1ERNcaosJ1evvHMGn7Vq6eDO9St99A==
X-Google-Smtp-Source: APXvYqz1EOrXdaQxayeMgzrbvDcXECvkn7kcnZOmmF9vsQ+tO3ZYD04adPYwz0r6rhnFUruh3Iz+aKyhipoHdmyOOss=
X-Received: by 2002:a19:14f:: with SMTP id 76mr12322365lfb.92.1569880868945;
 Mon, 30 Sep 2019 15:01:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190924214630.12817-1-robh@kernel.org>
 <20190924214630.12817-9-robh@kernel.org>
In-Reply-To: <20190924214630.12817-9-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 1 Oct 2019 00:00:57 +0200
Message-ID: <CACRpkdbLT5LsK+WX6ziggV0o24DWSy+kQmgodQBGbSrUWTSLdQ@mail.gmail.com>
Subject: Re: [PATCH 08/11] PCI: v3-semi: Use inbound resources for setup
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_150111_566574_20954582 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci <linux-pci@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 11:46 PM Rob Herring <robh@kernel.org> wrote:

> Now that the helpers provide the inbound resources in the host bridge
> 'dma_ranges' resource list, convert the v3-semi host bridge to use
> the resource list to setup the inbound addresses.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Signed-off-by: Rob Herring <robh@kernel.org>

Looks correct!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
