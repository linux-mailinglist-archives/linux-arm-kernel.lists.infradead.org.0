Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD16DC6B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 08:59:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DPE1AW3KFmxLH3wpB1J3UZIWqJI24/84PJLlh/uwDjY=; b=qCI7wBLVczgLl3
	4jTaIcvX+PHSV4RZcibFFG3NKWysqcGy73mWM3iuc/teeF7dpFaLn7Yb58LNqzX17elA3CKBuGBZt
	oLCP3U974aeT2JZT+8IMeOx7kzeOT7BHNoDqhZZ4JkRa2zfcEXxD5BtUQe0d/a1IdK8NfDDdUOxpS
	SPstPqFFCmjMwYQVarFP/K87GGUSaKVgQJm35jgu37Wl3SIbvWV87V6zQufc0EBn8z68z9Em1Gc/a
	n6kXJEDPJLPfce2kKqskRaFCjL0btzb3JlSuRLHXu/gSUbbsrML99rZRDWI/WXlysRNHIWrurVRxL
	T+tS96uCgAXthO6hiSJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0GF-0007qu-Vi; Mon, 29 Apr 2019 06:59:35 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0D0-0005rd-SK
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:56:29 +0000
Received: by mail-lf1-x141.google.com with SMTP id j11so7112715lfm.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=njgQC1NPJbv0uZaXbMjuCJJeKilK/nG8mrjEAlJz8lM=;
 b=esAGeQ9ZJiBprDzQ2BABgBZPBA27oZUwYDSpuUpjbfW/QoCkpjKZ5tvUoKl5R2Vt9A
 FGjRLwGcvcm0R9n4biW4RRsI03BcLZ9lMUpHQRw/Gmq4qICn6nWzOeegd4Tt3MwHYj+4
 47GCBqXmrcWAbQalJ9ATSjax5HN9z3YEkLt9kA/gzhPWqiHik+Vw6a5O6T+WR210rrg8
 SgBI4ePDvEOiXUcIv5bN5QuRJa4xrPswbwaCDTPE/5B4RAMinM1gxBPxDDK2IsZhzSmw
 SqWdp5j+cVPNhFPPfC7vLXaG7JC7mqfZNugbiQ3ZQ9BumWbtezzxW7TtgCmQtxcEocl5
 /QDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=njgQC1NPJbv0uZaXbMjuCJJeKilK/nG8mrjEAlJz8lM=;
 b=MbnUWupTZ7pNliIrr0Ir5PdvWFEqIDnERZJhvlbvS2rWbna9gSTVIA+7POtGzXuRxl
 Fptm0pvpgVwifnNQ0ETDkBQ0mPA3kfLx6TJMwQvpQ53FzyJZ0Ey3wMSes4Xbpqf9o7T4
 o4uxQgvUVpYf67+/l3Ks7GEF+RBxxVriYthXH1TLRNPK5vFr6t9DeR8OczoYYw34vnqw
 qL271z8XZHx5hnydzJwJRBAm9z6ZFUwCxZmC/3a1kVXjVs6A2JWKSozpMMlCqpO343SL
 MC6D7/4faNW0pL6SsGzdQhG/VN1hmd5Q6YbyG8xXRwXoO4KEP8VwZPh2n7Iy8X1bxikq
 +dhw==
X-Gm-Message-State: APjAAAW4NHYVKNW7BH8H9bB4ALc9J/jSyG8ojxiUfhNO37pc7RmeNRlX
 +pu2+Y3gidOHVPFDXgh5IYjrSrWBbzQJ0Q==
X-Google-Smtp-Source: APXvYqzatqezxncCngVAb/XMIs+cbAW47+mcvjyznAZBUu0WZDi1WkyExbnfQcVOi9a85LwmlczaVA==
X-Received: by 2002:ac2:51ba:: with SMTP id f26mr33087897lfk.126.1556520973147; 
 Sun, 28 Apr 2019 23:56:13 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id m22sm5322089lfb.32.2019.04.28.23.56.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:56:11 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:39:07 -0700
From: Olof Johansson <olof@lixom.net>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [GIT PULL] Allwinner arm64 config changes for 5.2
Message-ID: <20190429063907.aaqq7x2qp5wu4ul2@localhost>
References: <20190419114118.wwhphde2tj2oc7m6@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190419114118.wwhphde2tj2oc7m6@flea>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235615_242677_64B6B352 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Chen-Yu Tsai <wens@csie.org>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 19, 2019 at 01:41:18PM +0200, Maxime Ripard wrote:
> Hi Arnd, Olof,
> 
> Please pull the following changes for the next merge window.
> 
> Thanks!
> Maxime
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git tags/sunxi-config64-for-5.2
> 
> for you to fetch changes up to 89232872319f6a93c91162f07c10dfd630b305b1:
> 
>   arm64: defconfig: Enable SPI_SUN6I (2019-03-18 08:08:01 +0100)
> 
> ----------------------------------------------------------------
> Allwinner arm64 defconfig changes for 5.2
> 
> Just a single patch to enable our SPI controller on the arm64 defconfig.

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
