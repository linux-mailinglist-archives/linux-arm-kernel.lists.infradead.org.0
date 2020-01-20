Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1015D143093
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 18:09:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZB6bnNLvu7outL238GaRaUnh9ogawxWT4s+HHS2eX/o=; b=CpgZXFBnJ7tqup
	yEE91XtbrNrT9BcBoNl2tqdd3D5zgS4o7UwFdMlXIvYquDK6EKY4W5tt0ELaGiu+qA10mZNFbp/Ws
	7dkWWVXTgDUZ0B/0+WyTU/Y17gKNZ3yRN5BwpxlAci0iJBmdBVZ+PYYF8zlWPiLzImxnJ0L5JjKJu
	UPtD41mT9Cjlk4owbSpd5h9O31+7Jw+dGCSmSWY2QVrjLs8WugNcUj0mislz8LcmL32tZT6ThTWjX
	TswqiD7cDakxpGVAzmXNGWXB7EBWSOJH3zq2bGeAG2R/9hozt3lxoIoEF+l1aMvhmhLzsuhNyej0d
	/i3ZomHYFYgK6EFOEEKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itaYJ-00019b-Kt; Mon, 20 Jan 2020 17:09:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itaY4-00018e-V3; Mon, 20 Jan 2020 17:09:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 78A5531B;
 Mon, 20 Jan 2020 09:09:12 -0800 (PST)
Received: from [10.1.194.52] (e112269-lin.cambridge.arm.com [10.1.194.52])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3FCC83F68E;
 Mon, 20 Jan 2020 09:09:10 -0800 (PST)
Subject: Re: [PATCH v3 4/7] drm/panfrost: Add support for multiple regulators
To: Mark Brown <broonie@kernel.org>
References: <20200114071602.47627-1-drinkcat@chromium.org>
 <20200114071602.47627-5-drinkcat@chromium.org>
 <7e82cac2-efbf-806b-8c2e-04dbd0482b50@arm.com>
 <20200120170343.GE6852@sirena.org.uk>
From: Steven Price <steven.price@arm.com>
Message-ID: <aed32f5e-34d9-966b-98d2-2af3d311894a@arm.com>
Date: Mon, 20 Jan 2020 17:09:08 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200120170343.GE6852@sirena.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_090913_041302_15B444EC 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Nicolas Boichat <drinkcat@chromium.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/01/2020 17:03, Mark Brown wrote:
> On Mon, Jan 20, 2020 at 02:43:10PM +0000, Steven Price wrote:
> 
>> From discussions offline, I think I've come round to the view that
>> having a "soft PDC" in device tree isn't the right solution. Device tree
>> should be describing the hardware and that isn't actually a hardware
>> component.
> 
> You can use an implementation like that separately to it being in the
> device tree, it is perfectly possible to instantiate devices that have
> no representation at all in device tree based on other things that are
> there like board or SoC information, or as subdevices of things that are
> there.

Yes - and I may yet implement a "soft PDC" device if this turns out to
be more than a 'quirk' for a very small number of device. But like you
say - it doesn't need to be (and shouldn't be) in the actual device tree.

For now though I think the code Nicolas has written works well enough
and it's only really worth 'fixing' if we end up with too many 'quirky'
devices.

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
