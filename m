Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5CCA6AD5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 16:08:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F2bfYqBp7TYSdkMb6qfqio+XXuA5sYtQCdvgFk58f58=; b=JVmomrWd2RnDvZ
	W317GnEIPVYE4L1yjhht8v5ArICl0j/t3HCMVlY27PUsBrkcIXoEt5jxWtLF++wXAB7O4IpMlO3Td
	cx1GCIOc8VCoSSyyU8t1RHHpeDKimitc46YKhCT48zdlJeGt/YFaorzexaqNaueueaw0yPvP/9vdE
	XJ4HI6c6Euc4Gr1KllLhq1Ct102ry8OJxQDcpS83YS2t+QfPeK5wktQ2szpsFIohN8aPCgeG/wkf+
	uS57vlE9z61jB6BXOzlvO2rvnXxmoIMvTfE4+NYcBxPpuzqXjyk/00XaS9FdLnGaeu0P3r0mWom5r
	VE+OOQU4KcJzYIfE0B2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i59UI-00043J-8Z; Tue, 03 Sep 2019 14:08:50 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i59U6-00042z-Tj
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 14:08:40 +0000
Received: by mail-qt1-f195.google.com with SMTP id a13so20094559qtj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 07:08:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3YuA9C7VyA649ygxjPkugw8J+OeBT2kz2SgWDuIBrqc=;
 b=NYHclqXUGKvZISN9gP4XsJqnQbjoERi1/LwkCnnMVBAx3uPnJ04/ITy/JwwhmD5NUm
 O6chKcwwI57Z8W3+bJFm8yM18Hpoulswk6ujIQE6IdJvSqJ69jzqKSSYXw9jG4AR/JcU
 n8EEB3RT4SevDiF/RS5DQPICd1eRz4zuuiYowzoxeUmthp8G2msCjp+GYi5jGmZ5t9XD
 YmnL6wFrQ5ytg9K8QxxuDbm5BqS3WqST5Ub65DiHfr9OHlN+C9WHVpEoF7YjTmmzY9Zb
 QvaQhBPFSiS5bQFwPoeusWGik+aWIjuUgTpAApb2ruXj1lntr1x/7OlnhaMVYj+MHnyC
 LpVA==
X-Gm-Message-State: APjAAAX5jF4BJbZ6Xh6fukppkCZJtvzzAyMHdqRe5LSqCeykjnrFVztn
 9axLd0ZRe5crMBHuZMMnVPXaRYnpVuEfWvIrmpc=
X-Google-Smtp-Source: APXvYqzKZG1rkqkrCuvRzHgHpHDfSeM9eTg9ilNCIIfn//5lTky+PI75VQSVZCm0BIt9+Gsy9P7tux7qV1REUecQnOI=
X-Received: by 2002:a0c:8f0a:: with SMTP id z10mr2160287qvd.45.1567519718018; 
 Tue, 03 Sep 2019 07:08:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190825153237.28829-1-shawnguo@kernel.org>
 <20190825153237.28829-4-shawnguo@kernel.org>
In-Reply-To: <20190825153237.28829-4-shawnguo@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 16:08:22 +0200
Message-ID: <CAK8P3a3YjADKYLQPbN+mFgRQHOjD_yeHHtbGD9txuoBNQm73ow@mail.gmail.com>
Subject: Re: [GIT PULL 4/7] i.MX device tree update with new clocks
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_070838_962079_0D9C3B3E 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Stephen Boyd <sboyd@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Li Yang <leoyang.li@nxp.com>, SoC Team <soc@kernel.org>,
 arm-soc <arm@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 25, 2019 at 5:33 PM Shawn Guo <shawnguo@kernel.org> wrote:
>
> Hi,
>
> This is the device tree update with new clocks, so clock commit
> 6ad7cb7122ce ("clk: imx8: Add DSP related clocks") gets pulled in here
> as dependency, from i.MX clock branch I sent to Stephen.  Please
> consider to pull, thanks!


Pulled into arm/dt, and added a branch for the dependency. Thanks,

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
