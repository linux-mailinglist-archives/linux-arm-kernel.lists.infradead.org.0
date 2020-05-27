Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A34651E387B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 07:49:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=poexemGAOewjtGB2eRf3Lius9iIKxSkUddcEAxrMlYk=; b=Y6WXBhLxYerrrO
	MTzra3u/Birjx0d314ymYIS43qEV5/L9tePm/Q3hpTo1SXwIP+1n3BtIJLcNWy0GJr7t9G+GFoLQw
	0U60xlg8sXtHQhlpPX8N3GrP2wNzrqVS6nUAoSa0OCh/K5NdaYCCe/Yhbzm/9/aoMx1z88crd9S0L
	u+cHZygHVGreqYP7u5F/bFSaWPTCf0HoA8N9pIEmr6MuvFrSO1pvRE36lfxNsYPx9PVBhfVSLWZfU
	BhCncEXlJZFR32gSawSfloNjJZBT0GuytKZVb/7PzGspOJ+IqKXj8roY3hsU6SHARmsXRyvRMOrn7
	4uBB8ADAuuMtj5EVBLCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdowf-00081M-0r; Wed, 27 May 2020 05:49:41 +0000
Received: from mail-lj1-f195.google.com ([209.85.208.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdowT-00080H-FT
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 05:49:32 +0000
Received: by mail-lj1-f195.google.com with SMTP id w10so27432551ljo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 22:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6Ey3RUpCGa5Aox52KZ5G497GPuu8CFMaGOEj0YfbRCE=;
 b=IHURO0exP8ThsysvtvUVDN5cTBjZW1A5ogekeUUqLNeYB2FGz4d/s/pWf9IREZvWh9
 6f3oUSCkM5uanpvYDqHX3Mm1dW6YEvprJ2NdjOmDgkcMox49wszIokbgRyhNb/ash0mu
 qYG2m30mWdIbE6HauFvsy7lUAeG0MY1Cm+vBQsDVjJpR9COGe8J5mWSqMVoOZlsvr2IP
 oU15BvzZaVmPzyM5p78RnO4P8b+XQ8wJv69PMeJ0ggxtY8eq28DwZ3LeT+ptx8vU9z0A
 KVTOsFtyrGmTzfq1xSBTHeSDuo80Ah7EpSzJJflNND68IyDuCgHx9iUdQKy9CgFuAM0I
 +6vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6Ey3RUpCGa5Aox52KZ5G497GPuu8CFMaGOEj0YfbRCE=;
 b=sJ+LzDgJ8bGPQLaWMwHg/fMJ0uTD+eLhetSK+EIBZt05Jk2Rfubv9KZl/h1iJMEqnM
 tjumS+GMIv9SbZbwmb65BZ6rA6MjBTwkfVivhuwOPMaGxdjpzvc23SxKPQLe32eY8QIh
 vYKXbiM1EcRCat4dNz50U3tWRpOv2ih7iiKa/AOktHqFduB+xlOT7L6Tu7nkqmME1g6P
 dOOKHk0TLf71P9eMkvtO8ID9NKZd8h9u60e6jXoF0Y/hjBZfTf6lF+HxwxoYY4mOc1RZ
 VvGwrJAMHhPdS2a/cScSnWMEqdomWcDrE1umLyuyI0WFVObyF/0hHIMScw3g1eMLnSGn
 7wxA==
X-Gm-Message-State: AOAM531EURX3gDN6AZ8bsNkq2L44YpqshMlg8CwvTrAB1+5TJt3hIABG
 5BdOy/IWvpInrKnjodoyzzXLEa6uHKvCWUpDGpaQ0g==
X-Google-Smtp-Source: ABdhPJwnO7GDTOtyL2kiFe3jVfkqBAg7nq2J7SDhBgiLgtUefNePgtYaoje9dfB2Zk33EfyfNamq1jgS7Fz6Jg4SKys=
X-Received: by 2002:a2e:8e91:: with SMTP id z17mr2117948ljk.144.1590558559281; 
 Tue, 26 May 2020 22:49:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200526224116.63549-1-colin.king@canonical.com>
In-Reply-To: <20200526224116.63549-1-colin.king@canonical.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 27 May 2020 07:49:08 +0200
Message-ID: <CACRpkdb7s77aOnQxMQ=Gi9zcy_fz37PZ5E3+vk0=P5N8wjA6sw@mail.gmail.com>
Subject: Re: [PATCH] clk: versatile: remove redundant assignment to pointer clk
To: Colin King <colin.king@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_224929_517533_575C5CC0 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Michael Turquette <mturquette@baylibre.com>, kernel-janitors@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 12:41 AM Colin King <colin.king@canonical.com> wrote:

> From: Colin Ian King <colin.king@canonical.com>
>
> The pointer clk is being initialized with a value that is never read
> and is being updated with a new value later on. The initialization
> is redundant and can be removed.
>
> Addresses-Coverity: ("Unused value")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
