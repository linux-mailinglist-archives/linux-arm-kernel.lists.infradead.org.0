Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E281918138E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 09:47:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=COYATgFZyBO3/j6rsnsBsGvm2XbDlX0fu0W0FXCCJFE=; b=t8g9LDFgMIZMT3
	8HCWfn3VLtWAlOHBkf4a58VY4is6NCOLFKrcVqfV404RF92tAD5EDrH/VrS6knQi3k06W1Ze9bNdZ
	o4uTy6pF8C6CJZcewX1miU/XycusaTUbPJJrQrN4N7eI+jtyFpNIiCDh2DN6x19s+q9uYO/DvnpvD
	zZovbpLgckoUwLZISeNSkXsWD3s90V+K7B3QnBLRJrqw36Jvt025WZNwgR38vLHjsZ661dBTm+z5q
	rTDVi1MbhJHW2yWetvnqaK+uxUxryEuPV7+u7DKkXgJk+Y0lWQkCEJyEpFYHd2Mb868ZtxZ7Ipuzo
	pipPkILjjQIoT35gkMFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBx1A-0003O8-5I; Wed, 11 Mar 2020 08:47:08 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBx12-0003NX-Hd
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 08:47:02 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 2A97F20600;
 Wed, 11 Mar 2020 09:46:58 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 1A3772007D;
 Wed, 11 Mar 2020 09:46:58 +0100 (CET)
Subject: Re: [PATCH -next 011/491] ARM/QUALCOMM SUPPORT: Use fallthrough;
To: Joe Perches <joe@perches.com>
References: <cover.1583896344.git.joe@perches.com>
 <2e6818291503f032e7662f1fa45fb64c7751a7ae.1583896348.git.joe@perches.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <c9ae6eed-6320-56c2-6248-b9c52e7d34d0@free.fr>
Date: Wed, 11 Mar 2020 09:46:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <2e6818291503f032e7662f1fa45fb64c7751a7ae.1583896348.git.joe@perches.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Wed Mar 11 09:46:58 2020 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_014700_732383_5B1924B4 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.2 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [marc.w.gonzalez[at]free.fr]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 URI_HEX                URI: URI hostname has long hexadecimal sequence
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
Cc: LKML <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ Trimming recipients list ]

On 11/03/2020 05:51, Joe Perches wrote:

> Convert the various uses of fallthrough comments to fallthrough;

What is the rationale for such a change?
Portability to different tool-chains? Something else?

> Done via script
> Link: https://lore.kernel.org/lkml/b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe.com/

Message-ID <b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe.com>
not found

1 partial match found:

https://lore.kernel.org/lkml/b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe@perches.com/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
