Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6556AFD3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 21:29:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VdWhNO6GzVjMFx3rPdztFRRBs8fJBK6r6BABJlHky6M=; b=NF3Z5p5cJgEdhh
	zZw9CLUY7Oboph1GdqRk9I/p7zxYwl8FHGhkSHyXDRnnest/8/pCk0LDW5+bKUXxpftLwpw8ffAoD
	Z0eJtd1BS4yam4+NebrlYpTNewbByYem4B8tc8+5t6/WsI9GGAxgLtrwPsMPkx2kjtJai64EcT6oa
	rBxefzxbyLcuXnvYZzMhqSKQoRZWBJdZTpmB/CywnWZkr/AZUepK/nNhm0daIhvFgVjBoexc5qmzG
	2NG7At+Uq7OPpMDxQ3KR35c4SEOPgAz5068CrkgqeyASOc9Qv4ONhyyhSYO93ggMxKaQHOs6UNoYH
	cIPpXkl6vJ+afO36OnMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnT8V-0000Zy-Bd; Tue, 16 Jul 2019 19:29:15 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnT8I-0000Z8-R2
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 19:29:03 +0000
Received: by mail-lj1-x241.google.com with SMTP id p17so21146832ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 12:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=g9jt108YxG0zZahiM7PXauKurvnXDCzSyOhgO9l7fF0=;
 b=R51Rgi2elzzYBllobXz6g7eNSHzAGoTlc8lKR1xKvDb1ZWESanLAo70TvIYdI9Yrzy
 ncv/h41uLjvsaOrJTJrqZzz3cBYheMh1jwt/JHk/XsX1QwkmHClPHLyKZoUTGn1L48yR
 5uhyjMXnDcBK2KFDVTXC3SNDoDxxzcL9Z8c/WDyQAX47tOMR/Igv5Xojbirm7sTGDP8v
 aKkSDhlEb19krHEEQS6Y/bs+OOUARHM8M9s42vLeEyQI/32b9OD5DOvZQDtICgo8hawi
 ntGq5hNHSXtRMNBj08lbobgX8WFfRdsNGl25siInmEurTNVCT17wqjLNA5fr7Gc4Qdpt
 N3jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g9jt108YxG0zZahiM7PXauKurvnXDCzSyOhgO9l7fF0=;
 b=HmBA8OCEfqxFU5np/MonQv22gNN79JRkE48IgyIm9XRmGDJc+osh64BuGls+dOAjTQ
 b42W+Geegf6qx94aA5dk9KzSwPSzEhTUz4fHNcsG6URYgFE0IUTbNHsFdhc3U8moiV3F
 dy9Kumrx+LE9pN5stz6nKNdgxyOTaRY1Nx3GmSPajda9V63kg2ljmTpJqmkfw993Sy6L
 iua3xKQWuj1zgZbCt4RIotR98heWG5IVWSD/1GW3mSK6RGFgUodi8D5uP0WiYM/+Whn2
 2p7BcYmWFunefa+CP/VgOLxyiK5LjWyUKTQhQr2dUIm7oErkeOaBn4INoxgcURvvKgBN
 4DNw==
X-Gm-Message-State: APjAAAWHoIOxMUaHAWf8dgAjEOyRxXw0bYV7VaVlI9OGLr+H0mN0P1Ua
 /EQ8cdrCTMxrj9v7V1ZaxqRlWPNChmt9AdT7VDs=
X-Google-Smtp-Source: APXvYqyxyQNBybkPd7T9t9OtLi1GMP8hRpnWKrTq5Q4MNJZXqbp5iQUMHO2uXraOYMEmEsF82KYvNEQbAv/54LAWsxc=
X-Received: by 2002:a2e:5d1:: with SMTP id 200mr18683137ljf.10.1563305341050; 
 Tue, 16 Jul 2019 12:29:01 -0700 (PDT)
MIME-Version: 1.0
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
 <1563290089-11085-8-git-send-email-aisheng.dong@nxp.com>
In-Reply-To: <1563290089-11085-8-git-send-email-aisheng.dong@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 16 Jul 2019 16:28:58 -0300
Message-ID: <CAOMZO5BMxZVuwz0jJ410H9Ey4iWD67mCdQhhrtnQ182DbcgtBg@mail.gmail.com>
Subject: Re: [PATCH v2 07/15] arm64: dts: imx8: switch to two cell scu clock
 binding
To: Dong Aisheng <aisheng.dong@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_122902_872863_9346BB9E 
X-CRM114-Status: UNSURE (   6.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Dong Aisheng <dongas86@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 12:37 PM Dong Aisheng <aisheng.dong@nxp.com> wrote:
>
> switch to two cell scu clock binding

Please explain why you are doing this.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
