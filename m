Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C8A71C08C6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 23:07:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hdFBn4VzeQ+6NhSbWA2vG0DWJ6aS+nI8kOdF5+xqgWU=; b=ATAo4Qqc8XZD6h
	ORt1pWY5GeMKlnjW9E3+q7ETgrZN1kq9cH1awfkf+Fpz+D6BeZPzk1YY64T9qdLujvvP2WfWnULPN
	wfGt0eicK4MjkyL+JBJHcwkb9zQrjrTUVv8mBl05FTdcxNg//bxp3GnAUqjiiOG1b7Yzwk3loYUAp
	tlKr5hz5u5RUNLyeaxmh65TPNMlJQrkHMyR/+pOr67V9R5TLYJKeEqpKa6Lunii5ei7tGn1uc27r/
	Pwy2ZIkwXxs7Zi3FPLifTqmP/W8I+Anbg+rhlZ7K41UAy72RDH2GSs6c1OEdE8UaP0ln4buQfxQky
	WqAyfY260AboqJfOzMKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUGOt-0000VA-GV; Thu, 30 Apr 2020 21:07:19 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUGOj-0000UJ-NH
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 21:07:11 +0000
Received: by mail-oi1-x242.google.com with SMTP id k133so904909oih.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 14:07:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=landley-net.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Y0BHfY++8ymwoFsyQG3f2a5F1M5FJigDreAt8/y9wkw=;
 b=tT/RHF/bfPnesXqFK6JRHF+/fL7TDEmxW2tMH4v+nGg1wDgnRcU5rKSFkUGLbHazAh
 sn9+u/EMiquXspfC2UFxr9W2jqoSZSaLda3L7b3hzX+oPSu0gd8P8x1QrH3VGLm02C2C
 +s4OMCohXuqTaeY0tssIradw6kYxEW9PsJwfBj4gPy1U66MYcQf7DncO6ljoe+lk5jvU
 fKnVvytwK6V0wNiaFIWTLhP7C2dzeakwoRCc3lSBWMr3v2MOLe2j3gf80/t/ARVNw99j
 on5eko7k+LRuZjwBgwTw7HxQuWXx22H4hy3vhQrNPmMiXk/Ns5dhIpdqZL0xyj8TkFQ6
 0vow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Y0BHfY++8ymwoFsyQG3f2a5F1M5FJigDreAt8/y9wkw=;
 b=HZbw0B0EqLS+HZaZpEhll1ByhVxpifKn7sFtM5m5cfrdWfX8D+NX+f1tbUYiBexf3F
 T9vmH7uHwGacEmZK9haVxPHDf7wQ3fxrnMCbgjFjncIUkjWV5iqb1u+f1m6lub4P0/EJ
 Et06WyWi7NO/4xeWBAGss2bmg6Y/8dWPIgeCjrZj5A21AhUf58TKMl0etHW5ikqsWTGq
 VLpSH6Sg0eEpJk77XV7+wn/f6XahTGqFnS7Be+f1XMfa8E/l7pu2TGDxqbK5xLDrHlSv
 7cJ0hHMqQkH182QACkiuhmDR/EX18JMkd1fdxHg1HL7MXY7UmSQUn9AbZeEIsJq0U5Ie
 izwg==
X-Gm-Message-State: AGi0PuarMvvTXgIQE/iqTtPvCrTjZ5ijQorJMfw/OzH1G+BQXjdXCUaw
 xsl9IHbxoiacgzYxERCcB1BApw==
X-Google-Smtp-Source: APiQypIF07p8WMlOqZkR0BZmdYjCNv2JY6o4DDmIm1Lcv4/Fio2GvfUcSL2SHecf2CFgmirguuRxAg==
X-Received: by 2002:aca:438b:: with SMTP id q133mr799994oia.148.1588280828409; 
 Thu, 30 Apr 2020 14:07:08 -0700 (PDT)
Received: from [192.168.86.21] ([136.62.4.88])
 by smtp.gmail.com with ESMTPSA id v9sm268330oib.56.2020.04.30.14.07.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Apr 2020 14:07:07 -0700 (PDT)
Subject: Re: [PATCH v2 0/5] Fix ELF / FDPIC ELF core dumping, and use mmap_sem
 properly in there
To: Rich Felker <dalias@libc.org>, Greg Ungerer <gerg@linux-m68k.org>
References: <20200429214954.44866-1-jannh@google.com>
 <20200429215620.GM1551@shell.armlinux.org.uk>
 <CAHk-=wgpoEr33NJwQ+hqK1dz3Rs9jSw+BGotsSdt2Kb3HqLV7A@mail.gmail.com>
 <31196268-2ff4-7a1d-e9df-6116e92d2190@linux-m68k.org>
 <20200430145123.GE21576@brightrain.aerifal.cx>
From: Rob Landley <rob@landley.net>
Message-ID: <34688b36-4fdf-0c71-77cc-f98e6b9962df@landley.net>
Date: Thu, 30 Apr 2020 16:13:10 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200430145123.GE21576@brightrain.aerifal.cx>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_140709_827535_9D1D0939 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Salter <msalter@redhat.com>, linux-c6x-dev@linux-c6x.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Nicolas Pitre <nico@fluxnic.net>,
 Linux-sh list <linux-sh@vger.kernel.org>, Jann Horn <jannh@google.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Oleg Nesterov <oleg@redhat.com>, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "Eric W . Biederman" <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/30/20 9:51 AM, Rich Felker wrote:
> This sounds correct. My understanding of FLAT shared library support
> is that it's really bad and based on having preassigned slot indices
> for each library on the system, and a global array per-process to give
> to data base address for each library. Libraries are compiled to know
> their own slot numbers so that they just load from fixed_reg[slot_id]
> to get what's effectively their GOT pointer.
> 
> I'm not sure if anybody has actually used this in over a decade. Last
> time I looked the tooling appeared broken, but in this domain lots of
> users have forked private tooling that's not publicly available or at
> least not publicly indexed, so it's hard to say for sure.

Lots of people in this area are also still using 10 year old tools because it
breaks every time they upgrade.

Heck, nommu support for architectures musl doesn't support yet is _explicitly_
the main thing keeping uClibc alive:

  https://www.openwall.com/lists/musl/2015/05/30/1

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
