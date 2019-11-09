Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EBD4F5E3A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 10:20:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hXFbBduV9FUmwQ96x7sgTAIBp1CADOSQQUL+pO2AnZg=; b=prVEYRZtWDErFn
	nSqRV/WPeekg+teLamA4R+k/tIZD83iMtqFC9eSdbRE0kIczUR1fbgLknDwBXr+/1zfLkVfeR7aRw
	Fd8W/zxVSdoa3oP2MWtAGLZF3J9rxHhnCeokkYKfqJpkYSJCvIJy9L5tsSIHNlQ94/avGtp8/iNU2
	hAX5Mbp1wsHthv32tW5MZyjA5XI9H3Zeyjknts6QXZu+ThXfpT6tQgVE4yP38CJd2Td5MT/4C+LNC
	hscPVkw8GVR21By0gyC/geb24FwPXTI1fItJhaTrRE/OYaE+JxvxfZZadr47IkDW0cAsvCzrFAFUY
	MJZdTYjlqF0XXXCFEQtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTMuW-0003GP-Ex; Sat, 09 Nov 2019 09:20:00 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTMuM-0003FR-Ep
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 09:19:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sIz2zr1jTWm6bglaCJdC/rrllvxo7OS6Pj6HIRfB/8c=; b=mlpJvT8O4kLMZQnaZzgcL37thG
 kGejV8LxpSAD+wAyedC9b0iz8RsfBoPjO+X6u4VFRgZr8QE+x0dr4TMVqoSM1UD8f+DsxjCjvu4aH
 TO1nQwdfCMPWx/i4X16UqoTByuKs+E5EJRzOFgxmdcbYbhqsf2ppBSoor2yLo9Fon1Ac=;
Received: from p200300ccff35c3001a3da2fffebfd33a.dip0.t-ipconnect.de
 ([2003:cc:ff35:c300:1a3d:a2ff:febf:d33a] helo=aktux)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1iTMuF-0003xX-Oh; Sat, 09 Nov 2019 10:19:44 +0100
Date: Sat, 9 Nov 2019 10:19:42 +0100
From: Andreas Kemnade <andreas@kemnade.info>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] ARM: dts: e60k02: Pass the memory unit address
Message-ID: <20191109101942.73a221ff@aktux>
In-Reply-To: <20191108143936.7746-1-festevam@gmail.com>
References: <20191108143936.7746-1-festevam@gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_011950_793343_46FB70C2 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  8 Nov 2019 11:39:36 -0300
Fabio Estevam <festevam@gmail.com> wrote:

> The following build warning is seen with W=1: 
> 
>   DTC     arch/arm/boot/dts/imx6sll-kobo-clarahd.dtb
> arch/arm/boot/dts/e60k02.dtsi:51.9-53.4: Warning (unit_address_vs_reg): /memory: node has a reg or ranges property, but no unit name
> 
> Pass the memory unit address to fix the problem.
> 
> While at it, also pass 'device_type = "memory"', which is recommended
> for memory nodes.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
As expected, it sitll works, no surprises. Thanks for cleaning up.

So I can give a
Tested-by: Andreas Kemnade <andreas@kemnade.info>

Regards,
Andreas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
