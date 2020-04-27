Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE9D1B97A1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 08:43:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X8Ogg47shR9Gt0rjkfYMkadUJIHY8J6KStCdrRnMYo8=; b=o3Hu9OBmv0AcXz
	q43hoath5/+kM749EQ179VoeCXUyPXOAKxLYJKk+idy+otyzbMLQnFldSgvjUnuepGUTpVwpYJkyo
	w8NccZA+3zlZcupBKgNC0jaQQns2xu3NTxe3ZSu+Dimo3IuvaU+wzwg8fS/wad67gaiZXmmJ4Nc3z
	FGIlltXieiWPSAlCCBjAreF8aPJrL1vXrU+xeeFB5mzmU/FjpX31Oww3i1gUuCxr8rPHPSSVI1Bsy
	yd0kYiCEll6LEJN4ZJKSxUZXH8lLgSR+YDUIz66qb4PPmqfRdtBE+GeXaLgdpYs0NRTJc4C56M96G
	cSp3oiIMQOHTXs6C2ULg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSxUJ-0005di-QJ; Mon, 27 Apr 2020 06:43:31 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSxU2-0005bz-L9
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 06:43:16 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03R6cO6F024040; Mon, 27 Apr 2020 08:42:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=TDbaAq8nLSxL5Pn2AoB6X1/THDI0mod6aKQma53bdKU=;
 b=bLig6qxKvGEjnGtaOjXzq4zAdvJpIBkSWQGyLqRnITGmh1KUYDrkQ91y4yc8aBWZXhzt
 Lk2kWh7WqbhJoeUXkVfvXfVnxt5mG29rwMm5Qef2/zG075ECyiHF+aH2qZgAIEJ8nuAV
 5YhFcY8gS1ElPReEOHOZm5rpq68OjSJ1I+vj8ssZXSLLiGSy+AsVery+AlDehfAqW+wW
 3usr1bNMVWCV6gI1mj7CQ/w+87cJhQ4xYP1TfjldvV32qLs7ih7SZ8JUvIYt/2LFPVzm
 PrkvlX4Zl6sR3EBrEYEpKu1xSxXAd1wYVzu2IGttUs/AJi1HVgtfwZNbTXnpokZeX94+ kQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30mhq5r2h7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 27 Apr 2020 08:42:58 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5B03B100034;
 Mon, 27 Apr 2020 08:42:55 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag7node2.st.com [10.75.127.20])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0E63021F679;
 Mon, 27 Apr 2020 08:42:55 +0200 (CEST)
Received: from localhost (10.75.127.44) by SFHDAG7NODE2.st.com (10.75.127.20)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Mon, 27 Apr 2020 08:42:54 +0200
From: Lionel Debieve <lionel.debieve@st.com>
To: Herbert Xu <herbert@gondor.apana.org.au>, "David S . Miller"
 <davem@davemloft.net>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, <linux-crypto@vger.kernel.org>
Subject: [PATCH 0/3] crypto: stm32/hash: Defer probe management
Date: Mon, 27 Apr 2020 08:42:23 +0200
Message-ID: <20200427064226.6991-1-lionel.debieve@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG7NODE2.st.com
 (10.75.127.20)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-27_03:2020-04-24,
 2020-04-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_234314_984097_1D967AB3 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These patches manage properly the defer probe for STM32 Hash driver.
It allows the driver to be probed later if clock, reset or dma return
a defer error.
It also removes the error print messages in such cases.

Etienne Carriere (2):
  crypto: stm32/hash - defer probe for reset controller
  crypto: stm32/hash - defer probe for dma device

Lionel Debieve (1):
  crypto: stm32/hash - don't print error on probe deferral

 drivers/crypto/stm32/stm32-hash.c | 38 ++++++++++++++++++++++---------
 1 file changed, 27 insertions(+), 11 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
