Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DA11814E0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 10:33:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c2QC59xwF7iwz3toWi59+Jory8aKpzSYjgF8gkY7V2Q=; b=vAWokAZd86wzWD
	C7UVIIY9dItbYO80iimZMManV+WxZxPoewRkdLp15UdprYwpB2+Ctj5+5xdz6050+1D9vwZf6xUje
	pAOb0WX/76VCPFSDayAFTLeiSGoijsqLg4B1Q82tF0coXfJWK3zJCsDT8HgIHr9HoRlSuBtZXqj1O
	RhRG43SZngcRe2MeIlraV8nxHkANTS9oT7Cca1OvsDQyEWosHm0wNF+idvJChtnSqaSLbJSYYVCdj
	FZ2oZGFsYTrbGIRNJed//sjtbzI4SaHFhA4kgDxQ/aIiMFEiPKGNOitELsOA6EC6+Dk3XQ+SEsItS
	m+WMfGNx5+0GDZYpb6Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBxjZ-00024U-Ho; Wed, 11 Mar 2020 09:33:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBxjR-00023v-1u; Wed, 11 Mar 2020 09:32:54 +0000
Received: from p5b127c69.dip0.t-ipconnect.de ([91.18.124.105]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jBxjP-0000hs-6C; Wed, 11 Mar 2020 10:32:51 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: add bus to rockchip amba nodenames
Date: Wed, 11 Mar 2020 10:32:50 +0100
Message-ID: <1741084.mhMtVdeNFd@phil>
In-Reply-To: <20200302153047.17101-1-jbx6244@gmail.com>
References: <20200302153047.17101-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_023253_245793_600B63A7 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 2. M=E4rz 2020, 16:30:46 CET schrieb Johan Jonker:
> A test with the command below gives for example this error:
> =

> arch/arm/boot/dts/rk3188-bqedison2qc.dt.yaml: amba: $nodename:0:
> 'amba' does not match '^(bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'
> =

> AMBA is a open standard for the connection and
> management of functional blocks in a SoC.
> It's compatible with 'simple-bus', so fix this error
> by adding 'bus' to all Rockchip 'amba' nodes.
> =

> make ARCH=3Darm dtbs_check
> DT_SCHEMA_FILES=3D~/.local/lib/python3.5/site-packages/dtschema/
> schemas/simple-bus.yaml
> =

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied both for 5.7

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
