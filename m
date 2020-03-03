Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC45F177175
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 09:45:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1eYXXstLiedgAqrxhSqBnUp3liebkG8LXg3mLYUMmtk=; b=pkT5V04TF8qq7u
	b4Y8TzjdZzxPw41sozv8qv+MhdhdObLHC97okWMgoosM7wwNZCCXunTG52CbqTJBj46fJVfRf0Mwn
	HdIWE8ryhyeKxseQHJOnPlMcpLEeNGpNSs2crkP1l2hv2YNEcjyLXgwnr92HfHvmS7Bh4wOHAnBTQ
	Tzq3hPrboLmWC2zv5IxwpsEZl94vRCXS7KCHKKYE9piauL4Ac6R0F5zjyQUJ00aBCRopX/xKcA59v
	JIrfXc8eMkH38mVMvifQyGMg4CqLY76uvmgk/jnsdjem5c5v/2gq+9PreD8YmHujYVNon0h78I/XM
	n4AWlOZWsgLBL8Ddp+Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j93Ax-00074F-Kq; Tue, 03 Mar 2020 08:45:15 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j93Aa-00072r-FK; Tue, 03 Mar 2020 08:44:53 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 09E6DAFB1;
 Tue,  3 Mar 2020 08:43:56 +0000 (UTC)
Message-ID: <1583225019.12738.6.camel@suse.com>
Subject: Re: [PATCH v3 0/4] Raspberry Pi 4 VL805 firmware load support
From: Oliver Neukum <oneukum@suse.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, 
 linux-kernel@vger.kernel.org
Date: Tue, 03 Mar 2020 09:43:39 +0100
In-Reply-To: <20200302155528.19505-1-nsaenzjulienne@suse.de>
References: <20200302155528.19505-1-nsaenzjulienne@suse.de>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_004452_674517_33DA88DC 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: f.fainelli@gmail.com, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 tim.gover@raspberrypi.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>,
 linux-arm-kernel@lists.infradead.org, wahrenst@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, den 02.03.2020, 16:55 +0100 schrieb Nicolas Saenz Julienne:
> On the Raspberry Pi 4, after a PCI reset, VL805's firmware may either be
> loaded directly from an EEPROM or, if not present, by the SoC's
> VideCore. This series adds support for the later.

What happens if runtime PM strikes, in particular, how do
you deal with D4cold?

	Regards
		Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
