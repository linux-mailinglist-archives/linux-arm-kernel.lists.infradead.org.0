Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5724BC49E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 10:46:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lh+vDRcLW1LaCzWWq65iTLW+D0+VfcvSgMsjs0MUG6A=; b=kQRndRH+2fZpy8
	IUNi67AhtqhBC977CZObCPdex1ZPCoaHTvPdQs5BMOXyGe3jnBQ0R90iRujhrjb5L0/qBDLexRq3g
	LMp7TazQuKRdlZyCvPoDxPIb57tlCRjSKJURU1S5rEgEalcpJjxtuNqnxz1aRrVlMBDTAVVnp2peb
	mSl2+PnubVUXw2DDaV/sMmS+DusXuxR3GAKV64mZr3MgruLB8UNPuzpMdsG99A014A9E/Hb3ABX+6
	uoCMfAqjLh3P/tIOR/NBfyXmkreDtfhyc2AP8z9kcIxv2g+Vs88GGmO29pCIXaZcUSaaszOXy9kgl
	cTSHrlgfuPqbzEjMCNqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFaH6-0001Py-0m; Wed, 02 Oct 2019 08:46:20 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::3])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFaF4-0001BN-Re; Wed, 02 Oct 2019 08:44:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1570005844;
 s=strato-dkim-0002; d=fpond.eu;
 h=Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=iUttmko10pMSiNzf83MKiTk9CuVcL1m274VDNhwoUvo=;
 b=bUa4nA87Aahl+akDPPApKyEgSRbP7aU9CAw7k+GO8W5jGvwAM4Gm8FJdsE8L9429WY
 E5CfjegbDj9RiV3bM0sTougIgkBIkgii2rk6OtZPcKXkaiRRbslYBtZad+b5m5IDcC8d
 3gWpqxoZsS1Oc14RcjNOpi9KtQdO9iGhdLE8Q+8ibCRKe9i82GSgzVEC6fofW1o0JzM6
 id9QCkK0iwoJGn8R8UjZhwmfUMVPY+oAiynwv0Er8rU/BL6nyShrmZ0uHNTYOjMt79pb
 38IFRFDkf5Lzy824e7gxX3c6PLLFwVjyu1bOzPHejvukU+gFDl9NJ7lSoh/7xSZNDD9u
 u8dQ==
X-RZG-AUTH: ":OWANVUa4dPFUgKR/3dpvnYP0Np73amq+g13rqGzmt2bYDnKIKaws6YXTsc4="
X-RZG-CLASS-ID: mo00
Received: from oxapp05-03.back.ox.d0m.de by smtp-ox.front (RZmta 44.28.0 AUTH)
 with ESMTPSA id i07086v928htVNM
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1
 with 256 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Wed, 2 Oct 2019 10:43:55 +0200 (CEST)
Date: Wed, 2 Oct 2019 10:43:55 +0200 (CEST)
From: Ulrich Hecht <uli@fpond.eu>
To: Fabien Parent <fparent@baylibre.com>, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Message-ID: <1733244772.936156.1570005835848@webmail.strato.com>
In-Reply-To: <20190930152846.5062-1-fparent@baylibre.com>
References: <20190930152846.5062-1-fparent@baylibre.com>
Subject: Re: [PATCH v2] i2c: i2c-mt65xx: fix NULL ptr dereference
MIME-Version: 1.0
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.1-Rev20
X-Originating-IP: 85.212.176.126
X-Originating-Client: open-xchange-appsuite
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_014415_502589_1BB38DA0 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:3 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: drinkcat@chromium.org, wsa@the-dreams.de, hsinyi@chromium.org,
 matthias.bgg@gmail.com, tglx@linutronix.de, qii.wang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> On September 30, 2019 at 5:28 PM Fabien Parent <fparent@baylibre.com> wrote:
> 
> 
> Since commit abf4923e97c3 ("i2c: mediatek: disable zero-length transfers
> for mt8183"), there is a NULL pointer dereference for all the SoCs
> that don't have any quirk. mtk_i2c_functionality is not checking that
> the quirks pointer is not NULL before starting to use it.
> 
> This commit add a call to i2c_check_quirks which will check whether
> the quirks pointer is set, and if so will check if the IP has the
> NO_ZERO_LEN quirk.
> 
> Fixes: abf4923e97c3 ("i2c: mediatek: disable zero-length transfers for mt8183")
> Signed-off-by: Fabien Parent <fparent@baylibre.com>

Thank you! Tested successfully on Acer R13 Chromebook (mt8173).

Tested-by: Ulrich Hecht <uli@fpond.eu>

CU
Uli

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
