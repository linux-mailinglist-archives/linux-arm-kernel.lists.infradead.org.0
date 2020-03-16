Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9ECE187550
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 23:04:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NhRMwWZtVhMgZHzEo2R3Z1qQbNY878amlCkw2CbccKk=; b=ZPDH2ljqNDGO7t
	cuah/0ypMlLfEkTGWHH42SO8C2k3c3O3V6V+4xx4Ot9oTae71xbDfjVNiQv0rZSdPgLEPcgB/XTkS
	eZ4xOn6v6HW3Tdd8HFPq0CYunoIQI57A4SoN65DoNVskEt4Avt8n+NJoosd6hm2XKZsM0jJtnApWa
	DREVT/PEZSq/EsyhKimJ5sAQ1YSoFukG0gPshnFUgv4kkxgjXu6vQ4cl1oWwnLmA1sESLjRopIh3A
	vlVrl9AsHP9QJrQIiT5laLdmyVX/U1Fjt8fNgR0GxG+fAtoVl1vpmGWLzWIXkvKl89qgM1rRIwNWo
	Ath7QK0Zp8jt+PwpfUcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDxqY-00046y-UF; Mon, 16 Mar 2020 22:04:30 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDxqR-0003yJ-7X
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 22:04:24 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id C9A10156D3FE7;
 Mon, 16 Mar 2020 15:04:16 -0700 (PDT)
Date: Mon, 16 Mar 2020 15:04:16 -0700 (PDT)
Message-Id: <20200316.150416.703162062113777580.davem@davemloft.net>
To: wei.zheng@vivo.com
Subject: Re: [PATCH] net: vxge: fix wrong __VA_ARGS__ usage
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200316142354.95201-1-wei.zheng@vivo.com>
References: <20200316142354.95201-1-wei.zheng@vivo.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 16 Mar 2020 15:04:17 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_150423_276503_AC172B26 
X-CRM114-Status: UNSURE (   6.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: info@metux.net, catalin.marinas@arm.com, jdmason@kudzu.us,
 linux-kernel@vger.kernel.org, kernel@vivo.com, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, guohanjun@huawei.com, tglx@linutronix.de,
 will@kernel.org, wenhu.wang@vivo.com, yeyunfeng@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Zheng Wei <wei.zheng@vivo.com>
Date: Mon, 16 Mar 2020 22:23:47 +0800

> printk in macro vxge_debug_ll uses __VA_ARGS__ without "##" prefix,
> it causes a build error when there is no variable 
> arguments(e.g. only fmt is specified.).
> 
> Signed-off-by: Zheng Wei <wei.zheng@vivo.com>

Does this even happen right now?  Anyways, applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
