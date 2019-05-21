Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7434825450
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 17:46:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4/gF5j6E/0P8mhO/QZ8kCzweHI8/2XHZXWtEv5Jb/9Q=; b=f+PBD4NV1Q2nPV
	qSISGJevebgYQ4Vdd8bLYwfVBNSkhmY0uNuXm8/VJhcpUZjW8WIpkNzRly7Q1R9sWuaXv3VDc6cNU
	Al0hEySH+UKO+DabTo1GmKm6euTA4dniTbFA3N5g47rqseAFuWcTo+TWMkJYsUZavfxnabEymiZVb
	JHQ8lSqc9z/vTbHN0OWwZLymbPG8PFnQSd28JKkw9FubHIYnQdWOX8h95Ohat0Vsfv5qy5jWSKLBx
	KFcncvpptKIaWeCrCq/9+d/SFsEK/VybyAuFS8NXtvn6jKfZDgT3aEQWXnjnWfiYm+vErBP1uW3KB
	9RWhiyA/bsZOQTCSgIAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT6y4-0007fz-Ah; Tue, 21 May 2019 15:46:20 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT6xx-0007et-5g
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 15:46:14 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4LFbDtR021412; Tue, 21 May 2019 17:46:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=YLY8K4JAd9i9hkG4XK+nEONRnmj7dXy3ssCpW/hpiHg=;
 b=fsRoIo34yyhwhQKEdr3dXtKsVh1WJDXghsUyYmymUgDp6ooQroQ6lGwGbrcx70nVuUSc
 bpNuqvPhPy3KWactK5mZN+lG7xulo2jJwx2LEmgY4wBIUTa7nvMaHPFPrkAXXAAM94S6
 mFq7tCMJrUMfVEDzPs7yjy1DDSMjCGe3oZWxMIuh88hRB5ucBW0O0qdO60sNEB96/hXb
 UUzgA92guS6WIGzvp9vrs8DGyoZRMxXE6ADQC3QMR9IO/m9WD3zUphDm4LTrs3DweLnt
 rloxCf1gHObadLs8cOG0SET+aSx3Nr4MbTYhKiuC/Qd3QitYuHbLxBjA3chFyu2Bmve4 IQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2sj7h0tkvu-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 21 May 2019 17:46:07 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 090E138;
 Tue, 21 May 2019 15:46:07 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id DD2C72CE6;
 Tue, 21 May 2019 15:46:06 +0000 (GMT)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.46) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 21 May
 2019 17:46:06 +0200
Received: from localhost (10.201.23.31) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 21 May 2019 17:46:06
 +0200
From: Erwan Le Ray <erwan.leray@st.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jslaby@suse.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, "Alexandre
 Torgue" <alexandre.torgue@st.com>
Subject: [PATCH 0/7] usart various fixes for STM32
Date: Tue, 21 May 2019 17:45:40 +0200
Message-ID: <1558453547-22866-1-git-send-email-erwan.leray@st.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [10.201.23.31]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-21_03:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_084613_547993_FFA0F7AF 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, Erwan Le Ray <erwan.leray@st.com>,
 linux-serial@vger.kernel.org, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series delivers fixes in various uart functions of stm32-usart
driver.

Erwan Le Ray (7):
  serial: stm32: fix word length configuration
  serial: stm32: fix rx error handling
  serial: stm32: fix rx data length when parity enabled
  serial: stm32: fix transmit_chars when tx is stopped
  serial: stm32: Add support of TC bit status check
  serial: stm32: fix wakeup source initialization
  serial: stm32: fix the get_irq error case

 drivers/tty/serial/stm32-usart.c | 221 ++++++++++++++++++++++++++-------------
 drivers/tty/serial/stm32-usart.h |  14 +--
 2 files changed, 152 insertions(+), 83 deletions(-)

-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
