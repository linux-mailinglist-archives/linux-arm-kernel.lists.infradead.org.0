Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9772BDAC09
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 14:26:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+iRqNwzNke63+8BhZV6mpT5QzDrwMXm4iwZB0FcG2w0=; b=rZsTFQ1iHLaWMt
	jvvVnem1HWLjrAGJzOT0QYGyTAMxeOwz4Vb1XSUZrZp83JJpsMWHIWXmBo16lLbJUeht9E7zLs3Jy
	Ri8JWLqnZBJoJlJxQ+Ptqc0KDieeJ2Ly51KIdnW0UbeZWgvp3xxRK61ucIHbV835nr8Depb0w78wK
	yrJ/c6wk/VlHvPo9qjwpOJ2RWj+7hKSzRtwG0n5nSd8wJ1dOknkAJZU36D1T6bh/3ySCGxAkQ1xEf
	7RmTH0RhmNoIxmpfyTywVCv8GeDFJYvIsqOuJiaqRrwD8e7Asmyp5fKtFcjOORGT8IRpml6P60gwr
	nW5hz4mc+2yDReBAdVpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL4rj-00014D-CK; Thu, 17 Oct 2019 12:26:51 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL4r5-0000o4-RF
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 12:26:13 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9HCQ2xB091647;
 Thu, 17 Oct 2019 07:26:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1571315162;
 bh=fMmVOfCqoVUHk+dNrTZbSqbpuNW+ocsZ+vAJ6khMGKw=;
 h=From:To:CC:Subject:Date;
 b=atK56Y0hft/Pr0Ms9Qg2zAOTY47128M9WSaa1dPk6ELTnklCoO/tXXB5TMMdDX1Ii
 YGBjsGuO5w8CFfNmWStYkJNWM9quL+rTfgXoABtBIEhsUuH7czddtkLz3kbO6G0Umu
 ZVKSlyNJtTnavuh46KbmiFg+FruerE9aS+alknlc=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9HCQ2u2016061
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 17 Oct 2019 07:26:02 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 17
 Oct 2019 07:25:53 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 17 Oct 2019 07:26:01 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9HCPxNV073246;
 Thu, 17 Oct 2019 07:25:59 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
 <linux-crypto@vger.kernel.org>, <ard.biesheuvel@linaro.org>
Subject: [PATCH 00/10] crypto: omap fixes towards 5.5
Date: Thu, 17 Oct 2019 15:25:39 +0300
Message-ID: <20191017122549.4634-1-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_052611_919892_637DBD75 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This series fixes a number of bugs with omap crypto implementation.
These have become evident with the changes to the cryptomanager, where
it adds some new test cases and modifies some existing, namely the split
update tests. Also, while fixing the cryptomanager induced bugs, some
other surfaced with tcrypt/IPSec tests, so fixed them aswell.

Patch #9 is against crypto core modifying the crypto_wait_req
common API to have a timeout for it also, currently it waits forever
and it is kind of difficult to see what test fails with crypto manager.
This is not really needed for anything, but it is kind of nice to have
(makes debugging easier.)

This series has been tested on top of 5.4-rc2, with following setups,
on AM57xx-beagle-x15 board:

- crypto manager self tests
- tcrypt performance test
- ipsec test with strongswan

This series depends on the skcipher API switch patch from Ard Biesheuvel
[1].

-Tero

[1] https://patchwork.kernel.org/patch/11188595/


--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
