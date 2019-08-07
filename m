Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0FBC85238
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 19:39:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oDjeFAE+bTOOl3eFpQ7o2h/fnXpuNPRnuGyJbf/4FDE=; b=T+Wh74uww0opjdyCHaszhSbIv
	GNX9nHl1LUVmZlnlTYqTX6xtkXYurZCxMpNu9IAiD+7eTEEuA/hm4hkzeT/JGHUzZO2mTbLaIIFUQ
	2em+IsHe5CFYtEhAaq8fkRdaUSTHizNoE2yeyOY2kkwiYIfwBSY/YNZvlM75x/gr0uD/KKUNQn08J
	Jl9wEmw9eaU73C/1cBxPSEaASFGhFa8qPcFjJIO0sa2TajvM6jMN8O/Tm9rhqVsgqWt0v+1fH4Bq4
	v9k6l+2F8PKwbKDtDKsTB6ocHeve1UleumS2+pSErTeUEGzcpOw8k6E36xpoMYA+QK/ZIIITYBbVA
	gsN4MDw9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvPtk-0002Zn-O6; Wed, 07 Aug 2019 17:38:52 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvPtZ-0002ZU-LR
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 17:38:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wa3PM2IPgYIbeTotIrjEpA6x+CSggkAquaTMWPLLVlg=; b=un56Q7Y8IugFG4Uzjrf9TpN4q
 qsXduoPza3EzpowKXCYTiHVEoKthEF5ysdSes4U5R03S8qiEPu1sH/blIBC9GQZ8QMwR8pSdr3x9r
 iJHXbncvv8g1qo3flKIEe/gahNUXQbTjspLpxqRj4AfZWPpux8XNeJ8Gr/xBCg4D96cDI=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hvPtV-0008KE-8b; Wed, 07 Aug 2019 17:38:37 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 47A412742B9E; Wed,  7 Aug 2019 18:38:36 +0100 (BST)
Date: Wed, 7 Aug 2019 18:38:36 +0100
From: Mark Brown <broonie@kernel.org>
To: Andy Gross <agross@kernel.org>, khilman@baylibre.com,
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>
Subject: Re: next/master boot: 263 boots: 11 failed, 186 passed with 64
 offline, 1 untried/unknown, 1 conflict (next-20190802)
Message-ID: <20190807173836.GJ4048@sirena.co.uk>
References: <5d4428ea.1c69fb81.4e1ae.1008@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <5d4428ea.1c69fb81.4e1ae.1008@mx.google.com>
X-Cookie: Dammit Jim, I'm an actor, not a doctor.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_103843_033436_C115F283 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: kernel-build-reports@lists.linaro.org, linux-arm-msm@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-next@vger.kernel.org,
 freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2309499255228291710=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2309499255228291710==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qD3brAgIG4LbUq6d"
Content-Disposition: inline


--qD3brAgIG4LbUq6d
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Aug 02, 2019 at 05:13:30AM -0700, kernelci.org bot wrote:

Today's -next still fails to boot on CM-QS600 with qcom_defconfig:

>     qcom_defconfig:
>         gcc-8:
>             qcom-apq8064-cm-qs600: 1 failed lab

This has been going on since June.  It crashes initializing the GPU:

[    4.261135] adreno 4300000.adreno-3xx: 4300000.adreno-3xx supply vddcx not found, using dummy regulator
[    4.270254] msm 5100000.mdp: [drm:msm_gpu_init] A320: using IOMMU
[    4.280025] 8<--- cut here ---
[    4.285557] Unable to handle kernel paging request at virtual address 40000000
[    4.288430] pgd = (ptrval)
[    4.295714] [40000000] *pgd=00000000
[    4.298329] Internal error: Oops: 805 [#1] PREEMPT SMP ARM
[    4.302054] Modules linked in:
[    4.307352] CPU: 2 PID: 88 Comm: kworker/2:1 Tainted: G        W         5.3.0-rc3-next-20190807 #1
[    4.310391] Hardware name: Generic DT based system
[    4.319353] Workqueue: events deferred_probe_work_func
[    4.319930] usb 1-1: New USB device found, idVendor=04b4, idProduct=6570, bcdDevice=32.99
[    4.324201] PC is at v7_dma_clean_range+0x1c/0x34
[    4.324214] LR is at __dma_page_cpu_to_dev+0x28/0x8c

...

[    4.753642] [] (v7_dma_clean_range) from [] (__dma_page_cpu_to_dev+0x28/0x8c)
[    4.761795] [] (__dma_page_cpu_to_dev) from [] (arm_dma_sync_sg_for_device+0x4c/0x64)
[    4.770654] [] (arm_dma_sync_sg_for_device) from [] (get_pages+0x1bc/0x218)
[    4.780199] [] (get_pages) from [] (msm_gem_get_and_pin_iova+0xb4/0x13c)
[    4.788704] [] (msm_gem_get_and_pin_iova) from [] (_msm_gem_kernel_new+0x38/0xa8)
[    4.797386] [] (_msm_gem_kernel_new) from [] (msm_gem_kernel_new+0x24/0x2c)
[    4.806501] [] (msm_gem_kernel_new) from [] (msm_gpu_init+0x4a4/0x614)
[    4.815021] [] (msm_gpu_init) from [] (adreno_gpu_init+0x17c/0x288)
[    4.823342] [] (adreno_gpu_init) from [] (a3xx_gpu_init+0x84/0x108)
[    4.831239] [] (a3xx_gpu_init) from [] (adreno_bind+0x1c4/0x268)
[    4.839224] [] (adreno_bind) from [] (component_bind_all+0x11c/0x258)
[    4.847213] [] (component_bind_all) from [] (msm_drm_bind+0xf8/0x638)
[    4.855282] [] (msm_drm_bind) from [] (try_to_bring_up_master+0x1fc/0x2b8)

More details including full logs and the image file at:

	https://kernelci.org/boot/id/5d4ac1e659b514754b31b293/

--qD3brAgIG4LbUq6d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1LDJsACgkQJNaLcl1U
h9Bg/wf9FixzsVlkqiOzvwUv+Hd4DpypmROaAhSbozl77Dy/KqDn4DsMIeuyKhYJ
/I2KNn3yazKyh4NA02GD7/lL0Vw5VmEw19lNqIC+m7ozQK/jTY/Qc8R1BpjfVooy
s2IBQ8/PyrPP0s3q5quTEfKavfDQU7YcxMcMaT+XNNFO1Jf66ZWVVHvPgCprafQd
eWhy8i07WPZKdFlh3jpnUKTmm7TDOvF6grnhF8qS+ZhEN+5Bfg7qhrUKc8TM7qJX
G0+WdOy8ph6PZVqXlUaWkXz6prKdEkoMrfGOl1Pwc0Bh0qqTyctP/RUiXg8Qeq5C
KT5zwu4px+F5XdIadLwwqgMn46XoKA==
=cozE
-----END PGP SIGNATURE-----

--qD3brAgIG4LbUq6d--


--===============2309499255228291710==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2309499255228291710==--

