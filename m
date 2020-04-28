Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B33AB1BC54E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 18:35:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iHh8N71OriPexTYnCOqLrRZFk7rumeGaRpfxDTQwIXk=; b=LahSbtpD1mGPMX
	q3XN1aT/4Yyl+GDBzjjuzotyGhsvXdN/yOG1fx+f2GOcOVusJ5hLUr/sdrsaRckhjRKblkkRbfsyy
	/65PJYZmkWjWYiUUpv9a78tc2vq9miZUWnsYfbKcGGQB26+39wZmsIxcdYa+vAbV7SEKr3zsz0Jzq
	Kk6f+x3qJdlrnULWOewiwFOIs8cZk8JdKXFLTm4KVSdVRjuLYPyARRbTyxvyNLGV0trWyKqVqgOe4
	w5syiBxvsfIOsQx1Ql9lExXpNdWsrKjYcT/aqILYWd4qPblsUAkSgBjYDtSKHxaP4RGziLJ9kaX+j
	nSbSejLjTy6xV5PMJj4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTTCD-000570-2S; Tue, 28 Apr 2020 16:34:57 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTTC3-00056T-6b
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 16:34:48 +0000
Received: by mail-ot1-x341.google.com with SMTP id z17so33772346oto.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 09:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=landley-net.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=X1mxB9/IGko7NMD61SzKMJ6N+5CrxseMyS9QSJMcFa8=;
 b=P2gmUuJe0DstX2vgN0Ni/w0KtohF47LJu+m1YD6o2MhJph3OhDGfCMX3kfeuPbTe6s
 +Yx0QUbqeydOQ7R9iA0uzl5gRF2b46ZUrZE1tz5dUwhCkrn6Wp65KngYgrgw9k2qoKUw
 4obGgXJ1hfdWjXXkqPhUc4iVmGZxStY0gNQW4KHPmLkDJlbIjwZ3EhBTRWL+sFFAN+Rs
 ZBByFIr1qhZi1+pPihwU9diWqs6QNuinXSD2vV5/DGmcbo0Zu25+jRTDpN2P5m9mhnvY
 XdwSXghIW/jo0xnd2AUb2IRHi853sVeYids/nMK3z0Opm82c3EuBnpHHJT1418slgMnI
 EuNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=X1mxB9/IGko7NMD61SzKMJ6N+5CrxseMyS9QSJMcFa8=;
 b=WMBCs621K60xdzKo/cabigBKMlqfCv703BEKz2wydMu7A8AMRrpkDYwF5cWQhXS057
 JyfXwSbxGjDygk/e1TRs7MYBP2icUkIBG88zKh4VG2H9vv9GJL7I+rpsRmajkdDrJoXy
 d2ERb3t3GP+Hqr4juW5Ne3QvVlSE1fnrhBUpnmkUZTEuCHI6k5Wdr/h8om9nuCAxfaZf
 5kx9yycobgNuWWW/2NWUMxqOP7UkN5ra6I+Ixy5uk1wgIDxd3WghH06iNVxDU6rNyZCp
 mBiEOjlVxhf0xXySmQ4RHjB3nPi6gffgtkIhCQcsUJGfP642k5gKgQx4xlkPpU85cJEs
 0DLg==
X-Gm-Message-State: AGi0PuYnibTacMGSTas7On6qJGr8Dhgrvc+trW1HzghGm5HG3DJzHNyu
 pZz5xl0DH4sRy08405VbRN9mhA==
X-Google-Smtp-Source: APiQypK7FGUPYjGAbHu5QdczGaQL/SoEhm4DO+FUVP6o2Q54EXAlIjTFWetkuIZfSnB6op9lww1WyQ==
X-Received: by 2002:a05:6830:108b:: with SMTP id
 y11mr22380696oto.88.1588091685653; 
 Tue, 28 Apr 2020 09:34:45 -0700 (PDT)
Received: from [192.168.86.21] ([136.62.4.88])
 by smtp.gmail.com with ESMTPSA id t5sm5171612oor.36.2020.04.28.09.34.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Apr 2020 09:34:45 -0700 (PDT)
Subject: Re: [PATCH 2/5] coredump: Fix handling of partial writes in
 dump_emit()
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Jann Horn <jannh@google.com>
References: <20200428032745.133556-1-jannh@google.com>
 <20200428032745.133556-3-jannh@google.com>
 <CAHk-=wjSYTpTH0X8EcGGJD84tsJS62BN3tC6NfzmjvXdSkFVxg@mail.gmail.com>
From: Rob Landley <rob@landley.net>
Message-ID: <94141fbb-9559-1851-54c1-cdc5fc529a1a@landley.net>
Date: Tue, 28 Apr 2020 11:40:47 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAHk-=wjSYTpTH0X8EcGGJD84tsJS62BN3tC6NfzmjvXdSkFVxg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_093447_291018_0D0FEFAC 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On 4/27/20 10:35 PM, Linus Torvalds wrote:
> On Mon, Apr 27, 2020 at 8:28 PM Jann Horn <jannh@google.com> wrote:
>>
>> After a partial write, we have to update the input buffer pointer.
> 
> Interesting. It seems this partial write case never triggers (except
> for actually killing the core-dump).
> 
> Or did you find a case where it actually matters?
> 
> Your fix is obviously correct, but it also makes me go "that function
> clearly never actually worked for partial writes, maybe we shouldn't
> even bother?"

Writes to a local filesystem should never be short unless disk full/error.

Once upon a time this was yet another thing that NFS could break that no other
filesystem would break, but I dunno about now? (I think the page cache collates
it and defers the flush until the error can't be reported back anyway?)

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
