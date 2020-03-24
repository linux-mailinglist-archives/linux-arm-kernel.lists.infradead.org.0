Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB16E191343
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 15:33:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=egL6eKAsdZulcMEf+gPjwYMfbYgGNixTaGeCI9FMUxw=; b=q3cd106T038pZquRCNWAESXmN
	NXq7wS5V4vf1eCs+oB0Xd+0Dhl6wFpZvA+VxZPZ2xcxC5WSAMU4e2h3DQ7zbt2RsqzjUZIXaveRCy
	7cyEsoaMgzg7No4nylQRZ/3VGHi8G3UmNo9wzHbSoD3tVhdjS7YrhY5nfKLv3WX+Q7op3veJBxh5w
	mLtucFbdd0eeYqoICvAKpa+sWw/EwpxlUC5gbBiho841LmHxmrPKcHLVMtqrpYdf81dshMqaOiF3b
	3zatki12T4ZVScr4NfuNqCuuglsK2HFhybOBnlilO8UCWv8EfuuNZKxILIVMvhVvHzqdWjVACzp5T
	iZ8kEFV1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGkck-00066x-Fy; Tue, 24 Mar 2020 14:33:46 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGkcY-00065J-Va; Tue, 24 Mar 2020 14:33:36 +0000
Received: by mail-ed1-x544.google.com with SMTP id cf14so11720114edb.13;
 Tue, 24 Mar 2020 07:33:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dqqNKN/fwkR6pokdkS+FvygaQUpQ4v7Tw1/17Jul044=;
 b=DXhazW9ruGeUUZliIqnasAbbXKy521jZ8QLY2rSxbUsFUjmEvxd5nyOWWl5MAYDm1F
 RWHKSeh0vpz3tIWxsJHE3VuTN2mKKHvksAYC0qrCK46BXcLqgKqHAR/L6wr+bGnxgI4Q
 RMR609bmrUvPxIZxOBFZIrq07AkMEU/DeD2Ig14lcgjQ4aoccXgZWBCU4sOi5t7L5t2t
 aeup/xE7KdZFvd8pev6SL/uyHB22gTdOdk+PDgmSSu4HWUlbDZvVL/C5I6+pkyPznDza
 ZBL6ZLl3pLfzrAVhoulvUX/TeXwPAy5A+Q5CSoJRPJLeyazdzuE4bBr2RhL8sT+/V3ig
 s9hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dqqNKN/fwkR6pokdkS+FvygaQUpQ4v7Tw1/17Jul044=;
 b=GTay5/2G7rZdAK20gVpmXyqWQBHtVQS8Ii9vZ+5As2axnhIO4pRPefsA4GKypDJCpr
 1hTJhXrg9mlXiRsW2ArbH0f2/5EsnCezCGmu4SSRKMyiGjoK9xeS3EDz1vG3zi+1XNwy
 82QZocBdR/hxq7E6TIVId058DhJj/mcFOFsS/ganIm0lG2k/HPsLCN7rXFRSQmFcHZ6h
 0rfFVSZYA4rB6PBVfSbB/wxlEdANquzGG6TlmCFkxhqWv46DHZd0rwp8DD1iN7o+JLXe
 NxueI4DcP8Q5h+B9ndrkHSFQXp/uFljFAWUbGOwzjKhR4Q84VWw2Wy7RQ1qrsy4oaSeH
 OG9w==
X-Gm-Message-State: ANhLgQ0D3c7BbatC3XHzRjawS2PGb9gS8Z3TcHV8fYV50VW51SQzm9FE
 Tr/hAPRj7rfUMrNjMdbGFVlmZqpNKocdsmYO2Mi0mVZH
X-Google-Smtp-Source: ADFU+vvoB2bTSr1f8kFKut/nPCDhhp8NCXt+CrinYNbyc671g7XalQFaRlgTaKabgWUcUAHItC5U9BXD3aLyrUFCTVo=
X-Received: by 2002:aa7:de13:: with SMTP id h19mr27922573edv.52.1585060413064; 
 Tue, 24 Mar 2020 07:33:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200324102030.31000-1-narmstrong@baylibre.com>
 <20200324102030.31000-6-narmstrong@baylibre.com>
In-Reply-To: <20200324102030.31000-6-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 24 Mar 2020 15:33:22 +0100
Message-ID: <CAFBinCDrycKy6sJfpUjoB3_jkHP-ssmwvr-Cab1-fOmz_i_bGQ@mail.gmail.com>
Subject: Re: [PATCH 05/13] usb: dwc3: meson-g12a: refactor usb2 phy init
To: Neil Armstrong <narmstrong@baylibre.com>
Content-Type: multipart/mixed; boundary="000000000000dec06e05a19aa2dd"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_073335_020354_D6ABDEF0 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: balbi@kernel.org, khilman@baylibre.com, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--000000000000dec06e05a19aa2dd
Content-Type: text/plain; charset="UTF-8"

Hi Neil,

On Tue, Mar 24, 2020 at 11:20 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
[...]
> @@ -195,23 +239,9 @@ static int dwc3_meson_g12a_usb2_init(struct dwc3_meson_g12a *priv)
>                 if (!strstr(priv->drvdata->phy_names[i], "usb2"))
>                         continue;
>
> -               regmap_update_bits(priv->u2p_regmap[i], U2P_R0,
> -                                  U2P_R0_POWER_ON_RESET,
> -                                  U2P_R0_POWER_ON_RESET);
> -
> -               if (priv->drvdata->otg_switch_supported && i == USB2_OTG_PHY) {
> -                       regmap_update_bits(priv->u2p_regmap[i], U2P_R0,
> -                               U2P_R0_ID_PULLUP | U2P_R0_DRV_VBUS,
> -                               U2P_R0_ID_PULLUP | U2P_R0_DRV_VBUS);
> -
> -                       dwc3_meson_g12a_usb2_set_mode(priv, i,
> -                                                     priv->otg_phy_mode);
> -               } else
> -                       dwc3_meson_g12a_usb2_set_mode(priv, i,
> -                                                     PHY_MODE_USB_HOST);
> -
> -               regmap_update_bits(priv->u2p_regmap[i], U2P_R0,
> -                                  U2P_R0_POWER_ON_RESET, 0);
> +               ret = priv->drvdata->usb2_init_phy(priv, i, mode);
> +               if (ret)
> +                       return ret;
>         }
this doesn't compile for me, it complains that mode is undefined
I believe we need something like the attached patch on top.

[...]
> @@ -580,7 +612,9 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
>         /* Get dr_mode */
>         priv->otg_mode = usb_get_dr_mode(dev);
>
> -       dwc3_meson_g12a_usb_init(priv);
> +       ret = dwc3_meson_g12a_usb_init(priv);
> +       if (ret)
> +               goto err_disable_clks;
this looks like an unrelated fix, dwc3_meson_g12a_usb_init has always
returned int (as potential error)
also the same check is missing in dwc3_meson_g12a_resume
can you please move this to a separate patch with the appropriate tag:
Fixes: c99993376f72ca ("usb: dwc3: Add Amlogic G12A DWC3 glue")


Martin

--000000000000dec06e05a19aa2dd
Content-Type: text/x-patch; charset="US-ASCII"; name="fixup.patch"
Content-Disposition: attachment; filename="fixup.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_k85zzkgb0>
X-Attachment-Id: f_k85zzkgb0

ZGlmZiAtLWdpdCBhL2RyaXZlcnMvdXNiL2R3YzMvZHdjMy1tZXNvbi1nMTJhLmMgYi9kcml2ZXJz
L3VzYi9kd2MzL2R3YzMtbWVzb24tZzEyYS5jCmluZGV4IDc0ZDA3ZGVkOGE3ZS4uZDJhNjBlNDAw
NjFkIDEwMDY0NAotLS0gYS9kcml2ZXJzL3VzYi9kd2MzL2R3YzMtbWVzb24tZzEyYS5jCisrKyBi
L2RyaXZlcnMvdXNiL2R3YzMvZHdjMy1tZXNvbi1nMTJhLmMKQEAgLTIzMywxMiArMjMzLDE5IEBA
IHN0YXRpYyBpbnQgZHdjM19tZXNvbl9nMTJhX3VzYjJfaW5pdChzdHJ1Y3QgZHdjM19tZXNvbl9n
MTJhICpwcml2KQogCQlwcml2LT5vdGdfcGh5X21vZGUgPSBQSFlfTU9ERV9VU0JfSE9TVDsKIAog
CWZvciAoaSA9IDA7IGkgPCBwcml2LT5kcnZkYXRhLT5udW1fcGh5czsgKytpKSB7CisJCWVudW0g
cGh5X21vZGUgbW9kZTsKKwogCQlpZiAoIXByaXYtPnBoeXNbaV0pCiAJCQljb250aW51ZTsKIAog
CQlpZiAoIXN0cnN0cihwcml2LT5kcnZkYXRhLT5waHlfbmFtZXNbaV0sICJ1c2IyIikpCiAJCQlj
b250aW51ZTsKIAorCQlpZiAocHJpdi0+ZHJ2ZGF0YS0+b3RnX3N3aXRjaF9zdXBwb3J0ZWQgJiYg
aSA9PSBVU0IyX09UR19QSFkpCisJCQltb2RlID0gcHJpdi0+b3RnX3BoeV9tb2RlOworCQllbHNl
CisJCQltb2RlID0gUEhZX01PREVfVVNCX0hPU1Q7CisKIAkJcmV0ID0gcHJpdi0+ZHJ2ZGF0YS0+
dXNiMl9pbml0X3BoeShwcml2LCBpLCBtb2RlKTsKIAkJaWYgKHJldCkKIAkJCXJldHVybiByZXQ7
Cg==
--000000000000dec06e05a19aa2dd
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--000000000000dec06e05a19aa2dd--

