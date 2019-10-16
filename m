Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F18D9857
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 19:11:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/rJKa2DLxNifwCFaBOJRQtLVd9DW89q8Zw+YHwWGFKQ=; b=IlgZdWlIjIh3uf
	UVyjx/juDFIs1xQqnEtGnFwpHeBuGP5d/ghDHKzRI7O+dP9FWxUgBKHWu3gAVvxtJFDaPXjH2EYoy
	ShIlqk270g1oqOgpgnpdfDHBI5Zq93MOYpD/3wxrSIyUhyEw4tkrRAH/4pbD1aW6wliWvBf+J1ruA
	EpJmewTfjk762Le2HdUbStAeTCOkgd3NlMZ1JQUzwSdm14gW7VJHdLoZb6x0wQVWuDT8lA/rhKoju
	zRFMKsT1H30A2PJ29swgeAqlYuZOS5V3FpAvtfvmhA7Z+dtxKFwj9PscR/bQ48zhBGs5fj/YICzIm
	7rJKDr6nIC1YnVsabyIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKmq1-0006ks-If; Wed, 16 Oct 2019 17:11:53 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKmpr-0006jQ-6J
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 17:11:44 +0000
Received: by mail-io1-xd43.google.com with SMTP id v2so54752936iob.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 10:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/Cx4XbFIa1sZs/uYwPjwYiglQbxuZVrvQE3ZO+WHpZ0=;
 b=jSkGGBjcRJJqTIh9MNDMGXbNJRI/LCnDRhaNwChrhsAbMBmD27FKvuIkphNz9Zi+ng
 bCqKQB7KdnAZy13xgSk+OvLy669mvex/kNk+EG1zJh5tlurc77U7xwtFOHuirYtFDY1z
 bCoUFVI7zHaBEYuFhR+BesqwbCo3dh2BnZFbU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/Cx4XbFIa1sZs/uYwPjwYiglQbxuZVrvQE3ZO+WHpZ0=;
 b=DAG1wrqLoBNIYfwGyaF9wPGTcjRTQNp6iiIuZCBlKC9wEuVOmv4Z7Z/8TL5WJxnhGj
 vl0fHfoZen+82Pg/yxNtkYlAUjDB+nJ7gS9qELrHKjr3r4uceYjKpbnZahUwaswOPavZ
 W8jAwDBfFSQvFvuwOQTzWLEdkjzJPhyH4tpKauZOCpZQ0RimaGPJVBHqBMMh9Zh2q+jF
 KBnk1OWLC+UfAtP4svuDUYPK4YWK5gzOFbn9KE9lL/3zERJUuSZqejyPVuIZnBPz21ho
 Z94HA9ZqaVlkKnnb3ZUKKqbYmB7qnBR40oOxNUdXxg5Z01dGT1+7uHJPxRsxFtMQtBSd
 Rqzw==
X-Gm-Message-State: APjAAAUIGmwass4KEiP5jeI/QJxOfjZZPZN3E1aBmw3yKjFyd5BFFFC6
 IghMRzJAsZ4jxE+beXDcYerAPYPn6sHpx6hUosgY0w==
X-Google-Smtp-Source: APXvYqwlghLwWKjPsF+lWMlnNrlMqW+5iR9QfBzroa/KEZbXO+cGpX2YYJRRQlH+ZiqpUprUp8HPYcr1Oo2PT6xdYkw=
X-Received: by 2002:a02:9a15:: with SMTP id b21mr3863352jal.103.1571245902352; 
 Wed, 16 Oct 2019 10:11:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
In-Reply-To: <20190919052822.10403-1-jagan@amarulasolutions.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Wed, 16 Oct 2019 22:41:31 +0530
Message-ID: <CAMty3ZAScACpT_ULQwJciLLu23eG_+JmYUCkrr-kOjJLe-E=-A@mail.gmail.com>
Subject: Re: [PATCH 0/6] arm64: dts: rockchip: ROC-PC fixes
To: Heiko Stuebner <heiko@sntech.de>, Levin Du <djw@t-chip.com.cn>, 
 Akash Gajjar <akash@openedev.com>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_101143_229032_4C5281CD 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Da Xue <da@lessconfused.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Heiko,

On Thu, Sep 19, 2019 at 10:58 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> This series is trying to fix the Linux boot and other
> regulators stuff for ROC-RK3399-PC board.
>
> patch 1: attach pinctrl to pwm2 pin
>
> patch 2-4: libretech naming conventions
>
> patch 5-6: regulator renaming, input rails fixes
>
> Any inputs?
> Jagan.
>
> Jagan Teki (6):
>   arm64: dts: rockchip: Fix rk3399-roc-pc pwm2 pin
>   dt-bindings: arm: rockchip: Use libretech for roc-pc binding
>   arm64: dts: rockchip: Use libretech model, compatible for ROC-PC

These two patches are still valid right apart from renaming patch? any
comments on those?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
