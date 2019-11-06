Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EB7F1E5A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 20:14:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=47D/wQuXKftmXdgL1i3AdsGYQfp4b/V5JCR4oybG4Zw=; b=kdFsvnU//D+wsh
	E6uYMnty2PnGF3A1Mmzk6FRV/4gCt1ntrQfy5wmPW1wVbCizW/EvsY+xyXnN4GLsKkkih0E3v6jWn
	kO/pwnigPowWvIP5zHdK4ASeE7oKt057yYNwcMK/Dd9ZBo6329gXfgVhGYtZUgUccRecH5aa/G0mj
	P42dWY+N5SC3yQx5aIIAmPwJq0BEaY5LEZwFXSMDr0OuQpBhXTqdYt8E/jGlhGdPnJbj3GXQ2kM1U
	Rjq35mVfVMgBUv+lbn4DArK7C7VfI84j/kuWSa+VFHFO1bU8cL4hhAC8uNnoyofbTppQispoZbllr
	T8gMySN8zlU9/XuKdVSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSQkl-0000bm-4E; Wed, 06 Nov 2019 19:14:03 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSQka-0000ZS-L1
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 19:13:53 +0000
Received: by mail-wm1-x342.google.com with SMTP id q70so5113973wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 11:13:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:subject:in-reply-to:references:date:message-id:mime-version;
 bh=imOl6s7WJtDyzdyKMjRfhQfqUS+7pQQOdxq1MLkDHB4=;
 b=k3l2bcgEB5zMkimsxKUQaGYW3GYIvbfgMggqg/xIB3b2muNxpyx9iikRkTO+F6RLxJ
 LUcr0uc5iBHAdfUSBBpKXUBMm9+BEmHlNt67rEhtZUQ5h3XKC1Df7udpm6b2psNg/3ti
 QKUPBecJaHFBH0QXl864EcYvb05hFLadvo3uAkDvtofUjF22SMDjeq9bLPD5vZahtJV4
 LWwhQgi5HUdjCcDO7F6rtbI3y9EWiRqYxlTn7T9eOQKAY68SqHn8KpWXWsCn/Ci7RAjI
 ohClif+oPgof1ms9CpXvfBI3zmZgajDQe2KxSwgkq59Lv5E4MKwDLfqub5cteAA6suid
 jbpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=imOl6s7WJtDyzdyKMjRfhQfqUS+7pQQOdxq1MLkDHB4=;
 b=fouW+95blDNA/D/U5bpLvaAEDyKea8T7RaGEzxOatjTj5ZIm7a9qnPMol1mCkgxoL6
 6eNTpsABn2oYAihVordC1hnUBoBAoggYTnRpNWNStiS2h6NSdOLjs2hyrd+ngvvWeZrU
 k5AbTcaKLax3rD7YXmuZa+291ECloxA2eI1LOnAwHuKbcc7JCkKp16iFiKnsKEqfNAdD
 wmYAvZW5+jqnZN4WASFbq2ounrlE6YTH4mQtqorFU7Eg91ZpumxCu9AEgmpF1bvU8xxx
 w8eKd60BfbDVW94hSLPD3cPSLKghG6pofoPPrlEksS/xAsqT2cTh17lbctplfk2mQMBI
 pFfQ==
X-Gm-Message-State: APjAAAUGPG/l66qcG5ReVi0CGo+vhAJqkALp1eaFEdmD8CHHB0Rumgkn
 MDYN5GVycL8F1rar5I8tXclRsj6EZyZoTA==
X-Google-Smtp-Source: APXvYqxofhZf6+9Ut84ichRu3J3mOUD9QKq9fRKGXAHOm5aOY3zxs0m2DqEz4oxZsC8/9oJnOIgeQg==
X-Received: by 2002:a1c:f602:: with SMTP id w2mr3859157wmc.83.1573067627615;
 Wed, 06 Nov 2019 11:13:47 -0800 (PST)
Received: from localhost (amontpellier-652-1-71-119.w109-210.abo.wanadoo.fr.
 [109.210.54.119])
 by smtp.gmail.com with ESMTPSA id h140sm4515466wme.22.2019.11.06.11.13.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 06 Nov 2019 11:13:46 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>,
 Christian Hewitt <christianshewitt@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] soc: amlogic: meson-gx-socinfo: Fix S905D3 ID for VIM3L
In-Reply-To: <7d8e80b5-0b37-691a-3375-6a37cc774a95@baylibre.com>
References: <1571646004-21269-1-git-send-email-christianshewitt@gmail.com>
 <7d8e80b5-0b37-691a-3375-6a37cc774a95@baylibre.com>
Date: Wed, 06 Nov 2019 20:13:45 +0100
Message-ID: <7hy2ws6cnq.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_111352_685286_806428AF 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> On 21/10/2019 10:20, Christian Hewitt wrote:
>> Chip on the board is S905D3 not S905X3:
>> 
>> [    0.098998] soc soc0: Amlogic Meson SM1 (S905D3) Revision 2b:c (b0:2) Detected
>> 
>> Change from v1: use 0xf0 mask instead of 0xf2 as advised by Neil Armstrong.
>> 
>> Fixes: 1d7c541b8a5b ("soc: amlogic: meson-gx-socinfo: Add S905X3 ID for VIM3L")
>> 
>> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
>> ---
>>  drivers/soc/amlogic/meson-gx-socinfo.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/drivers/soc/amlogic/meson-gx-socinfo.c b/drivers/soc/amlogic/meson-gx-socinfo.c
>> index 87ed558..01fc0d2 100644
>> --- a/drivers/soc/amlogic/meson-gx-socinfo.c
>> +++ b/drivers/soc/amlogic/meson-gx-socinfo.c
>> @@ -69,7 +69,7 @@ static const struct meson_gx_package_id {
>>  	{ "S922X", 0x29, 0x40, 0xf0 },
>>  	{ "A311D", 0x29, 0x10, 0xf0 },
>>  	{ "S905X3", 0x2b, 0x5, 0xf },
>> -	{ "S905X3", 0x2b, 0xb0, 0xf2 },
>> +	{ "S905D3", 0x2b, 0xb0, 0xf0 },
>>  	{ "A113L", 0x2c, 0x0, 0xf8 },
>>  };
>>  
>> 
>
> Acked-by: Neil Armstrong <narmstrong@baylibre.com>

Queued for v5.5,

Kevin



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
