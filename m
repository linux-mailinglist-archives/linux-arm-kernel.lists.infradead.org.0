Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C5F1E7EDC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 15:34:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yz1qWV/2ct/X3QkUEb7WvJg2/zUAGcAdFdiTtvuAUoI=; b=SlsyIIseqPBpoD
	h2f+/mBdJqhQ+IvyDHTQso2v/hyjOADR82wFuO13ST3WSAOIbh8Fw6ZZ5RaNATSuOgKkchJvmkpSk
	x6iRzH8TyZIH7OxwgHh28G0PoS0BfBxdJSkgHjiU0O+Hrh48fuPoKjCR+xkyriYkps8duwNx37CJw
	x1NGRAcgvEut7mcA/0+jxOwozJfOPl+134+QWMrF9ZSvnawdrZy3pcWX10mIl/tFTu386L0f0wqy7
	C8tHwOzU52VO++dBqHNXH/FYsTccGLAxnnTJ13mqEt4l9QfOaV4Xq/3xB1NE6Flt8jzueUM8z+OCN
	HJRppffzjAlMpTCmPfHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jef9s-0005Yp-4y; Fri, 29 May 2020 13:34:48 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jef9i-0005Y6-M6
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 13:34:40 +0000
Received: from bigeasy by Galois.linutronix.de with local (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1jef9d-0005JK-K9; Fri, 29 May 2020 15:34:33 +0200
Date: Fri, 29 May 2020 15:34:33 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH v3 1/9] dt-bindings: atmel-tcb: convert bindings to
 json-schema
Message-ID: <20200529133433.mr3fp4rfd5l4scxw@linutronix.de>
References: <20200506080554.283177-1-alexandre.belloni@bootlin.com>
 <20200506080554.283177-2-alexandre.belloni@bootlin.com>
 <20200529101314.2ueuhgnrqq3a764f@linutronix.de>
 <20200529132118.GF3972@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529132118.GF3972@piout.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_063438_871200_3DF93A43 
X-CRM114-Status: UNSURE (   6.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, kamel.bouhara@bootlin.com,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-29 15:21:18 [+0200], Alexandre Belloni wrote:
> There is actually one comment I need to address that Rob made on another
> series that was also including this patch. I'll send a new version
> today.

Ah, okay. Thanks for the info, that thread looked dead.

Sebastian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
