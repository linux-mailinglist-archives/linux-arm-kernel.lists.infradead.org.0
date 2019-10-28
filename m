Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D93F5E75B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 17:01:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BwZw06x2gLQdWosOZZrHoc2MRT8z2SsM8oZH+S+4+xQ=; b=Itz2agoLjfQb7R
	dLOwrANzVhsNSnaBECYhFaOitN5xd6J86LzNKGsL/kEj5FGhkCCV+Sq5RA40tnWzAAC5uaM3mMat6
	WhBd7NA6KaTiSXnarQTNCHmcydfx2UP8AYAzuyMjJodO3Imdsuj6dYl/91VSHPcitoTyrxvqYq2Fi
	ALdKVGQaqSMndG7hdKm143h+Au4tRBbBvyIhOiwSHwTXsu2CHaGtXHw6OVe+KyHluRJqdoBy/YCsW
	p/ZMvlYmnq7e/FnDJJFoJLjsboHO1d2A/1FWeBElzsdciz+pWToqpQ4nb3tSS2vG29V4DKitRsJHL
	RUBXgOTG7TI4yYMmpR9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP7Ro-0002pX-8g; Mon, 28 Oct 2019 16:00:48 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP7Re-0002oV-U3
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 16:00:40 +0000
Received: by mail-lj1-x241.google.com with SMTP id m9so2267694ljh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 09:00:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=W0HSY+IOU1E3+H64jp6fSW0m3fbjk4bu9H8/aEJLARA=;
 b=tAYs6s/HvQs5gMTgQQGyP7MnIi8/DGPNNkesMzDARM0oqWSSOl8b6FU9yMnjmuX4HH
 1aFavolCuZZrVFWoRhbzGsUkLU78qRx19sDlG1qX4lG8SReEBzlh8KlEDus3gBrY66i/
 6NOavv0o0lQoQOeDpnS0a6+3a/G5csPmuDRINhthESJwWzkqjnjGJ64jvpxuIsEAlmd3
 jY16Ij9i8WlvWFgo6pCWX7TgT+pBoHcB0Ba0uvHX1k4Cg8uCRITpi0CEldnq578553YB
 qFB5zb50bWoJvLZv9Pyk10VugpiK3/F01cZraYNkxMg0MafjL9MHMd6UuE5yEzVLiEKe
 S8wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=W0HSY+IOU1E3+H64jp6fSW0m3fbjk4bu9H8/aEJLARA=;
 b=QfszOZ4s5KOnVSbVOAN/3LYwADIDGi9i0xBwAPiHxLN6jco2Lwr4Z5Cmci0luoapR9
 gnKRH8SZ0JViv74N0Mwq8SejBNJUUplxk8ruIr4PXq3VgITFp4k6V4qGCyvUPM9m79qw
 eMe062mNGwhUpxuDqPTSyYhlpJWPostB/+92Hl5uagqbd4yTUUk0VMxu9IV+NEanXnCc
 j8H3fqELsX5RK7fQ7aLsgXZ/9JFiuGNE/uqMynBlY1fxZJAHpqnl/zldWFjIEzafwsfh
 FY68y8K+VYGui6iJnspndx92+RxJ/bIaACPl7SVl4oj455r7+OE3LjmHzGC9gyQLxgv4
 PRDw==
X-Gm-Message-State: APjAAAXlsWchGs6whuyXkv+i1tcdC0/p11q3K7Fp/SexkUW9TEUzDX75
 /zhC+3s+z5DFqxX2LX6O7lDYhw==
X-Google-Smtp-Source: APXvYqyrSKF2v3V6nJBaeYjZGhS3gd2gf9CtLJh0cYLk91tRodcHKB9nqtn1bsUZczudkcqrxiN1IA==
X-Received: by 2002:a2e:8987:: with SMTP id c7mr12564745lji.225.1572278436418; 
 Mon, 28 Oct 2019 09:00:36 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id a8sm4092544ljm.53.2019.10.28.09.00.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 28 Oct 2019 09:00:35 -0700 (PDT)
Date: Mon, 28 Oct 2019 08:56:20 -0700
From: Olof Johansson <olof@lixom.net>
To: Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: Reset controller fixes for v5.5
Message-ID: <20191028155620.j72vxqnp6sqdl5j3@localhost>
References: <cbc2af1aece3762553219ba6b5222237dacaea9d.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cbc2af1aece3762553219ba6b5222237dacaea9d.camel@pengutronix.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_090038_993950_CD1BE5F1 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: arm@kernel.org, kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 02:15:31PM +0100, Philipp Zabel wrote:
> Dear arm-soc maintainers,
> 
> The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
> 
>   Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.pengutronix.de/git/pza/linux.git tags/reset-fixes-for-v5.5
> 
> for you to fetch changes up to f430c7ed8bc22992ed528b518da465b060b9223f:
> 
>   reset: fix reset_control_ops kerneldoc comment (2019-10-28 12:18:23 +0100)
> 
> ----------------------------------------------------------------
> Reset controller fixes for v5.5
> 
> This tag fixes a memory leak in reset_control_array_put(), which is
> called by reset_control_put() for reset array controls. The other
> patches are small kerneldoc comment fixes to avoid documentation build
> warnings.

Hi,

Please send these to soc@kernel.org from here on out, so they get captured in
our patchwork (I bounced this time).

Also, I don't see your GPG key anywhere. Please get it signed by some fellow
developers and upload it to the kernel.org repo (public keyservers are no
longer usable, unfortunately). See:

https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/tree/README.rst



-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
