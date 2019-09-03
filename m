Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBFDDA6C9C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 17:12:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQNBQPk1CZzhx6eCQDsFsKPX8qkluony+CUWOSWT8bI=; b=FCUsNdXulnjslA
	/mmhBwEVD5+Pww856T5uDhCCIZtjP6tEnMxlTT41BgPrnlA8f31uo93O3D/HMa/iwO2b+SC04VML/
	hbIjdmYtGc2PKUVPA51Ov4XkW+Ti70FdktCktUty+vzssPgxm7oyfb7oQqQXRAyR9kcF0076vOfpS
	r104PsvcaX5hJw5F1fIR6rGOZNNyLKg2LPVRaBus01sALqPzuczrvYQY9SRiVWK3YuiaLIm1zOh6k
	KRIiw/muRn6P3kgdtEWz2s8S7KPBYDoim1rLwfR2ZO+uXOOAk93o7wFEnpedrYXja9H1yz6RLoarc
	02kc52Eg5qlipWxRENkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ATW-00006Q-CD; Tue, 03 Sep 2019 15:12:06 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ATL-00005i-9B
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 15:11:56 +0000
Received: by mail-qk1-f193.google.com with SMTP id m2so16249158qkd.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 08:11:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yUXmMvFq9JuQVhXGvV83++3ohpfsoqW3754CPq83tsE=;
 b=sg2DcgzttPY/bFLfrx1HPD3IJWkAI0k7qC8rfYJiclQ5PP1dDycFmGiqMuIpbWyxys
 K9NqLVcx8lXFv12nSWM/gw+LGbBVMmDqRdl9l3vjmunSFiheTCr1bGHkHM0X+khS9nIz
 MlI8ERkhdUROCnZG/mlV8UOulaDBVXly5A0vHLg5w9QoJlw6kcufmZKR33f0/GeGCoO3
 p7q4LR8+wOGCSz5QDOk4KZj7WGLK5R6AyV/sYq99AhzDrwtL0ZGrc6rhUxEB1QwqpH62
 /IAE9J41US1JMysbc3O5RXdkvmm36g8renxY7/d/yxdvqp3B0EMQaJUWAlcjGFuGGQhU
 KkGA==
X-Gm-Message-State: APjAAAWCrQDgSryvhueM0PCZ3fsF21RzjPpAZwXoyMZf7UZiELXE443B
 d03lBNK54k9EyLz7ePmFwJnp6ItYnWRvH9mArkw=
X-Google-Smtp-Source: APXvYqzicp/0FiAXHLCjwi8RBlT3ukqfa6Bl3lqhj5ky3RjZd7xt5s9lM9dmNhVLoL/wSMmm5lyMuumjPDBdNsg+T3U=
X-Received: by 2002:a37:4051:: with SMTP id n78mr32987156qka.138.1567523514062; 
 Tue, 03 Sep 2019 08:11:54 -0700 (PDT)
MIME-Version: 1.0
References: <5D562573.5030604@hisilicon.com>
In-Reply-To: <5D562573.5030604@hisilicon.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 17:11:35 +0200
Message-ID: <CAK8P3a2-b7dXrotJRoryu6__hO0T0hiSNmz4GhzqhVrGF_JPJA@mail.gmail.com>
Subject: Re: [GIT PULL] arm64: defconfig: hisilicon config updates for v5.4
To: Wei Xu <xuwei5@hisilicon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_081155_324914_D20AF77B 
X-CRM114-Status: UNSURE (   7.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
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
Cc: Salil Mehta <salil.mehta@huawei.com>, jinying@hisilicon.com,
 Tangkunshan <tangkunshan@huawei.com>, John Garry <john.garry@huawei.com>,
 SoC Team <soc@kernel.org>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Linuxarm <linuxarm@huawei.com>, "Wangzhou \(B\)" <wangzhou1@hisilicon.com>,
 "arm@kernel.org" <arm@kernel.org>, huangdaode <huangdaode@hisilicon.com>,
 "xuwei \(O\)" <xuwei5@huawei.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 Olof Johansson <olof@lixom.net>,
 "Liguozhu \(Kenneth\)" <liguozhu@hisilicon.com>,
 Zhangyi ac <zhangyi.ac@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Shiju Jose <shiju.jose@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 5:39 AM Wei Xu <xuwei5@hisilicon.com> wrote:
> ----------------------------------------------------------------
> ARM64: hisilicon: defconfig updates for v5.4
>
> - Enable ACPI_APEI_PCIEAER for the hisilicon D06 board to
>    support PCIe AER error report

Pulled into arm/defconfig, thanks

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
