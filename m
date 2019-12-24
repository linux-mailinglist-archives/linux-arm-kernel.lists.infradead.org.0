Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A07129C76
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 02:51:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wBdkHpKK/xcEHeYgY4T4idPzpo/76EsKl5pay5Gq/+k=; b=kqnu9Xt+CDt489
	DqMTWve8QK5c4T0xUWU6yBG+XmLsSWjmWUxZ0zVzy/y6f37IlIsizR7BeIQmMVn6iyP2tgEI+TtAY
	/nwc0gyMQG4ZGvA7SEqpPxeR2KB8P7Vi0XrGdbKtQFeBaHgY/e+O2/oByv8PcSa26ALzGhCnnUehS
	7thyFQlHpjPBQblUP5VcB4NT3IU/LscFNOTbkdKtnjTFV7ejH5TIki/qddWSmN+/PodTM5qpiT5E6
	0rdK+M0nfvfSmgl6LUFNZwhXbqzZfs8TQ7TMTtqvNazBGSG40z0T8xPzAXrKEy9VzOoHmy+Uay0bS
	KQbiwTH4/Vv7dqxJwKTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijZM4-0006aM-KP; Tue, 24 Dec 2019 01:51:24 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijZLt-0006Za-Vv
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 01:51:15 +0000
Received: by mail-lf1-x141.google.com with SMTP id 9so13982856lfq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Dec 2019 17:51:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+zzZW9C2gvFiTdhaS90LTZiz7GaVSNQiHEc9bjcauWA=;
 b=pix1lhPd6xmGCLfnzJR0LLpnNF77nOSmKK7Ho9Wy5BLeM2lnzWhA/i7XocKz1lMOyi
 bqCmCdc0Hh9sYTFBMGWc2a8Ti3WqACB8W8RV+kQbZxBgaX3xcMSHN1Ncn1M1df7t+54l
 u0HVu0N2eA7JnVf99+2aD6WAA15VIAML4sC+dGqmeGiCL5zi1IbM21h7PjtNIdgExkLC
 lAjvdtV5IbcQHox6ETPoNcRMRH0qFYFj35b/9uswSgIiFqaJtNn/8RBxA3qJIzOVvFAP
 qu2JfmwHPUuLtBcF7bytScnDy1G5YTtRE/PTaNqNGuWurHb2znuFknc7xFCcrzg5sVGb
 vUuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+zzZW9C2gvFiTdhaS90LTZiz7GaVSNQiHEc9bjcauWA=;
 b=pT79CshXRNzpATGLlLLenKEDDnbcx1ZVz+a07RqSG4WzME0QjfMg9wXhxNOU2D7+aA
 SpJ+Z0ujVOfM+5+6TOMj4U5xSO4W6DdMdZqjGebt0DgY//9BBxOOj069QLgFgZt6qYDA
 /5oPi68BPlFXGr9egxwZrOMvtB6z1qagRwXLqmgBdn0IdE0iZMwfgqb2m2SVvdTYckKZ
 hbEiIExfLTINQ5TeSFjdq2OITCOD6b4KFdrATq0kAiBJ+7Y4Pq93h0IEBi3BsezTEjOc
 wdGMvIm7QOnwfjOrt2CC5n+kQJTy5IcnMNxVxgJTqv/XWKmOwj8ruEakRSmp3J2xfpxi
 bg+g==
X-Gm-Message-State: APjAAAUf1rNxL0TVvsuCcl05ZcdmBlJHPCB1weDstdMzNXIPYmPmq5zZ
 kv37kZNAmqRhqwsSJlSwmQ2390bRSTxgYsthQoY=
X-Google-Smtp-Source: APXvYqxmJhbEhjtuyN8MSRNzv+M402lsv/DixBtC62/FDtYoJGTAVkjPwYHdcNzAsb8Gx0pPuX8e5saKlrb95arptAo=
X-Received: by 2002:ac2:4194:: with SMTP id z20mr18731670lfh.20.1577152270133; 
 Mon, 23 Dec 2019 17:51:10 -0800 (PST)
MIME-Version: 1.0
References: <20191223214412.12259-1-rjones@gateworks.com>
 <20191223214412.12259-2-rjones@gateworks.com>
 <CAOMZO5CLfyZjuz3c+Xr9v0D5h+r83PGgi8BrMnQZOOZSM-iGGw@mail.gmail.com>
 <CALAE=UAok8dazxPj16TAV7rQ_6EZvLBp3t5J2CjweMyECkZAHA@mail.gmail.com>
In-Reply-To: <CALAE=UAok8dazxPj16TAV7rQ_6EZvLBp3t5J2CjweMyECkZAHA@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 23 Dec 2019 22:50:57 -0300
Message-ID: <CAOMZO5AG+bPd+3h6VanBfJcGxVhVC=RkvpD1FzZ4tfgLYkiz0g@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] ARM: dts: imx: Add GW5907 board support
To: Bobby Jones <rjones@gateworks.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_175114_052913_EF4F5A3D 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Tim Harvey <tharvey@gateworks.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 23, 2019 at 7:55 PM Bobby Jones <rjones@gateworks.com> wrote:

> Original author for all but the GW5910 patch was myself. It's probably
> not clear here but Tim reviewed the patches prior to submission and
> had me add him as a Signed-off-by.

You can add Tim's Reviewed-by tag below your Signed-off-by tag in this case.

> So I was planning on just adding an enum line for "gw,ventana" under
> the i.MX6DL and i.MX6Q based Boards sections. Would that be
> sufficient?
>
> We have a lot of individual custom boards and it doesn't seem correct
> to add individual strings for every one in both sections.

You should add all Ventana dtbs into fsl.yaml.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
