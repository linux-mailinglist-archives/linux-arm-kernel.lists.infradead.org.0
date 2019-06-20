Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DD04CF2B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 15:42:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xVn4j5f/wx0vnc05+kQcw1Nc6gmmgWBCsRRTSysNvR0=; b=tr4e9FErdVUM/y
	vUCiX7LvyXq6gpLABV3gc7Q0/hGqES7jAVPHyr3OjDzuQu3iZHchLN3Np0rQep1TgmttDKIB6Bsne
	XlMrUeRE0SWqm5nSfI1Oa+3bqheK2eINtoEWVnp0+2K3gBruzbq7l32wJBZIOQuV8CcIDu/PGrLH3
	e/IFTIFkfTfgROZr0oUnSbyVMk1iGzJHs0zmqg133Do9JI1cGD73+yi+FFkjviPrWHU9by0lJaCRg
	PXIhLp7u6yETyYuz3n5N+0BkyQuf1xrP3BR51Pi5tGr+Knv4D9/zuliUdbgDcG06yyQ4br77asNVl
	1mT8wOULIlwSWxmN1PIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdxKT-00067K-F4; Thu, 20 Jun 2019 13:42:17 +0000
Received: from mail3-166.sinamail.sina.com.cn ([202.108.3.166])
 by bombadil.infradead.org with smtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdxKG-0005wH-1S
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 13:42:06 +0000
Received: from unknown (HELO localhost.localdomain)([221.219.4.32])
 by sina.com with ESMTP
 id 5D0B8D1E000002B6; Thu, 20 Jun 2019 21:41:51 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 894245398473
From: Hillf Danton <hdanton@sina.com>
To: Alex Elder <elder@linaro.org>
Subject: Re: [PATCH v2 05/17] soc: qcom: ipa: clocking, interrupts, and memory
Date: Thu, 20 Jun 2019 21:41:39 +0800
Message-Id: <20190620134139.7056-1-hdanton@sina.com>
In-Reply-To: <20190531035348.7194-1-elder@linaro.org>
References: <20190531035348.7194-1-elder@linaro.org>
MIME-Version: 1.0
Archived-At: <https://lore.kernel.org/lkml/20190531035348.7194-6-elder@linaro.org/>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_064204_262828_BEF77A3B 
X-CRM114-Status: UNSURE (   3.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.108.3.166 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hdanton[at]sina.com)
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
Cc: devicetree@vger.kernel.org, syadagir@codeaurora.org, ejcaruso@google.com,
 arnd@arndb.de, netdev@vger.kernel.org, ilias.apalodimas@linaro.org,
 linux-kernel@vger.kernel.org, evgreen@chromium.org, bjorn.andersson@linaro.org,
 abhishek.esse@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, subashab@codeaurora.org,
 linux-soc@vger.kernel.org, davem@davemloft.net, cpratapa@codeaurora.org,
 benchan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hello

On Thu, 30 May 2019 20:54:01 -0700 (PDT) Alex Elder wrote:
> +
> +void ipa_interrupt_teardown(struct ipa_interrupt *interrupt)
> +{
> +	free_irq(interrupt->irq, interrupt);

Looks like that there is something missed.

	kfree(interrupt);
> +}

Hillf


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
