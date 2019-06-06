Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB84F36EF0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 10:42:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zfzX32XRMLRrN+/6LUdDXzetneuqF4MC49EL5LfHFWw=; b=sHJXwavzaPRNhDGYIlK9q0vMVS
	+Z3sq6ZRZKe95/YpTU8U2CYkPgczVaAHvPMWtKbGR50VH5NgGaqrLQkzHgeCJO9voXaE3giB1ySBb
	hHr2qnMe3x4+/p570l8+pqu1TmE2KyjwiKfh3Eq138Slg2w+iYNa2EbQgK/7clPHCyXpo/dS7qKBh
	dDuSCAV+ugocek418X1Cry0mtCycpE3Rrt/cmUde0rY/pHkHd1v3TVAkMHCe0T1K/mVtHGgGnWdtS
	/CR2WYD80jAssfHH+TEMMsUMI+dhX4mDkC01FrwIY4mAKzDUW1wYtEe2mG2jou2vSAILVeR44fPC+
	oFaZBJ5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYnyz-0002Df-8F; Thu, 06 Jun 2019 08:42:49 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYnyr-0002DM-Hr
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 08:42:42 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x568gTDr041932;
 Thu, 6 Jun 2019 03:42:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559810549;
 bh=Uhc9INcEW01DDucxA5qgisd0o3wIuXQA2TdMVVczbM4=;
 h=To:CC:From:Subject:Date;
 b=TE683Bqevk+fzsiz32BH+LcJxNEXjL0Z8eiCfbZDV7VWSCSBKbJthDR75OyUoqFk7
 //JYgxoacRx90ZP2fR9ah1XjUSwdQKyxHbhwAFSIeTh47j1EXUoAkRjhHbJkzt5lFX
 6HtK2wj5LKBHZEnaTvzpCBhQ4BQK6PK9BJ1MCip0=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x568gTrN042257
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 6 Jun 2019 03:42:29 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 6 Jun
 2019 03:42:28 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 6 Jun 2019 03:42:28 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x568gQM6048889;
 Thu, 6 Jun 2019 03:42:27 -0500
To: <arm@kernel.org>
From: Tero Kristo <t-kristo@ti.com>
Subject: [GIT PULL] am65x fixes for 5.2
Message-ID: <b50499a6-da24-b9fd-dcfb-54158b326963@ti.com>
Date: Thu, 6 Jun 2019 11:42:26 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_014241_635731_C00B6706 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Nishanth Menon <nm@ti.com>, "tony@atomide.com" <tony@atomide.com>,
 YueHaibing <yuehaibing@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello arm-soc maintainers,

Please pull this quick fix for a simple Kconfig dependency warning.

Thanks,
Tero

---

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the git repository at:

   git://git.kernel.org/pub/scm/linux/kernel/git/kristo/linux 
tags/am654-fixes-for-v5.2

for you to fetch changes up to a6b112b04355b87a2baee448165bd00889ac523f:

   arm64: arch_k3: Fix kconfig dependency warning (2019-06-04 12:43:21 
+0300)

----------------------------------------------------------------
Texas Instruments AM65x fixes for v5.2

- Fix up a Kbuild warning when SOC_TI is not set

----------------------------------------------------------------
YueHaibing (1):
       arm64: arch_k3: Fix kconfig dependency warning

  arch/arm64/Kconfig.platforms | 1 +
  1 file changed, 1 insertion(+)
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
