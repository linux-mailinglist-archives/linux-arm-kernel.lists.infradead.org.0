Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D22E114197
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 14:38:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:From:Subject:Message-ID:In-Reply-To:Date:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=FTIpSKt/CEP9YqOB7nVr8gxM2H5UWS9TyPD2LH+IVhE=; b=AWJZaQjhJmJpRi
	WaX56AHay8x2FM6dMN2qaGZH0AqDse4nk6JPNc8/UAmcw46hojxFlV8msZEVK5MwZH6Tz/3sjfFiD
	JQGCygNFJ0b7mb49nNghJtqk1Q59mP7Gr+L9j/OL1osO5nMIkLZ+YK5xySbNjhi4EW/GkWPhZ+sXS
	DdagfQIPmNCBDyCFa7nIXW3C1TWtdqSs6uAsYV4RiDjktjm9iwtOo7+1fhq/tQn31fVFYqIa4AzmY
	a4ZtIocHFX4gpkw5YDxvD6UxWNyc/sjObuAHaSnwGYJfPM++KDq05uKpVEAuPE8dMgyMZ5hZzh3ul
	qP40m0MxIoQ1P4emjF0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icrKe-0000rA-F0; Thu, 05 Dec 2019 13:38:12 +0000
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icrKV-0000qX-7K
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 13:38:04 +0000
Received: by mail-il1-f198.google.com with SMTP id v11so2486380ilg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 05:38:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=BPtd1lCkh28DO7EwzqWFu86aIj+E+y3RBRqfbiycXgU=;
 b=N91Qk/YFapMmKUZwjwrYvcYIVCsGTNxNP6dIOnLyvms7pjnVcpsFNu1aFlzXJqkfw8
 /WNOEKdHZRuTHAy5e1FQ65DL7lzQPv2XHrrHaNpkuNq6OMJt/vPgebQM929Hcgh2EvNq
 QzO29QKKl9qZDO6XUHrkdmigJn1I2B3+Q+ecw3PBQHdc5QejITJ+Mmq8jOdHJWdHk9o7
 z4yjEDyeYpIYD16+Jm6kW//zZ3Lw0z425vyjen+JV2MxOtItGKO2ga5dspKkWslYfC2C
 b05JenX4viIAP4D/oq7nZghRlQpl2pNxnllZxi6Cq1w9Yo5S1Fl+4E9YnzN9NTmUy+7E
 kJfw==
X-Gm-Message-State: APjAAAVf+jJJHNwsBciNgknTopcYKq1R4JZo0i131lG7BDFoTP/LO/qv
 WEqQujhzq8JjSEP/gQpkIPkNjQ7j6PMJVp+b3sbsMXZlXA0r
X-Google-Smtp-Source: APXvYqw0yUIbNh+pGaBmjTGn6QTdUeXaeQPr8IF42eCrt+4KQEhGY66Ikiv3nYhzewKgZfr/soR4DDYF3lXcnPKyIFcc/jNYBhWi
MIME-Version: 1.0
X-Received: by 2002:a92:3984:: with SMTP id h4mr8301330ilf.36.1575553081339;
 Thu, 05 Dec 2019 05:38:01 -0800 (PST)
Date: Thu, 05 Dec 2019 05:38:01 -0800
In-Reply-To: <0000000000006dff110598d25a9b@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000bcf3bc0598f5090d@google.com>
Subject: Re: INFO: task hung in fb_open
From: syzbot <syzbot+a4ae1442ccc637162dc1@syzkaller.appspotmail.com>
To: airlied@linux.ie, ayan.halder@arm.com, b.zolnierkie@samsung.com, 
 daniel.vetter@ffwll.ch, dri-devel@lists.freedesktop.org, kraxel@redhat.com, 
 linux-arm-kernel@lists.infradead.org, linux-fbdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, maarten.lankhorst@linux.intel.com, 
 maxime.ripard@bootlin.com, peda@axentia.se, sam@ravnborg.org, 
 syzkaller-bugs@googlegroups.com, ville.syrjala@linux.intel.com, wens@csie.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_053803_266068_6BBBB55C 
X-CRM114-Status: UNSURE (   4.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.1 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

syzbot has bisected this bug to:

commit 979c11ef39cee79d6f556091a357890962be2580
Author: Ayan Kumar Halder <ayan.halder@arm.com>
Date:   Tue Jul 17 17:13:46 2018 +0000

     drm/sun4i: Substitute sun4i_backend_format_is_yuv() with format->is_yuv

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=15d2f97ee00000
start commit:   596cf45c Merge branch 'akpm' (patches from Andrew)
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=13d2f97ee00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=7d8ab2e0e09c2a82
dashboard link: https://syzkaller.appspot.com/bug?extid=a4ae1442ccc637162dc1
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14273edae00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15e7677ae00000

Reported-by: syzbot+a4ae1442ccc637162dc1@syzkaller.appspotmail.com
Fixes: 979c11ef39ce ("drm/sun4i: Substitute sun4i_backend_format_is_yuv()  
with format->is_yuv")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
