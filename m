Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA2418C09B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 20:42:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/nU7hGwacHEQO4PCrpZh3S50Q3d742Y5D3M0nGhFFE8=; b=fmnu52Pqqx8p1v
	IhkshxPfIIOF7U8QHCnZDIM/i0rOaxC+cciULTlWH4zLMOJgKEK4ELfqf5wlT93lrJgSBNSYMzsqD
	cSGaOk+17HkwOtpFU+D4qQW4IXzqNB9dySX6NeNDUjRUz6IjMBtVGiswC60AWD6NlJv1TEiHCnNcZ
	Q7tSVDZeO3fImxhSAiXBv0++zsrO6Mgrhml7oytMKh0hG9X+aUSPM6hHp8IThEUAyJfb3sHyT8B3K
	A5K/bwWfEQKsq3JxoW41httkhDoG0P8N/fknqglVuUE4ywmJzuq9bD8nIO2dPO7xKYalBuNq0ks+N
	suz+TEP2sEsYX4WK9odA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF13q-00077y-JE; Thu, 19 Mar 2020 19:42:34 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF13g-00077B-0a
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 19:42:25 +0000
Received: by mail-lj1-x244.google.com with SMTP id r24so3923855ljd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 12:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=q4IYSKp2wG/4UoatG1cBrakrAirQHlhWNtEJ23gxzeU=;
 b=tXlzWPo8FHVA2iCI1OepuofmWSvFOcRjqI655Ad7KrpoB1SYoNY4kfnvEdkqgWhg7D
 BV02p7E6FCzklvEvvQSrr2nB0tSfCjiBzUncRuOgsy7+3EQD0KBsshjatZb3voOcVeA0
 ktNgB8hFECqKHU8ssRjCjxBn0hW2jsvbws2b3CRpK2Ell9sz5A4ZfdGjOFDHWhEtjaYJ
 /maqmkui77VcWOnpKXZ1WS2BxPyx4/pXqBxVvfpUAfuq4uRZwEsbUCaOiz6oIha+Q2DQ
 2ltgicyNVpXTIgqi7I+pA67G7cPN8soJgJXh8PqiuP34u1TlzqxW9d1gEPK89Bq8XkvJ
 RB7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=q4IYSKp2wG/4UoatG1cBrakrAirQHlhWNtEJ23gxzeU=;
 b=LWQcfI3QvICbxgOpcKLyloImbUMfmphxHQXGqyQV4yb5U1cVMDZN/kn7rKE6sF5O0C
 OB5iXznuSQMRB0T+hWa3B2dE6Dhhz6qp/uxCKte5+vXSWFAeZpPmo+gk7o5NKqXRUwXX
 wtgLX7x04OAkraCG5wAUbjQQ/wPE8NRjnZK77EHvpL2NXw4TkvB0l7Tu6dcbNlKSKR0W
 d9sN68+aizyFR6nmp/OPZqC9QaYeznWgEsxcK43aCFCLyGWBTOwkv5v/P4N3GQfFchtE
 PJFKxsLdXpJHmyOOg3lKp+biPZn7DEnUmXifakjG1WDlSqMJWbWUAH5xd8dNIrUT9NYB
 LeLg==
X-Gm-Message-State: ANhLgQ3DBeO4Jrja5PnIOLvm3XD3XzznM6zIDTgX7ugriVq07Qw8B/cR
 KgTWGuxeaHJO/mMVtEy0yXo=
X-Google-Smtp-Source: ADFU+vsH9gbaitfQ1D/nFLWS/Hwg7pIopeuQK4wmLy+4Gn+8aqstBHNN0RfbL4hBTLQKx+ivcKrvFw==
X-Received: by 2002:a2e:9284:: with SMTP id d4mr3054679ljh.226.1584646941559; 
 Thu, 19 Mar 2020 12:42:21 -0700 (PDT)
Received: from pablo-laptop ([2a02:a315:5445:5300:61c4:1399:8fb5:8d82])
 by smtp.googlemail.com with ESMTPSA id b23sm2065233lff.64.2020.03.19.12.42.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 12:42:20 -0700 (PDT)
Message-ID: <1d128596eeefb414b7b621b0db5ca0697030dbfc.camel@gmail.com>
Subject: Re: [PATCH v3 0/5] exynos-ufs: Add support for UFS HCI
From: =?UTF-8?Q?Pawe=C5=82?= Chmiel <pawel.mikolaj.chmiel@gmail.com>
To: Alim Akhtar <alim.akhtar@samsung.com>
Date: Thu, 19 Mar 2020 20:42:19 +0100
In-Reply-To: <20200319150031.11024-1-alim.akhtar@samsung.com>
References: <CGME20200319150701epcas5p4bb4365de0a0f4a4a6c7bc533e16d66ec@epcas5p4.samsung.com>
 <20200319150031.11024-1-alim.akhtar@samsung.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_124224_080530_3E822F86 
X-CRM114-Status: GOOD (  16.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pawel.mikolaj.chmiel[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 robh+dt@kernel.org, martin.petersen@oracle.com, linux-kernel@vger.kernel.org,
 krzk@kernel.org, kwmad.kim@samsung.com, avri.altman@wdc.com,
 cang@codeaurora.org, linux-scsi@vger.kernel.org, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-03-19 at 20:30 +0530, Alim Akhtar wrote:
> This patch-set introduces UFS (Universal Flash Storage) host controller support
> for Samsung family SoC. Mostly, it consists of UFS PHY and host specific driver.
> 
> - Changes since v2:
> * fixed build warning by kbuild test robot 
> * Added Reported-by tags
> 
> - Changes since v1:
> * fixed make dt_binding_check error as pointed by Rob
> * Addressed Krzysztof's review comments
> * Added Reviewed-by tags
> 
>  
> patch 1/5: define devicetree bindings for UFS PHY
> patch 2/5: Adds UFS PHY driver
> patch 3/5: define devicetree bindings for UFS HCI 
> patch 4/5: Adds Samsung UFS HCI driver
> patch 5/5: Enabled UFS on exynos7 platform
Hi
Is this compatible with Exynos7420? Looking at u-boot source code,
there is Espresso7420 - isn't it the same device? Also this driver
looks very similar to the one from vendor kernel sources (for my
device). 

I did tried to run this on my Exynos7420 based device (Samsung S6 Edge
phone) with 5.6-rc6, to get any storage working (since it doesn't have sdcard slot).

At first i got error in exynos_ufs_config_smu. Looking at vendor
sources, on my device only secureos is able to write to those registers
so i fixed it by using smc calls and driver probes fine. Will this be
also supported by driver (maybe in future)?

But now got another error
[    1.610464] exynos-ufshc 15570000.ufs: ufshcd_intr: Unhandled
interrupt 0x00000000
[    1.610629] host_regs: 00000000: 0383ff0f 00000000 00000200 00000000
[    1.610747] host_regs: 00000010: 00000101 00007fce 00000000 00000000
[    1.610863] host_regs: 00000020: 00000000 00030e75 00000000 00000000
[    1.614727] host_regs: 00000030: 0000000f 00000000 00000000 00000000
[    1.621061] host_regs: 00000040: 00000000 00000000 00000000 00000000
[    1.627396] host_regs: 00000050: f8c37000 00000000 00000001 00000000
[    1.633730] host_regs: 00000060: 00000001 00000000 00000000 00000000
[    1.640065] host_regs: 00000070: f9644000 00000000 00000000 00000000
[    1.646400] host_regs: 00000080: 00000001 00000000 00000000 00000000
[    1.652734] host_regs: 00000090: 00000002 95290000 00000000 00000000
[    1.747649] exynos-ufshc 15570000.ufs: ufshcd_intr: Unhandled
interrupt 0x00000000
[    1.747807] host_regs: 00000000: 0383ff0f 00000000 00000200 00000000
[    1.747924] host_regs: 00000010: 00000101 00007fce 00000000 00000000
[    1.748041] host_regs: 00000020: 00000000 00030e75 00000000 00000000
[    1.751909] host_regs: 00000030: 0000000f 00000000 00000000 00000000
[    1.758244] host_regs: 00000040: 00000000 00000000 00000000 00000000
[    1.764578] host_regs: 00000050: f8c37000 00000000 00000001 00000000
[    1.770913] host_regs: 00000060: 00000001 00000000 00000000 00000000
[    1.777248] host_regs: 00000070: f9644000 00000000 00000000 00000000
[    1.783582] host_regs: 00000080: 00000001 00000000 00000000 00000000
[    1.789917] host_regs: 00000090: 00000002 95290000 00000000 00000000
[    1.884841] exynos-ufshc 15570000.ufs: ufshcd_intr: Unhandled
interrupt 0x00000000
[    1.884999] host_regs: 00000000: 0383ff0f 00000000 00000200 00000000
[    1.885116] host_regs: 00000010: 00000101 00007fce 00000000 00000000
[    1.885233] host_regs: 00000020: 00000000 00030e75 00000000 00000000
[    1.889100] host_regs: 00000030: 0000000f 00000000 00000000 00000000
[    1.895435] host_regs: 00000040: 00000000 00000000 00000000 00000000
[    1.901770] host_regs: 00000050: f8c37000 00000000 00000001 00000000
[    1.908104] host_regs: 00000060: 00000001 00000000 00000000 00000000
[    1.914439] host_regs: 00000070: f9644000 00000000 00000000 00000000
[    1.920773] host_regs: 00000080: 00000001 00000000 00000000 00000000
[    1.927108] host_regs: 00000090: 00000002 95290000 00000000 00000000
[    2.998155] exynos-ufshc 15570000.ufs: ufshcd_query_flag: Sending
flag query for idn 1 failed, err = -11
[    4.502138] exynos-ufshc 15570000.ufs: ufshcd_query_flag: Sending
flag query for idn 1 failed, err = -11
[    6.006137] exynos-ufshc 15570000.ufs: ufshcd_query_flag: Sending
flag query for idn 1 failed, err = -11
[    6.006311] exynos-ufshc 15570000.ufs: ufshcd_query_flag_retry:
query attribute, opcode 5, idn 1, failed with error -11 after 3 retires
[    6.006545] exynos-ufshc 15570000.ufs: ufshcd_complete_dev_init
reading fDeviceInit flag failed with error -11

Do You have any idea what could be wrong?

Thanks
> 
> Note: This series is based on Linux-5.6-rc6 (commit: fb33c6510d55)
> 
> 
> Alim Akhtar (5):
>   dt-bindings: phy: Document Samsung UFS PHY bindings
>   phy: samsung-ufs: add UFS PHY driver for samsung SoC
>   Documentation: devicetree: ufs: Add DT bindings for exynos UFS host
>     controller
>   scsi: ufs-exynos: add UFS host support for Exynos SoCs
>   arm64: dts: Add node for ufs exynos7
> 
>  .../bindings/phy/samsung,ufs-phy.yaml         |   62 +
>  .../devicetree/bindings/ufs/ufs-exynos.txt    |  104 ++
>  .../boot/dts/exynos/exynos7-espresso.dts      |   16 +
>  arch/arm64/boot/dts/exynos/exynos7.dtsi       |   44 +-
>  drivers/phy/samsung/Kconfig                   |    9 +
>  drivers/phy/samsung/Makefile                  |    1 +
>  drivers/phy/samsung/phy-exynos7-ufs.h         |   85 +
>  drivers/phy/samsung/phy-samsung-ufs.c         |  311 ++++
>  drivers/phy/samsung/phy-samsung-ufs.h         |  100 ++
>  drivers/scsi/ufs/Kconfig                      |   12 +
>  drivers/scsi/ufs/Makefile                     |    1 +
>  drivers/scsi/ufs/ufs-exynos.c                 | 1399 +++++++++++++++++
>  drivers/scsi/ufs/ufs-exynos.h                 |  268 ++++
>  drivers/scsi/ufs/unipro.h                     |   41 +
>  include/linux/phy/phy-samsung-ufs.h           |   70 +
>  15 files changed, 2521 insertions(+), 2 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
>  create mode 100644 Documentation/devicetree/bindings/ufs/ufs-exynos.txt
>  create mode 100644 drivers/phy/samsung/phy-exynos7-ufs.h
>  create mode 100644 drivers/phy/samsung/phy-samsung-ufs.c
>  create mode 100644 drivers/phy/samsung/phy-samsung-ufs.h
>  create mode 100644 drivers/scsi/ufs/ufs-exynos.c
>  create mode 100644 drivers/scsi/ufs/ufs-exynos.h
>  create mode 100644 include/linux/phy/phy-samsung-ufs.h
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
