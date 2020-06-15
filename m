Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36EAD1F9451
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 12:07:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VnX8uxN3NVDTaITD3wTYTY2rPvy5Zl+vQIwQFU14puU=; b=i4X0SKI8dBT3HD
	UYpzfZVb83RJB2bVrP4EL0ljEtE7bfpfo23L23a07s+zpqgBhUr0HPuOFWzXCytXNLU63OmO2B6+B
	/XZpwWrzldvHT5UyYquYvpvn/J0tg58+TQqzJTVmmbUi9GzlC1o4TaCh9J/eACxVcIEm/coMtt3EB
	rTAo4PBpU3fRYOE876TDES6wxSyFGsm+gvPzg07yyqBtS0wxk6C+OnzhME1zqjoW6Li6MIkk4VGjc
	YDg3DX8mTKKDaINi4sIuVyGcAM2dkMweEIch5bc97AjOfMTizwk8s20+eSuS/nyP/WRnSmwY1wbRV
	fqTWL9wJKpRLQAW4t7XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkm1i-0006q9-2v; Mon, 15 Jun 2020 10:07:38 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkm1X-0006pR-6y
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 10:07:28 +0000
Received: by mail-il1-x144.google.com with SMTP id z2so14707944ilq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 03:07:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hg8K4xTSSuNaBtkl8lh9GNzZaKJC219hVqXlhKOASyc=;
 b=tgUlV/Hv+7gZqovKdUdduJ5DosmZ6W3ZgvLcam1sO+NfBlQkeL/R6Ll1hPEE2lvKe1
 Q9Q8r9+UwTYuIzIICqSKXIRi1m83v3jpiLa9EK6FSl2CzvfLDwdp/D/QlP1lrzqnUk5M
 K1M4ONzrcHZlTTZLMf4fM0XKl5fPHTxUOnuCB80lW/7POoQNRMcbiea5BnbvaGlGg+i9
 U9qeD0ozbnZcyiYa8rnMcJe6oNU0+1g0YzAWmgMjm3AQANEKH7o2We9t5YAKaSDrTMgT
 LKHBnER4Pqe4WQyyrf5LmbFUyrfoeNO6VQ422e0u9I6Uwl4PX1SjzVwCj0dIrZoL57q1
 ApHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hg8K4xTSSuNaBtkl8lh9GNzZaKJC219hVqXlhKOASyc=;
 b=txwWTyEzVXXd0ptRHTVG6ye/lrhBIJ7L++U+gFAfZSjxxzfoP0z0ni6v8qxM4yFfF+
 SgaRDLRZnrN4JIYuFSXiA5lZvcf/+FVbPXrGAlZKsUBd6Q3UMkm97dRqUNM86/HDOj2c
 wBZgGAOqSTbdrmQW2No2/m9PcrmJAXYJUPnZsRvHZ8WOGwfUMwg5RsSJe88C5QT/9YH/
 iB26gBEIvoNJ9oPc04eR+QTZJmH7HQamheEhLBnCN5dJMYuYPkRvz+2pLcdb3WmwzrFj
 efoxtAdtmsLKgypyLAyUPRTgR+VDYo+S3o0rAOn/TpBHHCeL+FKQzsxpl9Dx2OF7rcu2
 UMFg==
X-Gm-Message-State: AOAM5326JcS4zIf0y1InuCPwyyiajeyccvnk2AOP/uBM4lnVyhCeXvVD
 Rw5rTqyB3oWzP4pF7dP07FS56AvngsSl5pwPyKI=
X-Google-Smtp-Source: ABdhPJwTRoOir1kIpAowgJbUvDY6mcvoOvZBCRgHGJW796+SC2pR32+7lvI/4r+L3ywnisFym7QRUoEMdKMTueb6e/w=
X-Received: by 2002:a92:b69b:: with SMTP id m27mr25709568ill.271.1592215646234; 
 Mon, 15 Jun 2020 03:07:26 -0700 (PDT)
MIME-Version: 1.0
References: <1591709203-12106-1-git-send-email-dillon.minfei@gmail.com>
 <618d3fea-aa9f-dbf6-04a1-e9db621a6cd5@st.com>
In-Reply-To: <618d3fea-aa9f-dbf6-04a1-e9db621a6cd5@st.com>
From: dillon min <dillon.minfei@gmail.com>
Date: Mon, 15 Jun 2020 18:06:50 +0800
Message-ID: <CAL9mu0JsCOrnt=ROr-0_GByKeb6yeq5YwygzS+S9i=SMjgL6kQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/4] Enable stmpe811 touch screen on stm32f429-disco
 board
To: Alexandre Torgue <alexandre.torgue@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_030727_247309_0D29C73F 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 pierre-yves.mordret@st.com, Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, linux-i2c@vger.kernel.org,
 p.zabel@pengutronix.de, linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 5:08 PM Alexandre Torgue
<alexandre.torgue@st.com> wrote:
>
> Hi Dillon
>
> On 6/9/20 3:26 PM, dillon.minfei@gmail.com wrote:
> > From: dillon min <dillon.minfei@gmail.com>
> >
> > This patchset is intend to enable stmpe811 touch screen on stm32f429-disco
> > board with three dts and one i2c driver changes.
> >
> > has been validated by ts_print tool
> >
> > Changes log:
> > V4: indroduce 'IIC_LAST_BYTE_POS' to compatible with xipkernel boot
> >
> > V3: just add change log in [PATCH V3 3/4] below ---
> >
> > V2: remove id, blocks, irq-trigger from stmpe811 dts
> >
> > V1:
> > ARM: dts: stm32: add I2C3 support on STM32F429 SoC
> > ARM: dts: stm32: Add pin map for I2C3 controller on stm32f4
> > ARM: dts: stm32: enable stmpe811 on stm32429-disco board
> > i2c: stm32f4: Fix stmpe811 get xyz data timeout issue
> >
> > dillon min (4):
> >    ARM: dts: stm32: add I2C3 support on STM32F429 SoC
> >    ARM: dts: stm32: Add pin map for I2C3 controller on stm32f4
> >    ARM: dts: stm32: enable stmpe811 on stm32429-disco board
> >    i2c: stm32f4: Fix stmpe811 get xyz data timeout issue
> >
> >   arch/arm/boot/dts/stm32f4-pinctrl.dtsi | 12 +++++++++
> >   arch/arm/boot/dts/stm32f429-disco.dts  | 47 ++++++++++++++++++++++++++++++++++
> >   arch/arm/boot/dts/stm32f429.dtsi       | 12 +++++++++
> >   drivers/i2c/busses/i2c-stm32f4.c       | 12 ++++++---
> >   4 files changed, 80 insertions(+), 3 deletions(-)
> >
>
> DT patches applied on stm32-next. I changed node ordering in patch 3.
Okay, thanks.

Regards,
Dillon,
>
> Thanks
> Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
