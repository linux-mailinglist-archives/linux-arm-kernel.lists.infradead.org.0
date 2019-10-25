Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0547E53EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 20:52:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+OoWBFtoAXm6IEjfxcecEHo9F/i7GbEx69eFctz1oA8=; b=EPwT7hTSngTxYQ
	Y2SI0ikHmCkueeT8hSC9qJvV3mZzmZjiInUXAH2pirFTo5K+pIXHiqP3KK2BZbJWQNPlh+TOcR+Hy
	mVLWcH3T1XyLMdIsOsz25TFfUH7uI8X46vQe4q6naY7a/CMYkBLwAaPxDNufnZmcF7wghkdk7zPNr
	4kp0DE+VGGgzoCJpRzMqf5lHNslxEWZP76lv9BPvAHT8OIvZAvjBEzfL/rHzsqcAYFSMqxQeaKoo9
	Dq/HRhon0WMAmnCv/RFuNxaK9bEO9qviueXb/c/gorb5gyVG4n5LAfSwBbCkGyU6DgSY4lUF2Kr/o
	yzfMtAm647ReiEMYdJyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO4hD-0005eL-Oc; Fri, 25 Oct 2019 18:52:23 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO4gV-0005CJ-7y
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 18:51:41 +0000
Received: by mail-wr1-x443.google.com with SMTP id w18so3511398wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 11:51:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Q+iACLBvw6hCCkNMWVDo9dYY6POCxwyjg5JBiN7Fojg=;
 b=hH3PiQ5/C4qYxSEafpBHVzLMCHo2J8w8CaFH8dzSqQ5dZQ1MdF+nCFkUgvxrVhHu8N
 6Pr0NJNWZh9Js2JvQrcAuP69DLEmY4RJL4gWcoK+FSrWyjs/h2iJc1laowwR21SEV9c+
 h+6quHN/6rLXtZjjds2vwt8sBLwdegz5sY3/GxPIltxQx5GkF9/BKHswcwmBOBwQeWpn
 e/D00AkZX6JGayCqws4pD6jJNusH42MeN+iFdJd3fV3tDxS25lziBRXb0x693TkEkijj
 LcCvy1j9ZnkYDKjrN/8Bt3rx6ZsgAclMOtJpyNI15d4GWcPH7L8YYqrFNLuuKARVPgpl
 GQ2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q+iACLBvw6hCCkNMWVDo9dYY6POCxwyjg5JBiN7Fojg=;
 b=rtT6+yWwi68GiAQ7cCBFqn51KzxgwgQjYt7/OkVp6ZlC87vQj7D4wO3kzid2jkKf7x
 ftDdpcGPW1CRUb3bm9lgfo854NhUtW1JYOs1Oe5kX9crYLOXU3b75IdmntLXM6dccn2H
 zUcdy5ZbC6C0OnRu4duRks5ISmmr1SrK2KEOBCHX95Xl/qVPGsbXGzLuGNKOOiPNpdxW
 vwySuy6eBh4n5st0mfiBiawH34ky6d6sfEdvcf6ify0R79YlEhBowi1L30FIKLJgrqVD
 AhLcH2iPRXshuyyA8MlCyGXj+QwIqUcjSzIGnHdvf2SCgpc6+KlJVnu5MHsTsKCnrKoR
 q4KQ==
X-Gm-Message-State: APjAAAXuOJX/hd0kaKee/p/ttDHcxJcjnVWMf92ABNJw4bdK3nx9Qz1i
 9ztY25eQIn7Hs9UuAyMISYk=
X-Google-Smtp-Source: APXvYqw6fwwDvCcymz+NQ1L4FhDY53LrjehhsmqG/5kU0ansV1t3WcjQGsP4tlyreAjV4OdTXN0m8Q==
X-Received: by 2002:a5d:4283:: with SMTP id k3mr4346397wrq.236.1572029497894; 
 Fri, 25 Oct 2019 11:51:37 -0700 (PDT)
Received: from Red.localdomain (lfbn-1-7036-79.w90-116.abo.wanadoo.fr.
 [90.116.209.79])
 by smtp.googlemail.com with ESMTPSA id l22sm4821683wrb.45.2019.10.25.11.51.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 11:51:37 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mark.rutland@arm.com,
 mripard@kernel.org, p.zabel@pengutronix.de, robh+dt@kernel.org,
 wens@csie.org
Subject: [PATCH v3 4/4] ARM: dts: sun9i: a80: Add Security System node
Date: Fri, 25 Oct 2019 20:51:28 +0200
Message-Id: <20191025185128.24068-5-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191025185128.24068-1-clabbe.montjoie@gmail.com>
References: <20191025185128.24068-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_115139_370381_3DF6C6FF 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Security System is a hardware cryptographic accelerator that support
AES/MD5/SHA1/DES/3DES/PRNG/RSA algorithms.
It could be found on Allwinner SoC A80 and A83T

This patch adds it on the Allwinner A80 SoC Device-tree.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm/boot/dts/sun9i-a80.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/sun9i-a80.dtsi b/arch/arm/boot/dts/sun9i-a80.dtsi
index b5c46934b5b1..1d900f591d5f 100644
--- a/arch/arm/boot/dts/sun9i-a80.dtsi
+++ b/arch/arm/boot/dts/sun9i-a80.dtsi
@@ -457,6 +457,15 @@
 			reg = <0x01700000 0x100>;
 		};
 
+		crypto: crypto@1c02000 {
+			compatible = "allwinner,sun9i-a80-crypto";
+			reg = <0x01c02000 0x1000>;
+			interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
+			resets = <&ccu RST_BUS_SS>;
+			clocks = <&ccu CLK_BUS_SS>, <&ccu CLK_SS>;
+			clock-names = "bus", "mod";
+		};
+
 		mmc0: mmc@1c0f000 {
 			compatible = "allwinner,sun9i-a80-mmc";
 			reg = <0x01c0f000 0x1000>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
