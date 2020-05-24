Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFCA1DFD67
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 08:03:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Message-ID:In-Reply-To:
	Date:MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=5zEyJuYXPshM9qBaGrGvoHgzEhGPRoK3R7YqpIAc5ew=; b=fKam4JO1GJ3N4F
	fOemc15bKUL41lM3cT8iaSqMasPTOxdn0S1fVJymnR4F1Z87GDAk4jumlAPvF77Alyl0ZiEV1UbGT
	swiNd78VIGajHHukPvd6bNth8ewqjqnL733liNtqp5k7MqBwB09J/ZkV2Kqi9ichVG1Q4x3SiahZ+
	etMzKwHQu7wMRZykfJMLMrEzy0SWnYiSYNJUR9+5S7aACza1WaP4VhzOo5isFFwT7HThY91IwLtcl
	lujFw5rPLT+7+YVXNazsMcy87nUVJGMCi6+xJ+SRquWZ20iDZy44HTCKPm9pPzyGD5N5Sgs2MdADx
	S2OHNHaOTlsAAORY/Qbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcjjP-0005Pj-GN; Sun, 24 May 2020 06:03:31 +0000
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcjj3-0005E5-FO
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 06:03:10 +0000
Received: by mail-il1-f198.google.com with SMTP id g19so12500198ila.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 23 May 2020 23:03:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=f8cm7i+6DZaPSRKesHef9xX2E7QNOPynTMGv2aqlP84=;
 b=V7nrakQZEF4F+fCFiPRtdu9AWtHYuwPBL0pffhiibqCr5KXqNhnUaD119ZcF+y1a5N
 NJpXGK8S1ZZCnx0TeUZvoSiZTaf+pvxnrfvomOnHNW0Yse3R5CBTV5fjcVS3x3uTnMNk
 TdN9KrhjwRhHSZE+5CofJFE5TkC60nWxRHIj/tP1eM113fxfDFfuoarBVt8kQqetgkb7
 uT2stHGed/RG9pVIt51BqvmJ3iUTABjqVPW6diw4dSBDJLkpvWg7yeEBocjnvYYpMfPr
 1i/ReHFm166s8UsknGjqA4sknLjpgQ1LjIckCZyUCuuVptJ8J/iE/h+w6heQXjGWbHck
 OPNw==
X-Gm-Message-State: AOAM5308tq0ilQ2nD0Wht+BGQRMgztSIe2Vpc/ZP7b15sSR24+sGUAMK
 Q4EUYkJtgtn14HjlvhJnXt/8BW/nFiucqndwY5uMZoHCNeHt
X-Google-Smtp-Source: ABdhPJwGqcUvFi9kw0HhVexHTCTsxhtssXwOhzWwTlRVW0bo6dxr+flQYWuUIA+M7jdwFMz5UWSgckDGMnoq58SrEydxAK0FWUZP
MIME-Version: 1.0
X-Received: by 2002:a92:914f:: with SMTP id t76mr20627206ild.238.1590300183500; 
 Sat, 23 May 2020 23:03:03 -0700 (PDT)
Date: Sat, 23 May 2020 23:03:03 -0700
In-Reply-To: <000000000000ba47b705a6443a0d@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000861e3305a65e9d74@google.com>
Subject: Re: KASAN: use-after-free Read in uif_close
From: syzbot <syzbot+0ce97ea45b008ba3b8bd@syzkaller.appspotmail.com>
To: arnd@arndb.de, daniel.baluta@nxp.com, festevam@gmail.com, 
 gregkh@linuxfoundation.org, kernel@pengutronix.de, 
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com, 
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org, 
 linux@rempel-privat.de, miquel.raynal@bootlin.com, richard@nod.at, 
 s.hauer@pengutronix.de, shawnguo@kernel.org, syzkaller-bugs@googlegroups.com, 
 vigneshr@ti.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_230309_508090_19DFC0BF 
X-CRM114-Status: UNSURE (   3.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.1 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
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

syzbot has bisected this bug to:

commit 32ec783ae19d48084b893cc54747fed37b07eb0c
Author: Arnd Bergmann <arnd@arndb.de>
Date:   Wed Apr 8 19:02:57 2020 +0000

    firmware: imx: fix compile-testing

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=15b22972100000
start commit:   c11d28ab Add linux-next specific files for 20200522
git tree:       linux-next
final crash:    https://syzkaller.appspot.com/x/report.txt?x=17b22972100000
console output: https://syzkaller.appspot.com/x/log.txt?x=13b22972100000
kernel config:  https://syzkaller.appspot.com/x/.config?x=3f6dbdea4159fb66
dashboard link: https://syzkaller.appspot.com/bug?extid=0ce97ea45b008ba3b8bd
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14b23f06100000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=111b0172100000

Reported-by: syzbot+0ce97ea45b008ba3b8bd@syzkaller.appspotmail.com
Fixes: 32ec783ae19d ("firmware: imx: fix compile-testing")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
