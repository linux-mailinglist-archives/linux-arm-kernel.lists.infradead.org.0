Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE25C131AB1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 22:48:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gbw5tcXqkwvEGfzbGV28VyTq0/VKwwvsGwwHjTMCyv8=; b=oS5tpmkqobtF+q
	EkvVVM6EHs7cmejQIEj/mOlE58I/dOKoTOEaj4bqAuNQ4Qpq6/ATUe0P5SXqtikitPMpPcQ0R2PT1
	6V1zM/G0+SGzgjO5uWGDu7bG8OM3sKm1LluTeTlNqiU9QjDVTl1DOSMXDBoLrEKIbFQYdFANbzFPd
	GuKHMI8N4IX9h7O9cQVz/nNdNkj/bADdmCip4m9HA8i76HdHl3+J4EecmkPu1OSf4Z+76BhkjZ1iz
	t2FBMf2sJUvZEigmnoIRLrM22qv4k6VKu96JXxk4E9Rkl699h3S6wDybzKbzkp6LnVQKUAmBBZZAQ
	x+bwWmQa4IEa1Z2+5mWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioaEP-0002u9-18; Mon, 06 Jan 2020 21:48:13 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioaEH-0002tc-4p
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 21:48:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578347284;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LNwRHyI2AjpDdbwvKWA3E8D6dUXFXM87APIN8g0WhXQ=;
 b=TLne0VZqgzYD5j2k0uflxTeE4+byKg9Wrkmpjrb2Eo6UCmnFINkPpK7OxNrMarTEVFCJ0w
 tN2bc25YRfNm2BAd7+DeQxCe53FAGZnDQhfeTH33SlVUGKDttzXskDeXgn1tU3anLGHQ3D
 uGGqCud6xQiwPppbC6q1sC7I5bN2DiI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-174-3Mf2JKw9MZisqS9uRU7tBA-1; Mon, 06 Jan 2020 16:46:06 -0500
X-MC-Unique: 3Mf2JKw9MZisqS9uRU7tBA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 90D72801E6C;
 Mon,  6 Jan 2020 21:46:01 +0000 (UTC)
Received: from localhost (ovpn-112-4.rdu2.redhat.com [10.10.112.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C192160CD1;
 Mon,  6 Jan 2020 21:45:58 +0000 (UTC)
Date: Mon, 06 Jan 2020 13:45:57 -0800 (PST)
Message-Id: <20200106.134557.2214546621758238890.davem@redhat.com>
To: jiping.ma2@windriver.com
Subject: Re: [PATCH] stmmac: debugfs entry name is not be changed when udev
 rename device name.
From: David Miller <davem@redhat.com>
In-Reply-To: <20200106023341.206459-1-jiping.ma2@windriver.com>
References: <20200106023341.206459-1-jiping.ma2@windriver.com>
Mime-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_134805_338553_75340144 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jiping Ma <jiping.ma2@windriver.com>
Date: Mon, 6 Jan 2020 10:33:41 +0800

> Add one notifier for udev changes net device name.
> 
> Signed-off-by: Jiping Ma <jiping.ma2@windriver.com>

This doesn't apply to 'net' and since this is a bug fix that is where
you should target this change.

Thank you.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
