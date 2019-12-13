Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F032711EA80
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 19:37:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UMmegpPIwAPe75bwrc1tLJhxnJm2hRK2rSKD5dS17QI=; b=Aw79iH8eDRVAx7
	7aIYHdZBjSr89MlrWHRiYqc5bkkG8+QysWB+8SPPE13RAB/SCJ4pe1VYDxMco+d2EIXEEnZQVZcXd
	idjum1JDj4f8BSytghk0dqewUNPjgzYMN8ZGNcGngZ5BQZKW4CHoUoDoOxma5pAbr/t4CR4AKRswL
	aDDvqBiU35+u1WYznhi332Rx2Zq1gZEW+yM1PguRqs5uRZcBCwx5KCdoAZZn4a5L7jvVPvI1E/QPL
	l7Pnhc0rNczTs6AZoyF1MH8J9+88fdWJ3BaZ0N/Pi2cqDlzMtCmwmSteipLnScFFjjPvYCYLl95Yz
	hZamAAqPguQBuJTw4UIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifpod-0006m3-PW; Fri, 13 Dec 2019 18:37:27 +0000
Received: from mail-io1-xd32.google.com ([2607:f8b0:4864:20::d32])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifpoV-0006kn-Sc
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 18:37:21 +0000
Received: by mail-io1-xd32.google.com with SMTP id a22so665004ios.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 10:37:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8rSTbx4+Xnp8FvEJgiPQ5fFPbX8PvFRdBprtRWfCWCQ=;
 b=Ohgf2p7RcDyAO9x+7hqrHkTxJ+a7kT8vOKByrsrMwlsQyfiqsofPMz6dlNEaH2kFr/
 30OXQgmqBqqpNadNXtss0bPV2ZVcHODsCXvhDzcMWmbv1s3KgrYiRRQusO6bkbFDRp5r
 LKvKMn4BTmDY7od/XhpsXT23xIipONjzb6tpmba5Yg7opdrxn9JbPVo+73idK9kGsIF2
 nxFDLQAEjalQhqtduuADtXitKUuXf7FWRkHCJElsAxtG+37Ox7MhGWEh9v8dKVoLChhH
 vtTC4mmQqcAXBoutRncx9v8ysca09wIVNJ/BhTFVjArRy8gBLIIC18A4DbY6RDDKDnlb
 wsYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8rSTbx4+Xnp8FvEJgiPQ5fFPbX8PvFRdBprtRWfCWCQ=;
 b=WylLybIc+fWqyTU4EYSNhq9gGQRfhZ9OHuymUcUDow08EIH72mrjMfbdtabjRKyQcn
 tBA6CCJkR3H6wvmxlyWIjPr+tgD05Gw90gBUXbY0kUW1luNFj3rDybkrreX2vpB5Pq9m
 wibs6v5NMXxjAcqYmlUnih9d90dLi/WT8ctSU3yCNBFGy8C2XfD+sSjLZMeqpSQXzML+
 LKiRv5Jz30gO1uyNPq8q/ySWLtXbKmLOSE1OCckY46gfG7M7cCXQeD7ZqY8S5DAc20LH
 SHWDs6hjyMLkYHiyyv/sAO5X6eg/GeGdzXAeUrjRr1bklBY/ueTjCZffjg9vG7eE1fz4
 7KIw==
X-Gm-Message-State: APjAAAWJbCI+dNfttFg4zpdKKuiEkZKNO/qFl1wsOMAgHIg2uQTcG4vx
 NzifBvHjgTRIbArs0twI/St5FDO+kIxBROJZdvYwIA==
X-Google-Smtp-Source: APXvYqwmEGW+SCoK781R1wHEyeHBJdMspwk5PrOmp57kqjQ+5c6ggfMA1Zq5gVwxNfGgc4rjMK4/bvTYtO3f/Xhf1Jc=
X-Received: by 2002:a5e:da0d:: with SMTP id x13mr7973581ioj.123.1576262237318; 
 Fri, 13 Dec 2019 10:37:17 -0800 (PST)
MIME-Version: 1.0
References: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
In-Reply-To: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
From: Olof Johansson <olof@lixom.net>
Date: Fri, 13 Dec 2019 10:37:06 -0800
Message-ID: <CAOesGMjAQSfx1WZr6b1kNX=Exipj_f4X_f39Db7AxXr4xG4Tkg@mail.gmail.com>
Subject: Re: [PATCHv9 00/12] PCI: Recode Mobiveil driver and add PCIe Gen4
 driver for NXP Layerscape SoCs
To: "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_103719_926031_075D46A3 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d32 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "andrew.murray@arm.com" <andrew.murray@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

On Tue, Nov 19, 2019 at 7:45 PM Z.q. Hou <zhiqiang.hou@nxp.com> wrote:
>
> From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
>
> This patch set is to recode the Mobiveil driver and add
> PCIe support for NXP Layerscape series SoCs integrated
> Mobiveil's PCIe Gen4 controller.

Can we get a respin for this on top of the 5.5 merge window material?
Given that it's a bunch of refactorings, many of them don't apply on
top of the material that was merged.

I'd love to see these go in sooner rather than later so I can start
getting -next running on ls2160a here.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
