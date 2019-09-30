Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2B5C2667
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 22:10:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=i2ElUA0bRcosZejxRKCu89ZNyCSBky9QhNgBxZMyPe0=; b=e2L
	zBp6Y1apaNdVaDehRgbjBBEdJ7Huu1HezlqpCN5zIrBPIGnxCKSC8pjfA0j85iaxhc0+U01kyWa9F
	MkRQTSpx30Elp/YNB4VD8D0NaJ0kgn4Jm/cAAV8rlwSfgn0Af3K2SZp5Kl1vAqb6IpqCi/5eXR9z5
	f3j4FZ2umeV1gXbOWZs5HDeGIqumzKXqTVEg1MIemD+b5ePidi75apUciz9nHn44+9MMc2jSHiP+d
	21yxV/Xdf5ig8d0zL6iWOWpPdt5ENjllrT6TbLgOOsSfPQKlpZdRu4Z5Ol/KvIWs4sANddoLCijQa
	Bdr55bOGH/FgTkXhvKtXDD21TyJuetQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF20G-0007uZ-Jf; Mon, 30 Sep 2019 20:10:40 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF207-0007tn-N4
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 20:10:33 +0000
Received: by mail-io1-xd41.google.com with SMTP id n26so13212038ioj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 13:10:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=lHN/tDnufQZObPeH7yuPF8yjfolHqJGmsLh3bQf8sJI=;
 b=dYPTbg0DlUybLnnpGviIbEjsKj/G1+CfDUrB91glQtk/q0CXG94Id/SAfG1ZxoRXdP
 xiibhKBYUWuxsffCd/ksicV0+KWwT/5VmrgkvmJ6hM3v7sSwQQRCQ4w2Swyp00jFatZD
 g7hoVZ3q1oSt3Sm1ljliN+wY9tN/Jfnih1n68zd68TYpvcwk0UzoGNzxq8aVIOnDZfdi
 oGk+0wwgbDkUu6UZUKbf2+fPhliFVuldzjXkIeJKPnohMLjqUGzIRUXmKE7iASa4pU7U
 8D0zA7k+TL2Vn9kFs6fXnqX6DAJxkoXwO6DqQkCQB/V2mxA6BzqkFouDd2Ji15ARZZvG
 eJ+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=lHN/tDnufQZObPeH7yuPF8yjfolHqJGmsLh3bQf8sJI=;
 b=HF88UzIRNU+NAa9oOZMntjFubFlLLvVf1rKfZCT5AtlRCcUUZnya4YDZD5Vmovf5uu
 0UiFYhx+efQu9lWi9uHUcDDVnhUkoCzGCmnn10GJPqUK+mEnap3S1H2D10Hq5Wu6XMep
 jNdBo7l4bu8Y87Elt4W8Z0GZ8/IS77EFFReWmzTyqAbKXSVTqSN3H43udgmbj2hbTzvl
 NhXTyL9bolloTC06CwxgBQPf78FGVsswQBmYkkqEiV4K010/Sofr4n4m0M+wtL/JhsoC
 tjYptw3mAvet0FjfKfeK1x2xbPCemWnkgbE/NQrk9SfoQfDOXQBWznK3X2tBSh3XkyO0
 ZfbA==
X-Gm-Message-State: APjAAAWxTeMgj+IyxoxvemX7TaMomO93bP4f2A8XkFViJvundQhuUN6c
 MvCGSyoosKJjym2bkjxIuWEXOBmRRsPRxGgNFIM=
X-Google-Smtp-Source: APXvYqzcRolQWJkvNIFKrMPKkFHxtANjKncJWEV6fkoP4U+5RdLcKAkWwkiTpQPbiRnOrJgqVkX2ECn9UWoY2h7pYQ4=
X-Received: by 2002:a05:6638:3a5:: with SMTP id
 z5mr20882591jap.95.1569874230438; 
 Mon, 30 Sep 2019 13:10:30 -0700 (PDT)
MIME-Version: 1.0
From: Adam Ford <aford173@gmail.com>
Date: Mon, 30 Sep 2019 15:10:18 -0500
Message-ID: <CAHCN7xLOCC00UC4PB3vHa6Q7yyhXVEaWgx2X9D9L2dDubd_5fA@mail.gmail.com>
Subject: [PATCH] Bluetooth: hci_ll: set operational frequency earlier
To: Linux-OMAP <linux-omap@vger.kernel.org>, 
 arm-soc <linux-arm-kernel@lists.infradead.org>, 
 "open list:BLUETOOTH DRIVERS" <linux-bluetooth@vger.kernel.org>, 
 Philipp Puschmann <philipp.puschmann@emlix.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_131031_779595_5695D76C 
X-CRM114-Status: UNSURE (   6.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Is anyone else having issues with the hci_ll after  a2e02f38eff8
("Bluetooth: hci_ll: set operational frequency earlier") was applied?

I have an i.MX6Q with a WL1837MOD attached to UART2.  After this patch
I git a bunch of timeouts when initializing the device using the 5.3
and 5.3.1 kernel.   I know a bunch of omap and imx users have done
some various tests over the years, so I thought I'd ask.

[  195.911836] Bluetooth: hci0: command 0xff36 tx timeout
[  206.071837] Bluetooth: hci0: command 0x1001 tx timeout
[  214.231862] Bluetooth: hci0: Reading TI version information failed (-110)
[  214.238712] Bluetooth: hci0: download firmware failed, retrying...
[  216.391834] Bluetooth: hci0: command 0xff36 tx timeout
[  226.551843] Bluetooth: hci0: command 0x1001 tx timeout
[  234.711856] Bluetooth: hci0: Reading TI version information failed (-110)
[  234.718705] Bluetooth: hci0: download firmware failed, retrying...
[  236.871832] Bluetooth: hci0: command 0xff36 tx timeout
[  247.031837] Bluetooth: hci0: command 0x1001 tx timeout
[  255.191852] Bluetooth: hci0: Reading TI version information failed (-110)
[  255.198706] Bluetooth: hci0: download firmware failed, retrying...
Can't init device hci0: Connection timed out (110)

Revering this patch fixes the issue, and subsequent patch proposals
form Philipp haven't seemed to fix the issues for me on 5.3

adam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
