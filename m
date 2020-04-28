Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D31E01BB4BF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 05:36:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lu8+xNlX3r5KIA4InA1mzyyEo+83kTreI5nB5FJKPnI=; b=r+HkkuLiFbQ1FE
	VntK9+rI/M5ZWtBfpJzLMqyUVlkpQ09YLUVZ4QWHjZfmaXnlQb837zYGFAHbV2wNNuu9zHOSFaPFs
	xS7k8tIiZXnCVAMZbyrlEJ5UtkJIrMLuDGrToQcMsgOXoyjy4qZeQmFE6WtN5/qCmPg5YA/V6bJLE
	0m4mYBHwaNl3eAA8B3o35WH3+L63idAcIQsxj8B0dOUeM9HISnPQEuafmWlTyaFSaQm/5tjxpkfJO
	Wg+hKbSfuQIG6nNqGmV0UwqwAtcv2Wo3BWQs6lKuF7l/3hyY0y27EC4jUwogZaVH3LM3WKf2EhcZI
	p27VrCvvFfEml0tlrx7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTH2m-00084S-2i; Tue, 28 Apr 2020 03:36:24 +0000
Received: from mail-lf1-f67.google.com ([209.85.167.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTH2c-00083e-F5
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 03:36:15 +0000
Received: by mail-lf1-f67.google.com with SMTP id m2so15639319lfo.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 20:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q1Hl4EoAQeecS6RJeMB353EzxseO3r7Hp2yIzNObp3I=;
 b=SplrAUntYpA62B1N75YvHPdEO4shjtitO6O7fp81NGqZCL/liBkn4YGhS2ufiW89mA
 6QRtLc38lw6xNb2vgvLJDvqC9mE3aqUJAqwD+PeOfBSBP94LeZ1hMSN6COmTdIaxaQpS
 UpK5WWl4Kpc44DM72q0SRTuLkDG5Cy7pTFjlU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q1Hl4EoAQeecS6RJeMB353EzxseO3r7Hp2yIzNObp3I=;
 b=Lfm+IVqh7WCOs0I5eASEcwQ0JXUGSp5UNKQIAoqxfPPrK1ePX5jULdYzbmq3CNs1Y0
 /+jj02tr21jMITjexIRekQv83WvnD7WoCXIcMlxEuTFoy1SaVFLuBaWNiI47K8dOyaMU
 aMxiYhldi6jCnrxw2p9t7TPadsQQvscb78OtC/1Kxrm4jYc0SGSxvmXggLJ2Hnez9jRT
 /0FuoD70PUt1CYUhkHGBlEX13hnu9/NAAzdkWzC6dAAgtkHV+qDEbHkMPiXPj3yTYQEa
 JOeuOFWZf02bTA2zMuRteu85l9jKm/H0Q8ZZFJjpztGp7fbGV1H4NNkDHujGQPzgB6Zk
 Wo5g==
X-Gm-Message-State: AGi0Pubb8RX4ZpxvoZgxW646ssffmn69qJLU2oD2u17uBPFAvAslce6H
 lDK9sy+q6lGe7VqY5/pTuwVaGjAoO1Q=
X-Google-Smtp-Source: APiQypJE21CW7KP2xXbqrExPSMfl6Uuo089AHRWrWI0NO9x6CUBiFB5I7P0a2UGy4zdvel+Cwrs5Fw==
X-Received: by 2002:a19:760a:: with SMTP id c10mr17836841lff.126.1588044963411; 
 Mon, 27 Apr 2020 20:36:03 -0700 (PDT)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com.
 [209.85.167.47])
 by smtp.gmail.com with ESMTPSA id k22sm11713002ljj.85.2020.04.27.20.36.02
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Apr 2020 20:36:02 -0700 (PDT)
Received: by mail-lf1-f47.google.com with SMTP id t11so15625716lfe.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 20:36:02 -0700 (PDT)
X-Received: by 2002:a19:9109:: with SMTP id t9mr18095968lfd.10.1588044961861; 
 Mon, 27 Apr 2020 20:36:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200428032745.133556-1-jannh@google.com>
 <20200428032745.133556-3-jannh@google.com>
In-Reply-To: <20200428032745.133556-3-jannh@google.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 27 Apr 2020 20:35:45 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjSYTpTH0X8EcGGJD84tsJS62BN3tC6NfzmjvXdSkFVxg@mail.gmail.com>
Message-ID: <CAHk-=wjSYTpTH0X8EcGGJD84tsJS62BN3tC6NfzmjvXdSkFVxg@mail.gmail.com>
Subject: Re: [PATCH 2/5] coredump: Fix handling of partial writes in
 dump_emit()
To: Jann Horn <jannh@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_203614_502459_B7ACC328 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.67 listed in wl.mailspike.net]
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
 Yoshinori Sato <ysato@users.sourceforge.jp>,
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

On Mon, Apr 27, 2020 at 8:28 PM Jann Horn <jannh@google.com> wrote:
>
> After a partial write, we have to update the input buffer pointer.

Interesting. It seems this partial write case never triggers (except
for actually killing the core-dump).

Or did you find a case where it actually matters?

Your fix is obviously correct, but it also makes me go "that function
clearly never actually worked for partial writes, maybe we shouldn't
even bother?"

             Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
