Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B7859940
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 13:27:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uNHiLKlvfF1RBnIY08TFytms8PFGL4ZjOMbMSryXr9g=; b=l54hEmDRi5r/zc
	20tQZTPLEQA8jyo/orbPC7iHfmjUS6XCjLLjDZkGfxV+YunKZlrH+eKWvD7zBr0F9N3rUIsoDM2U4
	3gCaseyEN500CGuL0wPdL8CT7DqxFWRJsizOSUMyPc8lRpZaUpqGlL+hs62M9U7p17aWAvE+bzBP4
	23oT6rjgelGQCDYNCrcwZFK3rJr7P3U1n8kmR6qpkN1eYnxYFR5gzl77L6xCs4GNI3gdIK/Sr4loe
	GpeKvP7kfA+kTTDReY/od2Fy2QtcxV6NPDa9n7vpGXj/uZy4U5As7g7RtBkrwkqREx603TqKTt918
	dtAfnwtSHNjkdLZuxHFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgp2Z-0004HY-Mo; Fri, 28 Jun 2019 11:27:39 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgp2G-0004FN-Qh
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 11:27:22 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5SBPqOZ020529; Fri, 28 Jun 2019 13:27:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=gTP6fqkfQDGZanlx4ouycdMtZDyDqTFhDA9SvwI/c5k=;
 b=pfCM7MWbb6FtekqDKmEJxtxRuMl5sVREDBBbAUCkXYhErunReAjYqiMpSMvhITzG5L/Z
 eIP+yhhT9zDlSQ3m62Uxh68JS520Mf59RwAa4G//G/S+hREqF1hGjyrGcztZvlBnAj12
 LAsP+fDrggFcBXASrXRPJTlwSGDCzwVExRohoEE6EzGPd8B4pnQQjQ1HJvkLatpNYoRs
 lwsEbMAKPlI23IU9aZehrSBQ/NiGDJ321gvpL9xLd/EL9S4fjkNx2w3zfs/OJ3oyVk/j
 ey5tF80ep/TGpZbOzeLes48gMKHSKYYMr2Xi10RyxnnbNU6mnoZRDLxhTovCPalf3vJb Gw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2tcyq0e4kq-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 28 Jun 2019 13:27:13 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 48DE031;
 Fri, 28 Jun 2019 11:27:13 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 275CF27A5;
 Fri, 28 Jun 2019 11:27:13 +0000 (GMT)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 28 Jun
 2019 13:27:13 +0200
Received: from localhost (10.201.23.65) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 28 Jun 2019 13:27:12
 +0200
From: Lionel Debieve <lionel.debieve@st.com>
To: Herbert Xu <herbert@gondor.apana.org.au>, "David S . Miller"
 <davem@davemloft.net>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "Alexandre Torgue" <alexandre.torgue@st.com>,
 <linux-crypto@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/2] crypto: stm32/hash: Fix bug in hmac mode
Date: Fri, 28 Jun 2019 13:26:53 +0200
Message-ID: <20190628112655.9341-1-lionel.debieve@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.201.23.65]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-28_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_042721_175227_6ABF3CA3 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 KHOP_DYNAMIC           Relay looks like a dynamic address
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
Cc: Ludovic Barre <ludovic.barre@st.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Fabien Dessenne <fabien.dessenne@st.com>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series fixes issues discovered while using libkcapi library. Some
more tests show wrong key management in hmac mode. It is fixes by these 
patches and prevent a potential issue in case of interrupt while processing
in dma mode.

Lionel Debieve (2):
  crypto: stm32/hash: Fix hmac issue more than 256 bytes
  crypto: stm32/hash: remove interruptible condition for dma

 drivers/crypto/stm32/stm32-hash.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
