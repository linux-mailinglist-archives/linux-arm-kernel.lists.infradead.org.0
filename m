Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E44C3141265
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 21:42:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zCHGGoyUHxk3WFt7ErHIPT/LuF6Lt1QbO/v2D5/qUqg=; b=oljdRhIbl81UWg
	LGsF+RPW5z/Ify99LDLgdSnb09c1n4gvKWYvpyrzLLzvS23UXGJzdu+KzTAVio9pmn8WGS0vn9P3k
	CpNC5ZCymZSASFD1w4HPlghvLtXsLoVZ5UQ9bjSUKfRMhgA9PUrfh+n+GaV3Y6bVJIjwkWZKKTR/h
	8IYbaxj/vyh+hAIV97DtjGUAw9l29OQJ2hzL1tVeR9pAZWoJf/+2HSxeA4fgoHLxX2qBoGB0CLavG
	A1UU2AYJK81tiRcQEjrV5g9AsXO+Hc6uM/QcsvTvvo/ikCxn4Xw1SdLxl1BZNod4yoVUSl+kMsb4R
	BH058MvWrFyJuVTkqK+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isYRE-0008Ta-RF; Fri, 17 Jan 2020 20:41:52 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isYR0-0008PY-G6
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 20:41:42 +0000
Received: by mail-il1-x142.google.com with SMTP id t2so22336830ilq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 12:41:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=l67Q2JaZUuxYTTc14dadVG8CPVycSfA7W0h/5578mZM=;
 b=nn60vdPY5om2CTLHZCbVBXuD2dZtq3zIDLFjv2f6o6pOmcpQs/R92aqkvIGklG1VpR
 XpNW7h8CCl1ZSya8QZWLffcfrqvDWXl5mpvfQHLU6HDBeUc1PDAD56OIt0QJlcN/XWZ+
 2sTUPoSecKfaTR2L4Ci21mLETPNqvNgPUoYE0OSz2plDFr+UCSZjkOPhI+GiEOQaaJ8H
 oP6PnPn12MdknimQ5M8Fe85zN/+BQVIoG07WB//UeFh1qz+ilqI3tk07zQRi2qS27RNW
 YwaR7d0Hzjdm+XiTGhn0sXAazXuwx8zTapGag25WVCVYr78/TJf9U8BhImtBvcbES8t6
 qk3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=l67Q2JaZUuxYTTc14dadVG8CPVycSfA7W0h/5578mZM=;
 b=W4UJTWAl48WTG1GSZ2a06+6f5OwCcZQb02WuQfsFoXk6ZyWMGUV8jBkWdCefaI5K6a
 pXBt2k5dV5Waqg0TiZ6lomqL2xaXIXKPKJ7yQdXpdYKsi7k++Z2u2p6i9f4AQq2W2KDL
 SeYD3VLIE1OEMglBw0/+CRlbFu6KBYG0f0MVpvefH1A5WDDC9oWTs6Tll1dsrf/nsSUd
 qX2L3R87O7v8xdaB50eHwqAHnL1z7G6LltxCjMNcjDiYlDJ4AVMCE+SdqQK02PtwzRBw
 Qg5rcJpJfntbNWslvHWixml8FwPtyk5T/rbAPDrT6myWMA0aBh/q0VPlCPvxdy7IzhRv
 nXgg==
X-Gm-Message-State: APjAAAXhN4IjjPh8Q5WhtcfIF07+mT3hZMuFBRtB0SIrPOG8HWmEfsh5
 gksCl76waxWAeGd+sOZDZn/3qw==
X-Google-Smtp-Source: APXvYqyhD/DuCNRVkINRezmPM4CoIncLA7Blgo9UbiMKgcAlY+o2QZJtykuXI74GzHHVKdxUjToU5w==
X-Received: by 2002:a92:ba93:: with SMTP id t19mr369490ill.0.1579293694120;
 Fri, 17 Jan 2020 12:41:34 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id x77sm8237951ilk.34.2020.01.17.12.41.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 12:41:33 -0800 (PST)
Date: Fri, 17 Jan 2020 12:41:31 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH v2 1/2] asm-generic: Make dma-contiguous.h a mandatory
 include/asm header
In-Reply-To: <0274919c5e3b134df19d943f99cb7e84e5135ccd.1579248206.git.michal.simek@xilinx.com>
Message-ID: <alpine.DEB.2.21.9999.2001171241070.98477@viisi.sifive.com>
References: <cover.1579248206.git.michal.simek@xilinx.com>
 <0274919c5e3b134df19d943f99cb7e84e5135ccd.1579248206.git.michal.simek@xilinx.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_124138_532854_0427CEBD 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mips@vger.kernel.org,
 Max Filippov <jcmvbkbc@gmail.com>, Guo Ren <guoren@kernel.org>,
 Deepa Dinamani <deepa.kernel@gmail.com>, "H. Peter Anvin" <hpa@zytor.com>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Vasily Gorbik <gor@linux.ibm.com>,
 Paul Burton <paulburton@kernel.org>, x86@kernel.org,
 Christoph Hellwig <hch@infradead.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Wesley Terpstra <wesley@sifive.com>, James Hogan <jhogan@kernel.org>,
 Waiman Long <longman@redhat.com>, linux-xtensa@linux-xtensa.org,
 Albert Ou <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>,
 Borislav Petkov <bp@alien8.de>, git@xilinx.com,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Chris Zankel <chris@zankel.net>, monstr@monstr.eu,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 17 Jan 2020, Michal Simek wrote:

> dma-continuguous.h is generic for all architectures except arm32 which has
> its own version.
> 
> Similar change was done for msi.h by commit a1b39bae16a6
> ("asm-generic: Make msi.h a mandatory include/asm header")
> 
> Suggested-by: Christoph Hellwig <hch@infradead.org>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>

Acked-by: Paul Walmsley <paul.walmsley@sifive.com> # for arch/riscv


- Paul

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
