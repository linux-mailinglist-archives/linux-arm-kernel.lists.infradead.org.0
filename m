Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D97D1767A6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 23:46:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OM5itDDLbU4J+66GK771jVeRQ4+dNh5kMHnMwd77GU8=; b=YHltYWONbIjB7d
	i5Ylr7q8y8GtxLTAaLrQgAny2esyz3oMAXFjoOhWzhwImHmorf1gYyYtP5wgpUjByVc/uXeq2DkCu
	XT7/TkVf4BWR8RDaiUInxCLWWr0Gzg9Ie7Nv7mmGsuK7SIL4Vbq2Zu6Cw+iZloe8Ib1G4Vb/genmZ
	k0qisA04BeILpL0i7/fz9kX8xp2BzksnzUmFuSFYPGrllQ7WcxQZW1nfIHFfPIt2Wwx8ON8UYScWr
	xbgL6qTQ5tm4TBraTBhdl8rujn2aaEOJPcjWfqB5M+zLupfPkmxf09nYmJhB8DdKJup1iAZtlCv99
	03dniB1UqanRkFfbr65A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8tpV-0002FV-Gh; Mon, 02 Mar 2020 22:46:29 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8tpP-0002F5-8W
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 22:46:24 +0000
Received: by mail-lf1-x144.google.com with SMTP id w22so969170lfk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 14:46:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yLlRHbktFbOxtzNl8Vihg7v3kIKc6TMAjjHUPUH1szE=;
 b=M8mL4WkqqPiqVdS4845vC4Zpdwppdn9R8gd4H0FXSSRr52BVwtl8Mra38019iqK2cs
 +91u+CUb1uRSjJxp0d04WJBwO2/piAaXNeX32RQCf8mVP/G92k5qj4hqrERMd142LMie
 NL3JUr2NPXvOjObXSaW1GG53HlzikBruZB8pW0SjA4tGQAOBD1YB/UoKgDPa5Pg9N3qX
 gSB1bFR8KIaWCwB7u1XkmHLdMXNc1hZn07FDAUHZxjv1sY7owLJu92TVWG60Q5KqpwCw
 0ApzdsuhSTmRrgb42SLu9FQjQQPBFc6QO05ePhcNg53P5Og6bFJBEU7UebSu0VspWVCl
 PLWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yLlRHbktFbOxtzNl8Vihg7v3kIKc6TMAjjHUPUH1szE=;
 b=t5oes7O1i99jTooiUYzHeoUPyMlR0ibK1kuLTma4hC/9nXONrZD+OMjfDRUZP5W0gA
 uesXiJ4sBe8tA/Bq4ZoMUkviXdc5cIzKarkZJ+O3DGtuoZQ3UsUTu5FxbHHiLvvUwJPJ
 JtrCyW6yWl7arYcmZXa+571zcgRCc0j3jIAVk3fHB4m8wu/MSJlGgwjiOiRQyjb1MPV/
 HU2CffvOdQjJLTiaEP1n2Vi2DY3FEYK32N0Q8q3m00QD4+YV3ZUrl8QgtMsbaYeu1/ak
 4F1F69tydkR6/Aa2/YAPJJG8daoE+qxlBqQh4FLOcw8degWMm+cC08A7Fpz/evYIYDOZ
 dpTA==
X-Gm-Message-State: ANhLgQ2GKeO1yjmrFU4ARKJHQCQ6Ht0HQaQJdcU+hbRraFG85ju2GB1f
 590bT/q0JTOvFwN81uMtzS9021a3wW++pUX+/U4=
X-Google-Smtp-Source: ADFU+vukK/ZdZyY9pLzllMfUz93sWGqAKVB4wD5ScH7PQHTGtStfvT6fbGnEJPtU+8VaCDyESKT0/8pJMiZdPi/+V6Q=
X-Received: by 2002:a19:ed08:: with SMTP id y8mr803334lfy.56.1583189179625;
 Mon, 02 Mar 2020 14:46:19 -0800 (PST)
MIME-Version: 1.0
References: <20200302213557.11128-1-vitor@massaru.org>
In-Reply-To: <20200302213557.11128-1-vitor@massaru.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 2 Mar 2020 19:46:08 -0300
Message-ID: <CAOMZO5BqvmRpTbq-gGgnKC2gFTRxS0mK0=W3tBSfZKQ-MUXMzA@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: dts: imx8mq-phanbell: Add gpio-fan/thermal
 support
To: Vitor Massaru Iha <vitor@massaru.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_144623_302008_442541FE 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, lkcamp@lists.libreplanetbr.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Marco Franchi <marco.franchi@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vitor,

On Mon, Mar 2, 2020 at 6:36 PM Vitor Massaru Iha <vitor@massaru.org> wrote:

> +&cpu_thermal {

You missed to place cpu_thermal prior to i2c1 to keep the nodes sorted.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
