Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AED696AF6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 22:56:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uB1+SJ2XBIddeNoFsWSYDXuu4tx8lKCNS9J+xzCF+Uo=; b=O0NNrRZm5MgFsI
	upBg8LoOhS02cTNnTbrFAdxVBNuNWblAmgwwTVill2OLx16vM/mXazDuLdBZRbFp9RxeHbzlIOYBD
	Qd8VK08DDpNpGgAIhUERMFscPAR/z/4msYyeCYxoipvI+vUWrKab8gO9nUTOCWNkq31jWeOAtYlUk
	2oAkAgjXSWDfrqixuGDJg2d3fNlVjvwr4+uGLdaJ1wKbBnGB4JKOnxhD1kAcIwPSNmDuphRiJO4xs
	Ss9pTb3e8J/fRXD2LodKBDFQpq12Lhm5dedCfoUQkC3T/M9Xq7M7E0IBTpmIetyAE0IQHTled1QPE
	m/1pJSGQnY2p+SHDjNGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0BBA-0004Bj-El; Tue, 20 Aug 2019 20:56:32 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0BB3-0004BJ-Kg
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 20:56:26 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 6F2DB14814589;
 Tue, 20 Aug 2019 13:56:19 -0700 (PDT)
Date: Tue, 20 Aug 2019 13:56:18 -0700 (PDT)
Message-Id: <20190820.135618.1241308358677497033.davem@davemloft.net>
To: megous@megous.com
Subject: Re: [PATCH 0/6] Add ethernet support for Orange Pi 3
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190820145343.29108-1-megous@megous.com>
References: <20190820145343.29108-1-megous@megous.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 20 Aug 2019 13:56:20 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_135625_681427_B8A8278E 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, joabreu@synopsys.com, alexandre.torgue@st.com,
 devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 robh+dt@kernel.org, mcoquelin.stm32@gmail.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


It looks like there will be some updates to this series either involving
adding -supply to the property names or adjusting some of the kernel log
messages.

Seriously, I would prefer less verbiage in the logs rather than more.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
