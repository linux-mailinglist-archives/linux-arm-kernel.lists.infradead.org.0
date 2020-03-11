Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96745181295
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 09:05:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YIfujxITFATnDkZruX1usE0YHMEhzYB2GREYdc+LIfE=; b=FsF/863RvjIOpZ
	JNfE3aSvskQ2IN8sqJ0ungkL71w19cqF/SJtZY9d6T9azP3xAWNUDsjZLexQeGERtdTiHAHcOWiVl
	EamdyCY+Za7Gtf4SxiAvoyj451hcy35a7KKablYMwIx1U5QWAmAXmJgOOuF6iTjkvEl9QnkIl8r3O
	az5iv/nCyVXvASYki2voaNH6achxgNsXeDDVEB9PeNEKQlbzw6HFpQV6rD4JMrTB5vwDrkcqGsRiD
	l+NZdjQKDUEdf0Ht6VjA7vCzo96w7nXBRqBElDdRmtVle3DRTDxEmm1chdv9SVaDyuyh76IxrfLnJ
	PsRZOSpw9wlJhN7J534g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBwMu-0008TH-ML; Wed, 11 Mar 2020 08:05:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBwMn-0008Sd-EE; Wed, 11 Mar 2020 08:05:27 +0000
Received: from p5b127c69.dip0.t-ipconnect.de ([91.18.124.105]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jBwMi-0000Em-QT; Wed, 11 Mar 2020 09:05:20 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: fix Rockchip Kylin board bindings
Date: Wed, 11 Mar 2020 09:05:19 +0100
Message-ID: <1953057.m1zP5CsIQp@phil>
In-Reply-To: <20200302092759.3291-1-jbx6244@gmail.com>
References: <20200302092759.3291-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_010525_623288_C696E781 
X-CRM114-Status: GOOD (  11.46  )
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

Am Montag, 2. M=E4rz 2020, 10:27:57 CET schrieb Johan Jonker:
> A test with the command below gives this error:
> =

> arch/arm/boot/dts/rk3036-kylin.dt.yaml: /: compatible:
> ['rockchip,rk3036-kylin', 'rockchip,rk3036']
> is not valid under any of the given schemas
> =

> Normally the dt-binding is the authoritative part, so boards should follow
> the binding, but in the kylin-case the compatible from the .dts is used f=
or
> years in the field now, so fix the binding, as otherwise
> we would break old users.
> =

> Fix this error by changing 'rockchip,kylin-rk3036' to
> 'rockchip,rk3036-kylin' in rockchip.yaml.
> =

> make ARCH=3Darm dtbs_check
> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/arm/rockchip.yaml
> =

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied all 3 for 5.7

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
