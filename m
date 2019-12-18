Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1210123FF2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 08:01:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E2yWTVv/oxn2uqjyZSu6Sui8esUPqp0F642sr47585E=; b=EwSvqmSnO8Orb0
	sPvURKPQELAZjqqTxIICQt6BtrJ0C+1QLhUdTbb8L6yjxZil4DMu01UEfVBnetc+TI8VGktqUjCT2
	ERPn7kqrwYf7zKZfWOE85d4fa95m4+pcvqAbq2EclUGF8nWrwF3pnMNKkCpwj4XcbgV48/AKE2+MF
	mw5IDx82ypF0Nbxsa5fuprZOiBdFj+KEaH3AqZFTBD4Iwu1E0+X7DBx5dnSUhfYZ3i8fUuKMCE9wb
	eavhSaydPTTUtWN/8k4RNMQCNFsyRBS56zKeVBZ9M+63vUfGWkHaImsUhWOTUpWfZ0K4RR9Wk3lnF
	s3yx2IlAO1KRBb9tEUww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihTKj-0006dB-PJ; Wed, 18 Dec 2019 07:01:21 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihTKa-0006cH-RR
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 07:01:14 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 3D2A1150379EF;
 Tue, 17 Dec 2019 23:01:12 -0800 (PST)
Date: Tue, 17 Dec 2019 23:01:11 -0800 (PST)
Message-Id: <20191217.230111.26076810894427486.davem@davemloft.net>
To: Jose.Abreu@synopsys.com
Subject: Re: [PATCH net-next v2 2/7] net: stmmac: Always arm TX Timer at
 end of transmission start
From: David Miller <davem@davemloft.net>
In-Reply-To: <c76b0d51238192f81a52231b214f252b20be55c6.1576586602.git.Jose.Abreu@synopsys.com>
References: <cover.1576586602.git.Jose.Abreu@synopsys.com>
 <cover.1576586602.git.Jose.Abreu@synopsys.com>
 <c76b0d51238192f81a52231b214f252b20be55c6.1576586602.git.Jose.Abreu@synopsys.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 17 Dec 2019 23:01:12 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_230112_892853_6EB1AF24 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Joao.Pinto@synopsys.com, jakub.kicinski@netronome.com,
 alexandre.torgue@st.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Tue, 17 Dec 2019 13:46:06 +0100

> If TX Coalesce timer is enabled we should always arm it, otherwise we
> may hit the case where an interrupt is missed and the TX Queue will
> timeout.
> 
> Arming the timer does not necessarly mean it will run the tx_clean()
> because this function is wrapped around NAPI launcher.
> 
> Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

This is a bug fix and thus appropriate for net not net-next.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
