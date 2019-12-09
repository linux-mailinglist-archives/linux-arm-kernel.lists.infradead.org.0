Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA08117352
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 19:01:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ei5+DIZQy12oMhl5J/mp7dK/gcINcpJDzBExoKi590=; b=jJI4etRLy5DPZB
	iihYR7hT1GDNB/dAPrP8C0IYLJCOoIA6c0XnAk+OGtm1ARJSlZBA8/SnDWYhkXVCCwiIu7MrmdStz
	O9OV7sUMBaZquxglT/5vROqadPEW2luD4Jaau1MI02daIUfKNzk7bqGrcXKxZxY4uy5Kp4lc/mdG4
	i9UtSvJzwkJb4utcuYhMQY7GyM2dNsnDDw7eJ0SBnZ19YNL2pICM1cCrTO5ActOt9g0GBbCmXvJUM
	kb1o6PfrWhq2qSUzt5eTl9gd7Xwf0zroXD81yFPaqTyvDhevFmCsnifCogWGriSE+sI3VDBoof/mK
	r2cdNWXhaycP7aNW0RBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNLc-00086Z-Rr; Mon, 09 Dec 2019 18:01:28 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNLU-00086E-WE
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 18:01:22 +0000
Received: by mail-ed1-f68.google.com with SMTP id j17so13501936edp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 10:01:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XBPWF36yw8kGA9V4eiTwglCircLVoutwoSlSz402ncU=;
 b=m9r2jZPh69Mu8efesIf68IPed5fXdw8VBvNRxR7u/+m06aQurMZ1e62POr57ADi9qN
 U9zl6lhdtA32oR+DFz6zZQx60ohwAxK4JUcLFZu3S3BhNhS8w0IevMGwaLPZkK6GfIXS
 9dYKIC0PwwDPHf8WK4jtaXVZQnXWlXvgsX0+oQhUvbUDiBiuFI71sbjdYkC/n0P3swDx
 ekrdoEUYjtoSpaDcUiIxftSMSiDSQCq8NCaSVE1McivmUlqZA8OBtJtK+EXhn0SQzAWd
 0Z8+Of4ZY8lukI1iHHKW4f/P8D/X+2180mV6Ajeyt1e5w8cX8Wl5IdgxmlQVSiNk/zLa
 y4zw==
X-Gm-Message-State: APjAAAX4njkCEshLHzqAXymslLWep0xpd2OIg7gfwDFLcUOmZ+M4koq+
 gyTBb804PFCAL/iNSLREdg8=
X-Google-Smtp-Source: APXvYqyTu65gV4dJb5bBPF7KsnrL0RqP0HQAb2e4Y/50STU+LI6n3y6uAA7xycpb0Hu/XIbsj/m5Gg==
X-Received: by 2002:a17:906:fccc:: with SMTP id
 qx12mr33020600ejb.325.1575914479628; 
 Mon, 09 Dec 2019 10:01:19 -0800 (PST)
Received: from kozik-lap ([194.230.155.234])
 by smtp.googlemail.com with ESMTPSA id k15sm15418ejc.35.2019.12.09.10.01.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Dec 2019 10:01:18 -0800 (PST)
Date: Mon, 9 Dec 2019 19:01:15 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH v2] arm: exynos_config: Restore debugfs support
Message-ID: <20191209180115.GA13800@kozik-lap>
References: <CGME20191206124826eucas1p246538607df51f2d68bce3b09d974b292@eucas1p2.samsung.com>
 <20191206124721.9025-1-m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191206124721.9025-1-m.szyprowski@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_100121_036172_3E5DA46B 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-samsung-soc@vger.kernel.org, Kusanagi Kouichi <slash@ac.auone-net.jp>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 06, 2019 at 01:47:21PM +0100, Marek Szyprowski wrote:
> Commit 9f532d26c75c ("ARM: exynos_defconfig: Trim and reorganize with
> savedefconfig") removed explicit enable line for CONFIG_DEBUG_FS, because
> that feature has been selected by other enabled options: CONFIG_TRACING,
> which in turn had been selected by CONFIG_PERF_EVENTS and
> CONFIG_PROVE_LOCKING.
> 
> In meantime, commit 0e4a459f56c3 ("tracing: Remove unnecessary DEBUG_FS
> dependency") removed the dependency between CONFIG_DEBUG_FS and
> CONFIG_TRACING, so CONFIG_DEBUG_FS is no longer enabled in default builds.
> 
> Enable it again explicitly, as debugfs support is essential for various
> automated testing tools.
> 
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
> ---
>  arch/arm/configs/exynos_defconfig | 1 +

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
