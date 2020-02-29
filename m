Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0BF174A4B
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 00:55:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8o77Mbpx6CvNPoLMSNSHOOayLbtqLbXBqeUIiQZ31fE=; b=erNP5LqOIubOab
	Q+aJNdV3IyTXFwymNRMDVYsNAwVZImQpNEc9MWcn9mH8TfqCnAhHcehwQpfMZZfBMtXpBQgBjNeHD
	ZlMd12gRXVApgblS+brhuwBL19piTXfvOuGHhZSrbwXnB8qI9XPMxF6a9HSjFWx2VtIRFXxtzyHXx
	Y0oCrSp2luSIh9gXg6cStDm+InOjw4Zjv4fxrGuZGqdRPQmBZnS576TR9std4Ewly5dLokGjHmA4x
	OVNihx25Gt3IMZnBlfz4vysqhe4YSZnf3Br/BQA7uKEE+Ln2uE7G4rMsnD+k1D4MXzD0atw4IqHtk
	OqBKiFeD/8eTttHn4pNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8BxF-0002Uy-5M; Sat, 29 Feb 2020 23:55:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8Bx5-0002UA-Nj; Sat, 29 Feb 2020 23:55:25 +0000
Received: from p508fcd9d.dip0.t-ipconnect.de ([80.143.205.157]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j8Bx1-0004s7-QY; Sun, 01 Mar 2020 00:55:19 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: arm: fix Rockchip Kylin board bindings
Date: Sun, 01 Mar 2020 00:55:19 +0100
Message-ID: <21505688.DxWBmkEV5j@phil>
In-Reply-To: <5d47cf5f-9ac4-cff4-340b-a2518a508738@gmail.com>
References: <20200228061436.13506-1-jbx6244@gmail.com>
 <73b41bd1-01e9-6af8-afc8-b1a96614d026@arm.com>
 <5d47cf5f-9ac4-cff4-340b-a2518a508738@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_155523_928691_4533CDB8 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Johan,

Am Freitag, 28. Februar 2020, 13:50:11 CET schrieb Johan Jonker:
> On 2/28/20 1:35 PM, Robin Murphy wrote:
> > On 28/02/2020 6:14 am, Johan Jonker wrote:
> >> A test with the command below gives this error:
> >>
> >> arch/arm/boot/dts/rk3036-kylin.dt.yaml: /: compatible:
> >> ['rockchip,rk3036-kylin', 'rockchip,rk3036']
> >> is not valid under any of the given schemas
> >>
> >> Fix this error by changing 'rockchip,kylin-rk3036' to
> >> 'rockchip,rk3036-kylin' in rockchip.yaml.
> > 
> 
> 
> > Although I can guess, it might be worth a note to explain why it's the
> > binding rather than the DTS that gets changed here.
> 
> Hi Robin,
> 
> My guess is that given a look at the other boards the processor name
> comes first and then the board name, so I changed it in rockchip.yaml.
> But maybe Heiko can better explain what the naming consensus in the past
> was.


I think what Robin meant was that there should be an explanation in the
commit message on why you change the binding and not the board.

Normally the dt-binding is the authoritative part, so boards should follow
the binding, but in the kylin-case the compatible from the .dts is used fr
years in the field now, so you're correct to fix the binding, as otherwise
we would break old users.

So just add a paragraph to the commit message with the above ;-)

Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
