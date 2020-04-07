Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 996241A1851
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 00:46:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W4s1++ABUhpjhha192HROHSENaYE7eVkqomxel0+uOs=; b=B9eysdVjsSs7Xi
	kBksSzyfGyYBrB6+mLqoD6EfTcHt9L00pRCajG76qgLaNnHOvTKwPKY/rbquT8g0G9I61KVRBJ7lk
	XPHnNpBi4qzjCGrjok4iIc30ZrVZHTD6x6A/HQexqxk6/5SC4aUaWWKhgFw0IdzOemul9W4o8WjZk
	/GV1w76sVYbaOHdCzIufFvHXL/JGkwimplQPVjNokK7/76o39rtzmNmTUCTBDDnwlewX++h/sz5V/
	4f3h193XwthwJMbY6eGHaNcmzoNsGj9wiRezZ7IP4CaDdZYiOYh9ddYYD8W0W0ee/XIg9rf3f+eEu
	wO06yYu4B8hgiQCZ0z2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLwzF-000083-HD; Tue, 07 Apr 2020 22:46:29 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLwz7-00007Z-UV
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 22:46:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SjTHWgdH+APmia7yev+r5og+EF8CcHtsC9+wUuc74BQ=; b=419V9ZM8i56ZctpAO/OJC4QDpJ
 0I4aBfDHchtIoOk0LriYXrHgmMGDCm3ArG+bwNDforN1Ianmzag0VF/NfbVtBHRMnFtpauief9ioM
 CdW5+oBd6nVNCksfES5xAY/3FuW+BnczEyKKC3fj1/LPtUhVat84eRiWUQIEcOffM1yQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jLwz1-001X61-Hq; Wed, 08 Apr 2020 00:46:15 +0200
Date: Wed, 8 Apr 2020 00:46:15 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Paul Spooren <mail@aparcar.org>
Subject: Re: [PATCH 0/5] arm: dts: linksys: rename codename to model
Message-ID: <20200407224615.GA359603@lunn.ch>
References: <20200407210816.866084-1-mail@aparcar.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407210816.866084-1-mail@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_154622_160125_5F1B903D 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org,
 daniel@makrotopia.org, freifunk@adrianschmutzler.de, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, sebastian.hesselbarth@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 07, 2020 at 11:08:10AM -1000, Paul Spooren wrote:
> Linksys chose to use codenames for a few of their devices and sell their
> them under an entirely different name.
> 
> codename  model name
> rango  -> wrt3200acm
> mamba  -> wrt1900ac
> cobra  -> wrt1900ac-v2
> caiman -> wrt1200ac
> shelby -> wrt1900acs

Hi Paul

There was quite a bit of discussion about this when the first board
was added. If i remember correctly, it was Mamba.

Imre Kaloz, <kaloz@openwrt.org> was the one arguing for
the name armada-xp-linksys-mamba.dts.

So it seems that openwrt.org has now come full circle?

> This introduces some extra loops in OpenWrt, a distribution specialized
> on embedded Internet facing devices, as both codename and model name are
> used within the build system. The double naming requires developers to
> keep track of that mapping and introduces inconsistencies:
> 
> To build a specific device in OpenWrt profiles are used, named after the
> the compatible string for targets using device tree (similar to how .dts
> files are named in the linux source tree). However, the first item of
> the DT `compatible` list in this case is `linksys,rango`, which is
> inconsistent with the model name and not what common users would expect.
> 
> Such double naming complicates currently the automatic search for
> firmware upgrade as the build system does not support such mapping.
> Ideally the first item of the DT `compatible` list would contain a
> string suitable to be used as a filename recognizable by normal users to
> belong to that device.

> With this patch set the Linksys device tree files are moved from
> containing the codename to contain a sanitized model name and also use
> it as first entry of the DT `compatible` list.

I've no problems adding another compatible to the list. But i don't
like the idea of renaming the files. The file names could be
considered ABI! What installers/bootloaders are you going to break by
renaming them?

	   Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
