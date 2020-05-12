Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AC51CF6B1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 16:15:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z7VWtJpb2JqhWqMcdcz6VpsEjle68BoKmbhjxduiJLw=; b=s22BQdG1t/hkH7
	jlFgBe4mzNXODuiefD0Rhp+f/XxocTFV/ytMIUVNFAd1jjj9URG3X8qZlzipOfbh2S0LqbXED+Kqc
	ZOWq4pBdf9avF53N7bC3jin6rQkiRQDukl4cc7sd4XNddxKXZKKve1ocs9qvgThlPb1KG6cmR5TDd
	zrD8GZqlMSVTfDct7NZivEdW3sdHo+gn3XBTjDMS5fXV4/wgSqYkD791mDXGzAENCaY8V2cxn0n8d
	HFr5hDe3Y623LAH+0JEMcC44vCKiudMqr5XxbiSRCXJVxe6Sd56VxEJmsRv1t9swd3sUEwiNx1X63
	pHmVEfAuOEsL6tiRnbsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYVgQ-0000to-MN; Tue, 12 May 2020 14:14:58 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYVen-00088F-MR
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 14:13:21 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04CEC6Nl020352; Tue, 12 May 2020 16:12:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=/cK62abs1ZOEPd483Fs6vDPdjcVo6tdi3F8yjd7dwk0=;
 b=KTiDZr5bXPQ1ht4Sn0aTqssoSiATVAB6OvUCqHuvtHDJWH/2ga4oo/VQn6vj/L8sIbUx
 E4Honl7oWMa8wczDu+Httq4wd6aiUXW7acBRNFc/ZyyeVwlpmfo5QSrhvhRfgkXr1zHD
 GPJow8LcS3EWe4JrFtdfwI/9xYuQaRtPnnTT2NFLqVyuaYs7VnSf/0Je0tDOsEEae20l
 WI0TLo0dqictsY16T419hWRkJRqiRWswe8q/B0z3GBUVLpmaBbmd0MbeCbNY/l1dxwo/
 lQYob5ZuDSCPkUQsCIMW2lfNetp0Lqy3//gfqPgIYZXveiFUb7HBjo7hSBvWvRNn2NvC 3A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30whn9gw5a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 12 May 2020 16:12:06 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4D5E810002A;
 Tue, 12 May 2020 16:11:56 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id F2EB22AA608;
 Tue, 12 May 2020 16:11:55 +0200 (CEST)
Received: from localhost (10.75.127.47) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 12 May 2020 16:11:55 +0200
From: Nicolas Toromanoff <nicolas.toromanoff@st.com>
To: Herbert Xu <herbert@gondor.apana.org.au>, "David S . Miller"
 <davem@davemloft.net>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>
Subject: [PATCH 0/5] STM32 CRC update
Date: Tue, 12 May 2020 16:11:08 +0200
Message-ID: <20200512141113.18972-1-nicolas.toromanoff@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-12_04:2020-05-11,
 2020-05-12 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_071318_046827_64412961 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org,
 Nicolas Toromanoff <nicolas.toromanoff@st.com>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This set of patches update the STM32 CRC driver.
It contains bug fix.

First fixes issue if we enable STM32 CRC32 hardware accelerator with
ext4 (with metadata-chksum enable) and other fs that use same direct
access to update crc32 API without previous init.
Second fixes some issues raise by the extra self-test.
Third fixes wrong hw usage if there is multiple IP on the SOC.
Forth fixes "sleep while atomic" in tcrypt test, and some other places
(ext4)
Last fixes concurrent accesses. As state is saved in the hardware cell
and not in stack as other CRC32 drivers, we need to create atomic
section to protect concurrent CRC32 calculus.

This patch series applies to cryptodev/master.

Nicolas Toromanoff (5):
  crypto: stm32/crc: fix ext4 chksum BUG_ON()
  crypto: stm32/crc: fix run-time self test issue.
  crypto: stm32/crc: fix multi-instance
  crypto: stm32/crc: don't sleep in runtime pm
  crypto: stm32/crc: protect from concurrent accesses

 drivers/crypto/stm32/stm32-crc32.c | 230 ++++++++++++++++++++---------
 1 file changed, 161 insertions(+), 69 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
