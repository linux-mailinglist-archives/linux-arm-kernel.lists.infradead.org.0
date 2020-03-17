Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C60F1876D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 01:27:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3IJXqDRjj/KOhM47P5aQdNZ0pXwWxfF+Q+xuqGDXKU=; b=byn0rb8oV6lnnf
	mWCQNUevccoyKRa/5g3KsstocwLiI8iWvvrz7NgM5w6NIcwCRmj/J+AhLSj3Qe5ffAkOmEwsDYrv1
	mrUivPP55yqXY8RJZ11ZwX4TF2+ejQvj0ZGV+wPBi+nuLLgJEznssniq0J9J95Uknh7cQyT0lPcvx
	dKLEY0SP93PHHuwv4A7VSZfvjfgrI0pq6GsCVqGvojTY9wF7V1hAz0ZqH0bLFnyJYE6eaZo6Suuqn
	OjiIrrnSUDSZ5Ff0iWevzM4FNpqFJEIjbEvoOnMCAXfahqt/goTEpNGn3Yo8uepbQxzzBD/TQuAbD
	4y1YBmkenmO7Pnl5pf/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE04s-0007Km-TP; Tue, 17 Mar 2020 00:27:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE04i-0007K1-MV; Tue, 17 Mar 2020 00:27:18 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jE04h-0004OF-28; Tue, 17 Mar 2020 01:27:15 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: remove clock-frequency from saradc
 node rv1108
Date: Tue, 17 Mar 2020 01:27:14 +0100
Message-ID: <3820267.Gqg2QCzSh7@phil>
In-Reply-To: <20200313132646.10317-1-jbx6244@gmail.com>
References: <20200313132646.10317-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_172716_885085_F8544DA9 
X-CRM114-Status: GOOD (  10.65  )
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

Am Freitag, 13. M=E4rz 2020, 14:26:46 CET schrieb Johan Jonker:
> An experimental test with the command below gives these errors:
> =

> arch/arm/boot/dts/rv1108-elgin-r1.dt.yaml: adc@1038c000:
> 'clock-frequency'
> does not match any of the regexes: 'pinctrl-[0-9]+'
> arch/arm/boot/dts/rv1108-evb.dt.yaml: adc@1038c000:
> 'clock-frequency'
> does not match any of the regexes: 'pinctrl-[0-9]+'
> =

> 'clock-frequency' is not a valid property for a saradc node,
> so remove it.
> =

> make ARCH=3Darm dtbs_check
> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/iio/adc/
> rockchip-saradc.yaml
> =

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied for 5.7

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
