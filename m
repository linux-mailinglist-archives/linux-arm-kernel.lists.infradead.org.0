Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AED127DD76
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 16:09:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PGgF8BhI3Y3p4EKAhTfDfIrIIN2ttjMW5yWxMo9BQiA=; b=FaU5YwRb347V1C
	20dG8BeqglJ1tzhzCyHTmbBUd7SCzwBS1R1Dfkuh5CKHylZevm3wO6rWkbn67ZGbywKMY1JyZc1xx
	hJ2FqYKR4qkLYouH2vKD5r8+1637YT6+1Jmez5yj0aoxj2AN2Wa/UABtlzVib29heIL3TNtg5Zho5
	b1fcuDA9RMh99tdvJ7RPl3rPV28Zw1lS17rJTn40vICc7hMjl1yTJqNAU5GCRzRWmiNPWvqYM/LIc
	Dn3DU4Q100AsXTLG3gWGJjcQAB/wuNGDq3S8y5mjaeVq3Abl6xnNaD9RbRFj0jrXG7WLSf6ymMEjj
	NjX0O0kCFNyHkSUp9ddQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htBlP-0008Vx-Cj; Thu, 01 Aug 2019 14:09:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htBkt-000829-1r; Thu, 01 Aug 2019 14:08:32 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AB90F216C8;
 Thu,  1 Aug 2019 14:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564668510;
 bh=1JyIuK4+07z6r13siyUfFBNIhbSOLStvyEv7aTDiL0A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=StxsIr6kJab04Mv9+dIISaCW/YlcJEl4jG36/0vq1ghI0VDL1estEscC9HdwV7Ryo
 lk253CwRrVHhvp6pmUpMEXKeRisNnD72x1zxZCVk8dMlisZ/99kbMUJ2x51u9S8p4e
 lhSfUxcSOKqPQQmWavnemeulitgk4N1O8AktIVtA=
Date: Thu, 1 Aug 2019 16:08:25 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [RFC 8/9] dt-bindings: serial: meson-uart: convert to yaml
Message-ID: <20190801140825.GC31375@kroah.com>
References: <20190801135644.12843-1-narmstrong@baylibre.com>
 <20190801135644.12843-9-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801135644.12843-9-narmstrong@baylibre.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_070831_131977_EDA1B1DB 
X-CRM114-Status: UNSURE (   7.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-amlogic@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 03:56:43PM +0200, Neil Armstrong wrote:
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---

I can't take patches without any changelog text, sorry.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
