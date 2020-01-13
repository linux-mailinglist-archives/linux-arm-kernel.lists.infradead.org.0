Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6C313933C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 15:12:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rroa5sNzmSQPN2D+cmi4m2gPkRXbJfylhGDSIBfF6I0=; b=teG+9ffjtx1tp9
	OZRgaKHA8vNZnQ3oIE6xTNcRTEmilz+k9VGttrmXothwMq+Bf51N7NgYPzdwzFjfDiq/mk9iEt6ON
	qUqmGOPqaLqJR6AV5ByPkRwGBq4OXcyZECroKPeTcOD32FK1Mi5k9iIcYGzG4p8PdjISv4Ke2LP9Q
	zkn/LJNI8sz87gx+cJSeUt5qoGaYq8JY0UMNvZCd98pHkTt6pAJOjahw8W6BQWghVBRsSWWZ41xb0
	Bf2UQh5oDhMYhR7uS/pwB9AOF5KyBfQYDguY4F3KFlXe9P4pnQbtzxDrcCpDpPYuW7DtwANy4D7Ru
	m23jS3f3D4ISyPvrFR1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir0Sb-0001Sg-Gc; Mon, 13 Jan 2020 14:12:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir0SS-0001S4-6V
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 14:12:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B79EE1045;
 Mon, 13 Jan 2020 06:12:42 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 82A5E3F68E;
 Mon, 13 Jan 2020 06:12:41 -0800 (PST)
Date: Mon, 13 Jan 2020 14:12:39 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 16/20] pci: exynos: Rename Exynos to lowercase
Message-ID: <20200113141239.GB15939@e121166-lin.cambridge.arm.com>
References: <20200104152107.11407-1-krzk@kernel.org>
 <20200104152107.11407-17-krzk@kernel.org>
 <20200113122902.GA15939@e121166-lin.cambridge.arm.com>
 <CAJKOXPcNJ5QCabPUh4kcOj_9Gj2SF8+JGtSJu8cLEp0Ciqy96g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJKOXPcNJ5QCabPUh4kcOj_9Gj2SF8+JGtSJu8cLEp0Ciqy96g@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_061244_281343_2DF0386F 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 13, 2020 at 01:44:45PM +0100, Krzysztof Kozlowski wrote:
> On Mon, 13 Jan 2020 at 13:29, Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com> wrote:
> >
> > On Sat, Jan 04, 2020 at 04:21:03PM +0100, Krzysztof Kozlowski wrote:
> > > Fix up inconsistent usage of upper and lowercase letters in "Exynos"
> > > name.
> > >
> > > "EXYNOS" is not an abbreviation but a regular trademarked name.
> > > Therefore it should be written with lowercase letters starting with
> > > capital letter.
> > >
> > > The lowercase "Exynos" name is promoted by its manufacturer Samsung
> > > Electronics Co., Ltd., in advertisement materials and on website.
> > >
> > > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > > ---
> > >  drivers/pci/controller/dwc/pci-exynos.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> >
> > Should I pick it up or you are sending the series via another tree ?
> >
> > If so (if it is not queued already):
> >
> > Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> 
> Please pick it up.

Done, pushed out on pci/misc, thanks.

Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
