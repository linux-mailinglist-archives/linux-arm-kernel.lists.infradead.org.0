Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE8914317D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 19:32:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CSgXvTtCD5skCU+PzUisweGsbHj+b/By9yF6XaHhxx4=; b=ku6cXYeYtLnZtY
	OJBC24vudXm1s/pHfZ/vri3Y26Prv8mcLM/KJccSjDdXjtN6CDlmhF5matBc0HeLqbctJZGeAo/zB
	ezkNysEes7RmjGqHZynD6jqTETSumNAfu+r7VWA6Pf8ZZK8/4vDg79hztyKLVP/Ejf1b9xmEZ5NJJ
	n2Wwf4NMryKf0hLwZhll34qTo/39FZB8Ge5wfITlrPaTwvZuV39IDfrgW3G6f6Ifmku7IFBaS48N7
	w7V0fKSn9URC5uSrmcODA92iNuAKSPlldsQx8bOXthHbscR4XqoOydjQOmo1GrWqQHQLCGYdELQ7U
	YMJIEr7GWi+i1266gewA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itbqq-0006F9-Ox; Mon, 20 Jan 2020 18:32:40 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itbqX-00064S-Vt
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 18:32:27 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 481gJ25bMtz1qr4g;
 Mon, 20 Jan 2020 19:32:18 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 481gJ25820z1qx0N;
 Mon, 20 Jan 2020 19:32:18 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id 45H0oc59YttR; Mon, 20 Jan 2020 19:32:17 +0100 (CET)
X-Auth-Info: 8DpCyTmS8Bl7LWBNG4tB1mSI/FPfo1t8yTVOe7OFueM=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Mon, 20 Jan 2020 19:32:17 +0100 (CET)
To: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>
From: Marek Vasut <marex@denx.de>
Subject: STM32MP1 level triggered interrupts
Message-ID: <20bb72d0-8258-abc0-e729-4d3d5a75c41c@denx.de>
Date: Mon, 20 Jan 2020 19:32:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_103222_222032_432EBEB2 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I have a device connected to STM32MP157C which requires active-low
level-triggered interrupt sink. The device interrupt line is connected
to the SoC gpio-C bank, which has it's interrupt line routed into EXTI,
which can only handle edge triggered interrupts to my understanding.

However, ARM GIC should be able to do both and EXTI has this irqmux /
EXTImux functionality, which -- if my understanding is correct -- is
capable of routing a select GPIO line directly into the GIC as an EXTIn
interrupt signal. Thus, this might permit handling active low
level-triggered interrupts. Is there some DT binding to configure this yet ?

Or is there some other, better, way ?

-- 
Best regards,
Marek Vasut

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
