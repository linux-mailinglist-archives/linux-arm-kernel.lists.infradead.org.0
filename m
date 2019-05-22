Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B378B266E3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 17:29:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YoD+eAJLutFSIiJo3x1XOUDsWP2uqVIaekA6022J2Ng=; b=IUVXfIcq+9nwoY
	NiEH7P17B0OutkWHmYvhARfSZnMjbJWsKSS1qovNFnl/BcBBPwnXjzbhCEHJ0ESLRfJsFL4ow9VdK
	rnsyJlK892EnB5XYEisOjTVRnwvfexzND3OZwYKPUmHkF2psdkBnWzh9PJKIrRa45zVEp2JrE3Hlm
	R47x0xL3tYc9C+SDnuYxiPmS8pGK0VzP1D+BoRcnNF4mhX9O+FVkVQqNExay8EgmJYg9XYK5POOkt
	IdwlS6hMrYcsSRnyC/L24hGU1gui5uPmFemg9yU/CDNE+/KxlqwPmjjk7R3XhM8TQC3bKPCqbMotH
	Jw6/My3KlCQRJiep4hAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTTBY-0003P9-T5; Wed, 22 May 2019 15:29:44 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTTBQ-0003Mj-JA
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 15:29:38 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4MFS0QP013371; Wed, 22 May 2019 17:29:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=af5swlhbaK9EFB2Ce0GcSHjdnw9kOF0tq2rYW3RXNLc=;
 b=C0x6m+kW21kL/j3aH0KfBVEmmxXa3xcTqGOG7ilBvScnzb3g4JZXqkiTNOqUc04n7wzz
 dDfqm2ZRomEm+5PXw6T+WJnVw7vDxpqegPk4AFmJob3h7tMEUKJeoSMHMKE0jitdrYqh
 KhwMmmt8S1qLTrNXrCGF3zp1fPN6cmip2722PiTFuqVRefGidItaFVYNmu/4I51FiSHq
 k+T7LUIyOTvPqMWQNk+F0fEyyJmH7gqPy4k6FlIvX5uMYRpAfcBAn6MgUiCFrYYbIHg6
 SB8mLJCfKhLCchjamgAH2dFcOXFt5yzxGS+Qvbb2sNQNe+8bRK6c0TPbl24xRJ17wEl/ Gg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sj8xgh9jm-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 22 May 2019 17:29:29 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E0DCE3D;
 Wed, 22 May 2019 15:29:28 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BB7642CD5;
 Wed, 22 May 2019 15:29:28 +0000 (GMT)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 22 May
 2019 17:29:28 +0200
Received: from localhost (10.201.20.122) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 22 May 2019 17:29:28
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <linus.walleij@linaro.org>, <alexandre.torgue@st.com>,
 <amelie.delaunay@st.com>
Subject: [PATCH 0/2] Allow pinctrl framework to create links
Date: Wed, 22 May 2019 17:29:23 +0200
Message-ID: <20190522152925.12419-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.201.20.122]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-22_08:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_082937_109903_0BF37C64 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, benjamin.gaignard@linaro.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some pin controllers may need to ensure suspend/resume calls ordering between
themselves and their clients.
That is the case for STMFX (an I2C GPIO expender) which need to be suspended
after all it clients to let them call pinctrl_pm_select_sleep_state() before
perform it own suspend function. It is the same problem for resume but in
reverse order.

This series allow to let pinctrl core knows if a controller would like to
create link between itself and it client by setting create_link to true.

Benjamin Gaignard (2):
  pinctrl: Allow to create link between controller and consumer
  pinctrl: stmfx: enable links creations

 drivers/pinctrl/core.c          | 11 +++++++++++
 drivers/pinctrl/pinctrl-stmfx.c |  1 +
 include/linux/pinctrl/pinctrl.h |  2 ++
 3 files changed, 14 insertions(+)

-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
