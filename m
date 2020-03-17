Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 175AA187B6F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 09:43:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MnC4wU7dUjpLtv7dUL/ECbLj8CqYAHWqPCKCUuHjrZs=; b=jNpoFnU0Ja1N4u
	6eINmSyqhk4dqZC9hLXdLFRkYpdvzPExewS4EOtOfLVmzwh1nMjXOEjXo9BD8nGwT6zusUpATbVmC
	9TgZZueKerI4bJO43CSNHYbZAeYhtr+ZN2Eq/9zA3nwP9Pcz4uH/GF3PhdBdwon5GbAgD1WbquU5q
	5eFxaVnXho/v+qlkMCv6hbS0DSnVqR/xWCqMMQdt95aL8QELpk3fanhM+sVMOkbabIgIXG992Fh0u
	rYvRPkpAbaCQ3HkdKualMH/Gf1fT7h/Uen+DSHML0UsZxLH2YgIUTBuqtT/c8ZNkPqAP2/A3QVRY1
	QWNZzt1cTpByWw/6aAgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE7oK-0008D9-Fk; Tue, 17 Mar 2020 08:42:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE7oA-0008Cj-9d
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 08:42:43 +0000
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
 [209.85.208.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 62215205ED
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 08:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584434561;
 bh=IoKaoS48Cjqtz3EXvPpCxL1bx5OpzH2wv2pbrlqhO4E=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=pNhHb5ZOklzJIBs+Mk30HLDVvQoyI0ikIuQlr7KdQcqcluM8Thc1qv+SrFtFCG6sN
 4IQh2DLpQJp/vtcOlOOASHb/3rQ60/mqNkaD/zaZh7ZJ/r8hIEN9Rhk+sXx/9KA/2B
 tVat7vG6pnEfRdPbSM5o6jfrb0mMZsFtsX+rCvIo=
Received: by mail-lj1-f173.google.com with SMTP id w4so7084056lji.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 01:42:41 -0700 (PDT)
X-Gm-Message-State: ANhLgQ0J1fjFfV3N9PXuyPCFr9mvqfZnDKKEbICpuF1G+VmVWRkmF/i8
 MD5e7KrvX96tcc0FqgieHQHPq8TUoB5uouoIRrs=
X-Google-Smtp-Source: ADFU+vsGw4leJ6Uf5P8becHc7znYz444/oKgydCNUix8TbemuH4A0iD/laSXCKIUp9XD4ychGSVZOvtwIIC+U/Mg5Ks=
X-Received: by 2002:a05:651c:29c:: with SMTP id
 b28mr2143355ljo.201.1584434559542; 
 Tue, 17 Mar 2020 01:42:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200310194854.831-1-linux.amoon@gmail.com>
 <20200310194854.831-2-linux.amoon@gmail.com>
 <87lfo2f0k9.fsf@kernel.org>
In-Reply-To: <87lfo2f0k9.fsf@kernel.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 17 Mar 2020 09:42:28 +0100
X-Gmail-Original-Message-ID: <CAJKOXPf1GQmukWv16ydxY=78k=szTLnwM08R0wGoRNhHXgkCzA@mail.gmail.com>
Message-ID: <CAJKOXPf1GQmukWv16ydxY=78k=szTLnwM08R0wGoRNhHXgkCzA@mail.gmail.com>
Subject: Re: [PATCHv3 1/5] devicetree: bindings: exynos: Add new compatible
 for Exynos5420 dwc3 clocks support
To: Felipe Balbi <balbi@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_014242_360348_8225D601 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-usb@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tomasz.figa@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, Stephen Boyd <sboyd@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 15 Mar 2020 at 10:08, Felipe Balbi <balbi@kernel.org> wrote:
>
>
> Hi,
>
> Anand Moon <linux.amoon@gmail.com> writes:
>
> > Add the new compatible string for Exynos5422 DWC3 to support
> > enable/disable of core and suspend clk by DWC3 driver.
> > Also updated the clock names for compatible samsung,exynos5420-dwusb3.
> >
> > Acked-by: Rob Herring <robh@kernel.org>
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
>
> What is the dependency here?

Felipe,

This patchset should not be applied. As of now, it is not needed and
not justified.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
