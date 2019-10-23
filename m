Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 391E3E19F3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:23:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZyuLLzsQgPNporMywMTcD3P4qMHqf6/EHPg6ai62tYE=; b=Y9FjOFN/Uu+UTx
	Amjv3FQrgGCO6N4qTXbitESjenU40uyaND0PsghbZ0jL4taF43PAXSvF3pnHdmIghWs+XgAmon/nb
	DuXqil9qt4r0ObSRmtgRDGuU0kIUCW3c2P8hOXroWHkiG53cfaDDG8bNN7PmHGKPytPM1UT/TRKyq
	RoePw1sn4bzrNf08tpJZkiD+lwmPVNHFxFBqPc62hjFbGJapGmqcJbBpaPIfoZSHrlmEiIsqDwXtb
	sMpuEqUEZOfxxVPB1enpqQh84eva2Bjr01dzD5A2Tvpy/j/2N7t8eFNXrE3KCpqjsx57R3kT0gbmE
	1/2ispjdVcvFMw7/mZFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFfm-0008Sd-TY; Wed, 23 Oct 2019 12:23:30 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFfY-0008SD-Bf
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:23:17 +0000
Received: from mail-qk1-f180.google.com ([209.85.222.180]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1Mmhs6-1hh4Q01ovO-00jsP0 for <linux-arm-kernel@lists.infradead.org>; Wed,
 23 Oct 2019 14:23:14 +0200
Received: by mail-qk1-f180.google.com with SMTP id u22so19493982qkk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 05:23:14 -0700 (PDT)
X-Gm-Message-State: APjAAAV01pjRtRemB/AQ28FK7k1ruLCjGx8qSBoREGuB5czRymP+Bu7M
 pGz7yMdG5Pj85k5tZRP4/2n14883S1QQYkzJMIo=
X-Google-Smtp-Source: APXvYqypyXNWat+KcfPfsodq+JQ+4QWo1ZTdvBPQPaxSxAVPk72AOIOGVimgq/tpICY5myV86eSBfmCrhOKUhQ+FPQU=
X-Received: by 2002:a37:a50f:: with SMTP id o15mr6769403qke.3.1571833393352;
 Wed, 23 Oct 2019 05:23:13 -0700 (PDT)
MIME-Version: 1.0
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-6-arnd@arndb.de> <20191023101257.GC10630@pi3>
In-Reply-To: <20191023101257.GC10630@pi3>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 23 Oct 2019 14:22:57 +0200
X-Gmail-Original-Message-ID: <CAK8P3a07S4bqeo_u0=Mk4eW=737jjh69q6bbMotugkiUQxt+ZA@mail.gmail.com>
Message-ID: <CAK8P3a07S4bqeo_u0=Mk4eW=737jjh69q6bbMotugkiUQxt+ZA@mail.gmail.com>
Subject: Re: [PATCH 06/36] ARM: samsung: move CONFIG_DEBUG_S3C_UART to
 Kconfig.debug
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Provags-ID: V03:K1:kYb9CavmwksovUywdHG8lkdzaOKcAvB7SZ8/Qp1v/FfIZIQrHAn
 e9DrmEUTc2y/bodg8ax0NpHVkde1yxQZXIuZEKR/ZeSXOjaxxvqZVO7h8/+P9V3l7x0W6/i
 82w/K22kpyMNn4uhq3nrROaIZNSCUePckrLYsxxJhcWTftG1KdI97J84pd4odXXvOubANI2
 ZzrU9BvqXU9m7w+VrxdBA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MIE5JQKPExg=:eY+dnGL77Pv7nr4ukn62zT
 cVbZymJJ++irFzUV6OugoL15NEXPvM3wutOIwTQLiCZ45zW2/kMbdndR5rcCudU9VEkqKe8bq
 kBfoYc9SFtUnH44SmGu5JVuyE5hI2HN+UB7EpkypZAoH3+xraCOZwg0+QEjQv9mIb4ruUYGQt
 Haab0vAlgmvFPwbuO0g0zLF+jmQqCu3DTH7rMNSa7kIaZfWG2e86SH6kCo8g8RuF0P7FEFqeq
 BRRKdJqZuGmjhq8KsO9l/fboOFsqhyOy8ItDwrUp8eJDu6vVIIpxTANxS+JUfJ9t3hdTFLgbc
 AfoHTEO6L+96BiRfa4dNLRw4wmA87woKnZF2UZLDW9hTxwg2SEs+orrkTopw16rUbdcJBExC0
 fwodKyzVtoYbyeTbNLo41951A4RZBufDOqtcKhqMIYcigXuGzS2O57mrgxUJDIF/8NqK7ecJQ
 ejteWCWS1Q/ftJqZvoYee93jcg7fvBtfZCkUAeWgXU9vDM13In4YcWV0K2t7joLa1tfKfoVLa
 hCdArYqJGocXgnXGbytQU4SWei1VG58qScI2enQlYsSIFyOfnJOb0fqsOJee248arNcznk9Pz
 YgRci4BuDpRvZ2VT32859d8+px7sA04AgSECPO24+CdHN0mYPrHrSGGp2xTsC51nkUHWQaQoS
 f5sgnsDx9JvuXAej4HHDoZBbAY/iSuohThcjvh2FXMdrMwN3in67H9N35C7oWIGW3By0EOpF8
 cNpHucNW7WF2TcQLrluNxnIQUGrxQn8i5Etvq7q/DGR1u9jCF6FkgK1CnrD7Negx92rz9wpJi
 lzXzAdOADbqqCSLD+Z9BRbHAxXcq5mhwl1a+PutKSJRg1n6+06Q/GMn4i00j1jCLREPTuDks1
 eTCP+AgNcXqntwfoxTjQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_052316_691120_0A6E049B 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Olof Johansson <olof@lixom.net>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 12:13 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Thu, Oct 10, 2019 at 10:29:50PM +0200, Arnd Bergmann wrote:
> > Before we can plat-samsung from the individual platforms,
>
> "Before we can split"? Or moved? What did you want to say here?

Rephrased now to:

| Before we can separate plat-samsung from the individual platforms,
| this one has to get moved to a place where it remains accessible.

Thanks,

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
