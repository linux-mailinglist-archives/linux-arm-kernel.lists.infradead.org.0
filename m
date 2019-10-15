Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2437FD8117
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 22:33:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hCEQjKsv/EWO9/VgW1hUbMwZ1ey+ZxQD9yDJh+Wzqp8=; b=XcMifY8ZwdTBHq
	EtOKf/KGZuqncIgkP5YY0RDRyFjF4V6Xwode297MkuXWcSLkix6X5LzRgUDYTbS24lTNVR0bezamR
	utpTJrC+wfeIG2qeSxbSjLraRX7Oy7dHZ1P51Fm887G2lbYn1oG3+uSX7772jKaB+blNwrzFMwMKQ
	Tw5OaySlM1lYCusCWb+VAap7CFrfxuKc53YPTmueJHH7UNbyiQpNnE0NCj/py0EluqSd1bhYKB7XH
	aSPmD6Emx7O9c4/e7Uiw9AZWrjIgVTGfS1N4gLG7oPwZtC1ljE5AEU2aS6J9RjgsASxiWHzH7dXJx
	JzwUlhMWf1cCOhMmRB4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKTV0-0007yK-M3; Tue, 15 Oct 2019 20:32:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKTUk-0007xT-Es; Tue, 15 Oct 2019 20:32:39 +0000
Received: from remote.shanghaihotelholland.com ([46.44.148.63]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iKTUh-00087j-Uz; Tue, 15 Oct 2019 22:32:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 2/2] include: dt-bindings: rockchip: remove RK_FUNC defines
Date: Tue, 15 Oct 2019 22:32:30 +0200
Message-ID: <2623685.EsipSBtvXi@phil>
In-Reply-To: <29be43a3-516b-ce33-8a19-ffd8202d9c3a@gmail.com>
References: <20191015191000.2890-1-jbx6244@gmail.com>
 <2236841.lnJlJmhppS@phil> <29be43a3-516b-ce33-8a19-ffd8202d9c3a@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_133238_651123_341B6963 
X-CRM114-Status: GOOD (  13.66  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Dienstag, 15. Oktober 2019, 22:26:14 CEST schrieb Johan Jonker:
> Hi Heiko,
> 
> What's the plan for RK_FUNC_GPIO ? Change all to '0' or keep it?

RK_FUNC_GPIO I'd like to keep :-) .

Basic rationale is that mapping RK_FUNC_1 -> 1, RK_FUNC_2 -> 2, etc does
not provide any additional value, while telling it explicitly that we're
mapping to the gpio function does.

Heiko

> 
> On 10/15/19 10:10 PM, Heiko Stuebner wrote:
> > Hi Johan,
> > 
> > Am Dienstag, 15. Oktober 2019, 21:10:00 CEST schrieb Johan Jonker:
> >> The defines RK_FUNC_1, RK_FUNC_2, RK_FUNC_3 and RK_FUNC_4
> >> are no longer used, so remove them to prevent
> >> that someone start using them again.
> > 
> > That won't work. Devicetree provides a slightly flexible promise of
> > backwards compatibilty. So a new kernel should still work old devicetrees.
> > (not exactly sure if this means dt-binaries and sources or only binaries)
> > 
> > So while I think RK_FUNC_0-n should not be used anymore, we should
> > probably just mark them as "deprecated" in a first step.
> > 
> > 
> > Heiko
> 
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
