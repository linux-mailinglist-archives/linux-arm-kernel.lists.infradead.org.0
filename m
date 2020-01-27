Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8E814A247
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 11:53:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NyQMOCiyvyz/qkUehAwQvgktaRxgRGptX3AIqsReeno=; b=tLGfuXVQo/W7TF
	BE16t+niQffbuY3a6YGdQ1BlAHsw/A0VNn9ZskAS105uJV1vQ0MwliF3HjDkaLlboJLQgAlXgs2SV
	18Tfm8UeeuMAN4yq4DYBs9Bl0shsAZaJoFkXJaxj2w0ND1KJK77GD7GmcVYewgdwHwjk2xgIx1X+o
	75NWPqftp/Q9HApWrKejd9C7M2ZRdvkllaCv+Hzfl8WWzo/FJco865CCzTHA2chuxIYP6hPkbcMpL
	sYZU5E6DEVQ+KWL3kNSKQVTpQgjjQrJ/rSSEhunqLJMtDplDwqVOyEkm8JAfe25GCkJdfodgRfJUi
	l+sc6RAde7JKhzez2wDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw21L-0007wn-R8; Mon, 27 Jan 2020 10:53:32 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw21B-0007w2-1E
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 10:53:22 +0000
Received: from mail-qk1-f180.google.com ([209.85.222.180]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1M2wCi-1iskE62K3I-003Iw2 for <linux-arm-kernel@lists.infradead.org>; Mon,
 27 Jan 2020 11:53:18 +0100
Received: by mail-qk1-f180.google.com with SMTP id v195so9073004qkb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Jan 2020 02:53:17 -0800 (PST)
X-Gm-Message-State: APjAAAXRcWsCtkrITbd6Nh8lwr5SEY6M5sYnE2ocWmMte0oAxifBI9qk
 nKV+6fHa1XLNyIASCvoPfIJZ9NBY/Nx+2upgSr0=
X-Google-Smtp-Source: APXvYqw+sNYd7tg/7ZuXY3v+6ebsuCG0e8arDEWW9YJZhMhyGqIT3XzhzapxsRzTZz5mxB6btWsOiYkrSj0kdtMTaHs=
X-Received: by 2002:a05:620a:16a7:: with SMTP id s7mr373783qkj.3.1580122396308; 
 Mon, 27 Jan 2020 02:53:16 -0800 (PST)
MIME-Version: 1.0
References: <1580117979-4629-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1580117979-4629-1-git-send-email-peng.fan@nxp.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 27 Jan 2020 11:53:00 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2YLo4rNBXu9NhvKv6QOFUcZhCVXNR4XJe_0Kc_RJ=ubA@mail.gmail.com>
Message-ID: <CAK8P3a2YLo4rNBXu9NhvKv6QOFUcZhCVXNR4XJe_0Kc_RJ=ubA@mail.gmail.com>
Subject: Re: [PATCH V2 0/5] soc: imx: increase build coverage for imx8 soc
 driver
To: Peng Fan <peng.fan@nxp.com>
X-Provags-ID: V03:K1:oZJ4bsjEK0kXQ2LO5Amf5LAqoDpJg5TMkm/E0ATgqnCeb6x2rLR
 cDlVskLlxP1BoZHV4WQvtNg4DbQruUlX5XHr6i8OK0QeERiSgc1wQkviTQ0mdhDjVynoc00
 IxeggP7n/UjghyWfTybUKIYYHZTkJv2x1Jk9m6e40Az/Q6+mPTVQuGLMcZQZROYNTHhM9zb
 MHwio+VW57qRJn6B3+WYA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:n5VFo64zXAs=:UTfwnPr7j3AerNW//A+4Ef
 U1ZvgQ8sKeuA8FYHyQW+MPqNTE6E9DUJAeemAiRcEV0MJYGESIqwzMgiursyMlNaPJEy0rrUY
 KHydWM5jFh0zlK//atLQ6uW7egpQ0aQEdpPu/jUu7dJ+zGF9VGThEEVVyZjVZJFWJAt9GL5l4
 cMzv1hEDYFp0MHXOhHqP7chKhgslydlT9NpZUl1r8tZWQ4OfHnbrS3ce9ZyMNDXs9NrgHEXoy
 /3HIsizM39A62A2joScOdL88mpGlTYqPyFnWIFIS4CQcb3+qi+SVcz7dlokFxw4A5fCj9ZrEF
 k0Z6M6zCHV6J+JeZDyr7KmZAO7OvWqgqvj6sLHh1lEppSP4dKardwuWHX6a9pDqhmORoWREjm
 OEwBPgNyqVeen+IKLECRbigQ0b1hMhh8IN/mFCd8oe/Rdfct43ACBPjuPS7nU3q2/8/R294HB
 xMakbrGM/qqV2vlQIWrbDDAe1+P1iCJg50//PelVyzVgzKkw+oXrjEXlmgF5yGHiKcTYaKpHy
 NN9ZAK3IVrJajx9QEM8kO7iCsBAV/DbivDOg+6HLtUX5GeBgNzdhPd4qjsteQQg+5mv2Q23Jp
 eXV4dsXgBLlC5FoHAPahyPpSuv9fDHc803Adq0MNeiOdkxR7eyy4gCzuh3PEy4clEx6yNvHfO
 8IC6xTSA/vU9qwYd8xeiKtWJaKdXRPhgjusLbblc5BC7dw0pzZRgGIzauqxOm7jt5048sqwsW
 li+MjrCUnUIuHF/pFp5WWosnrq7uKF2UgTH8afsf7U2qoZUo2UT8A6iCmc0lDIESlSk6UjmHk
 +kVxFAL53TLjQJ7LC0eWhuVX3dddFKt+QI+XxKJcEWxtmbk7eE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_025321_369849_78C112DA 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "will@kernel.org" <will@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 10:44 AM Peng Fan <peng.fan@nxp.com> wrote:
>
> From: Peng Fan <peng.fan@nxp.com>
>
>
> V2:
>  Include Leonard's patch to fix build break after enable compile test
>  Add Leonard's R-b tag
>
> Rename soc-imx8.c to soc-imx8m.c which is for i.MX8M family
> Add SOC_IMX8M for build gate soc-imx8m.c
> Increase build coverage for i.MX SoC driver

The changes all look good to me, but I'd just do it all in one combined
patch, as the changes are all logically part of the same thing. You
can leave Leonard's fix as a [PATCH 1/2]  if you want, but the rest
should clearly be a single change.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
