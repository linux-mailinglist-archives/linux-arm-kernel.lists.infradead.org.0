Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 719D4185B56
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 10:08:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yfdbBUqLMQLyvsns3y/gMU5ZIO/8f3NOGaoYTEtQeNw=; b=YXe8yqglkuzkAQhz3aZGLPAiO
	fMk5Dh+uYrXGyCjFiKIHJRTyGYZGF39e8XzqyAYIMtZQYfvYIieZXMG2ZO7sf53ghf04Kh+fNoy42
	T9JHw5FSnv5iOqKC/WryLiPJc2vWXXwiqJ1/KewnMY+0F6f8mLHeux01k42R+cJFuC7/YkpUkH//8
	9NoTb/blUhtd/i0HLRuVv58AgP3/A7mk47Hx+JkfHFQkQSLPXGrgklPyF8eEU3+pF3sCD5IhITJhI
	7twdw8h/rjpalC7rtEajHbw83qLByCgvxe9KEqi/cKFQke0mA49HhjddDgTvy2FPGw9Dv5Crw00we
	rnjmTGKRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDPFi-0006Xb-96; Sun, 15 Mar 2020 09:08:10 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDPFX-0006XH-QA
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 09:08:01 +0000
Received: by mail-lj1-x229.google.com with SMTP id u12so15235843ljo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Mar 2020 02:07:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=y6+MMKtpoEZmXy95dogV64Elb9/FiBkAOb+wY0NQTiQ=;
 b=GCmgHqZu2FiKQ9x5fdyChDRTbh5m6hACNY9cSE9p+G9yst/lxtrR6fu2HirmNmqCVD
 6ESh+qAyTC6D7/OTK9kCKHFntLtgo8FxwnZNGA+ez0uQrHBYvrh+1C+w/bMwQCdBK6Ui
 ++C98mbgoHIG1mrw6vah91ctjecktALiI9upUbaAgCZ7dJZS3vW9JbYIRLshLoCxQSNh
 zZMLUcI+/nA1Jn3i5LG1424xo9uSUswtciICs+Fwv6lME+7wAkKvR0biu7XYGh6DR0si
 92Kia2rDJHNVfBREXeeuSpXhjRgfAc/IJ+5BrWej7o7kN0VoO4nMb7jHDpfHAklFu1kA
 sv0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :date:message-id:mime-version;
 bh=y6+MMKtpoEZmXy95dogV64Elb9/FiBkAOb+wY0NQTiQ=;
 b=UtKtnnzeSpIUkCEkFOcVd7RhPbnTDxfA+cYQfm/RjoKCBRylOJJCvkx4Rd1X70JB4n
 e87eUE15K/kHe14bzgiKUANNrEGFG+zTG6xwfqWqZesyxUKcIogdjAIbSiqTusMiZkVR
 0NWwUDkvGPaqsHX2dxTdmzJLtdjJBpgEjcRnewE+j1zUuxsvBrhb/094u3yj7eeWW0Rg
 Os7Rp/V1JRuG9h34BtnEOap6m+BrBmoVhowYzzlnoFsJRMsbyhaWVHr+hj0FCnfWNiuY
 IgoDZ7gtUqeypCZcjQBxGsfdgjTyJAon4U/5HWSdUWb8rbVRLrLiUFZYiBg0XKi6WEFp
 ag5A==
X-Gm-Message-State: ANhLgQ1dqqOu9WyemvmFNAXBi5gWmic4y7M8D4Gq38eXnM2fnZ7zUKRN
 tB6eZQe91l0CKxqwq9oU8xI=
X-Google-Smtp-Source: ADFU+vuUSjXZF4c+u/QwxIVHdBy2Qc8AarnVKoDp5c4eZz6oJTz+TOypteEeXK400S89WyQzo08rKw==
X-Received: by 2002:a2e:9ac5:: with SMTP id p5mr13400772ljj.200.1584263276934; 
 Sun, 15 Mar 2020 02:07:56 -0700 (PDT)
Received: from saruman (88-113-215-213.elisa-laajakaista.fi. [88.113.215.213])
 by smtp.gmail.com with ESMTPSA id
 k203sm614368lfd.7.2020.03.15.02.07.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Mar 2020 02:07:55 -0700 (PDT)
From: Felipe Balbi <balbi@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: Re: [PATCHv3 1/5] devicetree: bindings: exynos: Add new compatible
 for Exynos5420 dwc3 clocks support
In-Reply-To: <20200310194854.831-2-linux.amoon@gmail.com>
References: <20200310194854.831-1-linux.amoon@gmail.com>
 <20200310194854.831-2-linux.amoon@gmail.com>
Date: Sun, 15 Mar 2020 11:07:50 +0200
Message-ID: <87lfo2f0k9.fsf@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_020759_876679_5211FC44 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:229 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [balbif[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Rob Herring <robh@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: multipart/mixed; boundary="===============5433599712498632545=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============5433599712498632545==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi,

Anand Moon <linux.amoon@gmail.com> writes:

> Add the new compatible string for Exynos5422 DWC3 to support
> enable/disable of core and suspend clk by DWC3 driver.
> Also updated the clock names for compatible samsung,exynos5420-dwusb3.
>
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>

What is the dependency here?

checking file Documentation/devicetree/bindings/usb/exynos-usb.txt
Hunk #2 FAILED at 84.
1 out of 2 hunks FAILED

Applying on top of v5.6-rc5

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl5t8GYACgkQzL64meEa
mQZ5gw//fmJazamjVuJq52Gz3zIUmYUKhW/T27bH63LVJszVMLh4qdWsfS5siOsU
XQ5aozi1Djet7rUC8tPkW85WGs2J4/Mb8BiKZTCAX/XPVRprQHdZhUk3tkSYpdHE
xuXowbKt1rXkSS5lkJ792SOI6SlxISKDHmS5ELzA5S9dhHgRarmMioEcVySR6O0/
vw58f1r0jlU1MGjGOMkIeJ//tldiv+mK5gw1159zcSbj0KuLBwD0QnRG9uPYsUhg
TjO8bfdAnjdouYZtRTaB0CDcxU1c4v4UUgnVJ8BI4ABAspn6IC+CUnQkuqs7TXy8
Tf0f92uXywtUztxGTBGkx+IWy7aAutt+/L+FDoIc59VKibsBIOqFfZcBiHpk/oim
adfVmFrJ+6/HOKZ+56t/Et7NkhFJd+Qj1LN9VGcUSYt+1/0wJSppCEjN8iiXR+po
W9rdxgRROxFaxsquO09VFaFO/o35B+X7Pxa9aUQbL8Lgk5LztqxeXMS7J158WTVW
5WZGFq8Pn6P3F9oRIgy545hK9I/42UTlLRSEdVcyBTo9XmZ9USmBVzE5SkiZwYdb
wSbyfXxFSuu8mia3MzJIkMvjnsKpLm7MQlo35TKeGqW7TCgOmmwNLDpj2Rp7JdW3
HtzvRCKh93ytLgrfYMLVUjVKDewQBVc7v+aofdkagMprUcrNrlI=
=7hzO
-----END PGP SIGNATURE-----
--=-=-=--


--===============5433599712498632545==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5433599712498632545==--

