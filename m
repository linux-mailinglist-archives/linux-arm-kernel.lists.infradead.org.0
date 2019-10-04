Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5F8CC055
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 18:13:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F2Jx9e40eO9aYTpdfjwDdf1FI1z7MGNeO3wufNS1Fic=; b=J5pPJWVV4IHJdj
	0f1yo6W3K99pNYyU7VLra/ZEwlvJo7eOCE7EKfOwEEQyx6EVcnB0IYKv7p/U4045Pka+gLl2Ysp3r
	wr4BrKkE9avSQ+eyfgyWnUvwIfEmMfDxIuVe8mQ9KFXVDlfDVhI7mjP3KOEw7MxKnUVsB2YFR3+j2
	7r3pADqNEGk8n8qsctzhF5KylpaJ27TvjYqESxB9zgb4Nc8HYRGL44/DMGVQjRcvc39pEMnddZ+tD
	LA5N8ebyHghOA1GL3YD1bZL69uzzUZ/AsKueCEv3yxmUAEP3QiYfHxCd1u54UAHDd3umi+F2asV1A
	Fwh/ShJWjEhnF/1zEGcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGQDK-0001Qb-2f; Fri, 04 Oct 2019 16:13:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGQDB-0001Q3-RR
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 16:13:48 +0000
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 46916215EA
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  4 Oct 2019 16:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570205624;
 bh=RcUOAl/0bmKCUXPftGv1Cq5XeNJkArov671bGsF0D4Q=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=TkIER9/mq7QtDrLA9SVkm9Qg2CxdZl1v+WKEBDLwccGyyuOUSuuREjTQlxmroLSWm
 jRFkkTWi+2a87F5v6IgeprVzFyHa4s/uiXLxUF/uWsRIbw3HNgTmMSd1e8bwbos3V/
 La6s4tk94D2cCEn7S4P/ByPazvltJr+prGFifUnM=
Received: by mail-qk1-f179.google.com with SMTP id p10so6282412qkg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 09:13:44 -0700 (PDT)
X-Gm-Message-State: APjAAAXhNAcve4b7sqsReP5i+M0rtDspBKDIXUvjjq2fUpmK45q1ShFS
 3GQjeGaYgd3MWLI845Eu5LJztqv8fcu+H7GNvw==
X-Google-Smtp-Source: APXvYqziBbzyphZ1ke4M8acNOI/Px+d5v/VwBWzkL8PUPgDob5UN4SJAXMiBPIMUZIJikf/IUTuIwa+FGrVKl9gAX+8=
X-Received: by 2002:a05:620a:12d5:: with SMTP id
 e21mr10962435qkl.152.1570205623412; 
 Fri, 04 Oct 2019 09:13:43 -0700 (PDT)
MIME-Version: 1.0
References: <20191004142738.7370-1-miquel.raynal@bootlin.com>
 <20191004142738.7370-17-miquel.raynal@bootlin.com>
In-Reply-To: <20191004142738.7370-17-miquel.raynal@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 4 Oct 2019 11:13:32 -0500
X-Gmail-Original-Message-ID: <CAL_JsqK4cbzOfaw5XCOdmP38w2n_djnJ6PaUTR=2Hi-rfOF=sg@mail.gmail.com>
Message-ID: <CAL_JsqK4cbzOfaw5XCOdmP38w2n_djnJ6PaUTR=2Hi-rfOF=sg@mail.gmail.com>
Subject: Re: [PATCH v2 16/21] dt-bindings: marvell: Convert the SoC
 compatibles description to YAML
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_091345_907242_28BADFEF 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yan Markman <ymarkman@marvell.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 4, 2019 at 9:28 AM Miquel Raynal <miquel.raynal@bootlin.com> wrote:
>
> Convert the file detailing Marvell EBU compatibles to json-schema.
>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../bindings/arm/marvell/armada-7k-8k.txt     | 24 -----------
>  .../bindings/arm/marvell/armada-7k-8k.yaml    | 40 +++++++++++++++++++
>  2 files changed, 40 insertions(+), 24 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
