Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DD5156026
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 21:49:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OkNeMdaLKb4kFmB3gq/xB/x0Q35+QIDLCaAJ7ze70Oo=; b=bD6O+LGzI9GtfO
	bSifJDN82f8Dxcu0RZ6O8/QFgPMN5P/KXwzqV7XpAwHgd/1wvOi0fMYrhlq1VEhjjnLBQWOA2nnUH
	pJhfnvJGd34DmCeRNLVxj3wI7PmDQranGihOyRRW0WOheNSTaN0B+i3oaYGlOO2DK4tM2weg/LpU9
	Jm8/XslE4Ea4gfLBRbyAeWG+oC9yo3Z0VbRq6Z4PnQW61W2rd4MBlvcrymGTOXy+CdqmZdunXFjBG
	xrhT7LEzTHAzT9Z8W+1Y9jvfBonI0sdTKtOY/vfc4TCYSmKzQ0PXPk+UsvWXv+exskLKDykJRdgC5
	8QRJdV4evj5S3K+9z67g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0AYc-0003Xw-1l; Fri, 07 Feb 2020 20:48:58 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0AYT-0003Wu-UX; Fri, 07 Feb 2020 20:48:51 +0000
Received: by mail-wm1-x330.google.com with SMTP id f129so4236928wmf.2;
 Fri, 07 Feb 2020 12:48:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Vo3y/3LI/9xS6ovXLyiIY19qZ4rNDgl5cjTrH5DGm4I=;
 b=HIcSkZzdBvgR0WPcV6MG53XbfktoeIflCnUKVByWe0jBVHEfCzzei6rSL0pCM7RKDY
 wOvMog9dnWZEgWH2WvNPvv9oxFMCMI2ePH54mtU+k/JkksURgPOxbzsjjvLKSiQMLu3u
 Coi36nEJkRtD5bOrgG7lxQKGTGbp1O4j9GjUUn4D8JZW8fujXkvnsykngs5jlBCpQhsf
 WK87zaQPNiICgy5PpkE2HvhNwcZKHZmd0BtOJFD61Om+Nq7nihY5yrvaUJ3r1wFYvS3F
 W36Qkw7vvt6+d+Vqz1rPdcd2MpVRA1dVA2bnCfzw1TsAoogFmSk2vLlP9K4/9XGaJRQY
 swUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Vo3y/3LI/9xS6ovXLyiIY19qZ4rNDgl5cjTrH5DGm4I=;
 b=J0OzNkqBCeGVnJaFhzxAVxXeIN1xb7n4zaQEEx9gO8N/Ait/IZUx+xtoxn7UXSXjJ3
 rT+zr8J6Wd+LHfiF5rqqjvDpewmV9CCUEWSPukUWphMb0qxvIpW3fjJNo3AqdyKat9RB
 tzUlsezVfiwWrHTh8YtdrlLRkTYcOxVaBF/clPMU5/uYsApMpu13t1bk93jaVwtNBGoq
 uiIngvqtWQllLM0X6jywJ+2uI/EBYNjDNBYlayvse7I80QyqjLTwv0RL9+xpsXp9/anB
 wsLGCd5KP+ZN+FtVvJPhO8z9JbSFKpyauU6zz7YYmAGOEJ3QLiAAvv13sK2JGUmmPJe+
 AIeg==
X-Gm-Message-State: APjAAAUDWp2CkB4OhGCCLcLTsIClqAjw7K4lJV9DLkqLM+JLQMmyo1tn
 iQWVqHMdIOHyIH+jEmRgivE=
X-Google-Smtp-Source: APXvYqww2HjjQMNwdkQTkIkLEammO08yj4O42JmLPef87CvM4J1Vq8Ec3LZwBSGk+vtbq6vnsV4cfA==
X-Received: by 2002:a1c:4b0f:: with SMTP id y15mr116024wma.87.1581108528197;
 Fri, 07 Feb 2020 12:48:48 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id g128sm4518742wme.47.2020.02.07.12.48.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2020 12:48:47 -0800 (PST)
Date: Fri, 7 Feb 2020 21:48:45 +0100
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: herbert@gondor.apana.org.au, davem@davemloft.net, heiko@sntech.de,
 linux-rockchip@lists.infradead.org
Subject: [BUG] crypto: rk3288: ecb-aes-rk encryption failed
Message-ID: <20200207204845.GA15221@Red>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_124849_988082_B6D10584 
X-CRM114-Status: UNSURE (   5.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:330 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [clabbe.montjoie[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello

When running next-20200207 on a rk3288-miqi, I get
alg: skcipher: ecb-aes-rk encryption failed on test vector \"random: len=0 klen=32\"; expected_error=0, actual_error=-22, cfg=\"random: use_final nosimd src_divs=[<flush>54.11%@+27, 29.21%@+0, <flush>0.9%@+3586, 16.59%@+3971] dst_divs=[100.0%@+20] key_offset=63\"

Loading tcrypt later give me:
udevd[117]: worker [125] /devices/platform/ff8a0000.cypto-controller is taking a long time
udevd[117]: worker [125] /devices/platform/ff8a0000.cypto-controller timeout; kill it

Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
