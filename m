Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB9B14B01F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 08:13:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BzhvTBu/71aMWq6PuxjQc3YSxP4YE5XuQmaJmk/NfYw=; b=DxG12cgRgmKrAL
	XA8jEJoQSQRVeAmUGjVe6gZl/9EGph4mkao1DAmGC24a0NaagXNaWb/ALPbNpvHya/g4s607r7h7Y
	VSv3Pi8wz/kEy4B6A4QYyrT2Ndf8YbDv3KWAUVyDTT8WWOWlb058WumY4PKDV58LLMlAcTE2kfPc8
	ES7yq7fw4X1bRizZOa6mvHdamoVevGF8yBRv0JYSMb3MOLeKB5fXk9/K81B7hqjzm9nayFG3/16Sz
	nj2sSBPs+Gdf6w4HGHs4doGagD6rAxn/AnZbxfKcbP515R2+fh6HGKTu3MkI2rcTCwrssB3qA2uOd
	5hTXTqjyuSeUG5Ny+8FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwL3c-0001Sm-OT; Tue, 28 Jan 2020 07:13:08 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwL3S-0001Ro-Tg
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 07:13:00 +0000
Received: by mail-qt1-x842.google.com with SMTP id h12so9525988qtu.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Jan 2020 23:12:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=qKA4UjioXFc27zR8c2yU7DKOhu3nMjpZIq48GcXCB6g=;
 b=RmoEayVYUYqFJblJjIh2uN7kKQmME+y9qMPPUAS2F75g/qPxCehTcmMRH2ge8tD4CC
 GQDWfmy38oVlt13IpEPzfTJGsLQXsq1gDyu3NoJNll2CaNkYdTxXz7pUJN2PlgBCQkzr
 ixOQcgD/jWefyEStVZYEzc+BSTXwnZwklPhwdX/B6Cbrc4l/QVK10xPmQO0Qt6VvxdQT
 ziJY9PgEd6H2+XCfOzRdETkAmZErEBWCkltXcleoXo/oHCehLwvLLErnxEW4xJx6a/0a
 igVVZvv1THX9+TtCIsBpUqBjFmoq8tgeHQDzVMftknmCDfuDqnXoun4BF19nE9j/tt4x
 rjaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=qKA4UjioXFc27zR8c2yU7DKOhu3nMjpZIq48GcXCB6g=;
 b=n2w6XXeeOh+I7tpb1CpO/HQyQxot5w3tfJo+liyBHVmXuk2tPWittE/CFkOdwQJcfP
 mtPHdni48s66kIng91YKHDAYa4wTa7Mx4IDEPybW+u9s+C6nfpsgO0QUUdVvwH41LG+p
 LYfffFzYSMOGXonHDGOWIjHMHYkFd2CviXtrSWvwMVMvwfRn1P2DOpF8mX1NsRl+wvi2
 OixGObLheMSf4+GEg3r9z61Nfd5VW6blFKN+BGFDO0vMvUYSD1x2V3iljNOGHBhovfBu
 DDVt9NJ8fwSawG2Li7FCl2vB+BPvwNnJTulnJteUuyQU6vRLewHuCyai4PhZuTjpiqB1
 jD2g==
X-Gm-Message-State: APjAAAUvwm5noQHPNUwG9CkZ1Q1vZ+lDa5HxSjWYS8wTg32pF4WBbmlz
 qgBZdGY1fBSusS58TgW/rh9P/w==
X-Google-Smtp-Source: APXvYqxXDFn+55Cbaf2UqBVqTFuREFEorSGuAtTGsaQy+PPAoTQF0xb8VLQhlT+h7JaiQcuNWDyViw==
X-Received: by 2002:aed:3109:: with SMTP id 9mr20529841qtg.166.1580195577905; 
 Mon, 27 Jan 2020 23:12:57 -0800 (PST)
Received: from [192.168.1.183] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id z8sm11967722qth.16.2020.01.27.23.12.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Jan 2020 23:12:57 -0800 (PST)
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH V12] mm/debug: Add tests validating architecture page
 table helpers
Date: Tue, 28 Jan 2020 02:12:56 -0500
Message-Id: <144F3894-7934-4EC7-A9F9-C6A84CA08C65@lca.pw>
References: <a7ba6d8a-6443-5994-6a34-2824aa9b054b@c-s.fr>
In-Reply-To: <a7ba6d8a-6443-5994-6a34-2824aa9b054b@c-s.fr>
To: Christophe Leroy <christophe.leroy@c-s.fr>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_231258_960784_42648559 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, Ingo Molnar <mingo@kernel.org>,
 Kees Cook <keescook@chromium.org>,
 Anshuman Khandual <Anshuman.Khandual@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 linux-arm-kernel@lists.infradead.org,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Hansen <dave.hansen@intel.com>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> On Jan 28, 2020, at 1:13 AM, Christophe Leroy <christophe.leroy@c-s.fr> wrote:
> 
> ppc32 an indecent / legacy platform ? Are you kidying ?
> 
> Powerquicc II PRO for instance is fully supported by the manufacturer and widely used in many small networking devices.

Of course I forgot about embedded devices. The problem is that how many developers are actually going to run this debug option on embedded devices?
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
