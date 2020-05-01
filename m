Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39BCE1C2080
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 00:21:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qm5oD0X/nRRVK1likVTtOFRtZETMWzr6lXq2kUX93jQ=; b=HdoPIlH3q5yj57
	w8aVJ18ZcsZeD6qxmsZEgArVSr512zNNTqfQqZy8sXiwBXU6ih8M0APdyOMgvzOjltjVCQ4dF/pe1
	stkx61JnzqUrIipE3lEJmxC1vpnYP/+9mW6hZaA8OBABr83Mwir+fw+z0SnsJf6FNNFI+JgKIKlDp
	tLpUoOE+GvGGbSl5yCZWLx7UfOqV+OmjkrgItQZaquPZb6AWy87iXjsbKndapzG8F3nXcdDu3APVD
	68U0lL5BOHfKHuFG8djqF+PVvrYrQO/hzKur8fuOiFVBzuqwjCVXjmxoKNt9sq5py4Z/NG21zZIcx
	PavRmviBev2CdBtOg6LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUe2X-0006wo-5j; Fri, 01 May 2020 22:21:49 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUe2O-0006vJ-7K
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 22:21:42 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id AF92B14EFC4E4;
 Fri,  1 May 2020 15:21:30 -0700 (PDT)
Date: Fri, 01 May 2020 15:21:30 -0700 (PDT)
Message-Id: <20200501.152130.2290341369746144284.davem@davemloft.net>
To: hayashi.kunihiko@socionext.com
Subject: Re: [PATCH net] dt-bindings: net: Convert UniPhier AVE4 controller
 to json-schema
From: David Miller <davem@davemloft.net>
In-Reply-To: <1588055482-13012-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1588055482-13012-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 01 May 2020 15:21:31 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_152140_264273_382C4879 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, yamada.masahiro@socionext.com,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Date: Tue, 28 Apr 2020 15:31:22 +0900

> Convert the UniPhier AVE4 controller binding to DT schema format.
> This changes phy-handle property to required.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>

DT folks, is it ok if I take this into net-next or do you folks want to
take it instead?

Thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
