Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A93DE5C332
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 20:45:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vXkdvADakKIE3EeXZVg2UiPUptG7l4OfQcETJTbLmp4=; b=SXfE2Q3qC8ZM0P
	QbtozIyb1a9BxSGnxJhnWfjRjGKlS7TGykz2FDcCcWJSR4Mmw8AdtbWAYol6LRHRud6K5g7ADIMLQ
	2eaTIDRIPMZ8Riy/nMcBsvrVUMwzGi1Dbah/4NL6iv6h8z78e+RIj5w7vIBp0jnvsWFTZFeBimEYq
	X9DnQl7x5bzcEg6OyKdaL0RkjG0fYZ6X1X5WJojAj0PABjomh987wDaOjsa+SzBKe1j+jcTGXv576
	WZGmo8unwmihb/NYKRPxh9hbKJXTt1hI3k8FKsBtlJm0faaD56Q2yxaBX836Y2Fnm0r7po/tpHqw1
	OpzR1eXvrgjxba7L446Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi1IN-0007YH-SN; Mon, 01 Jul 2019 18:44:56 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi1Hy-0007WO-08
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 18:44:31 +0000
Received: by mail-io1-xd41.google.com with SMTP id k8so31204831iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 11:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=bSTnHtp/qhRiiFxmYq0H9zpn3MvujD6lIHKJwuiBfis=;
 b=VENu4NGbxX9bBv++0v0xk7rmRY0ned7O9Ue/mAwONZX5N1UjMcBAqNDoKuUbB/1caz
 7UmBvWce/C5S9oDTfW41WbyUhEWe2f8u18HrIOOSGlD+co1L/cmNyAENRbntBgt3FcTv
 uZMsUdqQ9hnsysRafRhHNvLBpSJECP1e19Cugq4Lndm4L6xIPMu0fBvsKBCDr0YbWVEZ
 T8ARPO8vl1Eoh2y4JDMZFokvS5pGwxDtO/7m4WODds56U3ABCip2rfzGjcNuGZNDqfrS
 dADsLa5cjLoP7freLQErygWRw+405uFlBf5+0qsJzzBFdp0WswPHcKdROa0xAQjjZv2j
 UtIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=bSTnHtp/qhRiiFxmYq0H9zpn3MvujD6lIHKJwuiBfis=;
 b=nFnl/8AUTPKr/H1mWQ/4ey3ohCyd1gWZ65zMdgSmm9aNtcjSq5BA+urXpDIXgQBCSH
 KZMpNlde8lZgQgwjg3GGracAoesQxNejEmBeLslHY8g+JddFdv4B0gfjDCA15+5GnmWn
 h0pcKd5D4QIGHr+eLc6/nOrqV0HiTwCqEblrNH/EYhHjtTGGSCxBjPeJpRmrD/ykGagv
 kp8T8fhgd7lAlETtIZ1ZJzL2wPF10d24NVr42r0YjKRX+tPYTP3qi0dMD/FZ5uTQr9bk
 XZcMyOF+e5IjfMs6L8v0Uhhto+1wEZ0kyzDa0f/I1m9w/vOzvK/lGW1iS1opcdcbZ+M+
 EQLA==
X-Gm-Message-State: APjAAAV8le+AL0x7UAR9IjGpaYA0YTnnFus+0vWtKhJmM+GfePLIlSxh
 6GKpUQODVMad652gYoqvHL4qmQ==
X-Google-Smtp-Source: APXvYqy4v6fZ9ogTn8bf8AazDvAe8JAZOIcDVtOTmJRQqIHjzLDu5ONK3oMbH8yyVfz/V3hVwiftDQ==
X-Received: by 2002:a5d:904e:: with SMTP id v14mr26401863ioq.61.1562006668920; 
 Mon, 01 Jul 2019 11:44:28 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 f26sm9796697iob.4.2019.07.01.11.44.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 11:44:28 -0700 (PDT)
Date: Mon, 1 Jul 2019 11:44:27 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v8 0/7] Unify CPU topology across ARM & RISC-V 
In-Reply-To: <20190627195302.28300-1-atish.patra@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1907011143520.3867@viisi.sifive.com>
References: <20190627195302.28300-1-atish.patra@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_114430_079078_70EC8D53 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, Anup Patel <anup@brainfault.org>,
 Russell King <linux@armlinux.org.uk>,
 Morten Rasmussen <morten.rasmussen@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Johan Hovold <johan@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, Otto Sabart <ottosabart@seberm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Atish

Looks like patches 1, 6, and 7 are missing your Signed-off-by:.  Can I add 
those?


- Paul

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
