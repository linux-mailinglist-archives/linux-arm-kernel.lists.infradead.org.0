Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 331161D8B22
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 00:42:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F9afJIfiCP2sGpkLFUIz1j4KxeDGTd+4xpAVyyYe7EA=; b=TAHDHK42sxrgM0
	JMAh/lL3itlMZnFHFD+qI8migdoWCbXA9GuSPvfLb4KICstbmn/bX8CYRuYcE2fec9BD/wOQ9pg4F
	vcy8ZIl5CTrU3dzWo0LmjMXs59HTqmZ7y354o/RYKttfsPSK8fsWwJYVM5CDtr+CKRgVCNXj+lk5K
	Fdn4zEmix+7vCJVzD2BNoyEyN1KWx5OsYmdP5ooul9mt1ojgFjNSCDi0CCHKr38rmErZ6SqU2y3QU
	1lRQXmdimYmwt7tiq/mhI/jQSpjDWIAlplARtCETxTkWZJpXThPCz/lEr9YbmiC9vV+HvNYqg4WfA
	X2jtukkbWiSmYb6YxJBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaoSy-0003Bb-2B; Mon, 18 May 2020 22:42:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaoSn-0003Ab-Oq
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 22:42:26 +0000
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com
 [209.85.210.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0BEAB20835
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 22:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589841745;
 bh=ZI+2+ZLy6El97MHhuoWAAbeg02T2A/2czo6xMrDyQeQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=vOSx/Y4IyKGmqAuJ61atK8+HUo9I3nP2s/Bv2HwbAZtQyPTNC8eS0qTDTgCHuLzXv
 I2qDAi7eosVWfEPP8f93XGzMjuPg2uOHxtBV16eQOU+HZNNRrUu14Femx1bHay9t5q
 UBicFWQvH4DuOZhs/GVewhTX+Nfir9BToSzdHxA4=
Received: by mail-ot1-f53.google.com with SMTP id v17so9638754ote.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 15:42:25 -0700 (PDT)
X-Gm-Message-State: AOAM530GSIj62KEwTQMPhAkksRNymBNk2zhSCFxSzmLq3b3kiCMf4RPD
 usC8boGFzpDcNA1p24wACv1L+PwRIAVeGlWH0Q==
X-Google-Smtp-Source: ABdhPJyTKe6FGOymx9XkJB3VrJm6FEmEGYNTais4t83A3HPZxAJIq6IGr2eZbbeLBRbZNy+cx/WbS3w2gtcXkBXBluc=
X-Received: by 2002:a9d:1441:: with SMTP id h59mr14114210oth.192.1589841744310; 
 Mon, 18 May 2020 15:42:24 -0700 (PDT)
MIME-Version: 1.0
References: <1589198262-21372-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1589198262-21372-1-git-send-email-Anson.Huang@nxp.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 18 May 2020 16:42:13 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+dTFy5HBhV9-eU1a0UZikXkUd1HJuHG0KfU-PFetsAMg@mail.gmail.com>
Message-ID: <CAL_Jsq+dTFy5HBhV9-eU1a0UZikXkUd1HJuHG0KfU-PFetsAMg@mail.gmail.com>
Subject: Re: [PATCH V2] dt-bindings: reset: Convert i.MX7 reset to json-schema
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_154225_826402_36B4F7C7 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 NXP Linux Team <Linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 6:07 AM Anson Huang <Anson.Huang@nxp.com> wrote:
>
> Convert the i.MX7 reset binding to DT schema format using json-schema.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
>         - Improve description;
>         - Remove i.MX8MM and i.MX8MN compatible, they use i.MX8MQ's compatible;
>         - Keep original author as maintainer;
>         - Remove unnecessary "..." at the end of file.
> ---
>  .../devicetree/bindings/reset/fsl,imx7-src.txt     | 56 ---------------------
>  .../devicetree/bindings/reset/fsl,imx7-src.yaml    | 58 ++++++++++++++++++++++
>  2 files changed, 58 insertions(+), 56 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
>  create mode 100644 Documentation/devicetree/bindings/reset/fsl,imx7-src.yaml

I'd apply but doesn't apply cleanly to my tree, so:

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
