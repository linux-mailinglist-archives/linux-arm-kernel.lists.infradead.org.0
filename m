Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F8DB1773
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 05:29:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i3Nfe4fQmRUHkRRo6QEOKTSPRCUP8F2Ic/V6dBpMo/8=; b=jlzjLwdCPhekVF
	O4UpS4Yz82Qm3oPN1C3lrpWlx8dAJaCGoQNrBSt0Zcj0VIwT1Vnhh/3EwqBCf4Xt+4m8hZ4a7tiaa
	/bPSeTcxOYYUNdZMltHY9FlsxUxqAdmOuxgIOYxLpCeH287V1+8CnnFxCVe1zSBKrSjrFZTdwRl8d
	fgN6tNwVOGXxKWOHgmZMlEPiPOteEelgg4xCNkAKWD7VUP+O/7VYacYOx+slID++/nhFvUtv+T/uM
	wSL749AJhU16aEDjedWs9HGsuMhp6kwpWUSjFzFHv1NEF09qPFsAzRReo2JqzjZKRjfLgK0D5kc90
	JPvVmT/stCAnYxWuHy+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8cGp-0007HU-8n; Fri, 13 Sep 2019 03:29:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8cGd-0007Ge-Bx
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 03:29:04 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 48FA22075C;
 Fri, 13 Sep 2019 03:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568345338;
 bh=t8+cuw1jv7nhXz/jg1pVCoRxzzSp/kCJh8DPtvRY/2c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yLOQmuZimNno3cNogQaw7H6BEidfiQM6qd9qYy4ZbUm8DhocJfK0/9ku5MLLlJWzj
 1x88W3JQyZ8B52HXP0DCYNxFenHgPbyX7bXDcb9B6uBWYR7deGB6WGErT0OrP1m+jT
 Ia225nplJrgwIuqRWB4TgGcEB8XUmih2WMU3cxfs=
Date: Fri, 13 Sep 2019 11:28:46 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Ilie Halip <ilie.halip@gmail.com>
Subject: Re: [PATCH] bus: imx-weim: remove __init from 2 functions
Message-ID: <20190913032845.GF17142@dragon>
References: <20190826095828.8948-1-ilie.halip@gmail.com>
 <20190911070314.GE17142@dragon>
 <CAHFW8PTS6DQCmJKOC0PK=4A6zjOZm6Krhr6MTqB1c8kZ8++hNw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHFW8PTS6DQCmJKOC0PK=4A6zjOZm6Krhr6MTqB1c8kZ8++hNw@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_202903_435176_AE7A6397 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 10:40:19AM +0300, Ilie Halip wrote:
> Hi Shawn,
> 
> I think you can disregard this patch; the issue was already fixed by
> Arnd[1] a couple of days after I sent it.

Ah, okay.  Thanks for the note.  Dropped.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
