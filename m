Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DAB9F590
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 23:51:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TweSozQO5rgjve/8kqzmtRAhBcroU6VlpEC31w584dM=; b=pAV/j/tjaAB8jh
	HhQC28cWWhc55ZkZO8+xnSUNiFb2pvBcMxvhBSZSzmga7oP8VPAhUFEC4045HOZ83XL8jRcZLMpQ6
	eqQf4QCrX9aScdLTca7PxGLdByonQPlEKiI3csy2AuV+hfsHtbTI4oFAuckUTb6ebdzfsvZ4Yzgji
	4Ft1qZKMNLQtEpT/lLTqCVhDS4tQoQzZR4FLzgQ7OJSJeetj5lwSAC6M46m+5BysZF9S6KsiA/auW
	3BPDAJlm567Zd1ERq33ZEe5VuugnPOitqEWnu+Y+1t+j25tprKExLP9Ppayo3Fm7CLGIadG9Ay1lH
	d8aO42uAZbwKKcPTNFog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2jN7-00035S-S7; Tue, 27 Aug 2019 21:51:26 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2jMo-00034w-Qp; Tue, 27 Aug 2019 21:51:08 +0000
Received: by mail-ot1-f65.google.com with SMTP id z17so647754otk.13;
 Tue, 27 Aug 2019 14:51:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=6UdyZcW8GFUoOtzUiYA5oJv2+sr88zTJhUxT/a3/xms=;
 b=aqBBnKl6DSfdNPddgjNutMnTKhbn6ptbM89PDCa23LHe7D/wQapUuH9piDZmvid5Bt
 6wA9HacxBSgr3eAPqzQygmkp3rUbJB7VE14S93TP39kit87k1zbs/UPOZNBpZ4FK95RP
 Div9ueeNTPy4Dy3yxrCbOlxvU9e0fc3Kw9BqFGVjK6sMi980jqlOjoCpyTb8fNQKq1A0
 Tuw8MM96BfFKsoA6WoHBKUh4HORgk1eiefT19EBkIBy8/b6PSs3Ysh6G6JePFV4etWWx
 smRu+tgm2GuBuipux0GlDvghlQ2+qXIfLbOQyDKr9Qhcdfzgb4A9kxqREcK+1j5IQLlx
 d86A==
X-Gm-Message-State: APjAAAVzeM4wCZR5EUuuZ9pTdFK6Z2L5iXY0Qxd1KgFToYkXQUv+0YeU
 qMIoioUZYTQ/Os3D/SHm7w==
X-Google-Smtp-Source: APXvYqyNJodchzPPttfy347MDQHJuYnjjVx9z7i0CE2ylYyoXY7FQ6zIjBxdcMZshF3PlC4QaHevbA==
X-Received: by 2002:a9d:6290:: with SMTP id x16mr680894otk.292.1566942664365; 
 Tue, 27 Aug 2019 14:51:04 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t18sm237696otk.73.2019.08.27.14.51.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 14:51:03 -0700 (PDT)
Date: Tue, 27 Aug 2019 16:51:03 -0500
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>
Subject: Re: [PATCH net-next v2 3/3] dt-bindings: net: ethernet: Update
 mt7622 docs and dts to reflect the new phylink API
Message-ID: <20190827215103.GA9401@bogus>
References: <20190821144336.9259-1-opensource@vdorst.com>
 <20190821144336.9259-4-opensource@vdorst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821144336.9259-4-opensource@vdorst.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_145106_869638_6A1533C3 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, Nelson Chang <nelson.chang@mediatek.com>,
 Frank Wunderlich <frank-w@public-files.de>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, linux-mips@vger.kernel.org,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Stefan Roese <sr@denx.de>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 04:43:36PM +0200, Ren=E9 van Dorst wrote:
> This patch the removes the recently added mediatek,physpeed property.
> Use the fixed-link property speed =3D <2500> to set the phy in 2.5Gbit.
> See mt7622-bananapi-bpi-r64.dts for a working example.
> =

> Signed-off-by: Ren=E9 van Dorst <opensource@vdorst.com>
> Cc: devicetree@vger.kernel.org
> Cc: Rob Herring <robh@kernel.org>
> --
> v1->v2:
> * SGMII port only support BASE-X at 2.5Gbit.
> ---
>  .../arm/mediatek/mediatek,sgmiisys.txt        |  2 --

Bindings and dts files should be separate patches.


>  .../dts/mediatek/mt7622-bananapi-bpi-r64.dts  | 28 +++++++++++++------
>  arch/arm64/boot/dts/mediatek/mt7622.dtsi      |  1 -
>  3 files changed, 19 insertions(+), 12 deletions(-)

In any case,

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
