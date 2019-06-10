Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D113BB34
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 19:44:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5bqrLTimxqe/I52SKdQGpdbsU9D/VgswWhqXtSlTJf0=; b=FMXJGpc8iqBnZu
	JEQtkOViHF661CXom0QUh3WwiqphFFo8vzXsEnFAQKSI0UDcOWHvTZZjQ65831RJVeZvQus3oyy/3
	G+azFHwtXxUR1V4fW/h7N7HsHcldQ8/ap+Ui9K5+NjRV9mIK5gG3Ifypf12itV3VZ2aAVrdRRKmAk
	OA/vdXLKKGETWePM1LWUaYqabZ6KCh1xSp6GRcO0q05Us+i9I6/NsVXdq+Ewj8WvEiVc/q3wxd1vE
	+1Wr/nCxkcRam1EvONVehzTi+YFdD1pYGEEea6JaVM6OP2xc96vInrKlsKm/zNs0LoWeHtEY/qwR7
	lyewxoAmIFobAqsCSz0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haOL1-00031B-Bz; Mon, 10 Jun 2019 17:44:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haOKr-00030j-7M; Mon, 10 Jun 2019 17:43:58 +0000
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5A7AE20870;
 Mon, 10 Jun 2019 17:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560188636;
 bh=AZlQL9E2ROhE9dNEWLxTzeKWJPg5GnszFYOvXmJbBg8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=CrkXG5wzrMqurUflE6xs0eXDpspfh1CAZP1781AveldXZWZOfaRKic4GxAG0tqNPd
 zh5oPa+/V/Kp6pLCYHJJyKZMrZ3Eqg6gBH2M4OqRThkgZ3hn+CODbDBqirClpMRH4H
 F7A2m9ROQPEpCCNtsRiVUnRemEm5cXLnDw5LTiXs=
Received: by mail-qt1-f170.google.com with SMTP id z24so4835035qtj.10;
 Mon, 10 Jun 2019 10:43:56 -0700 (PDT)
X-Gm-Message-State: APjAAAW/5VWdRuxg9QBDTcVgx3+ilLHVxC0clh8QMK9ruAdjtX2ZH7Lr
 gmoT7ubpl0qvoE0qRkloHryXAHJ4n3D095rcZw==
X-Google-Smtp-Source: APXvYqzDejCp888til0iSdGiqZLydQgb5LlMSykGZiQj0zmAnd1634cGl5crZnyD5/9LsdKeiuv6AfpNt6+njC+kFIU=
X-Received: by 2002:aed:3fb0:: with SMTP id s45mr7491168qth.136.1560188635556; 
 Mon, 10 Jun 2019 10:43:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190604131516.13596-1-kishon@ti.com>
 <20190604131516.13596-24-kishon@ti.com>
In-Reply-To: <20190604131516.13596-24-kishon@ti.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 10 Jun 2019 11:43:44 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ5gsctd7L3VOhTO1JdUqmMmSJRpos1XQyfxzmGO7wauw@mail.gmail.com>
Message-ID: <CAL_JsqJ5gsctd7L3VOhTO1JdUqmMmSJRpos1XQyfxzmGO7wauw@mail.gmail.com>
Subject: Re: [RFC PATCH 23/30] of/platform: Export
 of_platform_device_create_pdata()
To: Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_104357_287465_140DB599 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>, linux-pci@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Tom Joseph <tjoseph@cadence.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-omap <linux-omap@vger.kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 4, 2019 at 7:19 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>
> Export of_platform_device_create_pdata() to be used by drivers to
> create child devices with the given platform data. This can be used
> by platform specific driver to send platform data core driver. For e.g.,
> this will be used by TI's J721E SoC specific PCIe driver to send
> ->start_link() ops and ->is_link_up() ops to Cadence core PCIe driver.

NAK

of_platform_device_create_pdata() is purely for legacy handling of
auxdata which is something I hope to get rid of someday. Or to put it
another way, auxdata use is a sign of platforms not fully converted to
DT.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
