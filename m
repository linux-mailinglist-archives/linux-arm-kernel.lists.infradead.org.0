Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CE71FEBF6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 09:11:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yUY6mK+PpgnBFQnKivRUVOXUNvEapQgqNXXxwaWR45Q=; b=J361gtBo6o8YvI
	pvDWNbAdKV8HYfwStp7Inpq29D+mHVfVABGwgJxp65N+VDtiSlPOl1FKE2Rq1r1cjNQyMyl2+lne0
	WwU2KvLDmrkGOCz4Xnu0SFqfXXvpJBaUjQ9SX+Ohs9ON8Mx+eqTOVrd2fhx110zD65AIzZHraLixX
	nR2JW3w4vlPiD6WeXerHQBMSNLeMp6o0ocEKnSZ8O+FrWGRv0s5EPobb3MPtmO7X7g943MCtBJn+m
	2pCUdtX7LlqN/8pQmSAmxXoHiXLmd8oYiBuoFNjfoQGgNxuE8oOrprqbZHlOgeWjF3XteN9C8MOrg
	h9DjrbpHyX6QTVURkiEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlohn-0001vj-48; Thu, 18 Jun 2020 07:11:23 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlohc-0001uT-UN
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 07:11:14 +0000
Received: from prsriva-linux.hsd1.wa.comcast.net
 (c-24-19-135-168.hsd1.wa.comcast.net [24.19.135.168])
 by linux.microsoft.com (Postfix) with ESMTPSA id 2CB7A20B4783;
 Thu, 18 Jun 2020 00:11:10 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 2CB7A20B4783
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1592464270;
 bh=A0GiQILHZ8uuNOX7+rBVoRsb1esS85HaWBTuDqTUAM4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ixHKZ/xQIYNcJIA9BE4KrIbjwT0LdW+G2r+zYBqwNbWNH109H6oJwoZ55KK/1rHMF
 zDbf30HMELw5TZ3FWiLSdBVIQVNopsycaccVcaHl3PXGOOTza1ZjU7noxo4fAsdRFh
 sPyrgvlID5Gdj2Adjaje8Sum1mYYaHoWYTjZWerE=
From: Prakhar Srivastava <prsriva@linux.microsoft.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
 linux-integrity@vger.kernel.org, linux-security-module@vger.kernel.org
Subject: [V2 PATCH 2/3] dt-bindings: chosen: Document ima-kexec-buffer 
Date: Thu, 18 Jun 2020 00:10:44 -0700
Message-Id: <20200618071045.471131-3-prsriva@linux.microsoft.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618071045.471131-1-prsriva@linux.microsoft.com>
References: <20200618071045.471131-1-prsriva@linux.microsoft.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_001113_034327_69561B2D 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -17.9 (-----------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-17.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [13.77.154.182 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
Cc: kstewart@linuxfoundation.org, mark.rutland@arm.com, catalin.marinas@arm.com,
 bhsharma@redhat.com, tao.li@vivo.com, zohar@linux.ibm.com, paulus@samba.org,
 vincenzo.frascino@arm.com, frowand.list@gmail.com, nramas@linux.microsoft.com,
 mpe@ellerman.id.au, masahiroy@kernel.org, jmorris@namei.org,
 takahiro.akashi@linaro.org, benh@kernel.crashing.org, serge@hallyn.com,
 pasha.tatashin@soleen.com, will@kernel.org, prsriva@linux.microsoft.com,
 robh+dt@kernel.org, hsinyi@chromium.org, tusharsu@linux.microsoft.com,
 tglx@linutronix.de, allison@lohutok.net, christophe.leroy@c-s.fr,
 mbrugger@suse.com, balajib@linux.microsoft.com, dmitry.kasatkin@gmail.com,
 james.morse@arm.com, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Integrity measurement architecture(IMA) validates if files
have been accidentally or maliciously altered, both remotely and
locally, appraise a file's measurement against a "good" value stored
as an extended attribute, and enforce local file integrity.

IMA also measures singatures of kernel and initrd during kexec along with
the command line used for kexec.
These measurements are critical to verify the seccurity posture of the OS.

Resering memory and adding the memory information to a device tree node
acts as the mechanism to carry over IMA measurement logs.

Update devicetree documentation to reflect the addition of new property
under the chosen node. 

---
 Documentation/devicetree/bindings/chosen.txt | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/chosen.txt b/Documentation/devicetree/bindings/chosen.txt
index 45e79172a646..a15f70c007ef 100644
--- a/Documentation/devicetree/bindings/chosen.txt
+++ b/Documentation/devicetree/bindings/chosen.txt
@@ -135,3 +135,20 @@ e.g.
 		linux,initrd-end = <0x82800000>;
 	};
 };
+
+linux,ima-kexec-buffer
+----------------------
+
+This property(currently used by powerpc, arm64) holds the memory range,
+the address and the size, of the IMA measurement logs that are being carried
+over to the kexec session.
+
+/ {
+	chosen {
+		linux,ima-kexec-buffer = <0x9 0x82000000 0x0 0x00008000>;
+	};
+};
+
+This porperty does not represent real hardware, but the memory allocated for
+carrying the IMA measurement logs. The address and the suze are expressed in
+#address-cells and #size-cells, respectively of the root node.
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
