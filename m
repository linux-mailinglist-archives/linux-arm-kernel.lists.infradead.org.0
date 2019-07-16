Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 242D36B234
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 01:07:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:In-Reply-To:
	References:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aJZ1zYwsQmkh7HlLGOjbgUnqFoWqnc9IVxTslBuv5rw=; b=IjZJBDtV7S7F1m
	9KBXH3jkaj2U5Prw9TRN8NqCQz63Y+B7177lue0Nr7TJdN+lFtnwwSVUIcn02cA8IFcELLH7Td//T
	+necghcC1WsZE/7kFGNhB0rfamavOlzGkhVzzzbN1erUTaDfXA73wuG99x+rbBKcjMPZKrEbjEo+J
	HBuceZfMlEDBj9OzI8AQMD9nmxwMss1NS/GwRiLU0vncjvWQw0RXCwEfoatPr2/pl68yK8TweE1SW
	mIWd+ZiDUWY+tvbktFv9zCVn9D01E9JgTU6zZQJeDMRS829uWaNEO/6V0wfJvfwpzdr35jFDpCbPH
	bDZJpCxdl/JySHCL1P3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnWXu-0003sa-J5; Tue, 16 Jul 2019 23:07:42 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnWXY-0003rj-GX
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 23:07:21 +0000
Received: by mail-pg1-x544.google.com with SMTP id s1so3857708pgr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 16:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:references:in-reply-to:mime-version
 :user-agent:message-id:content-transfer-encoding;
 bh=YF5uWvW0lLwROvyPf53Wapwm3mzwcjBd4TlGJz7uSQc=;
 b=Rgtqp4IDVXbKUFwCa8iBTAmLZ3icHtHxZ0xxcPrO34ppbQnUbbi4wGbJ8Y3Hs1LJaj
 IrXL2sIU6q0QMst9f5/CtKr1eXCd2I5pUylvKHhErt5+buRBS/8nxqklBlIbKIqQzKXp
 KZUbwdumcqMBoO47sqDNZ+7zfDRq4/0in70LDstQEsC8lof1FeQ6BHqXDzCRAjcdl/re
 ups9T2L11lLTRQfrQj7Iglktz7n41R5ywDI3qu3fRS80qVNjJhV5Dam8hKUk46lU5OIt
 h7rFnLUcqNhbjl8uAJwzmaeEJjBPl71yU8h1Ualjnp+D/5tWP6WS7v0Qh0wqDV0h+Ryi
 8SXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:references:in-reply-to
 :mime-version:user-agent:message-id:content-transfer-encoding;
 bh=YF5uWvW0lLwROvyPf53Wapwm3mzwcjBd4TlGJz7uSQc=;
 b=N1E2ynTGLgjYmuf3l+ju0Qzzk2x6fpU2tv6fMp+LvLRfTAAj+MOF6pjbZE/d6QQsnQ
 TQLB1/DG4jzkSMYSXLXHoQRhI4igQhgadSuGi0BprMYnGEFXD8oRs34D/gSIXKMWmfDN
 ewVhLthK4tW6gRFJuNBvF7n4ggNnV5DvWxq4yyic7Pkq36nwXsa0/XrcJHGadkAMXxc6
 bVSyvRgHi3FzdEZ5vwByOFkYfduo8GUhiRbxMpDU40kJGN94A6WzbOrPZD78LSF/jaBi
 +Ih80b3BcKaqUq89T4Wz4e7dXCmv7HN7wUwBoEM9flGN2LgN7CAScgivnxMOYwXfQK2H
 mHTw==
X-Gm-Message-State: APjAAAXhSZb7ZNX68B0/AdwHQINW7gCJjZmfVdOW0TLG2OaCo4ioj4nS
 2yQRFNArnCXFrr/1SPi4fUU=
X-Google-Smtp-Source: APXvYqxbSot0tXbWZTT8zOiFvyxu3Z1k54Da4RuRhE16yCPnDE+TL5XF8kjTOt8H3YqXHJTMsqtj+g==
X-Received: by 2002:a17:90a:3086:: with SMTP id
 h6mr40520027pjb.14.1563318437747; 
 Tue, 16 Jul 2019 16:07:17 -0700 (PDT)
Received: from localhost ([203.220.8.141])
 by smtp.gmail.com with ESMTPSA id s12sm19683707pgr.79.2019.07.16.16.07.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 16 Jul 2019 16:07:16 -0700 (PDT)
Date: Wed, 17 Jul 2019 09:07:09 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH v3 0/5] Add NUMA-awareness to qspinlock
To: Alex Kogan <alex.kogan@oracle.com>
References: <20190715192536.104548-1-alex.kogan@oracle.com>
 <1563277166.m9swqogbqb.astroid@bobo.none>
 <7D29555E-8F72-4EDD-8A87-B1A59C3945A6@oracle.com>
In-Reply-To: <7D29555E-8F72-4EDD-8A87-B1A59C3945A6@oracle.com>
MIME-Version: 1.0
User-Agent: astroid/0.14.0 (https://github.com/astroidmail/astroid)
Message-Id: <1563317552.qsi08y8lyr.astroid@bobo.none>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_160720_578983_424A6AEE 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npiggin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, x86@kernel.org, Arnd Bergmann <arnd@arndb.de>,
 peterz@infradead.org, linux-kernel@vger.kernel.org, jglauber@marvell.com,
 guohanjun@huawei.com, dave.dice@oracle.com, linux@armlinux.org.uk,
 steven.sistare@oracle.com, daniel.m.jordan@oracle.com,
 rahul.x.yadav@oracle.com, mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 will.deacon@arm.com, longman@redhat.com, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Alex Kogan's on July 17, 2019 12:45 am:
> 
>> On Jul 16, 2019, at 7:47 AM, Nicholas Piggin <npiggin@gmail.com> wrote:
>> 
>> Alex Kogan's on July 16, 2019 5:25 am:
>>> Our evaluation shows that CNA also improves performance of user 
>>> applications that have hot pthread mutexes. Those mutexes are 
>>> blocking, and waiting threads park and unpark via the futex 
>>> mechanism in the kernel. Given that kernel futex chains, which
>>> are hashed by the mutex address, are each protected by a 
>>> chain-specific spin lock, the contention on a user-mode mutex 
>>> translates into contention on a kernel level spinlock. 
>> 
>> What applications are those, what performance numbers? Arguably that's
>> much more interesting than microbenchmarks (which are mainly useful to
>> help ensure the fast paths are not impacted IMO).
> 
> Those are applications that use locks in which waiting threads can park (block),
> e.g., pthread mutexes. Under (user-level) contention, the park-unpark mechanism
> in the kernel creates contention on (kernel) spin locks protecting futex chains.
> As an example, we experimented with LevelDB (key-value store), and included
> performance numbers in the patch. Or you are looking for something else?

Oh, no that's good. I confused myself thinking that was another will it
scale benchmark. The speedup becomes significant on readrandom, I wonder
if of it might be that you're gating which threads get to complete the 
futex operation and so the effect is amplified beyond just the critical
section of the spin lock?

Am I reading the table correctly, this test gets about 2.1x speedup when
scaling from 1 to 142 threads in the patch-CNA case?

Thanks,
Nick

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
