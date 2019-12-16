Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91828121A29
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 20:42:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lFaex4MalzoXzH7C64wx6hdxmXKK+XQQMk+hb9k910c=; b=aFOyLBIgietgd7
	KPPST0UAZlLqoFlYGI59yEAqpIBC0ppAwfYmn9ZKpKQsCneuqQBkMRw9666r006ks+ipv0PX7Hm1F
	U5CpDz8NzHbzOxdzjMR+J7pa1TQUCCsnxRMwNgBP3UxYJ6SmoVfQB6VLbb3iSRBfNgx15i7y1t2ER
	XdleUaQQE/iHhlK4HnviecdXA4gtlZfYPxP7zCNgmsBar4pmru/a4Bscq4KI+cks2120o+ceTltOF
	BCsv8T7Wx/CYNpU1rPyM+IpB47Xq9B8KfhyZunCVIMbR8iKLMc8l/eBGUrU5fH5z9T8GtSH203mlv
	zTSn3PAt4SZV7hAuHm4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igwGV-0004Pa-RX; Mon, 16 Dec 2019 19:42:47 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igwGN-0004Or-7n
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 19:42:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1576525356; bh=qZuiZ+B2txWHdnCJbb77EA33RIGkpS7YWruV8b0DAEk=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=aZ/B4DgIvLt+4aaqo6PW8tETJ+fycJcGYVVFUxHsx/AfC6OOMRizxH27pDDUP644k
 1cOMqMhNYVyZVh7O6KqMYbLEjdS2oE1NxlNwN2g3xmryP3HkAxAodtUAuc21RA9y6q
 IJvQWn1kZez0vnGypmnYdMqa0kKHKePwCZ/aLZ8Y=
Date: Mon, 16 Dec 2019 20:42:35 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH V4 01/10] bluetooth: hci_bcm: Fix RTS handling during
 startup
Message-ID: <20191216194235.4pq2xpfl7nz3p55w@core.my.home>
Mail-Followup-To: Stefan Wahren <wahrenst@gmx.net>,
 Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 linux-bluetooth@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
 <1570375708-26965-2-git-send-email-wahrenst@gmx.net>
 <61789264-a4c2-ac85-9d74-d186213ec70a@gmx.net>
 <20191216132509.ofqcdpwxsd7324ql@core.my.home>
 <6f05f4d8-fa84-ae81-ac4f-00ab12fabeea@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6f05f4d8-fa84-ae81-ac4f-00ab12fabeea@gmx.net>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_114239_597574_692F86A0 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Johan Hedberg <johan.hedberg@gmail.com>, Marcel Holtmann <marcel@holtmann.org>,
 linux-bluetooth@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Stefan,

On Mon, Dec 16, 2019 at 07:28:04PM +0100, Stefan Wahren wrote:
> Hi Ondrej,
> =

> sorry, i don't have access to a Orange Pi 3.
> =

> I looked at a=A0 AP6256 datasheet [1], but i couldn't find any helpful
> information about flow control during power up.
> =

> Are you able to analyze this issue more further before we revert this pat=
ch?

I'd like to, but I'll not be able to attach logic probe to the AP6256
module. It's too fine pitch for soldering.

I may try setting CTS/RTS to gpio/input mode and grab the capture of
the GPIO port states in time to see what's happening during probe
of bt_bcm module.

I don't really understand what effect your patch is supposed to have
on the CTS/RTS lines during power up from the commit description.
Can you please explain it more concretely?

I'll be able to get to playing with this after the holidays.

> I would like to know if this is some kind of timing issue, since in
> patch "bluetooth: hci_bcm: Give more time to come out of reset" you
> introduced a huge power on delay.

I wouldn't mind if we could get rid of that.

> Meanwhile i will play with modifications of original patch on the
> Raspberry Pi 4 and come back to you.

thank you,
	o.

> Thanks
> Stefan
> =

> [1] -
> http://www.sparklan.com/p2-products-detail.php?PKey=3D4984FVukjcpylzifQiM=
-TGFE-IKXD--BCwf4P15KfrU&AP6256
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
