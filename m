Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B74F44AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 11:36:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rzrFJYy6j82b7upGzECk5uXOdHHtHbG9WNnvsERnids=; b=Guf5m8qoE73P0V
	uVhtXaKLvrvWBy2arDzBgK/z2u/Y+OAZOI99Gsxm/jnDKzZIwq12mm0xkVYGzjZ+19X6EWrlo3/9o
	dW3hSdQxmDkVCmElTWW5O7gZ66mVX2NGqMG+kTC/uARa4PgAlfWFZm43esdcnTIFOTjICOv58CZWC
	w2wi7iT0tTEvadKprNt1QsYXIfUiNieWqGvuOgaV6Jw/98UyIPWrMv7sQ3tuvkfVujNfLiC7m8K4X
	hEpkANdtWHJry8c/5fO3yOA9JwsKECdHLqrEVplO8PxbAcRWMkAAi1gf+TnSvqaeW+yiwnwA5BM21
	x8pX/+yfWXVOI5LGCTBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT1dA-00043i-OD; Fri, 08 Nov 2019 10:36:40 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT1cQ-0003Wf-Hs
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 10:35:57 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA8ARGTX030051; Fri, 8 Nov 2019 11:35:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=nTJBG22LeaDRqpzOs70JNI51jts39fxEqE5wUF9RG80=;
 b=nkjRKBcU1JqSCAll+smbcvx5JNV2WLP8aoWiNjPGEhB9tGWvJZybxnxQxUZLc7zABPkQ
 47Y+fmBhvQAFazRyd/Szzi6a4+BtOmWZaWZ4Ir7o763cHqcuDfq7wdNsIzzH6xJRQkzI
 imtResp59inWv0TeVJTLh+yWnF4X4cZwgmc0wImN24P+JbpvflKfLHpI/h6ljNvlir/y
 RInuUVqYAPu/mutt5vApPMumPzyIoZOoriBmLAuabBQjrflL0mhIPISmpWwNsnZA+x5a
 UaMdlSJIVkd0r9cNQ1fLgXp8A3S9uKdjbxs/c2URexbX5lqrKS3zKjVP7O3r8sKDfqK4 Jg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w41vmu288-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 08 Nov 2019 11:35:31 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A38B810002A;
 Fri,  8 Nov 2019 11:35:30 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 81CE32B0FED;
 Fri,  8 Nov 2019 11:35:30 +0100 (CET)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 8 Nov 2019
 11:35:30 +0100
Received: from localhost (10.201.22.222) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 8 Nov 2019 11:35:29
 +0100
From: Christophe Roullier <christophe.roullier@st.com>
To: <davem@davemloft.net>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <mripard@kernel.org>, <martin.blumenstingl@googlemail.com>,
 <alexandru.ardelean@analog.com>, <narmstrong@baylibre.com>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCH  0/2] Convert stm32 dwmac to DT schema
Date: Fri, 8 Nov 2019 11:35:24 +0100
Message-ID: <20191108103526.22254-1-christophe.roullier@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.201.22.222]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-08_02:2019-11-07,2019-11-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_023554_922202_569B7551 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, christophe.roullier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert stm32 dwmac to DT schema

Christophe Roullier (2):
  dt-bindings: net: dwmac: increase 'maxItems' for 'clocks',
    'clock-names' properties
  dt-bindings: net: dwmac: Convert stm32 dwmac to DT schema

 .../devicetree/bindings/net/snps,dwmac.yaml   |   8 +-
 .../devicetree/bindings/net/stm32-dwmac.txt   |  44 -----
 .../devicetree/bindings/net/stm32-dwmac.yaml  | 161 ++++++++++++++++++
 3 files changed, 168 insertions(+), 45 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/net/stm32-dwmac.txt
 create mode 100644 Documentation/devicetree/bindings/net/stm32-dwmac.yaml

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
