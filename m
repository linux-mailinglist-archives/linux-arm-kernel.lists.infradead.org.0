Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F10C51876ED
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 01:30:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ncdbrg+vemD1btyfjXu0gsw429qCsU3NxPQGkVUNYxk=; b=DN3e6VzYIenMnP
	32KVbXS/ETNbjEcV8NN4Zkergr/Zdo9SyNWOOnqsGsBk5yvyujHkGAPlfF0TWvlD7q2NrLdpQfu50
	TWIY0HenNdKkrkdAhpajEm1M3qIJ1e+5Z8YndU8vMVqgC7yTVuY6HEIepASFciSYRVTSlm5XmF40x
	QxuhwzuytZBS9E4L3qVt8Ed9cg2fFmCtybJaSysSS/qADdR+KeLc9WtDfoP7VazvZXIMcbS0unn4L
	GumtVRK9BBCCpM8+kRYcRDvImqKnNfsMczfXi+XcgqKgwOloasri390roCEZ9Czpxu2x3bP9AOe5h
	wn+J48LNw4wNyIIx/XOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE07r-0002Pq-IP; Tue, 17 Mar 2020 00:30:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE07g-0002PC-1a; Tue, 17 Mar 2020 00:30:21 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jE07e-0004QI-Dr; Tue, 17 Mar 2020 01:30:18 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: swap clocks and clock-names
 values for i2s nodes
Date: Tue, 17 Mar 2020 01:30:17 +0100
Message-ID: <2073542.5xW6PUzOQ3@phil>
In-Reply-To: <20200311162524.19748-1-jbx6244@gmail.com>
References: <20200311162524.19748-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_173020_237591_CC38CC62 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Am Mittwoch, 11. M=E4rz 2020, 17:25:23 CET schrieb Johan Jonker:
> Current dts files with 'i2s' nodes are manually verified.
> In order to automate this process rockchip-i2s.txt
> has to be converted to yaml. In the new setup dtbs_check with
> rockchip-i2s.yaml expect clocks and clock-names values
> in the same order. Fix this for some older Rockchip models.
> =

> make ARCH=3Darm dtbs_check
> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/sound/rockchip-i2s.ya=
ml
> =

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied for 5.7

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
