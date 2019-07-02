Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B895D87B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 01:46:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JRgqzUM4r/sR6zuthps2vvKiGH1RizSG7jwgO39rr+U=; b=mPErQOfIxMV+US
	B4hvnKHDmPrq+9vw6iNhVKM2Dx/fbZo8tr3bVpwQ3ac69K8Cg3CFRhN1O2bjH0jDmy3JOwx4LRCRv
	C/zIFfeOIL3MrUeyMvFy25+qyIAr8YR3DTQ7qtsFH4fkxFmRIjal45kWBnyuem9JjHEAACPNGBnVH
	blGa5D1CiFQ4b3X5CzH1sFmGwUpgUoCsN9wt7T2zPktX2ZKoe3Hqey7AcVbwR/qzNU8Lh71JGpenN
	3dMk02AoZ+fLCAyvu5CaGLfseXdcvpDBT64oOIihqnO2D5mjyOBtKWNgC4AY5pxMcavUHCu0V+V94
	Oy7tpNd0c/ANcUuKsimA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiSTb-0004mf-6u; Tue, 02 Jul 2019 23:46:19 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiSTO-0004lx-OW; Tue, 02 Jul 2019 23:46:08 +0000
Received: by mail-oi1-x241.google.com with SMTP id w196so477648oie.7;
 Tue, 02 Jul 2019 16:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gOTP+ZaLmXyKKyNKXioW6RTool5zGcTlIioWS0XWh/0=;
 b=fqxKgFLtXz/y3i1XJccpf1r8OEVcFBvDBBeD+u/RiosA2OQeo7s6BpIY9TIOjicG9c
 U88HeaU0Ng/LvQaa8nO7Gv/JnfcgGSSbkhzU8g/92RM2NjgO3h9s93BEqVr5Qr1zjrJn
 q8ByxOhcpNXhfQxpSYR7QsG1SFw4oiONM3xTXEzkZd7PzfxXzh9qX2lSVWFXnfOz/fkW
 SD+bw1p0PshSoyG7jMoVbs8WZ8s5ChDT2fsDrlSnwDQIQXgHwaaEi7YP+Qh193HO4HnN
 +u5d9y8u8Ts7K9Nz5GDSvMbTMW7SOHnXfA6JoMcS0/s3jyH3GK/7PJZWH81Bzzk8dQK/
 OvpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gOTP+ZaLmXyKKyNKXioW6RTool5zGcTlIioWS0XWh/0=;
 b=U5UT2N2MKU5T1dXZb92VtWTNSdF99cqD4Cni73rJaGjF48UjQHyhiJEgNdG5CoPeyH
 xtwewKug6YCFzaCZL8chz5jF8Oj5iOos2QNPkf1Tfw62ojQl73czPHGa6Zhj8lqkeOgu
 tixjP89fZUPrwKW1CNNFfXO5DXK+l6EkjKyQWUddqUqKp9bEvyT1iSXRkXjJLNbBU+ww
 XWb469MfVMH00biFBvgg6kFjyVqUoq3Mg2iXDIVweWAHyEWMZzn2Y9qCG3DWhnxtW3T/
 65R7Bd5hiuwyi6vTTjxhYhlxokjWqezhHe/Sox/3uwBfbJ+H7OLTGC362grRmZJoftd3
 cjUw==
X-Gm-Message-State: APjAAAWxBk7fo2dQFVOtRRThYuJqpDytbHg3jHO6PFTX5cIjN8idxwxy
 PjkY9r9Eyu0r3zPQItnHbxaqP9Jl00mKauS+Nxg=
X-Google-Smtp-Source: APXvYqwD5pAmB4x2ApOe+c2vc+d9pRDSp0daWsi8O5RWBkaiMnmqlFRjUobb+dXGUccoH7FswIqUb6z3GneFdMYr2Qw=
X-Received: by 2002:a05:6808:8f0:: with SMTP id
 d16mr1528711oic.47.1562111165901; 
 Tue, 02 Jul 2019 16:46:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190701091258.3870-1-narmstrong@baylibre.com>
 <20190701091258.3870-15-narmstrong@baylibre.com>
In-Reply-To: <20190701091258.3870-15-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 3 Jul 2019 01:45:55 +0200
Message-ID: <CAFBinCA5-5kbD-0e7Lm7FwRneWsKeW4yQrucd1PAk=s2PrtxJQ@mail.gmail.com>
Subject: Re: [RFC/RFT v3 14/14] arm64: dts: meson-g12b-odroid-n2: enable DVFS
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_164606_803294_391DF1EE 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 1, 2019 at 11:13 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Enable DVFS for the Odroid-N2 by setting the clock, OPP and supply
> for each cores of each CPU clusters.
>
> The first cluster uses the "VDDCPU_B" power supply, and the second
> cluster uses the "VDDCPU_A" power supply.
>
> Each power supply can achieve 0.73V to 1.01V using 2 distinct PWM
> outputs clocked at 800KHz with an inverse duty-cycle.
>
> DVFS has been tested by running the arm64 cpuburn at [1] and cycling
> between all the possible cpufreq translations of each cluster and
> checking the final frequency using the clock-measurer, script at [2].
>
> [1] https://github.com/ssvb/cpuburn-arm/blob/master/cpuburn-a53.S
> [2] https://gist.github.com/superna9999/d4de964dbc0f84b7d527e1df2ddea25f
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

[...]
> +       vddcpu_b: regulator-vddcpu-b {
> +               /*
> +                * Silergy SY8120B1ABC Regulator.
> +                */
interesting that they use different regulator ICs for CPU A and CPU B
the public schematics confirm your comments

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
