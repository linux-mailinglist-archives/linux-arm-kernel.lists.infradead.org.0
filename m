Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E439F347
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 21:26:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Message-ID:Date:Mime-Version:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Nzb50siQh0mHbw3R1JzmchAujmt6V0hbX+dkjPrzwVo=; b=SQGiK5jqyoiV3DJtN3Wmzd6/g
	f95J/8sUTIpNvmhwOB4/rh6ncXXUtUWbVbdTL75zCQVq7OaCOUEc+4VUwMe/T5GetnJlGsawY6oSy
	TQ1e6yC2KjsShAlB/TAfMCFmC3d7jz8BF2J1C1QJardomzjxyDEv8jFuNE8MwHwy0RfHMVTt5DS3l
	Gl2Guub1QVTPZrE8r4w9Q89hYb4v0n1MZJBdTBHwn4ZZesPCSANqY0yhhMhbbx1lB2+Fsh1KkLJVo
	9jGKvNbjvwokl3Xjj+oydasjjp/XmrkOri73SQFlvoGXOjUhDjY+zRakQKLfc0/xUj8NYzjeMOM23
	0quOboeIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2h6L-0005QG-QJ; Tue, 27 Aug 2019 19:25:57 +0000
Received: from omr1.cc.ipv6.vt.edu ([2607:b400:92:8300:0:c6:2117:b0e]
 helo=omr1.cc.vt.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2h6D-0005P0-NU
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 19:25:51 +0000
Received: from mr4.cc.vt.edu (smtp.ipv6.vt.edu
 [IPv6:2607:b400:92:9:0:9d:8fcb:4116])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x7RJPWtt010330
 for <linux-arm-kernel@lists.infradead.org>; Tue, 27 Aug 2019 15:25:35 -0400
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198])
 by mr4.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x7RJPRkW006209
 for <linux-arm-kernel@lists.infradead.org>; Tue, 27 Aug 2019 15:25:32 -0400
Received: by mail-qt1-f198.google.com with SMTP id z93so21756133qtc.22
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 12:25:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=/VrYLSYfcVcWU8zr6i2AquUrruupT+f/dYq6MTZWV9A=;
 b=Di8Ri0X1DMuUZJ1xGdq8tZwf+Cs0LIlDREWJYAsuOY/cXqe5atJld27UrNd518lLXy
 Vq8EA2AZE4+oSHFSO2i4uZuz40ctmeicHU2VE2v2oGpMdQj22z09iN5SYZNJnCuQmbwN
 lDQVve34LJl69hvbsa4NAQK9CCSXYRW4GM/HWgL6x77zqTLMsUhoAW8ju7TvDHdpQupt
 d3iqxVty3lXHMptpQdwO+hftRa1cv1SXqV9V8YqQWGrbP7mCSHlnPp1+nJWHY2JYcMUa
 Mr8OMkgBuTLrxpAXtpIJzK+3HKkPHfi8RBcajUsLs3toDbD92svGrTfml3nL00DMuDlD
 BMaA==
X-Gm-Message-State: APjAAAXvfpujEZPbADwDWgjMHIRUICRYTA7oMqalnXmAA2vcepPV3lj1
 y1cMeosLQXcYtqyZaqHjdVkIzHvo3jbu4FDL5ZKr9Df5Zfn7hNug/PP9rVjxTRtTDhgXHwA+Qdq
 Q8PScAR/Ic7h0v9kSUJ+GdEm2NwgI6ju1+AG5bdqeZRLK5w==
X-Received: by 2002:ad4:4301:: with SMTP id c1mr135711qvs.138.1566933927559;
 Tue, 27 Aug 2019 12:25:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw0pbhFIG53y1qAT0fpDgiysZVyE9tsfzlFkV4m2v3eE8h31MrmRk0phL4zAQ9B/pjlGvPJjg==
X-Received: by 2002:ad4:4301:: with SMTP id c1mr135669qvs.138.1566933927147;
 Tue, 27 Aug 2019 12:25:27 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:4341::359])
 by smtp.gmail.com with ESMTPSA id m10sm154810qka.43.2019.08.27.12.25.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 12:25:25 -0700 (PDT)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Dinh Nguyen <dinguyen@kernel.org>
Subject: Re: [PATCHv5] drivers/amba: add reset control to amba bus probe
In-Reply-To: <20190826154252.22952-1-dinguyen@kernel.org>
References: <20190826154252.22952-1-dinguyen@kernel.org>
Mime-Version: 1.0
Date: Tue, 27 Aug 2019 15:25:24 -0400
Message-ID: <30608.1566933924@turing-police>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_122549_908916_F95710C2 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2607:b400:92:8300:0:c6:2117:b0e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, daniel.thompson@linaro.org, tony.luck@intel.com,
 manivannan.sadhasivam@linaro.org, keescook@chromium.org, robh@kernel.org,
 linus.walleij@linaro.org, anton@enomsg.org, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, p.zabel@pengutronix.de, ccross@android.com,
 frowand.list@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3297199370051713518=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============3297199370051713518==
Content-Type: multipart/signed; boundary="==_Exmh_1566933924_1612P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1566933924_1612P
Content-Type: text/plain; charset=us-ascii

On Mon, 26 Aug 2019 10:42:52 -0500, Dinh Nguyen said:
> The primecell controller on some SoCs, i.e. SoCFPGA, is held in reset by
> default. Until recently, the DMA controller was brought out of reset by the
> bootloader(i.e. U-Boot). But a recent change in U-Boot, the peripherals
> that are not used are held in reset and are left to Linux to bring them
> out of reset.
>
> Add a mechanism for getting the reset property and de-assert the primecell
> module from reset if found. This is a not a hard fail if the reset properti
> is not present in the device tree node, so the driver will continue to
> probe.

Does this DTRT for both old and new U-Boots? My naive reading of this patch
says on an old U-Boot, we end up attempting to bring it out of reset even though
they had already been brought out.

--==_Exmh_1566933924_1612P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXWWDpAdmEQWDXROgAQIdrxAAon/T5pCtAGieFVjdAdhJjdPwqAhckoGF
6pdEvZoDtGgXHLPcNmX5YO0BXVRyCmQg8x57sEFISk2PrmS2Ax+UCVUpEaLQMjbD
Dd0vJxZKe9Sz95p4ELvhEVvXPVq9+rkIEmWsVUVNGWN4sbpQc7vs2+JtHwFlx+2n
m/taFbOH5qIRVYJQalBesf8WUcltYiA9ox4tKNYDSyKMqWVrGgvkxjO81appgJAZ
78x3eX94SyB2l7pJHNmRYdvr69kdFFzQDSbm1Y8rQnzar03fKUtpRmn1yXGc87wc
SG08stZRhvr+H98MHe4LjkjYNxNO+k6R0q+jmdjMwD+NaDveKt43ydl+xF4kbYbl
GzX+t51GUeU1PWnuHj+frYnUc0hv4N0xwC5SSWQ8vh0+0xQZsxYRluHLSEAw/VRp
Qh8+wBX3rZ8Q8dQfoXPfj9z4DdWgXAlDoB1yAJDtdRG8sdcKfGL71bZjv7hB0Z6I
XWnRsfqNevx/9Ev6shSve1jSHqGuuVb0ggOQVIcR9qaEeXI9UiRHOgK4qahEA6rI
Im7p+uPlHE4agtwgvXy4QTXksuKqFj8xouyI9QQc5PtI60bT83/PXQzS7ywotkZh
mFrpIGzD7D4xB4dQY4MB4jrGlPIArWfIKkqQ9jnTgD5dugR1CfejVwe7im0Lotyt
0bip0m4JQ/U=
=XqAz
-----END PGP SIGNATURE-----

--==_Exmh_1566933924_1612P--


--===============3297199370051713518==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3297199370051713518==--

