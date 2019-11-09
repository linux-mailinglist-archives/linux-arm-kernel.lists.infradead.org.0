Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7FEF61F7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 Nov 2019 01:31:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dNmrImrvzC92CDc6HBbEl/p6xJCztL3LLAf9LM5S0Wo=; b=qRq2zGO4anZeaW
	wzleHlG14KT15qCwcICPWb7oNLS22aUwDtAeiobLft8clVBsincuoOcQd8b7QnNKGICozern2n1zc
	JqSK2sK0pkLPm9XVCyy9s5E5Col8A6ilou1v0sXPt0LYVGa88WFCsQNAs9O8ecIEwpUrywJo6rJtH
	lEIZ0G9Cr5sqknCXsMId0jDM37K4xmtqRmACZFVXYCtP0eFV7oKQ32F1Z6OqexZ/kvawKXO8N4L58
	/4JKd3N7beSNoJv4oE/O7DROQKH+OLlmas3Vp2mz8UO8btJ/Sl4DrzkSaXo3tWPg4ToRhxNVGAl28
	7dw5htfbM/vzXmvy4ebw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTb8B-000493-SV; Sun, 10 Nov 2019 00:31:03 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTb7m-0003qj-8X
 for linux-arm-kernel@lists.infradead.org; Sun, 10 Nov 2019 00:30:41 +0000
Received: by mail-pg1-x544.google.com with SMTP id h4so6590440pgv.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 09 Nov 2019 16:30:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=FxRt4BUNwVB8zpfl5d2aejL9uK6mBbXTP9pbXJEAVIA=;
 b=hiJmGSlnDpaF08YRgBaxyr5f68zjU/4xnmI2rZb2yHXrJ1OZXYRrhl8+qkrr+c1C+l
 EbOMxgoRmtBsn2DjinkASy5uaaEf4N42L3g9V6T33JIv8OsXTEb0pvk7bbZQUMjbclEW
 XxXWO9yFY8Cc0Rkr0nqGX0uMnF5CBJyvOav2c0wtaH1l3MVAV2yngr/8YpOjwN2GYOoX
 qtHMUzLYJ1DUO2kBPcErJTGREA+ykx7mVZZbuwcK2g0qOlPdimrE2jtAmteGys5e0mhe
 Ux5OkTsaK+1mLq1wmj6ricPdwe4/SfZS7Jdbbbaz2RnCccIxpR4iKPOc3NBU9/wiPycj
 M0lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=FxRt4BUNwVB8zpfl5d2aejL9uK6mBbXTP9pbXJEAVIA=;
 b=Owd0O/NTYIc8HTPBv4PWOCIbG7Aoh4B+M4H1sZFdSVXZ9uwbpXKX3nolhY7Ki04GnN
 23DcY4kEXleXhl/izNOwl40LW+Gc9vVNVteHiyeQsssc1l1QfJyPG/27mDHo+bfTy9y7
 WFYYVOa2iGG1NCpSaZ7r9zTp9+0Ux5fEt169SZOXa3JVKgSLwGFsthybly0dYZVyXqnu
 zAfKb8pJApZijI8wEP25OnCO4EGPHbOrcntD8ZaPcD9TYMYGF+nmhrRQD4AxehsxQd59
 FQRCyoEM6U3P5DS+nVg9668T8Y+LVtLi9Dna1Jsp6NmSxf8QoqpFXipjMzAsTkVaJbNE
 xKYw==
X-Gm-Message-State: APjAAAUdQCtEqndj5DAyEWP1XyeR2Lbdo4IskqhkiO2Tpe3S7YFV+7Bg
 nZbijglqVkcz2kqqrwk4jI4m8w==
X-Google-Smtp-Source: APXvYqwts4OUgpJJOzYRq313xaamUKaByPW6r3ZrRxsi3tbQNzWseZBolyT2WkJLe0WrONs9SgepGA==
X-Received: by 2002:a63:6b82:: with SMTP id
 g124mr20819408pgc.178.1573345837340; 
 Sat, 09 Nov 2019 16:30:37 -0800 (PST)
Received: from localhost ([2601:602:9200:a1a5:7c60:912:1380:6df8])
 by smtp.gmail.com with ESMTPSA id f19sm4460187pfk.109.2019.11.09.16.30.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 09 Nov 2019 16:30:36 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Jianxin Pan <jianxin.pan@amlogic.com>, linux-amlogic@lists.infradead.org
Subject: Re: [PATCH v4 2/4] firmware: meson_sm: Add secure power domain support
In-Reply-To: <1572868028-73076-3-git-send-email-jianxin.pan@amlogic.com>
References: <1572868028-73076-1-git-send-email-jianxin.pan@amlogic.com>
 <1572868028-73076-3-git-send-email-jianxin.pan@amlogic.com>
Date: Sat, 09 Nov 2019 21:11:09 +0100
Message-ID: <7hk188stcy.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_163038_301334_B95C21FA 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 linux-pm@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Jian Hu <jian.hu@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Jianxin Pan <jianxin.pan@amlogic.com> writes:

> The Amlogic Meson A1/C1 Secure Monitor implements calls to control power
> domain.
>
> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
> ---
>  drivers/firmware/meson/meson_sm.c       | 2 ++
>  include/linux/firmware/meson/meson_sm.h | 2 ++
>  2 files changed, 4 insertions(+)
>
> diff --git a/drivers/firmware/meson/meson_sm.c b/drivers/firmware/meson/meson_sm.c
> index 1d5b4d7..7ec09f5 100644
> --- a/drivers/firmware/meson/meson_sm.c
> +++ b/drivers/firmware/meson/meson_sm.c
> @@ -44,6 +44,8 @@ static const struct meson_sm_chip gxbb_chip = {
>  		CMD(SM_EFUSE_WRITE,	0x82000031),
>  		CMD(SM_EFUSE_USER_MAX,	0x82000033),
>  		CMD(SM_GET_CHIP_ID,	0x82000044),
> +		CMD(SM_PWRC_SET,	0x82000093),
> +		CMD(SM_PWRC_GET,	0x82000095),
>  		{ /* sentinel */ },
>  	},
>  };
> diff --git a/include/linux/firmware/meson/meson_sm.h b/include/linux/firmware/meson/meson_sm.h
> index 6669e2a..4ed3989 100644
> --- a/include/linux/firmware/meson/meson_sm.h
> +++ b/include/linux/firmware/meson/meson_sm.h
> @@ -12,6 +12,8 @@ enum {
>  	SM_EFUSE_WRITE,
>  	SM_EFUSE_USER_MAX,
>  	SM_GET_CHIP_ID,
> +	SM_PWRC_SET,
> +	SM_PWRC_GET,

These new IDs are unique to the A1/C1 family.  Maybe we should add a
prefix to better indicate that.  Maybe:

       SM_A1_PWRC_SET,
       SM_A1_PWRC_GET,

Thoughts?

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
