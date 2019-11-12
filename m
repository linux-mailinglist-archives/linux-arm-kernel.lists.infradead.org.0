Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F697F95F5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 17:46:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9nOpbayNbssoj4ncdVZ/VcjR+ym8f1tWKZzX0Pl1qww=; b=U5cmNZApr3dc1Q
	LxiOJ/Irhqw124zXejojY298Cr8AxSeZQH+ZF/2lTinQyIaho8xn5f6T6XpN7kw84KkM3yKL8C5+b
	MEVuCTl3rnFT08M5VAtmlX6i8KeWjPej3nP5uHY9Lr7ohUFZKDks0FZBjsoAUMm+S3mHRiiqTlJXq
	V3GFwquup/q8YTE1Ufc87cu7i3NnnZNxZ2PSzGU3wopqnkjDLmavIN1jmz+aM0+6eTV8qCy+aJMqc
	jcd7Rzt/s0lIXqD6E0M3OmpHxlvh/+HKeEpkpb4CWt2q1LgS6gbpJ4TMLoYvWwBVjbBnuMn89Vkv2
	jOnC/f19OMv5YpZTMYLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUZJa-0003Dn-02; Tue, 12 Nov 2019 16:46:50 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUZJS-0003Cu-EN
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 16:46:43 +0000
Received: from localhost.localdomain (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id EC6867DE;
 Tue, 12 Nov 2019 16:46:40 +0000 (UTC)
Date: Tue, 12 Nov 2019 09:46:38 -0700
From: Jonathan Corbet <corbet@lwn.net>
To: "Daniel W. S. Almeida" <dwlsalmeida@gmail.com>
Subject: Re: [RFC PATCH] Documentation: perf: fix kernel-doc warnings in
 imx-ddr.rst
Message-ID: <20191112094638.54459a23@lwn.net>
In-Reply-To: <20191107185755.29586-1-dwlsalmeida@gmail.com>
References: <20191107185755.29586-1-dwlsalmeida@gmail.com>
Organization: LWN.net
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_084642_483846_50BC1D54 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-doc@vger.kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 Frank.li@nxp.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, skhan@linuxfoundation.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  7 Nov 2019 15:57:55 -0300
"Daniel W. S. Almeida" <dwlsalmeida@gmail.com> wrote:

> From: "Daniel W. S. Almeida" <dwlsalmeida@gmail.com>
> 
> Unexpected indentation errors were reported due to missing blank lines.
> Now fixed. No change in content otherwise.
> 
> Signed-off-by: Daniel W. S. Almeida <dwlsalmeida@gmail.com>

So this is in no way your fault, but this particular file has been the
subject of some merge conflicts in linux-next already, so it's probably
best not to mess with it further at the moment.   Could I ask you to
resubmit the patch after the 5.5 merge window?

Thanks,

jon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
