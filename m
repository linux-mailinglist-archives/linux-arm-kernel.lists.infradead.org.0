Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E782A5B05
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 18:02:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YIHQJr8nelG9yeJbIFBkj3zzb9fpUJgxPadhfj55ojw=; b=K9pibafvStD4CB
	8Rb7CYfH2GV90sZhnSzlFoewk0+ScPoAAe8LEhJnbn9g7o0nRKgQRFwx5LybqeQlrtXgMq/jEEISE
	N9p+RjkBlbOAV8weJOP2m+vN2JPoCBCRg5nQqsOKeiOae0FGWLKJgWFOIZJGSzlyxiFx21b/pWx8s
	8pjm7crzmpF+aJ4CiWDn9NdFSsb6Lcihm5xymkJR4orwT4H+zM/3YEmuI1dY5IAfa+01U1H1Jvy35
	3EQhyOS8+0I3HsFY1hsU+ivgQ6DNdFRuSu19I8wEOOxEeTOX3TjLjfYhPtGhcoSdBI/5QmGL20rOY
	CJgMFHuusi1X+MvC9bzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4omK-0004cO-0V; Mon, 02 Sep 2019 16:02:04 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4olg-0003tl-NM
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 16:01:26 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x82FuY5k013492; Mon, 2 Sep 2019 18:01:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=A1tIJTckSXBg8Z/io9D6CqOqXnYC7QIubFt7XKXGFpU=;
 b=ndt+7K7jTG/ChIkddPX8Q7P6b7hUs+rbtGqCjelcGPTvcbD3hI/mh2ZYAoXZV9z/r/zB
 IZFIPahF39sWNUBsuvNWrpT00MAroTJIl+vUrIJ449b/pTS2cTf3Jh+kcJ4AHSyaXmqQ
 RDcWVyqbtTBayLCLJoyLP1TheqHy+QCmCssnFPsYvKwNBhQrB5v+yKXiL0znrMwomioC
 wseCkKAkrbtuLHlfZAPQ0USz7BKrZu3bwH6DAgjfGfrjO3GotvU+hT65GOyTH4nhlLbw
 8BV/uYRqQe5eM0KaOZWnCgVy3Hy71kUP6pdNUVs5C5IgIyIW7XpwibQpTNJn9NocSqFF hw== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx07-00178001.pphosted.com with ESMTP id 2uqenuwenv-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 02 Sep 2019 18:01:06 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 29F2A4D;
 Mon,  2 Sep 2019 16:01:00 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4C7232B6BC5;
 Mon,  2 Sep 2019 18:01:00 +0200 (CEST)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 2 Sep 2019
 18:01:00 +0200
Received: from localhost (10.201.23.16) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 2 Sep 2019 18:00:59
 +0200
From: Olivier Moysan <olivier.moysan@st.com>
To: <alexandre.torgue@st.com>, <olof@lixom.net>, <horms+renesas@verge.net.au>, 
 <arnd@arndb.de>, <krzk@kernel.org>, <yannick.fertre@st.com>,
 <tony@atomide.com>, <m.szyprowski@samsung.com>,
 <fabrice.gasnier@st.com>, <enric.balletbo@collabora.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-stm32@st-md-mailman.stormreply.com>
Subject: [PATCH 0/4] ARM: multi_v7_defconfig: add audio support for
 stm32mp157a-dk1
Date: Mon, 2 Sep 2019 18:00:37 +0200
Message-ID: <1567440041-19220-1-git-send-email-olivier.moysan@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.16]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-02_06:2019-08-29,2019-09-02 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_090125_274652_AE40B5E4 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: olivier.moysan@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset adds audio support for stm32mp157a-dk1 board.

Olivier Moysan (4):
  ARM: multi_v7_defconfig: enable stm32 sai support
  ARM: multi_v7_defconfig: enable stm32 i2s support
  ARM: multi_v7_defconfig: enable cs42l51 codec support
  ARM: multi_v7_defconfig: enable audio graph card support

 arch/arm/configs/multi_v7_defconfig | 4 ++++
 1 file changed, 4 insertions(+)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
