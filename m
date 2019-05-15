Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0BD1E5D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 02:02:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SZCxvyaI4Fus21kcsjQotDJ5BfRCbiZnDacQLA4yAXg=; b=IJXxRbgAciH49z
	MI2H5SpgtGA4gXfQT5nvBvW0eyHVQNAaJzK2QKzaFjyft5RGDC/hgBWXoFPG3inpCll1ngRheUhV9
	diHKnQ0uC4Mi9MPaLrstDWikwOhWYLpldkQivPwDZNEzTiIZaQWYmsZKTKIXF3PRghNU211q+8ptV
	deaOPwbX3Gw34/+2wL9mMc5MNLd5B8ILApedb6laYVg2w6o57CS+XQVIX3RbFQ8AS66xuSrWoU8yz
	cKtzzX1j3ZIPR+xCkxBs9RcAH/amJBP2mWICRw7DVkva9gfgM4cFJH0VOQfqxeh1vHpaSP5DsiU5Y
	hMZNmjhIfdr9LEzS9EDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQhMk-0002Wi-Io; Wed, 15 May 2019 00:01:50 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQhMa-0002Uz-4L
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 00:01:41 +0000
Received: by mail-pf1-x442.google.com with SMTP id c6so330228pfa.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 17:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=Fl4BRNGtm92dLl/qzsGLS8SvffFbPXXhiHpwATSSiyU=;
 b=tX7XsRCaevKkmFvq8xy+sLXC6agZnWKTOukEF5WmKqJWO7syyKlQ2wsBCfil36LpLc
 mGlid7DLUx1dXCo0KeqHIx2sUi4nerLRHCzysY+ERtFErlU4bgmKwSpt/kEySf9ShL99
 Nc1Wp8TqRW/KaqEa81fDD/8gvS/tDUs/3ZYzDJmihvXXvXBvle3OYpXPWYJXo/JUYG06
 CxmiHlVfWhvL9JU7Cbk4RjA7TQt6iOY0+pKbm5iXrCqvis9BcB18g49DkbteGGEx0pOM
 ILitRlt7sHfp1a3edNzxFH+/qX+a8srD/b5530Ze8vMyEgOu4CRVYuJiqaNMeCH9g1vi
 weIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=Fl4BRNGtm92dLl/qzsGLS8SvffFbPXXhiHpwATSSiyU=;
 b=fYFkf62fDUpB0/kzt781IEgBeW/wyTMiDQtcCY5GEY43OoNn4h4hWQ5SnMNox8ZXEg
 Q4WwfPK7L8/mmijpcF65I4M88nm4ZVi7PMtfZl2BnX0QuUEOzkfngk/yawbrpA8VpD7f
 6vhMyhqfl6T11j6itN7/V3y7axM9Gitk0nuxbM1enzXPcquXitl/8/JqeyOn6yWM8TkZ
 u2pj2s9LaOnVljVRD/GoM/op1vea45/VnlDM2ZT/lxNgkzGjb8F41koHW87SfwMDpXVP
 aL7VbOufjnslcepw0sSo9xKLStViBOUmfDisBeFCUYGixWvh4jTCmBJ5NSZzIUfNZhXH
 QT/g==
X-Gm-Message-State: APjAAAUyFfIpJ5f/aAV5R/WdtgoudDLx5SzWX/a6RNoYGcd4NdjmWWC6
 M82ZI9NYByRN61PHY9cpQofRgw==
X-Google-Smtp-Source: APXvYqwHZa5sICwqraZ9H1QVEAfGb9MwKOmlBlqopDcas/BnamGKzAjjpLLEttGsYJaVEihf/p/OVQ==
X-Received: by 2002:a63:5211:: with SMTP id g17mr11987172pgb.405.1557878498529; 
 Tue, 14 May 2019 17:01:38 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:fd66:a9bc:7c2c:636a])
 by smtp.googlemail.com with ESMTPSA id a80sm331973pfj.105.2019.05.14.17.01.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 17:01:37 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 1/1] ARM: dts: meson8b: fix the operating voltage of the
 Mali GPU
In-Reply-To: <20190512193936.26557-2-martin.blumenstingl@googlemail.com>
References: <20190512193936.26557-1-martin.blumenstingl@googlemail.com>
 <20190512193936.26557-2-martin.blumenstingl@googlemail.com>
Date: Tue, 14 May 2019 17:01:37 -0700
Message-ID: <7hwoisd1r2.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_170140_167916_212CEE6D 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> Amlogic's vendor kernel defines an OPP for the GPU on Meson8b boards
> with a voltage of 1.15V. It turns out that the vendor kernel relies on
> the bootloader to set up the voltage. The bootloader however sets a
> fixed voltage of 1.10V.
>
> Amlogic's patched u-boot sources (uboot-2015-01-15-23a3562521) confirm
> this:
> $ grep -oiE "VDD(EE|AO)_VOLTAGE[ ]+[0-9]+" board/amlogic/configs/m8b_*
>   board/amlogic/configs/m8b_m100_v1.h:VDDAO_VOLTAGE            1100
>   board/amlogic/configs/m8b_m101_v1.h:VDDAO_VOLTAGE            1100
>   board/amlogic/configs/m8b_m102_v1.h:VDDAO_VOLTAGE            1100
>   board/amlogic/configs/m8b_m200_v1.h:VDDAO_VOLTAGE            1100
>   board/amlogic/configs/m8b_m201_v1.h:VDDEE_VOLTAGE            1100
>   board/amlogic/configs/m8b_m201_v1.h:VDDEE_VOLTAGE            1100
>   board/amlogic/configs/m8b_m202_v1.h:VDDEE_VOLTAGE            1100
>
> Another hint at this is the VDDEE voltage on the EC-100 and Odroid-C1
> boards. The VDDEE regulator supplies the Mali GPU. It's basically a copy
> of the VCCK (CPU supply) which means it's limited to 0.86V to 1.14V.
>
> Update the operating voltage of the Mali GPU on Meson8b to 1.10V so it
> matches with what the vendor u-boot sets.
>
> Fixes: c3ea80b6138cae ("ARM: dts: meson8b: add the Mali-450 MP2 GPU")
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Queued as a fix for v5.2-rc (branch: v5.2/fixes)

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
