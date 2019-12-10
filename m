Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 383DD118C2F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 16:12:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Weg/Fp17bwv2exjchrJVf7pvw7+yYG2uDA8EES7jGow=; b=n4WGJQjSe7AgG+
	stfdzoviLyYsoclz2YEEUiwMSxTp4e7L/R+B4EQukySF4S0IAcSvw4AmpLmv+FT0y+gREX8ZGtreJ
	KndgUKP725nlhldDs465AlvK4/J3dGCXxVUlp0Dp9CsUN1UAMye1a+fSI7IUGphQ8k964UWdSHV1B
	FHjtItuoP3Wu8to7id9ndpMkZRp0Uvd1DPH/mwqV5w+U62PjWFXN99Kau9A4RdaZYEh/ZeKeXWPiA
	3hhSojTdFbrjSW+73sxtKcRXLHFf6DDFBnKVxueRZfT1WWo0RMry3k8IuZfYtFLgsYpMuC91cwjh5
	+i0ljFpO5rfO/aDdStyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iehBi-0001Fr-Le; Tue, 10 Dec 2019 15:12:34 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iehBN-000177-C0
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 15:12:15 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 2CE1E20714;
 Tue, 10 Dec 2019 16:12:08 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 085FF20425;
 Tue, 10 Dec 2019 16:12:08 +0100 (CET)
Subject: Re: [PATCH 08/10] tty: serial: samsung_tty: use 'unsigned int' not
 'unsigned'
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-serial <linux-serial@vger.kernel.org>
References: <20191210143706.3928480-1-gregkh@linuxfoundation.org>
 <20191210143706.3928480-8-gregkh@linuxfoundation.org>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <eb3cf8f9-3606-c2d6-ad90-4388a52c320b@free.fr>
Date: Tue, 10 Dec 2019 16:12:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191210143706.3928480-8-gregkh@linuxfoundation.org>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Tue Dec 10 16:12:08 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_071213_569681_9E160447 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: LKML <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ Trim recipients list ]

On 10/12/2019 15:37, Greg Kroah-Hartman wrote:

> The function uart_console_write() expects an unsigned int, so use that
> variable type, not 'unsigned', which is generally frowned apon in the
> kernel now.

"frowned upon"

Wait, what?!

'unsigned' and 'unsigned int' are the same type, if I remember my C
lessons correctly.

Is this a uniformization issue?

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
