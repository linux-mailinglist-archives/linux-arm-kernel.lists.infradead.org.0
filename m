Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E5E71C0E79
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 09:09:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YcAO1aZgE4UnNfM440aWtkAPJqGN+HZNCXVQNItcCn0=; b=MHvbo/OsP0WSvD
	1x9RTCQSQ+YsGSN01nNm638Lx1TF3zJknhbBF8pC4atoFAKxyPowiAjVTOoTgkbShua+eiuPjTqev
	C49F0qMR6DFUz6NBJxLcgBUM+3WgJWJrpypWedqPQFY0jMNNChIt5rZLGnUq06Uhnvda40mIYvxcz
	mgc+7UdpALaQj50nPsbtcK6oyOH4s2s6+tc6XvCmQOu2meoQvfndF0drOPYGFLrsUVRDNnEavjFmW
	rPK39NUfRHv7eSOCfi9Dzu0MA4sQGMSJE64CJLRDy0Om+Rh5954dUHIUc8PeWXtlDVFBerM6LN8Uk
	gi5JLntjpJ/PIDAgD84w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUPnm-0001T4-Fg; Fri, 01 May 2020 07:09:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUPng-0001SU-RR
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 07:09:34 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1323920787;
 Fri,  1 May 2020 07:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588316972;
 bh=l2VllNmD5XZU2Mrh1yQ5p6DmXeQXIltG1BBBIJ3kjIY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=V5/N25RwdKC88lCrZUCxZKX2IGGBYyTBKVcOKwWrfLcOBN9GI4VHX+KlQLOolbALO
 zu7me9b0hm1vCCLP4PbS3F3QnXufV5i1yQpqeafX1u60CoKA7Mm7yB1f/pNC9iQlcS
 5clTxbMKbA5rAhYLqW3mOXZS8XktvSWAQYJfkaHQ=
Date: Fri, 1 May 2020 09:09:30 +0200
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: "Alessandrelli, Daniele" <daniele.alessandrelli@intel.com>
Subject: Re: [PATCH 0/1] Add IMR driver for Keem Bay
Message-ID: <20200501070930.GA892454@kroah.com>
References: <cover.1587485099.git.daniele.alessandrelli@intel.com>
 <d3f045b05c83d0eca1d5498587493ca485e0a1a0.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d3f045b05c83d0eca1d5498587493ca485e0a1a0.camel@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_000932_909439_ECD24E84 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "robh@kernel.org" <robh@kernel.org>, "Shevchenko,
 Andriy" <andriy.shevchenko@intel.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Murphy,
 Paul J" <paul.j.murphy@intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 07:49:36PM +0000, Alessandrelli, Daniele wrote:
> This e-mail and any attachments may contain confidential material for the sole
> use of the intended recipient(s). Any review or distribution by others is
> strictly prohibited. If you are not the intended recipient, please contact the
> sender and delete all copies.

This footer means I delete all of your emails...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
