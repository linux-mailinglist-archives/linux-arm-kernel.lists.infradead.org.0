Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E3719C87C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 20:02:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=liuSuUDuYNLMbnJwuxNcWhbu0Wo+AfQ2ocicJbdnf50=; b=MpyZ9M45CxZFJe
	XmQRd8Y5Xa43Z+96YPD0mhgfKq8/fKlSSnLDgQ1vGu5SZftNbyBWgSU6cpFu+2RGb0vZRYNd8NjPW
	gk/Su1RzlyjztGXVk5oedHlVQChqocXuwwpHufjXzkBQloAEcjQw68mAzHHybYNU2//XaudhR7CuK
	8DPYM31zbJa358dYHPFdntVSMTdoRmIPpXNdunDk+Cm73gs4oNxnjZiGTMD/jbwUepiRZ7dINFUK5
	Ktxi6cXYjKBsJ0h/tLW3oz//PQF1zRHNrcYLA5+q3dfAreo1kkDMUO7pIACQ3EWNirhlJw8K0WfM2
	+OdaFBv6yX/+NSwM8qiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK4AE-00008M-IN; Thu, 02 Apr 2020 18:02:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK4A6-00007Z-F6; Thu, 02 Apr 2020 18:01:56 +0000
Received: from localhost (mobile-166-170-223-166.mycingular.net
 [166.170.223.166])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D8492206F6;
 Thu,  2 Apr 2020 18:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585850514;
 bh=oWUzlHfuwWKgME7NjSzkRgepanaeIaWsrH5an+W0Uds=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=Wl70XaZIn/iM6huN3hAgmn9HJGzsCtMrt2DpC4VSkh0dGXZTMNkgiOcLnej8YzzGd
 /UK/KnXqbbXwH6woCGQii3desEhyWPv/wEWByxZfPPyC7m5NkJaIOWYB0yxPvXYhnN
 VddlJvK//g5/zZtXqbmks5qmJS7XkSODgKXNYoic=
Date: Thu, 2 Apr 2020 13:01:51 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v6 1/4] soc: bcm2835: Sync xHCI reset firmware property
 with downstream
Message-ID: <20200402180151.GA50169@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324182812.20420-2-nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_110154_526735_776C32AF 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, sergei.shtylyov@cogentembedded.com,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-usb@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, tim.gover@raspberrypi.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 gregkh@linuxfoundation.org, linux-arm-kernel@lists.infradead.org,
 wahrenst@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 07:28:09PM +0100, Nicolas Saenz Julienne wrote:
> The property is needed in order to trigger VL805's firmware load. Note
> that there is a gap between the property introduced and the previous
> one. This is also the case downstream.

I don't know what "downstream" means, so I don't know what we're
syncing *with*.  If there's another branch or project we need to
coordinate with, is there a name or URL that would help facilitate
that?  If not, I'm not sure what value that sentence adds.

Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
