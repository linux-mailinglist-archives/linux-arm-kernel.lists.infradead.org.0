Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E801F5392
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 19:34:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gPzyLlbeiWlksrr9zdjTwzHqzZi7RgiKWunCZehT0Vw=; b=a4WsFe0saoHE9T
	EgN3dqgGKSNDXAvtHxD7oRKbpS02/0WSF7UDIfuOMVr2sbCPFRUMvdf1LstQrVpHqYb6z+MGyC+oP
	w1k3N3Yi3i9tQXj0RM7fS4l2YH5DFp81x3ChdprJE8wE+u6/r9TeXRc482tyJsr9G0cNfrd//ClJ7
	Py5hFKZKw581seF/Ox2jTofPvie7033xrjIV/Ou+wXqfXzm2cJ5iU15ySLUZfuruPFTiqa969rNwe
	xsf5WCNPPv2r+yj/49O98U2eoIHuk6I9vk7WlpJU/3WqbCREnj7sC+AxI0Bjte6VMt7r9PtC++jIq
	3swJi+HEQwbDyNeHvnlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT95q-0006IG-6y; Fri, 08 Nov 2019 18:34:46 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT95h-0006Hg-Cr
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 18:34:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1573238064;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=vJ+74fn3Vf4Saca/F02gUt/u2deD5EnYg79w7uayWuk=;
 b=RAKmP/or1ksnnjvySXpx2BrphrVDy8/RN4EVQX1Et2Sju+mfving5bbhizNAzGICOB
 t9dZ0L947GMgep2Szo1CH3E28I4DRflOwhuSaLORz8lErTwsgnGtPsCiqqaacC1MglWM
 xdPdH1rNMboWsCov8UfYBKdOp2lWyFNqmOQWdKyUb5s+qGCsmj62k2sNjgvmDUFTViCt
 rWzf6i6md03WEkbEhU2K+je5/9mEdlHN0Q7p+O/3wLmMtWjROls+6K/usNLyERbFOlD8
 OfzYwf3OFY8YzzugxbSzKWqU/g/9h7fVCCax+Wu+hKpnh65sPz5lD2KgC3Dr0Iqw8tTO
 wnQg==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj5Qpw97WFDleUXAoPgQ=="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 44.29.0 DYNA|AUTH)
 with ESMTPSA id L09db3vA8IYFmD0
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve secp521r1 with 521 ECDH
 bits, eq. 15360 bits RSA)) (Client did not present a certificate);
 Fri, 8 Nov 2019 19:34:15 +0100 (CET)
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: add compatible string for
 Tolino Shine 3
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <20191108111834.18610-2-andreas@kemnade.info>
Date: Fri, 8 Nov 2019 19:34:14 +0100
Message-Id: <015ED275-1F30-4ECB-B248-AD91D8874B13@goldelico.com>
References: <20191108111834.18610-1-andreas@kemnade.info>
 <20191108111834.18610-2-andreas@kemnade.info>
To: Andreas Kemnade <andreas@kemnade.info>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_103438_024078_CB978E3A 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, andrew.smirnov@gmail.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 j.neuschaefer@gmx.net, Rob Herring <robh+dt@kernel.org>, linux-imx@nxp.com,
 kernel@pengutronix.de, manivannan.sadhasivam@linaro.org, festevam@gmail.com,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Am 08.11.2019 um 12:18 schrieb Andreas Kemnade <andreas@kemnade.info>:
> 
> This adds a compatible string for the Tolino Shine 3 eBook reader.
> 
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> ---
> Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
> 1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 4a8ce4a56e0b..663964134604 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -142,6 +142,7 @@ properties:
>         items:
>           - enum:
>               - fsl,imx6sl-evk            # i.MX6 SoloLite EVK Board
> +              - kobo,tolino-shine3
>           - const: fsl,imx6sl
> 
>       - description: i.MX6SLL based Boards
> -- 
> 2.11.0

Tested-by: H. Nikolaus Schaller <hns@goldelico.com> # Tolino Shine3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
