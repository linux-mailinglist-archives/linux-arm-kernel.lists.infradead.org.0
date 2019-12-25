Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B336E12A6A2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 08:51:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cA3thV+umvMuQ5TDXSuNPMillrXJhVsAOAn2HC2vwrk=; b=mbKGwndh7/Z3/a
	95gMDzAkAceByE2stXfgd/gmiAWh8kndw8PEiVULtOVglJomfWD8TsW+rmhjrkLNom0DkQXpJtUa8
	JS+Hjt+XMjRU9AajV/Gfstnb3F7fooDDj6UXWNJJEpdTRqrO4MuKPpzM5KoL/Sqyb0KdQtAZ73ecW
	LvZdeh0pyvE6A7GWXWIzB/1HVqwUiZo32ModBRL9hWZu2NHEqOJY/RVM8HUPun3kXQgzYCh2FfxP5
	5C2c8fNDd3qsBDjeO/89BQIECACWbAZoqbgcXhN9BYAJ1GnGwZEEseqx+Bt+9RdYELsTLQNice7iE
	6SkoyC19O5TJGZXZSyww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ik1Rh-0003s2-1e; Wed, 25 Dec 2019 07:51:05 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ik1RV-0003rW-VS
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Dec 2019 07:50:56 +0000
Received: by mail-wm1-x341.google.com with SMTP id c127so3184348wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Dec 2019 23:50:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from:cc; bh=YzkCkHna5+alFosfbLZZPOg7/grdG9NgaN4c9PpYRp8=;
 b=JHLV3BZ+OigFMJNVN+kkcFknmI3+ozDlK0wstgFdGdbe9TGx6QyjawLTJViya24Z3l
 1QujkTK/cyyRjn2UiQmNTnGa5Q+sqtN/TKpuQQacKZJmB8Rl+5DXBxAEtj1QR4+oXVPr
 d9Os8qy3f56ScV8z5kXaItm6IfQXegJHW+10KM09wAk7SJ3LTtHOLYY8H9zPG1dnLnV8
 uWnoLptlX1mpx2FlaUp8e3B/MRU9bZt5iNZiExF1pKqEC/Pd3QuMC0kjh018ZPVQlxnT
 KBx9QNt7KPBKghhaUjHjz+cpoxzlH5W3GARlKEIb9que+zUnp+jrraxwKRKIO5ub9Zv3
 X5kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from:cc;
 bh=YzkCkHna5+alFosfbLZZPOg7/grdG9NgaN4c9PpYRp8=;
 b=ON1PHvZReoG5RvW+O/zRWLpaf0bSXt9oe+GdOB1OMHJ/X9kKag+fOAGSzj+LCci9aH
 HbmE7f4Mj2GStHRGhRf0ejn5Eaa26IgL//2KlwddLCwgO5mX2mqOWwu98HU+AgbCdNn5
 B2HLi6NDNIBIYyeRNuPprPKjKeDvnGrcrQDHl8h7uGCKJIMrTwOiqlFTQs5ushAGgKUb
 5r5T539hjhmcPTBGamxv5BQrVCgGsWQvCHFe5VHzUUNr+k1uXleC4HQ/Hzt3mZ64Db0G
 hHKuSRU9fS9iXvC/O8/iUxQmVCgxQY1SGZDTldP87zUKHUnCVrwdEnsA5ELmmB4BteH9
 NEow==
X-Gm-Message-State: APjAAAUPLAZSHsrBpAejVGpo/xv0O7E99ekK3GfKdcL3JQ/IvOgG7ip3
 SAla2LEuDEdBUsweDRh5uQFoKg==
X-Google-Smtp-Source: APXvYqyfXcvDILa+0PPgmKUcb+xuzaJCnoBBa5gz2xRc7pT7cPzNAzsMCbyGb0uU/Z567XcPRBHO+g==
X-Received: by 2002:a7b:c93a:: with SMTP id h26mr7862622wml.83.1577260251487; 
 Tue, 24 Dec 2019 23:50:51 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id m10sm26766900wrx.19.2019.12.24.23.50.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Dec 2019 23:50:50 -0800 (PST)
Message-ID: <5e0314da.1c69fb81.a7d63.29c1@mx.google.com>
Date: Tue, 24 Dec 2019 23:50:50 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Lab-Name: lab-baylibre
X-Kernelci-Kernel: v5.5-rc3
X-Kernelci-Tree: broonie-regmap
X-Kernelci-Report-Type: bisect
X-Kernelci-Branch: for-next
Subject: broonie-regmap/for-next bisection: boot on
 ox820-cloudengines-pogoplug-series-3
To: tomeu.vizoso@collabora.com, khilman@baylibre.com,
 David S. Miller <davem@davemloft.net>, mgalka@collabora.com,
 guillaume.tucker@collabora.com, broonie@kernel.org,
 Jayati Sahu <jayati.sahu@samsung.com>, Sriram Dash <sriram.dash@samsung.com>, 
 Padmanabhan Rajanbabu <p.rajanbabu@samsung.com>, enric.balletbo@collabora.com
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_235054_154981_7456D18E 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* This automated bisection report was sent to you on the basis  *
* that you may be involved with the breaking commit it has      *
* found.  No manual investigation has been done to verify it,   *
* and the root cause of the problem may be somewhere else.      *
*                                                               *
* If you do send a fix, please include this trailer:            *
*   Reported-by: "kernelci.org bot" <bot@kernelci.org>          *
*                                                               *
* Hope this helps!                                              *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

broonie-regmap/for-next bisection: boot on ox820-cloudengines-pogoplug-series-3

Summary:
  Start:      46cf053efec6 Linux 5.5-rc3
  Details:    https://kernelci.org/boot/id/5e02ce65451524462f97314f
  Plain log:  https://storage.kernelci.org//broonie-regmap/for-next/v5.5-rc3/arm/oxnas_v6_defconfig/gcc-8/lab-baylibre/boot-ox820-cloudengines-pogoplug-series-3.txt
  HTML log:   https://storage.kernelci.org//broonie-regmap/for-next/v5.5-rc3/arm/oxnas_v6_defconfig/gcc-8/lab-baylibre/boot-ox820-cloudengines-pogoplug-series-3.html
  Result:     d3e014ec7d5e net: stmmac: platform: Fix MDIO init for platforms without PHY

Checks:
  revert:     PASS
  verify:     PASS

Parameters:
  Tree:       broonie-regmap
  URL:        https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regmap.git
  Branch:     for-next
  Target:     ox820-cloudengines-pogoplug-series-3
  CPU arch:   arm
  Lab:        lab-baylibre
  Compiler:   gcc-8
  Config:     oxnas_v6_defconfig
  Test suite: boot

Breaking commit found:

-------------------------------------------------------------------------------
commit d3e014ec7d5ebe9644b5486bc530b91e62bbf624
Author: Padmanabhan Rajanbabu <p.rajanbabu@samsung.com>
Date:   Thu Dec 19 15:47:01 2019 +0530

    net: stmmac: platform: Fix MDIO init for platforms without PHY
    
    The current implementation of "stmmac_dt_phy" function initializes
    the MDIO platform bus data, even in the absence of PHY. This fix
    will skip MDIO initialization if there is no PHY present.
    
    Fixes: 7437127 ("net: stmmac: Convert to phylink and remove phylib logic")
    Acked-by: Jayati Sahu <jayati.sahu@samsung.com>
    Signed-off-by: Sriram Dash <sriram.dash@samsung.com>
    Signed-off-by: Padmanabhan Rajanbabu <p.rajanbabu@samsung.com>
    Signed-off-by: David S. Miller <davem@davemloft.net>

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
index bedaff0c13bd..cc8d7e7bf9ac 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
@@ -320,7 +320,7 @@ static int stmmac_mtl_setup(struct platform_device *pdev,
 static int stmmac_dt_phy(struct plat_stmmacenet_data *plat,
 			 struct device_node *np, struct device *dev)
 {
-	bool mdio = true;
+	bool mdio = false;
 	static const struct of_device_id need_mdio_ids[] = {
 		{ .compatible = "snps,dwc-qos-ethernet-4.10" },
 		{},
-------------------------------------------------------------------------------


Git bisection log:

-------------------------------------------------------------------------------
git bisect start
# good: [e42617b825f8073569da76dc4510bfa019b1c35a] Linux 5.5-rc1
git bisect good e42617b825f8073569da76dc4510bfa019b1c35a
# bad: [46cf053efec6a3a5f343fead837777efe8252a46] Linux 5.5-rc3
git bisect bad 46cf053efec6a3a5f343fead837777efe8252a46
# good: [2187f215ebaac73ddbd814696d7c7fa34f0c3de0] Merge tag 'for-5.5-rc2-tag' of git://git.kernel.org/pub/scm/linux/kernel/git/kdave/linux
git bisect good 2187f215ebaac73ddbd814696d7c7fa34f0c3de0
# good: [0dd1e3773ae8afc4bfdce782bdeffc10f9cae6ec] pipe: fix empty pipe check in pipe_write()
git bisect good 0dd1e3773ae8afc4bfdce782bdeffc10f9cae6ec
# good: [040cda8a15210f19da7e29232c897ca6ca6cc950] Merge tag 'wireless-drivers-2019-12-17' of git://git.kernel.org/pub/scm/linux/kernel/git/kvalo/wireless-drivers
git bisect good 040cda8a15210f19da7e29232c897ca6ca6cc950
# bad: [4bfeadfc0712bbc8a6556eef6d47cbae1099dea3] Merge branch 'sfc-fix-bugs-introduced-by-XDP-patches'
git bisect bad 4bfeadfc0712bbc8a6556eef6d47cbae1099dea3
# good: [0fd260056ef84ede8f444c66a3820811691fe884] Merge git://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf
git bisect good 0fd260056ef84ede8f444c66a3820811691fe884
# good: [90b3b339364c76baa2436445401ea9ade040c216] net: hisilicon: Fix a BUG trigered by wrong bytes_compl
git bisect good 90b3b339364c76baa2436445401ea9ade040c216
# bad: [4c8dc00503db24deaf0b89dddfa84b7cba7cd4ce] qede: Disable hardware gro when xdp prog is installed
git bisect bad 4c8dc00503db24deaf0b89dddfa84b7cba7cd4ce
# bad: [28a3b8408f70b646e78880a7eb0a97c22ace98d1] net/smc: unregister ib devices in reboot_event
git bisect bad 28a3b8408f70b646e78880a7eb0a97c22ace98d1
# bad: [d3e014ec7d5ebe9644b5486bc530b91e62bbf624] net: stmmac: platform: Fix MDIO init for platforms without PHY
git bisect bad d3e014ec7d5ebe9644b5486bc530b91e62bbf624
# good: [af1c0e4e00f3cc76cb136ebf2e2c04e8b6446285] llc2: Fix return statement of llc_stat_ev_rx_null_dsap_xid_c (and _test_c)
git bisect good af1c0e4e00f3cc76cb136ebf2e2c04e8b6446285
# first bad commit: [d3e014ec7d5ebe9644b5486bc530b91e62bbf624] net: stmmac: platform: Fix MDIO init for platforms without PHY
-------------------------------------------------------------------------------

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
