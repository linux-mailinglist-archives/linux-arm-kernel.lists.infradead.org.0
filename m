Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB7FCC417
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 22:18:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LhfRn29GZtTxBr4DwFr51Typ+q3SgICxjPWfG82qeYM=; b=EMe4MENVCZoObn
	L9iB2Fwz6+hY+iU3tjt10dPJINpvuUOQUktPE3KCzq78DW1ATRgyhfn9r1cD3f8EL+dBYm/c7q025
	hXa19DHe6BklFcaF87+GrwuUFAysPUUQ86uIB4UUfzfVJQWrSqfPJ0RR9BQTGRAsIN1zhpR0mDMHl
	n4ntmJUEtb03XH4K+arSrWR0mshCDygwEIKqXqc8Yjtar4O+oIRk/elL3RtIhoNNet68tzjA+Cb5L
	2h8LjxK/yozCglCuTOWNZyRfha9wXKxN9fhJ1ex35xVXSJzWV3HM9Tj4HHPqrhqA6IQeG62fTtgNw
	m90MZ9ea1/m00d307trQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGU24-0005sI-S2; Fri, 04 Oct 2019 20:18:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGU1v-0005r9-K3; Fri, 04 Oct 2019 20:18:24 +0000
Received: from 94.112.246.102.static.b2b.upcbusiness.cz ([94.112.246.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iGU1o-0006Z3-VO; Fri, 04 Oct 2019 22:18:17 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Soeren Moch <smoch@web.de>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: fix RockPro64 sdmmc
 =?UTF-8?B?c2V0dGluZ3PjgJDor7fms6jmhI/vvIzpgq7ku7bnlLFsaW51eC1yb2NrY2hpcC1ib3VuY2VzK3NoYXduLmxpbj1yb2NrLWNoaXBzLmNvbUBsaXN0cy5pbmZyYWRlYWQub3Jn5Luj5Y+R44CR?=
Date: Fri, 04 Oct 2019 22:18:16 +0200
Message-ID: <2162187.GalWoky0CO@phil>
In-Reply-To: <c180ec58-083b-5730-a188-58eb6100b7b6@web.de>
References: <20191003215036.15023-1-smoch@web.de>
 <e4aaddc2-441b-b835-380e-374a3d935474@web.de>
 <c180ec58-083b-5730-a188-58eb6100b7b6@web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_131823_807603_1CED8903 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-rockchip@lists.infradead.org, Shawn Lin <shawn.lin@rock-chips.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi S=F6ren,

Am Freitag, 4. Oktober 2019, 22:15:45 CEST schrieb Soeren Moch:
> Heiko,
> =

> since you started to apply the first 2 Patches of this series (thanks
> for that!), now after all the discussions here (and the heads-up for the
> implemented mode detection) I think we should leave the vcc_sdio
> regulator settings unmodified.

I was composing a mail about me holding off on this patch due to the
ongoing discussion when your mail came ;-)

> It still could make sense to remove the cap-mmc-highspeed property. Are
> you OK with a V2 patch for that?

Sure, go ahead.

Heiko




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
