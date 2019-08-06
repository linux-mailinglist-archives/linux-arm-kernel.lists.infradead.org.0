Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5AB2831E9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 14:54:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5qVTgNmTRpA8JDSvk/uQcPJKOBZUA5g+vOUjcpcjQLM=; b=MroKhkAW8cj7rX
	ww0gzDzRRWG0YGNTnbQGSwEu3MqWJa8elufvvh7tcBv3SgvNyp/UKU+A2CN1+pbzwTvJ+Opxc95BO
	OC1SaMZwCa+89SA43MyWjiZ/GYEaPlPWjAQo45+TBalPVgny6T8IKS1p+mornJhYcFkPGbM1RAbee
	fa+cCkKzqOPABhqxQaGEBXb2KMwkVW5d9snf6OcyPF5hc6SoxDcW/TEu+1a8cxz9tXC5pzxuIXn1s
	MIH9223ng/FdAn6AXKIN2dWd4AxqvdXzpIitMhYSpKWy9HXdEiKQF8qBAMwdbPDK1gtZAXcTX6lYi
	i7Ak2x4CY8+MtBwFSK1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huyyK-0003If-D8; Tue, 06 Aug 2019 12:53:48 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huyy3-0003I6-Gc
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 12:53:32 +0000
Received: by mail-lj1-x241.google.com with SMTP id y17so57598360ljk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 05:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HV09zpybfsy+I3fJbUAkGtQHbBc426YvIl5qaG1i4W8=;
 b=UdhpRIRR6fzwMx5vTEcn6+DpO3eK9AAXv6NwTfA6CFtU3xyvOCvIF4CXm8tI2TXq6E
 WKjFc2iD924G2t4KLDnsoxrM+jIpeTWzQ2cVE8806JarIISiphInjI1X7l6q7bzAqVR0
 pJgeyJGBXtIpRzVkRR6F3HcR6MWu1gxNr6KQjt/xOz0vuz4bv+jRS3IMFEZXfeLIStnF
 +HBhqcC9lNQZ9iluPad7URnLDNVqhUGyr3/2vT7QWrCBQOrDUMJcKc9w2hEk0obE8N3E
 1WaZ30vDiQ6jmpBcRei9cVbMaGfgmuy/GgORwI3MsvAt5Iip7iGHzJfY5+AHhPJBWZBz
 xy6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HV09zpybfsy+I3fJbUAkGtQHbBc426YvIl5qaG1i4W8=;
 b=tth2/E9BF46Kc16Zycg+85goZF9ZKUAOgAHdD8CrhldE/crfCb97Kr72FqHz8ig0rh
 SkhNv8kI3ZDTUtT575/RbJQR6YP/r2/vlmSY4WCadQhVngAsApc7U8wK29TTUuQXIsuy
 JKsrEEC2SqMyoE9Shdc3t0WEgWjmBlZQXX57QYsprhVPZA0F35evjuVxsBo8efSBlTuK
 du5tqIsdiXOBlrlrcfMM86mNfbpkaLweLz98VLUX1ctIgC5R9GLMf+ocXAToFf3jEF3L
 /f7LBJdgZPDNo8ywqf3GvnTkwh5XU4PNM+Rrre1BhiNKA8BLMGhzJwyh3KUsPm2HHAM5
 CRZQ==
X-Gm-Message-State: APjAAAXBe/B8bPoLqG6aYY3738gW9Yk+n9I0TWqkgtiplks7GipbdxI4
 6+VOUNPzsotnbLOfEIN+93/KnytVLgwyx9+nVMttPg==
X-Google-Smtp-Source: APXvYqwzjP8TFgqBE05qT9MDh1E1Lu5UcaY925WA0Nnx9/LH4CPLcq4VNPSmnGg+FJerwiR/lYW3/QuHn0NqhSYf/tU=
X-Received: by 2002:a2e:8195:: with SMTP id e21mr1636402ljg.62.1565096010210; 
 Tue, 06 Aug 2019 05:53:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190804163445.6862-1-nishkadg.linux@gmail.com>
In-Reply-To: <20190804163445.6862-1-nishkadg.linux@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 6 Aug 2019 14:53:19 +0200
Message-ID: <CACRpkdZCE3nXaF9MK_VTpvyrADqhF1oVta649rUzMb9O57XVYw@mail.gmail.com>
Subject: Re: [PATCH] clk: versatile: Add of_node_put() in cm_osc_setup()
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_055331_549250_B9113C50 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 4, 2019 at 6:34 PM Nishka Dasgupta <nishkadg.linux@gmail.com> wrote:

> In function cm_osc_setup, variable parent takes the value returned by
> of_get_parent, which gets a node but does not put it. If parent is not
> put before it goes out of scope, it may cause a memory leak.
> Hence put parent before the function terminates.
> Issue found with Coccinelle.
>
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
