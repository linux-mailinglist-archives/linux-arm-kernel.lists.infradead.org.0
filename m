Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A56956E1BE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 09:32:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HprrxsB2FmACBjugVqm2IJ8mloXTS3CJwhQDSq6lM98=; b=kw4itE5lZRNAVy
	NPtu3BQeVTUgme3rZadaJiM2TEuphs5AUw/VezFarn3JRXpN8SAN5eyIJArbIOJYFoRFkIAwQak6R
	YvgDAsAy5TOxxg4hz+/NgcGNJPJO2V+bdPOfBQ5i2IYL0ebH+jWW+d/8DSLK/xIun0u6HVQEZ+pQE
	dwA9pxzmAmh9igExIlxRZxSvkF7wG0L2YnVgXWSMcH9PuoV+jA8PTeT11jqHyjCWn1Nw56crJOqMA
	AVcH10Pyhghhtsgc1ypR5QtvYmZKSjnCa62pLeI+Wq3jq/8Kg/ODWmswFblGOJA1MgYgt2r3DazjH
	eiFknyOOA5ik6mVatB5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoNNo-0003mb-Gf; Fri, 19 Jul 2019 07:32:48 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoNNR-0003lr-Uk
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 07:32:27 +0000
Received: by mail-wr1-x442.google.com with SMTP id p17so31162600wrf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 00:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hf3Z5Db1yz+0z1tr8VMjazLVeMcit8uK7umZ1IwIpvE=;
 b=SLE0oo5QSzQIP95QmV8vZvQn1KRcaWlbCpvXzONJ4/CeRcVKNOqqgxoFJZUmr88bN4
 SUQ+CSvxA++ejAB6PFDy7iY1pqyC7eUPd7rYGqB8DmhJncjBJnJCrquGzuMiNtvBU/7Q
 ky/pBrRv4pPD/LSVipCIlhHwXKkbclKmn0BCNhbugBfyEzObDonHdIPgry1LK90+nsdD
 FQus/g6DE2FqYVFcQRBSWxquPoz8YoqXVciAJ6HhcC4X4WvZhp38c7BB3sSx1BH9ylb9
 feEDLKnC9SrMapkFGLHfIToKVFCv46q2bi3p3BXQyLWoRWVwS/9mLdb/GeTQCCU8PgcT
 6+6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hf3Z5Db1yz+0z1tr8VMjazLVeMcit8uK7umZ1IwIpvE=;
 b=dBk4q+djPU9K5pTi7Bwy0RfDS5xXL+Q3IPTH33u6WyTQXcOgl1fy7FBl6feZt1GALW
 CeUfL3fmU2Kqv417P9mH4RqeoVPgLr2wZx+vGXJJwAj81hcwGdzS1TrQszloVlgccrcl
 ENTfNV6aFeIydjIM30CHD/oYdy2Xz5w32UoBbV6TgW0c+RbWtsxETcpO7XHoLGiu/9in
 /tJMWVNnMFRqjPSP12WQcGDdiCOsfoSjgFtPp2EjqW3OeOW2+rOIxEbFYJAn/jtC7mm4
 7oUldECUsiQPMVem5gMKmDs9XmVSI5TlwOE0vCKw+peJxj8XeM86nzBIjqMoqWD5dCXl
 yWpg==
X-Gm-Message-State: APjAAAXc+x4rBGCjqKuraYu9YPb6jjxezPj3r4QUeMAX/GMktLE+0tYn
 z/NFHVCGIqKwwAIwAhIoiqCbgGUwj+zhyWRGyPM=
X-Google-Smtp-Source: APXvYqxR9/WsFLxqc7cvzJhK1urFpGl4gUB4HAwVzSC1fDeD1++buc2QQSGtK15wBHAhYaYamjbSOAR6gsjJ8ZcFoo4=
X-Received: by 2002:adf:f450:: with SMTP id f16mr23333290wrp.335.1563521544375; 
 Fri, 19 Jul 2019 00:32:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190718151346.3523-1-daniel.baluta@nxp.com>
 <20190719070005.mkqvfhjras2jmo52@pengutronix.de>
In-Reply-To: <20190719070005.mkqvfhjras2jmo52@pengutronix.de>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Fri, 19 Jul 2019 10:32:12 +0300
Message-ID: <CAEnQRZC8D7MR08x_P19kmutN83Jo4wMkHySRhK702TSUHFDqiA@mail.gmail.com>
Subject: Re: [PATCH 0/3] Add DSP node on i.MX8QXP board
To: Marco Felsch <m.felsch@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_003226_019592_D62D09BB 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Peng Fan <peng.fan@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Anson Huang <anson.huang@nxp.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Frank Li <Frank.Li@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Olaru <paul.olaru@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 sound-open-firmware@alsa-project.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 19, 2019 at 10:00 AM Marco Felsch <m.felsch@pengutronix.de> wrote:
>
> Hi Daniel,
>
> thanks for your patches :) but it's quite common to bundle the driver
> related and the dt related patches. Can you add the firmware related
> patch to this series in your v2?

Sure. Will do that in v2.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
