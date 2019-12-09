Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B9B116CA4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 12:58:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7GB4e3ygRA7Vuf9gavv/z9of/YhVrcqRnLdyMchJ6DM=; b=cFHh0ADJZN2jA/
	RBZ9so0hSpJPpAASZC8KrAezKg8jWjyAnX90JvXcTH/s7mR4NT9vhpcJNsyb5ROfK/6yizLg1ILv4
	isHp+1l1nNZIjiDK19NHFjFDabsw5rEyMZ7Lq0LvI2KI+z3e5G7Kt3PulhBDl64FLCULhijOEV7vd
	k1QmpnK1maCnIjtxqwHRiEO0cIVw6l1reRK/R72U86YpO+YysdZhSsKlH1EQ1X496fJOcKnJlrhRK
	+WAosBa2Usfmz2Z0q08NzsaT/lxoDPNMRkjzdpygtfgOpxz5ixvx/2Pub4cOxA2hmPe33U2AQT4vR
	jHCB44njHiImb9132lvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieHgE-0003Nu-K9; Mon, 09 Dec 2019 11:58:22 +0000
Received: from mout.web.de ([212.227.15.3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieHg6-0003Ma-La; Mon, 09 Dec 2019 11:58:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1575892687;
 bh=62z6uy/6WR5j1vgtqdICXgaRlMrLkDw2kYFQchsQQX4=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=AbJPXu35r/mj1Kl1py0u+c+fdjS9F0ZheA9EJhQwyiJH2LgDHZ4f/HcwViTbZC9Qc
 +sF64Ghtu3UmR0ytixvENnBoJ4pBauTStZpwaY8jxPa6f1iiGD7ziKDZiLLelovYV9
 BrYC9rvv7ESVrtdNUvX+xvcVdImlFEb9+hSg0Vu8=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from localhost.localdomain ([89.204.137.214]) by smtp.web.de
 (mrweb002 [213.165.67.108]) with ESMTPSA (Nemesis) id
 0LZvrx-1htN0k2PHx-00ll33; Mon, 09 Dec 2019 12:58:07 +0100
From: Soeren Moch <smoch@web.de>
To: Lee Jones <lee.jones@linaro.org>
Subject: [PATCH] mfd: rk808: Always use poweroff when requested
Date: Mon,  9 Dec 2019 12:57:46 +0100
Message-Id: <20191209115746.12953-1-smoch@web.de>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:4QjbT4z/xIikNcKmfWLhhH6xzC1/KEdG24B8uNl/vw7p1fNxDaT
 DMCoS7br/0f/uZE6ia5Q4XSuEwZZv85bfTQjwVFJMTARxXoR+4JBODy8zMwegXgrLjQeOfa
 SDNP9AJhPW1AH6h0pbD9uA0+HrN4B+X7em8dTcBHuVO8IAS1EdkFoeyPJuIrepHovm4pBFX
 Y3vxnLkJ5c8RjoOMgFlIg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vQQoMiCyYJs=:MjRPsmkGhlVryNQvyaXF2Q
 UDQ6nFwdncGTI2yDgUCC5JOngbTHVvXAAonkzM4YIEjTLTU2UFsqg8sgZPuYLjEZcO2hflaDE
 UQDRj0PeoNVt7ZCxRjgjl3EpgX6GJK4GKBaF2X0EaCfAUWdelW88s5b3g0epAWbl5T9ab5KS3
 8wwS9TGEEOwS9RO2zdqUbyaoGXv505aZYA3w3agKQhUGG/Mu2SVe10XXHLoMetthCCmB1M2Gb
 puDV57K8hYkF7gva41AyPc0RYHLNhl+wV0K81ueSxtln3gibAHfoYQY9ubZAbkXVjBs5Lpl7N
 I0TgicHs5h/5sqFpcSgQa1ombO5FP0i5qvwT3LM1tvkAZpSuEgNlJ3CBHSFmQ9fMk8UwmGOQH
 XcI25wUO0Mir4so8WhDRp0GlBJsN/qdcs56/leyEuqTmhXGAxIzpBIShwp2V1rwwdRRuBEp7t
 tGMyvUsuzQgnFFh32/WY8tR4uQFtg/GJBuk7NnjABcInCRAt7o/gFaBtpWKa+qAAycY+fFlJT
 z/bf0/+MUpHRpMGa4WHwoZHI5XTWFMJQBKIGwjmwNHhhd8Ct62LmZTAcRDvf7QtwQFw0UbHFH
 +DR/wydj2pPISHD072lxEOvZ+XlmZAibEWN6uQCIXNzMfRg86ZF9/8jD5KMWPAvv0xySXFJyi
 t4oP9rFpXSrzuQJ4imZPiquaJtiS3zkuouN1gPF06yp7RotUCo/u2dAFhJc7KFtcIJArviRhq
 o+eU93RUXToRDJ8DHtKpg7WuW0CE/p+r2OzU+nww2QOuuJxduh46bdAfMa0C1Pb4Im6hGVPSh
 jIwuyc485gfStufjf6mnTkwErktu/j+uMCIwA9Rleb3mmVDrSbrK0Om+qs/33Q/B0vYuo0Cvj
 QIJOjnsNFai7KiKOZmT+LYpSlRJvBPQ39zKqeuBUxDceDNPXqHsXsVk4inTXJhH/8py8Ec+mY
 fiBZF08raV+TTnYOXL4XIuIar5dCn0HUb2JJCEvlz270DMbbTABebwCTsPyJPZmMtvQAenNCj
 IXbfdyhGMMX7QxoSz9FZk5cUopg5yVG9BVWONEjJYEf7u8LtfF7+HNVgucTDn7DXzL2Y4ETBe
 j3v89GKLUFmaDGtEjbxSG4uvwg7+sCj892qqWgFPDkApSsGBjOzvBFEWbbTHkwuBA5BbFXNAJ
 mLlijWCMKRAm9URSoGpJzYGaiBUcl4p0Ci/5Me9VeXjE8QRjQHvFrlTtKua3HYJB9oHcRUn+4
 PIoyvU3E5HLp30W9H1e+leJtCqxXdnF8SEvBuyg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_035815_035183_F26A59BC 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.3 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, Soeren Moch <smoch@web.de>,
 Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With the device tree property "rockchip,system-power-controller" we
explicitly request to use this PMIC to power off the system. So always
register our poweroff function, even if some other handler (probably
PSCI poweroff) was registered before.

Signed-off-by: Soeren Moch <smoch@web.de>
---
Cc: Lee Jones <lee.jones@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/mfd/rk808.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index a69a6742ecdc..616e44e7ef98 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -550,7 +550,7 @@ static int rk808_probe(struct i2c_client *client,
 	const struct mfd_cell *cells;
 	int nr_pre_init_regs;
 	int nr_cells;
-	int pm_off = 0, msb, lsb;
+	int msb, lsb;
 	unsigned char pmic_id_msb, pmic_id_lsb;
 	int ret;
 	int i;
@@ -674,16 +674,9 @@ static int rk808_probe(struct i2c_client *client,
 		goto err_irq;
 	}

-	pm_off = of_property_read_bool(np,
-				"rockchip,system-power-controller");
-	if (pm_off && !pm_power_off) {
+	if (of_property_read_bool(np, "rockchip,system-power-controller")) {
 		rk808_i2c_client = client;
 		pm_power_off = rk808->pm_pwroff_fn;
-	}
-
-	if (pm_off && !pm_power_off_prepare) {
-		if (!rk808_i2c_client)
-			rk808_i2c_client = client;
 		pm_power_off_prepare = rk808->pm_pwroff_prep_fn;
 	}

--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
