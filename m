Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC86F1BC56E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 18:40:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CCwPi+tcXLa3rB3ceDoyJ2f9LVPjADbs49GT9OM12Oo=; b=Kp7iiwlJ0QqCfh
	4RFNSVIAkK5tx99y31UF1Sro9OegIYo4fC2A3fjYHky4QF7g1VVG6CZv1lKGy2OiotJjpHImcpG4/
	JmBRurxWNnJij/en/SSMIDw2uuvNav/9b9U5vkUB/44uD7zA/fwKLkveoGYqJN08CK27awgxwDlpU
	55Aq5Kz9wIYSAlzutJzlQzdZL91SlJYG+XcVmBu/nU/0ABw1HAoYPwX4BhW44eO4QwaN6b5DjO0FU
	Sx2nqQ9zWCb30Uy3lwZIPFw6Wx7/M7XISQaR2ArQ9b16C+YEBt1dZo8ipnHHSoZitCJkW+DCp+Waw
	fyE94DlSA5vlHz6ErPCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTTHv-0003Fa-Uf; Tue, 28 Apr 2020 16:40:51 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTTHm-0003EH-SB
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 16:40:44 +0000
Received: by mail-lf1-x142.google.com with SMTP id j14so17455255lfg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 09:40:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lHXIK5KG4MM6NL6ZnqDyJCo1++3O5tMDxa0Oox/FCk0=;
 b=Qu+2TQv0OYiYE16287sogB8uDjS8JZz9MFHDIwMmE4QWXix8Yj3Rir/mLPwz00RjUg
 hnk6uNKaE0hzn5zlYIZTWKFCs2u3Lk4U9c8hgRG4h/3lWuPoDD91flVvK19N8QzMsCzs
 vJ6aDNedAL1ptIzuTwxhsiNW9/aiFum9pNkTk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lHXIK5KG4MM6NL6ZnqDyJCo1++3O5tMDxa0Oox/FCk0=;
 b=Reitka9DKhHdWDq7OTz2A6J9RWqeMtUt9ZvwK1OfYVPipVwz2AxfOOCZrTg3kzYJ+Z
 8DRePJNhk/SVgb9QuyLWjRw1q9dMtgbYS2pvoo0xw5/giu1z4IWsdw/Pe2pPjE86GKAW
 clsruFQiVC7lpm4QPpOC828G7DSKKtzDFbz0lQVYObj0WNYN2DWe2ni5cXiSznRO9s2J
 a9GkLW2bvJpQmBxl6wq+xJVGaOA0em9KYqlBc6aulh/seVLezNI3OAyRAFlp8pf3MuKQ
 Wpi3DxzBnRY1xZZPO4FoRCpHPOkVqB/ie8+WjuZBZwvfREfAL+vUKSjiC4/k4PvAgF8f
 Cy1Q==
X-Gm-Message-State: AGi0PuZWWRVdZSADLCWhbFe8fViTQwHy+2Egjy1yzHsX4V7/3wn920ZP
 /iqvtgtpMbxP+qXDwd3OPx/kxGeHm8Q=
X-Google-Smtp-Source: APiQypLlqYbQmf7FiL8P1+8RQzHQMqRylw8C/vjDWB8dCDRJmyRho80vettfWxodmC5t6m7DSyzTIg==
X-Received: by 2002:a19:505b:: with SMTP id z27mr2157095lfj.123.1588092039543; 
 Tue, 28 Apr 2020 09:40:39 -0700 (PDT)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com.
 [209.85.167.52])
 by smtp.gmail.com with ESMTPSA id d15sm14160624lfl.77.2020.04.28.09.40.38
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Apr 2020 09:40:38 -0700 (PDT)
Received: by mail-lf1-f52.google.com with SMTP id y3so1835306lfy.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 09:40:38 -0700 (PDT)
X-Received: by 2002:a19:240a:: with SMTP id k10mr19924040lfk.30.1588092037785; 
 Tue, 28 Apr 2020 09:40:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200428032745.133556-1-jannh@google.com>
 <20200428032745.133556-3-jannh@google.com>
 <CAHk-=wjSYTpTH0X8EcGGJD84tsJS62BN3tC6NfzmjvXdSkFVxg@mail.gmail.com>
 <94141fbb-9559-1851-54c1-cdc5fc529a1a@landley.net>
In-Reply-To: <94141fbb-9559-1851-54c1-cdc5fc529a1a@landley.net>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 28 Apr 2020 09:40:21 -0700
X-Gmail-Original-Message-ID: <CAHk-=wg2uw09tJMKTooQBr=AJPzzLTaq95b+SSS513Gm0gy5sw@mail.gmail.com>
Message-ID: <CAHk-=wg2uw09tJMKTooQBr=AJPzzLTaq95b+SSS513Gm0gy5sw@mail.gmail.com>
Subject: Re: [PATCH 2/5] coredump: Fix handling of partial writes in
 dump_emit()
To: Rob Landley <rob@landley.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_094042_915363_10E97D4A 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rich Felker <dalias@libc.org>, linux-c6x-dev@linux-c6x.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Jann Horn <jannh@google.com>,
 Linux-sh list <linux-sh@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Linux-MM <linux-mm@kvack.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Mark Salter <msalter@redhat.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Andrew Morton <akpm@linux-foundation.org>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "Eric W . Biederman" <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 9:34 AM Rob Landley <rob@landley.net> wrote:
>
> Writes to a local filesystem should never be short unless disk full/error.

Well, that code is definitely supposed to also write to pipes.

But it also has "was I interrupted" logic, which stops the core dump.

So short writes can very much happen, it's just that they also imply
that the core dump should be aborted.

So the loop seems to be unnecessary. The situations where short writes
can happen are all the same situations where we want to abort anyway,
so the loop count should probably always be just one.

The same would go for any potential network filesystem with the
traditional NFS intr-like behavior.

            Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
