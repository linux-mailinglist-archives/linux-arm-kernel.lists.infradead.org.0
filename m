Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE180F2210
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 23:46:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=86D7ozoUf8fULSlwJOeD1t7Tw1YeKuHOGZ1teVtZRiM=; b=K4u
	maprHyztdw9/ELINhVLRlEaqpOj099IyQ8IGE952RlFJDW4mTMwvygk5DaZu57LUImpSx1yXlH5SK
	4FjkbI9amhrsdfInuMUPFXLcXfEKTDBnLkriau0Xs5YLgPeLej2uDmQ0vNDr/FZN4LIO2Kq2b1mHb
	lr+AEAUUQCnkM5eHJAs7EbYfUQCIETUMiXVODnXvbG6PMI01D5aa9dhmspJm5Bcu0U5LdhnMj7Z+j
	K/QovsP9SgikHAn1LRfrLEgDITOEb5td3TeWVqsx1T0/ato1Qsl9Nfnmdhzgwb4n0eaZ2w1iBXzbL
	PLy5+kHDj/32YdCZzumaP0mrm43ts1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSU46-00043u-9q; Wed, 06 Nov 2019 22:46:14 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSU3x-00042v-BA
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 22:46:07 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 477hTJ51wWz9sP3;
 Thu,  7 Nov 2019 09:45:56 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1573080358;
 bh=+XwusxsL0b4rJBumGPAzaru0IjxloMP02YE8X8kLabo=;
 h=Date:From:To:Cc:Subject:From;
 b=rLZM9R01VqV7vgXOwFbsOeF67bN/WIoz/XjxhJHxjXsf5MMzeYoPJX8x9VBP9DGCt
 ZTdQDaXK5fcRKzIJmWnQcPLPI4RtfkEMrOiISWci3m159I0wOmpUhn/zfNbH+FLtiW
 BNo6AgPyOPsgVJDzcwGXom+j5WzDPafsCOYLjGw0b5mljlguia+6p8mf2aIoqPwBUg
 yb4jlPWvHNJhO1zYHTKk84AzaXBCj+hS0zKb3nEolOEbW3SkHjLgefMnLDSAZndLa0
 5uEgN05cqImpGB4YsLppF3q13bKXt8miBMeF2pnBoEdrCCdEXOzlvR4O4qFlgWVbG5
 k3X9bb9Mbc7ig==
Date: Thu, 7 Nov 2019 09:45:55 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Bjorn Helgaas <bhelgaas@google.com>, Olof Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>, ARM <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: manual merge of the pci tree with the arm-soc tree
Message-ID: <20191107094555.6296b943@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_144605_549259_C0BE07EA 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Xiaowei Bao <xiaowei.bao@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>
Content-Type: multipart/mixed; boundary="===============2628690478279936065=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============2628690478279936065==
Content-Type: multipart/signed; boundary="Sig_//QyZLzC9Q_pWsXAriLWbKQm";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_//QyZLzC9Q_pWsXAriLWbKQm
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the pci tree got a conflict in:

  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi

between commit:

  68e36a429ef5 ("arm64: dts: ls1028a: Move thermal-zone out of SoC")

from the arm-soc tree and commit:

  8d49ebe713ab ("arm64: dts: ls1028a: Add PCIe controller DT nodes")

from the pci tree.

I fixed it up (see below) and can carry the fix as necessary. This
is now fixed as far as linux-next is concerned, but any non trivial
conflicts should be mentioned to your upstream maintainer when your tree
is submitted for merging.  You may also want to consider cooperating
with the maintainer of the conflicting tree to minimise any particularly
complex conflicts.

--=20
Cheers,
Stephen Rothwell

diff --cc arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 8e8a77eb596a,71d7c6949b9e..000000000000
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@@ -611,6 -594,89 +611,58 @@@
  			#thermal-sensor-cells =3D <1>;
  		};
 =20
 -		thermal-zones {
 -			core-cluster {
 -				polling-delay-passive =3D <1000>;
 -				polling-delay =3D <5000>;
 -				thermal-sensors =3D <&tmu 0>;
 -
 -				trips {
 -					core_cluster_alert: core-cluster-alert {
 -						temperature =3D <85000>;
 -						hysteresis =3D <2000>;
 -						type =3D "passive";
 -					};
 -
 -					core_cluster_crit: core-cluster-crit {
 -						temperature =3D <95000>;
 -						hysteresis =3D <2000>;
 -						type =3D "critical";
 -					};
 -				};
 -
 -				cooling-maps {
 -					map0 {
 -						trip =3D <&core_cluster_alert>;
 -						cooling-device =3D
 -							<&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
 -							<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
 -					};
 -				};
 -			};
 -		};
 -
+ 		pcie@3400000 {
+ 			compatible =3D "fsl,ls1028a-pcie";
+ 			reg =3D <0x00 0x03400000 0x0 0x00100000   /* controller registers */
+ 			       0x80 0x00000000 0x0 0x00002000>; /* configuration space */
+ 			reg-names =3D "regs", "config";
+ 			interrupts =3D <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
+ 				     <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>; /* aer interrupt */
+ 			interrupt-names =3D "pme", "aer";
+ 			#address-cells =3D <3>;
+ 			#size-cells =3D <2>;
+ 			device_type =3D "pci";
+ 			dma-coherent;
+ 			num-viewport =3D <8>;
+ 			bus-range =3D <0x0 0xff>;
+ 			ranges =3D <0x81000000 0x0 0x00000000 0x80 0x00010000 0x0 0x00010000  =
 /* downstream I/O */
+ 				  0x82000000 0x0 0x40000000 0x80 0x40000000 0x0 0x40000000>; /* non-p=
refetchable memory */
+ 			msi-parent =3D <&its>;
+ 			#interrupt-cells =3D <1>;
+ 			interrupt-map-mask =3D <0 0 0 7>;
+ 			interrupt-map =3D <0000 0 0 1 &gic 0 0 GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH=
>,
+ 					<0000 0 0 2 &gic 0 0 GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>,
+ 					<0000 0 0 3 &gic 0 0 GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>,
+ 					<0000 0 0 4 &gic 0 0 GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
+ 			status =3D "disabled";
+ 		};
+=20
+ 		pcie@3500000 {
+ 			compatible =3D "fsl,ls1028a-pcie";
+ 			reg =3D <0x00 0x03500000 0x0 0x00100000   /* controller registers */
+ 			       0x88 0x00000000 0x0 0x00002000>; /* configuration space */
+ 			reg-names =3D "regs", "config";
+ 			interrupts =3D <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>,
+ 				     <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>;
+ 			interrupt-names =3D "pme", "aer";
+ 			#address-cells =3D <3>;
+ 			#size-cells =3D <2>;
+ 			device_type =3D "pci";
+ 			dma-coherent;
+ 			num-viewport =3D <8>;
+ 			bus-range =3D <0x0 0xff>;
+ 			ranges =3D <0x81000000 0x0 0x00000000 0x88 0x00010000 0x0 0x00010000  =
 /* downstream I/O */
+ 				  0x82000000 0x0 0x40000000 0x88 0x40000000 0x0 0x40000000>; /* non-p=
refetchable memory */
+ 			msi-parent =3D <&its>;
+ 			#interrupt-cells =3D <1>;
+ 			interrupt-map-mask =3D <0 0 0 7>;
+ 			interrupt-map =3D <0000 0 0 1 &gic 0 0 GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH=
>,
+ 					<0000 0 0 2 &gic 0 0 GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>,
+ 					<0000 0 0 3 &gic 0 0 GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>,
+ 					<0000 0 0 4 &gic 0 0 GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+ 			status =3D "disabled";
+ 		};
+=20
  		pcie@1f0000000 { /* Integrated Endpoint Root Complex */
  			compatible =3D "pci-host-ecam-generic";
  			reg =3D <0x01 0xf0000000 0x0 0x100000>;

--Sig_//QyZLzC9Q_pWsXAriLWbKQm
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl3DTSMACgkQAVBC80lX
0GyQKwf/VAheeyOnOzyIAVAMHqtb1sfJTdKl+hDzUT89TKwR5zEAKirJOb57fRGF
mMntSiwVjsXWz/YZ/Gw2crLxXm1l71KSJDMsbZQcEBZ8W3eWhlg/zT/zf0gM9hxt
p0wcfTyBmmTnl8h8um3cvfRMeT9t2e8FLBX8K6N4luPVnDilX/oWtaeJK66BTw+J
A931O81QXJnapRnfoWF0ZgArWaOFu/3/cdzSfVkm0+YEszmoOTMaisOsKGZ50cSt
lpnWEOtanhHSkzeJK/E7O1geHvyCg7LpRQPkAinXuoVpFlYupBkSQJZW/27JF7Qf
CLq/1L3SH2krNGqSN5a7x0CPBF/dDw==
=9vD4
-----END PGP SIGNATURE-----

--Sig_//QyZLzC9Q_pWsXAriLWbKQm--


--===============2628690478279936065==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2628690478279936065==--

