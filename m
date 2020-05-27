Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8721E34B4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 03:26:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1V8JP+Wa44iE0tK1RjpQG1fuB6I4Omami44mpm+OvkI=; b=aQ67P6u7W6wyP1
	IlmygWaAX7QUc2g3Rzgm1RcGU0Gyt3SkLAlSC6c+CpgMt6My4joLbL2PuVYSHA0k23xbvq0b6CtLt
	NAG5U6JQlvT85MO5vDzd42V/yKgPsih6QrujCcbCjxuPTkMBatpAb9h6QD8FxvOyc3nSzw+nIq2Bb
	fVnXlHsfIQuZF2+j5oI5TwX7x6BtMwfiEBeoh5AYsGv24DHlp8AsG6+Z9bo9vdgHV6n6TeUj11G3X
	EUOP7DDi1CSl8DmrH/uKmoHJRo+bhbMEEpkMztCgQ5JfcTWzuxsxJBAZ9iLf7EZ6nEGCAquZKQ8T0
	JwicgL5eA6GUuYGvSGJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdkq9-0007pJ-7p; Wed, 27 May 2020 01:26:41 +0000
Received: from hqnvemgate25.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdkpz-0007o7-4w
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 01:26:32 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate25.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ecdc1730000>; Tue, 26 May 2020 18:25:07 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 26 May 2020 18:26:30 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 26 May 2020 18:26:30 -0700
Received: from HQMAIL105.nvidia.com (172.20.187.12) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 27 May
 2020 01:26:29 +0000
Received: from hqnvemgw03.nvidia.com (10.124.88.68) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Wed, 27 May 2020 01:26:29 +0000
Received: from sandstorm.nvidia.com (Not Verified[10.2.50.17]) by
 hqnvemgw03.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5ecdc1c50003>; Tue, 26 May 2020 18:26:29 -0700
From: John Hubbard <jhubbard@nvidia.com>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/3] misc: xilinx-sdfec: convert get_user_pages() -->
 pin_user_pages()
Date: Tue, 26 May 2020 18:26:25 -0700
Message-ID: <20200527012628.1100649-1-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-NVConfidentiality: public
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1590542707; bh=ShQgIonpjrN4inaE1D0TnZ3TUuscVNocNaQmsilKjaU=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 MIME-Version:X-NVConfidentiality:Content-Transfer-Encoding:
 Content-Type;
 b=DBpk2k6ro/0XXj68bcDqWQcx8cjVF1G1CWq87yBfGN5cMiOnhENPviM2iWntlKn2t
 o1gJ8CRO8dAOb+tBbeIum7XxxUWC1h4176vnIvX63IU33nOyDTa4THZEKWIkcJLsEx
 ZWii9wgRuJtOH2aehgsQYBsjEd/trbfA5O4v2ww+O/FmC3ZdDYatQMjJjKS5kZrTwK
 MvLpS0daX/yjs22DyOZg8gzhikwnOc48q9FrQ9aH44XTZDI88S3l5/95rjEhFnc2T+
 EwXKhULuozxf39W7WkcSpNNES+wVqKSaMsV7E8wGTLBdks85ci4QX/DY5o6YXrQLAa
 ENc8VhUaLjJTg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_182631_207831_BEC69B52 
X-CRM114-Status: UNSURE (   6.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, John Hubbard <jhubbard@nvidia.com>,
 Dragan Cvetic <dragan.cvetic@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Souptick Joarder <jrdr.linux@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Derek Kiernan <derek.kiernan@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

There are also a couple of tiny cleanup patches, just to fix up a few
minor issues that I spotted while converting from get_user_pages_fast()
to pin_user_pages_fast().

Note that I have only compile-tested these patches, although that does
also include cross-compiling for a few other arches. Any run-time
testing would be greatly appreciated!

Cc: Derek Kiernan <derek.kiernan@xilinx.com>
Cc: Dragan Cvetic <dragan.cvetic@xilinx.com>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Michal Simek <michal.simek@xilinx.com>
Cc: linux-arm-kernel@lists.infradead.org

John Hubbard (3):
  misc: xilinx-sdfec: improve get_user_pages_fast() error handling
  misc: xilinx-sdfec: cleanup return value in xsdfec_table_write()
  misc: xilinx-sdfec: convert get_user_pages() --> pin_user_pages()

 drivers/misc/xilinx_sdfec.c | 30 +++++++++++++++++-------------
 1 file changed, 17 insertions(+), 13 deletions(-)


base-commit: 9cb1fd0efd195590b828b9b865421ad345a4a145
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
