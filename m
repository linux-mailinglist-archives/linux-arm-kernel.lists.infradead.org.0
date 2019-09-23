Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51154BBBC0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 20:42:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q48pFwAtNAEcS3loamvGW/CJKgN6FNdeZuO3xWQIi44=; b=j6hnQTC8WKUngB
	rZnL/34CaaYbRG13F6g/K8SFREjeXuLBED96/i7cTDkrCZ6ED10EXmdwxISiJH8g2IMS7idBTaFca
	JP2IfnLNZXPJjpmsFD1LV1+UNWXRUgNTyyewZxxhIxWIHNr4M7BvRRYWM+loLYgJthb2WNa3DCotk
	6bcUzZk1AK6Kcc2SwIxL4FDrIvRJlPpWlqXlCnTth71sIcgbY5NVZt5GPB6kP5jh6CykgaeK97otf
	Zo2RQXBNJiKDZt4c+Leh5uBsNP3mbexmCfhZT12+/xre71gBVifm3QgG9i0Ft4gZQ9VuhvPv+xCrc
	GyHGXUVRUvLcXzrHzt2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCTI2-0007Yh-6Z; Mon, 23 Sep 2019 18:42:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCTHq-0007Xd-3W
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 18:42:15 +0000
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E4F4F21928
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 18:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569264133;
 bh=jh64/+Mh1tv9gqnwGn/6R1p+9BuONhUOHdnYdG9WQDo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=LN56fypZJ27Zy37NVd37Wcdv7C172QPewnf72fmSvvDoGl5X0KRe6wXjM1ewQpfs4
 eOSnwnw+Ly8K/VMFrH3FkF5KFJLkKtfB/7gHXKjG3xohQ+zmxI5/f95uYmMw2eA0HB
 6PmYQmkxLC8Q/jJTww3thq8tRCJ25rU8yJf1ajYM=
Received: by mail-wm1-f50.google.com with SMTP id v17so10392746wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 11:42:12 -0700 (PDT)
X-Gm-Message-State: APjAAAWAw/fqS4AeC8+g54bHtMWXWgXPFMRGSCObG0NpFscUGmrdLESP
 ULvt5LkrQzJUt88R+Dj7UKuPY8IlidlybY6Kh6AM4A==
X-Google-Smtp-Source: APXvYqzlorbAOK1pZewfmhFMCZa9D1IW2om6vHHCEX4YXqvLd98q3SRZFESbOSIcQdidWUK/iViVSejOT+cnBl7sG/4=
X-Received: by 2002:a7b:c353:: with SMTP id l19mr695433wmj.173.1569264131365; 
 Mon, 23 Sep 2019 11:42:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190920131907.6886-1-christian.brauner@ubuntu.com>
 <20190923094916.GB15355@zn.tnic>
In-Reply-To: <20190923094916.GB15355@zn.tnic>
From: Andy Lutomirski <luto@kernel.org>
Date: Mon, 23 Sep 2019 11:41:59 -0700
X-Gmail-Original-Message-ID: <CALCETrU_fs_At-hTpr231kpaAd0z7xJN4ku-DvzhRU6cvcJA_w@mail.gmail.com>
Message-ID: <CALCETrU_fs_At-hTpr231kpaAd0z7xJN4ku-DvzhRU6cvcJA_w@mail.gmail.com>
Subject: Re: [PATCH] seccomp: remove unused arg from secure_computing()
To: Borislav Petkov <bp@alien8.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_114214_172893_8537223C 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-s390 <linux-s390@vger.kernel.org>, Will Drewry <wad@chromium.org>,
 Kees Cook <keescook@chromium.org>, Parisc List <linux-parisc@vger.kernel.org>,
 X86 ML <x86@kernel.org>, linux-um@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Andy Lutomirski <luto@kernel.org>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 2:49 AM Borislav Petkov <bp@alien8.de> wrote:
>
> On Fri, Sep 20, 2019 at 03:19:09PM +0200, Christian Brauner wrote:
> > While touching seccomp code I realized that the struct seccomp_data
> > argument to secure_computing() seems to be unused by all current
> > callers. So let's remove it unless there is some subtlety I missed.
> > Note, I only tested this on x86.
>
> What was amluto thinking in
>
> 2f275de5d1ed ("seccomp: Add a seccomp_data parameter secure_computing()")

IIRC there was a period of time in which x86 used secure_computing()
for normal syscalls, and it was a good deal faster to have the arch
code supply seccomp_data.  x86 no longer works like this, and syscalls
aren't fast anymore ayway :(

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
