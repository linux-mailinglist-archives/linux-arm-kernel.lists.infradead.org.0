Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1321D10F2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 16:13:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XbnFUqWQqVcoc0vQW0VE3gj8JuEGjq9ajRCUWVQoLgc=; b=k4RcUP7wqxgrrK
	FWwKV+GZ0FKzmIz4xuQYJY+iqAqPja6m82YV6ZQ29hXwePmFuwGjXBgcaLHZjGfLaOeP+MidJ02T5
	hVa8SBAuQrNDta4grDh3BNnsqYR30oR52Tt53ipfzznlOS83R/m2GMPFsgk8yI6k/KGK2gtaLyKy3
	wUZwrl4Cyx23N2B8je3gXFmqah9JDh2qMtEols0/XSlvxlr2jp+12kGWEP6jkJoFC06VQVFzYk5Iy
	zArXHkAxbE8e+OBrfKQhEIueu+0E5VqXOUPm6RN4T2gmbtWZ1wgIlV8QtX5OicLv7vYCEjEwXyxeX
	nFKUV0N4L+7Y+HliTgiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iICiK-0006q2-G0; Wed, 09 Oct 2019 14:13:16 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iICi7-0006dY-OX
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 14:13:05 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x99EBPcN006631; Wed, 9 Oct 2019 16:12:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=OB/Kw3Xu+9/OMKoLR8YLudGPfymGdZ3on5onGlH4suA=;
 b=Ci1oD7hg9ivEp3gFRKu+kueOUBRk7BoYYImtpFFbFuLFvf+XWnyyEdQAUuDPF01n62fQ
 B4yLE0cv+fYP1jxkNCylwPLNLbCQYmsjVIB6b+WtG8OEDdIRQcKQhOjv7XKb+G6YUW1+
 +QPG9Zng7ccsjGcQ6Q/kdROCLawG8JxOjahLScfiIQ9CHxMz80oTjJwA9IfYs7jnxtJ0
 lAXc4wZr5IYtCOKNmdCeFAnGCREn4qImagsNAiMg+4UyXpx3kBJEpgS3TVE3PJ/MkC3c
 Aj9vKDJCez/OpBywgkxMHgKX8WnO+Gena6loTC0GBfCKc2n0GWjmvLBQ4O3SnXNaUKl/ zw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vegxvxcx6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 09 Oct 2019 16:12:57 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9518A100038;
 Wed,  9 Oct 2019 16:12:56 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7FB3E21E6AF;
 Wed,  9 Oct 2019 16:12:56 +0200 (CEST)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.46) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 9 Oct 2019
 16:12:56 +0200
Received: from localhost (10.48.0.192) by webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Wed, 9 Oct 2019 16:12:55 +0200
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <alexandre.torgue@st.com>
Subject: [PATCH 0/2] Add support for DAC on stm32mp157c-ed1
Date: Wed, 9 Oct 2019 16:12:50 +0200
Message-ID: <1570630372-24579-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.48.0.192]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-09_06:2019-10-08,2019-10-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_071304_265645_F67959BF 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds support for digital-to-analog converter on
stm32mp157c-ed1 board:
- define pins that can be used for DAC
- configure DAC channels to use these

Fabrice Gasnier (2):
  ARM: dts: stm32: Add DAC pins used on stm32mp157c-ed1
  ARM: dts: stm32: Add DAC support to stm32mp157c-ed1

 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 12 ++++++++++++
 arch/arm/boot/dts/stm32mp157c-ed1.dts     | 13 +++++++++++++
 2 files changed, 25 insertions(+)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
