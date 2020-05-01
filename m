Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D01EF1C0BB4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 03:31:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FrbpXWFuS8nPvNyYEPBEMJuV39Y2MldXdwUAINAAHIw=; b=UVf3tbvJXb1s2n
	thm0aw87vDY1kqcXLV9bqxNRULF+e13ISr/wsamhHXmNcocH2/KlkOE1kylUPI07a9yjdCI4Hpsc0
	LXQZSQLhKxCz/UluLZZKsyL2QFbuo+MAP8pFpdgZN0wfrZXrYNnotENIL5CQZYH5EPjN5BxmII0eg
	jtx+InwtP5Joa1slR2+cMYPiv4HYRuDSZhrciwNzyxG65zISTSfv5UWdk7HIn44MQEcZ1Q3bATu10
	JHzk8lJVrt9+Z7zbfGYhdDIQrgFRayYlxgwlVvqJk4RpI18TE9VouwptLoBrgOY5MVW141++wezbs
	gBl+o7heMCgHg3HWECZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUKW2-0001tN-Kj; Fri, 01 May 2020 01:30:58 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUKVt-0001sB-LW
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 01:30:51 +0000
Received: by mail-pf1-x441.google.com with SMTP id 18so914327pfv.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 18:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=49m+qcehWmGfSLUbaZMUYCSNa0kLh4DAVq9qfZtQrY8=;
 b=YRgvttvvqgb3Hwqt0GImFZpZhAeVuFfWnY57qVNB/I1o6iHy464eJL3C1kiJ2JQ5Uj
 0iL7hBEkJOm/XHx8n7J32irNvjOrbA9sFp964DomGNUW15e+NLL8uzekMosBKct9WiX/
 fZ0ieX6ij1cXYM3SjJrwmDpnUP34skvY/kI/nTQp0gHBvM6bsRm1ZdX1GKMwOf17f0uD
 MRvFP7A2gSxW4WYQGnVz3Mq5JQhV7fcgBsxwx3INua5l4ZbTUr5emXo13J2PRHZfFI9G
 tQyLI8vwYoUfhYmnnakVGNcBqx1u4SWjsPacCzE0UZBXQ3Uoo3U1//p04ZWKaWpzc8K4
 KHGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=49m+qcehWmGfSLUbaZMUYCSNa0kLh4DAVq9qfZtQrY8=;
 b=Y8OpHHdMq4Z8yHja0kbLnAgthfIU3bwEq/t8oMdV40sIfahuF9mqb8ChSxGIkYdXNq
 aWGnYnoR+cuFViFgjCGcaPVAWjVqFIy5oPc0wjlxJJp4AcFIamP3+Cx3WccxJgcPCPHG
 C7vIpGmDSusAZ//yVEw0QYNnDvAQVAitIT4nQNsu23MA7SrFmxDzhfM10KOLR2lQFSFi
 U6pLLEzvjsUSZJJfKWwslREgiWISoDpjYkM//gZvOvvxQiGnHLgI1/YKgSkjBAvSuRUw
 1ZNfov7RWFJpiT2/Lu8ALlZAmlHEHgYRP2D8D2WfJq/6F2LsN4Rr9Yn2BuELM+DbQdxX
 4KhA==
X-Gm-Message-State: AGi0PuY4azWWmUauiBWdEm6/Om8mRvJanykiGMZD9r5EVuzEvL3ZfOxC
 YqyNfXzH2LFiaFLFYn37yyI=
X-Google-Smtp-Source: APiQypKOYGL/38IC+P0JUvU8w6Vlc1XitbcZhxTUNWbIWUNgbgyivZzv9ZUSP1BDO58gaQCrB8XqKw==
X-Received: by 2002:aa7:8e13:: with SMTP id c19mr1688556pfr.260.1588296647317; 
 Thu, 30 Apr 2020 18:30:47 -0700 (PDT)
Received: from localhost (146.85.30.125.dy.iij4u.or.jp. [125.30.85.146])
 by smtp.gmail.com with ESMTPSA id o40sm804452pjb.18.2020.04.30.18.30.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 18:30:46 -0700 (PDT)
From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
X-Google-Original-From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Date: Fri, 1 May 2020 10:30:44 +0900
To: Alper Nebi Yasak <alpernebiyasak@gmail.com>
Subject: Re: [RFC PATCH v2 0/3] Prefer working VT console over SPCR and
 device-tree chosen stdout-path
Message-ID: <20200501013044.GA288759@jagdpanzerIV.localdomain>
References: <20200430161438.17640-1-alpernebiyasak@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430161438.17640-1-alpernebiyasak@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_183049_728900_5EF3C6B9 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sergey.senozhatsky[at]gmail.com]
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
Cc: Petr Mladek <pmladek@suse.com>, Feng Tang <feng.tang@intel.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Eric Biggers <ebiggers@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Pitre <nico@fluxnic.net>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Arvind Sankar <nivedita@alum.mit.edu>, Grzegorz Halat <ghalat@redhat.com>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 Lukas Wunner <lukas@wunner.de>, Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sam Ravnborg <sam@ravnborg.org>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On (20/04/30 19:14), Alper Nebi Yasak wrote:
>                     |     "console=tty0"    |    (no console arg)   |
>   ------------------+-----------------------+-----------------------+
>   QEMU VM           | tty0     -WU (EC p  ) | ttyAMA0  -W- (EC   a) |
>   (w/ SPCR)         | ttyAMA0  -W- (E    a) |                       |
>   ------------------+-----------------------+-----------------------+
>   Chromebook Plus   | tty0     -WU (EC p  ) | ttyS2    -W- (EC p a) |
>   (w/ stdout-path)  |                       | tty0     -WU (E     ) |
>   ------------------+-----------------------+-----------------------+
>   Chromebook Plus   | tty0     -WU (EC p  ) | tty0     -WU (EC p  ) |
>   (w/o either)      |                       |                       |
>   ------------------+-----------------------+-----------------------+
> 
> This patchset tries to ensure that VT is preferred in those conditions
> even in the presence of firmware-mandated serial consoles. These should
> cleanly apply onto next-20200430.

Well, if there is a "mandated console", then why would we prefer
any other console?

	-ss

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
