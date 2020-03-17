Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC71187725
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 01:55:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bj5mwVaC0PTqjBEVx5xNPKvdrFPRw/F3Y2wBkNaVdcw=; b=mgTJniwzzH8zDq
	yZynn3XOXEMTOT/cp9SYZ/F0Y6Xmyg9KxviE6DW1a6dxfhs/V9JxO+DUjFMkBM+58obxp8GdZxEkD
	rNljGt3XObtAfqgnCGoM9AGc0ql9r6iWbeGiNfDxWKCuRnBKKfsno4VDQ3dFLsp/Bm0fmbyB5tsoT
	PWOHrbXNRI8+4zIkfaZ5xBkpu2DMCStyKeQmmTVpZE0sDd2QgWbQSdVC2++zXThXvMNcw1i6jXXlP
	E84C7Q91kO+7wVPW2lYQnz6piL/CsiMq5Qln58aRTwxaWIECBRblgcPvncTsrQVuavH9JQoXXHqSc
	gk539DO/CzscKIb0dhZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE0Vm-0002oC-I9; Tue, 17 Mar 2020 00:55:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE0VX-0002gf-26; Tue, 17 Mar 2020 00:55:00 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jE0VR-0004Wj-Kw; Tue, 17 Mar 2020 01:54:53 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Vivek Unune <npcomplete13@gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add Hugsun X99 IR receiver and
 power led
Date: Tue, 17 Mar 2020 01:54:52 +0100
Message-ID: <7846021.K4VeDc98hx@phil>
In-Reply-To: <20200313230513.123049-1-npcomplete13@gmail.com>
References: <20200313230513.123049-1-npcomplete13@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_175459_250643_D2CF9AAC 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, akash@openedev.com, jbx6244@gmail.com,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Samstag, 14. M=E4rz 2020, 00:05:13 CET schrieb Vivek Unune:
>  - Add Hugsun X99 IR receiver and power led
>  - Remove pwm0 node as it interferes with power LED gpio
>    pwm0 is not used in factory firmware as well
> =

> Tested with LibreElec linux-next-20200305
> =

> Signed-off-by: Vivek Unune <npcomplete13@gmail.com>

I've applied this for 5.7, but did split the patch into two.
One for the addition of the IR and a second for led.

Please do similar for future patches.

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
