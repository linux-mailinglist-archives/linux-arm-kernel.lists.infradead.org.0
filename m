Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F14C11FC4D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 05:51:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fQdXmZHi2sLNU12u1W8iTLMmVXw0+hcOLf4jLewUahU=; b=ccMQM0N6tYzCc8
	Wusv3TTVjY3UFEokII85HzVy77LDuwJbca1E0G6wX2wWaX0SXYGRYWlniQwLG2QyuD66bcXHOXhWj
	fvkbngOyiOQiMTfeeKXshsSV+BocF5xeY8ZrgOchz4ko97EYq7ATR1ewTatrNAYXQbUeocWWBYHDw
	8id5JUw1PMvvjQcEsnvfzcBVG48DSc2KbtdBgvfOMVKkFFVeoIBtlkXSL3nSU3mRsYmlG+oiei4DY
	cbt2RHoZanY792c1D6BSkXy8Azii1HUiIlE639LYhC57XPwhg6/Alf5h9s7q6sIw+4/mtkNn1fYvD
	Q+vRH+lBjTjUYmvx17Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlP6j-00010U-KK; Wed, 17 Jun 2020 03:51:25 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlP6a-0000zm-BT; Wed, 17 Jun 2020 03:51:17 +0000
X-UUID: ee8c8609ea3f4c55821ee5454d641e07-20200616
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=E0n2lDonFBEI59Ci1XWwVT6HIPc/UsUckcKN/vDwwaE=; 
 b=NUE3uXzZCZjfQVdSh7lskhgR/2NE0EqrkTEtdkVyZl4g8eHFf1vejckADPY0aXiqG+9aoTQVB/pok3V2BElIgnnYTzTTGKB6opDKV01c+UUMIF65j4co5DoARzG4Nr4DsjU1VS8WBfV32dedHfbdNTmwTCrJvGVKh75uxMXvW98=;
X-UUID: ee8c8609ea3f4c55821ee5454d641e07-20200616
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <sean.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 886113131; Tue, 16 Jun 2020 19:51:08 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 16 Jun 2020 20:51:04 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 17 Jun 2020 11:51:00 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Wed, 17 Jun 2020 11:51:00 +0800
From: <sean.wang@mediatek.com>
To: <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v3] tty: serial: don't do termios for BTIF
Date: Wed, 17 Jun 2020 11:50:59 +0800
Message-ID: <1592365859-26714-1-git-send-email-sean.wang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <20200422180900.GA3454664@kroah.com>
References: <20200422180900.GA3454664@kroah.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_205116_470113_A1A146DA 
X-CRM114-Status: UNSURE (   6.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Ryder.Lee@mediatek.com, steven.liu@mediatek.com, arnd@arndb.de,
 sean.wang@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, tthayer@opensource.altera.com,
 linux-serial@vger.kernel.org, jslaby@suse.com, matthias.bgg@gmail.com,
 andriy.shevchenko@linux.intel.com, mika.westerberg@linux.intel.com, sr@denx.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sean Wang <sean.wang@mediatek.com>

>On Thu, Apr 23, 2020 at 02:02:08AM +0800, sean.wang@mediatek.com wrote:
>> From: Sean Wang <sean.wang@mediatek.com>
>>
>> Bluetooth Interface (BTIF) is designed dedicatedly for MediaTek SOC
>> with BT in order to be instead of the UART interface between BT module
>> and Host CPU, and not exported to user space to access.
>>
>> As the UART design, BTIF will be an APB slave and can transmit or
>> receive data by MCU access, but doesn't provide termios function like
>> baudrate and flow control setup.
>
>Why does it matter?  If the connection isn't exported to userspace, who would run those termios functions on the port?

The bluetooth driver would use BTIF device as a serdev.

The termios function would be called in kernelspace from ttyport_open and then
to tty_set_termios defined in drivers/tty/serdev/serdev-ttyport.c.

>
>thanks,
>
>greg k-h
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
