Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E178D1ABEBD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 13:06:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HZGkyg9ABcieh5XGH4OSJyeuU84uoarQupSdBWaT5vs=; b=p50ZjsX4vAGXxb
	HT8YiD6+DXvOYyNRD1pUUhITzHv+i6ubPKysn1YbGtaCcjIcrJpJmmJttRmduD5n1FqXWsfP7dZ4O
	lntBRsTTQVBr3Cj094iD7eWanEF1P3Lu94NMDjM7Lj2fQFQKLRMxBuYy9FzO6Ip9SLkI1wLYYxqAl
	MySA3zoSzws4h34rHdvC+SBYKatHA7MzLnQpi1cJBLhGm36rpttbeSwT8BOFFWkZykP54ZRZzo+6Z
	+6UoHrnfWwzru1LLBXpEX8wBKVHNykV0YWuuLRX9ac6xmmYVB3WzSBUi/kS/Qi+zy42Hm0CggrIKV
	Qu6lZ5CypsAurv6Mq3BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP2Lq-0005vd-CV; Thu, 16 Apr 2020 11:06:34 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP2Lh-0005ur-UY
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 11:06:27 +0000
Received: from mail-qv1-f44.google.com ([209.85.219.44]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mna0x-1j077A0wmT-00jbey for <linux-arm-kernel@lists.infradead.org>; Thu,
 16 Apr 2020 13:06:21 +0200
Received: by mail-qv1-f44.google.com with SMTP id y19so1568777qvv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 04:06:20 -0700 (PDT)
X-Gm-Message-State: AGi0PuZcbd5cTsMvYjE4tmfl1d/WtKXVlnqwZm+p4oiKlD7tr9edtR0W
 Fhe6TezfA9N0jJ/0RM+OSqGq+VOfa79gwJ4oreY=
X-Google-Smtp-Source: APiQypJzY6wdNpssRHLhvMyuGwgKaiwvITbQDAj2pM7kuaKPd0vFoDCisOpCP9I71XZKDqhKEbCeSABwbe+DZEKENjM=
X-Received: by 2002:a0c:a602:: with SMTP id s2mr9731166qva.222.1587035179954; 
 Thu, 16 Apr 2020 04:06:19 -0700 (PDT)
MIME-Version: 1.0
References: <1583226206-19758-1-git-send-email-abel.vesa@nxp.com>
In-Reply-To: <1583226206-19758-1-git-send-email-abel.vesa@nxp.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 16 Apr 2020 13:06:03 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3FLRotVmMnBAyBKFMbXeEx760S-Cvqr19VPMi81PKJgw@mail.gmail.com>
Message-ID: <CAK8P3a3FLRotVmMnBAyBKFMbXeEx760S-Cvqr19VPMi81PKJgw@mail.gmail.com>
Subject: Re: [RFC 00/11] Add generic MFD i.MX mix and audiomix support
To: Abel Vesa <abel.vesa@nxp.com>
X-Provags-ID: V03:K1:05/58txX8VVZO6kcJQWwbtPRSf9xD4ID06A9hBaotkAqck19Z0h
 g/qBbPVAR++oi6IK8ugafu0WXjSiPEo1My88qUeFN+F/Po5ovM8cXLrhfxkEQeOpLTDtm0k
 Do1tfsHEE6uLdRABv1nqIR5YHKZdopXDNIz8OaQ3RcYpo/GjACVpUspkFX+aW4+eqwItoEH
 Mg2GW17ScThw1C/qV9pJw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:EIDW6bZ9wsQ=:HEV7rIzA0DsmGVuFz7Js5V
 Lrh43FBFj/Apd18+tiBNVo9Ns18YKgpNEmlZKAjlLF1TMB/mlEwU6+pYBpImPWsYlfaIfzQj5
 0rPEY/OAKvf/tbGylGmhIy3bHYUxo0TlPSrAXbfXFQeFLZ4UbsxxM4o3Pu/t5UofGnKh+f9IN
 LCs8iinnt7eKpk++KfO74JLfLSvUOyOoPtGnDr8KxLOXR85HVY/IYrDbf8DxZb5xvYcAmVsz9
 8h+RloGilUL9KRE0TB6oN7YNBg4VPwlOFC+vwS4hvP3d3Rv4jCpRdSj3sdRx16yuxpO65cBUL
 ht5rRelB23+82xYHYE06YjgACXUREL/ahZt2A8ytArEy1w2P8Ey/bJRi2QttXToEACemEPAr3
 dz9Mh11NdefGMqT4WCFw/s74kEbPYsPnbmHMs20ARBTJt2fLJKNWyvjFjT3zQD0ALDwBAEKCw
 K59XiARfxb5IczMa+9fVtaJS0VTLzWXL8eRyfsUHlNqOlfz7JLEjnDJ/hqI71iLc3eZ0Ttoo7
 KFqBaZLhSrBh9ZSPfWDy+B/zfxfhy+LrTObeOoJr5L5B1Z4YmbHewOfLy1dGjgzhl91qsiyiR
 H2FosmM0aLb6ODMMVv2GzqzJIzJqf1AOXBio3ohxV+x3OKVT/Gbc678lktar/aCfaCinaY1Iz
 ncLZ1bBHIE3HZWmxDHZRUlFM3ZRcTXdKsiQ/6IIoIHHJnIl7kwoY0iSgBAWx36YZ/NQUQTnko
 OPqtu+3IBdw6oh/ozDMCwnuO5/1AwoCK7C0gxlSB6mxqHI30jKZWnnrgxJqi5duqU84NBqOAn
 fxiL6fRkDq1LmFhBkojVkPktvQCdEs7079k5MKFW5PdFca46RU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_040626_273158_D28BAC17 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
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
Cc: Rob Herring <robh@kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 DTML <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Mike Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 3, 2020 at 10:04 AM Abel Vesa <abel.vesa@nxp.com> wrote:
>
> The i.MX8MP has some new IPs called mixes. They are formed usually by some
> GPRs that can be split into different functionalities. The first example
> here is the audiomix which has dedicated registers that can be registered
> as a clock controller and some other registers that can be registered as
> a reset controller, plus some dedicated ones that will be registered as
> syscon and used by each dedicated audio IP.
>
> More mixes to be following the same structure are to come, like hdmimix,
> dispmix and mediamix. They will all be populated and registered by the MFD
> imx-mix generic driver.

Can you enumerate what functionality is in each one?

I'm not convinced that using an MFD driver is the best solution here,
compared to e.g. a clk driver with a few extra bits in it, if most of the
code for the child drivers ends up being for the clk subsystem.

Lee suggested maybe having a generic (platform independent) driver
for it, which may help here, as it would let others share the trivial
mfd portion.

Another option that we are using on several platforms today is to
have a single syscon node and have other drivers that reference
that one using a phandle to get at the regmap.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
