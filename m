Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BDFE91FF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 22:23:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nZLC3HwluYG760xRkEz4XsZjxuBM0OK6XHxoCJ0YdFk=; b=kyuTJGe9sl0vw/w+fueJo2eMEy
	V+bj8oILE9DMB+fsqGMrlP9zEZmXpTSWxuoenZgsMl1JT2NlYIha3t8vWaX83WLFUdiVl2CYUj7Go
	XnWIXFV/bOBFZwkk/+ZHGhMlG6+ikh9CbQLfUApz5fxcB+aXyDI8Ysz+w907oDzcD2/IUuB7xWrtZ
	3xvs+prBeIDu8olbq5tdILI8pJBoZYlwyKlc29olviIcpPvKCtjv9+xx12qUcjV3xZS5R+9YAcQT7
	5/1Z4L5nKTyisWGi983S+C8JlFf2QUHw4wE5sKY+buR6Bp08Ag2I2Pg08keZz1WjurYD15CbODrX2
	y8RsD0kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPYy4-0006LQ-SR; Tue, 29 Oct 2019 21:23:56 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPYuy-0003qn-8t
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 21:20:48 +0000
Received: by mail-pf1-x443.google.com with SMTP id p26so6408347pfq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 14:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6NYi1SpcPEk1nAcODb6GN96JVcdeHOxwVojV0owHqow=;
 b=dNy1CZ6LVOC5Xwy361W5/FOiLjIeZ1a3UnC8UVfqNFHlsVQ8qbaqjGnKLGJCwZ4kjW
 R9OofJoUgLk3AYwWdNoTsAeWT8lvKhX3jyPzcDsVrpYn7dDwO7ngiDpQ9N4Jp5AybLbF
 IvOGqmpRh0nWfHe5uyqSfrp6ttnHKPg3vSxs8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6NYi1SpcPEk1nAcODb6GN96JVcdeHOxwVojV0owHqow=;
 b=qxsr/CULFwsEgoLd97DmK7WGJa0yZ4LmCjqmPPSfUS5LWDzatcY8/84uypvc5xouvJ
 xNmEKLo3YnOzm1f8pWXCau6KtIyikf4SVy3dgsZ1LMaRw96WRrIe95UGqwAGwz2r0dxb
 jkaD0rWVIaqRvuFk744jGy7RjDC7CbRk7vb2Wm0jz6ayhiiGqCJki90UNk41p3r0Huae
 2a/ubvpG1JFxVzORd//fHw0mNzGefD6OFEh72TZ5aYEzh47BO2loEG5Gdwjp/uhqfhQH
 TrwL20zgMk5fNujZ8bI1VWMVRS8ha4qL044IebeYIgk6AqkoMzcNA/vyd8qNZXscFGTg
 a/gg==
X-Gm-Message-State: APjAAAWD2m77rY94MDn4m1/S4HZvReaF3FIlxCAap4cCOcYGMoIXq2wj
 clGj5xS5Q4GviBJ3o1v+hu2TEg==
X-Google-Smtp-Source: APXvYqwXkyOdxRjPJDw9RQKLanWP+r60JXUsvq8Thfmh0vWjgoChchb/tzi5pjG59oK1fgBkYf+n6Q==
X-Received: by 2002:a17:90a:7bcc:: with SMTP id
 d12mr9331544pjl.63.1572384042527; 
 Tue, 29 Oct 2019 14:20:42 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id v25sm47257pfn.78.2019.10.29.14.20.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 14:20:38 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v3 25/29] xtensa: Move EXCEPTION_TABLE to RO_DATA segment
Date: Tue, 29 Oct 2019 14:13:47 -0700
Message-Id: <20191029211351.13243-26-keescook@chromium.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029211351.13243-1-keescook@chromium.org>
References: <20191029211351.13243-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_142044_850343_5E336D0D 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Michal Simek <monstr@monstr.eu>, linux-ia64@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Segher Boessenkool <segher@kernel.crashing.org>, linuxppc-dev@lists.ozlabs.org,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Andy Lutomirski <luto@kernel.org>,
 linux-alpha@vger.kernel.org, Rick Edgecombe <rick.p.edgecombe@intel.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-c6x-dev@linux-c6x.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since the EXCEPTION_TABLE is read-only, collapse it into RO_DATA.

Signed-off-by: Kees Cook <keescook@chromium.org>
Acked-by: Max Filippov <jcmvbkbc@gmail.com>
---
 arch/xtensa/kernel/vmlinux.lds.S | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/xtensa/kernel/vmlinux.lds.S b/arch/xtensa/kernel/vmlinux.lds.S
index bdbd7c4056c1..0043d5858f14 100644
--- a/arch/xtensa/kernel/vmlinux.lds.S
+++ b/arch/xtensa/kernel/vmlinux.lds.S
@@ -14,6 +14,8 @@
  * Joe Taylor <joe@tensilica.com, joetylr@yahoo.com>
  */
 
+#define RO_EXCEPTION_TABLE_ALIGN	16
+
 #include <asm-generic/vmlinux.lds.h>
 #include <asm/page.h>
 #include <asm/thread_info.h>
@@ -130,7 +132,6 @@ SECTIONS
 
   .fixup   : { *(.fixup) }
 
-  EXCEPTION_TABLE(16)
   /* Data section */
 
   _sdata = .;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
